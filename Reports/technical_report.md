
```markdown
# Technical Forensic Threat Report: ODM WiFi/Telephony Control Planes
## System_App_Control — UniWifiApp Deep-Dive

**Author:** Alexis de la Cruz (lexs201992-gif)
**Date:** October 2026
**Device:** Motorola Moto G04s (lion), Unisoc T606, ULAS34.89-209-4, PVT
**Classification:** Defensive disclosure — forensic reproducibility only

---

## 1. Executive Summary

This report documents the architectural analysis of `com.unisoc.wifi` (UniWifiApp),
a system application injected into `system_server` (UID 1000, `process="system"`)
by ODM manufacturer Longcheer on Unisoc T606/T616 devices.

**Key findings:**

| # | Finding | Severity |
|---|---------|----------|
| 1 | Passpoint is NOT a standalone app — it is a hardware feature + code in `system_server`, controlled by ODM-injected code | Architectural |
| 2 | `BootupReceiver` is a **no-op** (`onReceive` returns immediately). The `RECEIVE_BOOT_COMPLETED` permission in the manifest is **misleading** and functionally irrelevant | Misleading artifact |
| 3 | Actual initialization occurs in `UniWifiApp.onCreate()` → `UniWifiController` constructor, which is **pre-unlock** due to `directBootAware=true` | Critical timing |
| 4 | `UniWifiInjector` exposes the **same instances** of `WifiManager`, `WifiP2pManager`, and `ContentResolver` used by the framework — it does not create copies | Injection pattern |
| 5 | SoftAP SSID is **deterministically derived from IMEI** via `UniWifiUtils.getDefaultNameViaImei()` (prefix matching) | Trackability |
| 6 | `UniWifiApConfigStore.setDefaultTetherSsid()` writes the SSID to `Settings.Global` and applies it via `WifiManager.setSoftApConfiguration()` | Persistence |

**NOT a CVE. NOT an exploit. NOT malware.** This is ODM architecture that enables
attack vectors without 0-days.

---

## 2. Architecture: 4-Layer Model

Passpoint (802.11u) and WiFi Direct (802.11p) are **not applications**. There is no
`Passpoint.apk` or `OSU Server.apk` on the device. The architecture is:

```
┌─────────────────────────────────────────────────────────────────────────┐
│ LAYER 1: HARDWARE (feature declaration)                                │
│                                                                         │
│   android.hardware.wifi.passpoint  → "chip supports 802.11u"           │
│   android.hardware.wifi.direct     → "chip supports WiFi P2P"          │
│                                                                         │
│   → Metadata only. Executes nothing.                                    │
└─────────────────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ LAYER 2: DAEMONS (vendor + apex)                                       │
│                                                                         │
│   /vendor/bin/hw/hostapd                                              │
│     → AP side (emits ANQP, manages clients)                            │
│                                                                         │
│   /apex/com.android.wifi/bin/wpa_supplicant_mainline                   │
│     → STA side                                                         │
│                                                                         │
│   → Daemons, not apps. No UI.                                          │
│   → Controlled via AIDL by the framework.                              │
└─────────────────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ LAYER 3: FRAMEWORK (system_server, UID 1000)                           │
│                                                                         │
│   WifiServiceImpl → manages networks, tethering, VPN                   │
│   Tethering → SoftAP + captive portal                                  │
│                                                                         │
│   → Standard Android framework.                                        │
└─────────────────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ LAYER 4: ODM CODE INJECTED (com.unisoc.wifi, process="system")         │
│                                                                         │
│   UniWifiController (ORCHESTRATOR)                                     │
│     • Listens: SHUTDOWN, LOCALE_CHANGED, WIFI_STATE_CHANGED,           │
│       SIM_STATE_CHANGED, CARRIER_CONFIG_CHANGED                        │
│     • On boot → triggers entire stack                                  │
│                                                                         │
│   UniWifiInjector (DEPENDENCY CONTAINER)                               │
│     • HandlerThread "UniWifiHandlerThread"                             │
│     • Creates and injects:                                             │
│       ├── UniWifiApConfigStore → AP config (SSID, Passpoint)          │
│       ├── UniWifiCarrierNetworkManager → Passpoint auto-join           │
│       ├── UniWifiConfigStore → P2P name (IMEI-based)                  │
│       └── UniWifiCountryCode → WiFi country code                       │
│     • Exposes: WifiManager, WifiP2pManager, ContentResolver            │
│       (these are the FRAMEWORK INSTANCES, not copies)                  │
└─────────────────────────────────────────────────────────────────────────┘
```

### 2.1 Why Layer 4 is Architecturally Significant

The ODM code in Layer 4 does **not** request permissions to access WiFi services.
It does not use Binder IPC. It does not call `Context.getSystemService()` as a
client — it calls it as the **owner**. Because it runs in `process="system"`
(UID 1000), the `WifiManager` instance it obtains via `getSystemService()` is the
**same singleton** that `WifiServiceImpl` uses internally.

**The pattern is:** "I am part of the framework. I do not need to ask permission
to access the services. I have them because I am **inside them**."

---

## 3. Initialization Flow

### 3.1 The Misleading `BootupReceiver`

The AndroidManifest declares a `BOOT_COMPLETED` receiver:

```xml
<receiver android:name=".BootupReceiver"
          android:enabled="true"
          android:exported="true">
    <intent-filter>
        <action android:name="android.intent.action.BOOT_COMPLETED" />
    </intent-filter>
</receiver>
```

However, the implementation is a **no-op**:

```java
// BootupReceiver.smali (decompiled)
public void onReceive(Context context, Intent intent) {
    return;  // ← DOES NOTHING
}
```

| Question | Answer |
|----------|--------|
| Does `BootupReceiver` do anything? | **No.** It is dead code. |
| Is `RECEIVE_BOOT_COMPLETED` functionally relevant? | **No.** The permission is residual. |
| Why is it in the manifest? | Likely a leftover from a pre-`directBootAware` version. |
| What actually triggers initialization? | `UniWifiApp.onCreate()` → `UniWifiController` constructor. |

### 3.2 Actual Initialization (Pre-Unlock)

Because the app declares `android:directBootAware="true"` and runs in
`process="system"`, `onCreate()` is invoked **before** the user unlocks the device
and **before** `BOOT_COMPLETED` is broadcast:

```
Boot (pre-unlock, directBootAware)
  │
  ▼
UniWifiApp.onCreate()
  │
  ├── Log: "Boot Successfully!"
  │
  └── new UniWifiController(this)
        │
        ├── new UniWifiInjector(context)
        │     ├── HandlerThread "UniWifiHandlerThread"
        │     ├── UniWifiConfigStore (P2P / IMEI)
        │     ├── UniWifiApConfigStore (AP / Passpoint)
        │     ├── UniWifiCarrierNetworkManager (auto-join)
        │     └── UniWifiCountryCode
        │
        └── handleBootCompleted()   ← CALLED IMMEDIATELY in constructor
              ├── registerReceiver: SHUTDOWN, LOCALE_CHANGED,
              │   WIFI_STATE_CHANGED, SIM_STATE_CHANGED,
              │   CARRIER_CONFIG_CHANGED
              ├── UniWifiCountryCode.handleLocaleChanged()
              ├── UniWifiApConfigStore.handleReceiveBootCompleted()
              └── UniWifiCarrierNetworkManager.handleReceiveBootCompleted()
                    ├── loadUniWifiConfig() → hardcoded SSIDs
                    └── loadCarrierConfig() → carrier SSIDs (OTA-updatable)
```

### 3.3 Implications

1. **No cancellation point.** The initialization is in the `Application`
   constructor. No external component can interrupt it.
2. **Pre-unlock readiness.** SoftAP/Passpoint configuration is fully loaded
   before the user enters their PIN/pattern.
3. **The manifest is misleading.** A forensic analyst reading only the manifest
   would conclude the app "waits for boot." In reality, it initializes **before**
   boot completes.

---

## 4. Broadcast Handling Matrix

`UniWifiController` registers for the following broadcasts (via
`handleBootCompleted()`):

| Broadcast | Trigger | Action |
|-----------|---------|--------|
| `CARRIER_CONFIG_CHANGED` | Carrier pushes new config (OTA) | `UniWifiCarrierNetworkManager` re-evaluates Passpoint SSIDs/FQDN/realm |
| `SIM_STATE_CHANGED` | SIM inserted/removed/changed | `UniWifiConfigStore` updates P2P name = f(IMEI); `UniWifiCarrierNetworkManager` updates IMSI for Passpoint |
| `WIFI_STATE_CHANGED` | WiFi on/off/disconnected | `UniWifiConfigStore` (P2P) + `UniWifiApConfigStore` (AP config refresh) |
| `LOCALE_CHANGED` | User changes language/region | `UniWifiCountryCode.handleLocaleChanged()` → changes WiFi country code (channels/frequencies) |
| `ACTION_SHUTDOWN` | Device shutting down | Cleanup (potential final exfiltration window) |

**Notably absent:** `BOOT_COMPLETED`. The app does not listen for it because it
already initialized before it was broadcast.

---

## 5. `UniWifiInjector` — The Injection Pattern

`UniWifiInjector` is a **singleton** that acts as a dependency container. It
exposes two categories of objects:

```
UniWifiInjector (singleton)
│
├── FRAMEWORK INSTANCES (not copies):
│   ├── getWifiManager()
│   │     → Context.getSystemService(WifiManager.class)
│   │     → SAME instance used by WifiServiceImpl
│   ├── getWifiP2pManager()
│   │     → Context.getSystemService(WifiP2pManager.class)
│   │     → SAME instance
│   └── getContentResolver()
│         → context.getContentResolver()
│         → SAME instance
│
└── LONGCHEER COMPONENTS (injected):
    ├── getUniWifiApConfigStore()
    │     → SoftAP SSID, Passpoint ANQP, OSU server URI
    ├── getUniWifiCarrierNetworkManager()
    │     → Passpoint auto-join logic
    ├── getUniWifiConfigStore()
    │     → P2P device name (IMEI-derived)
    └── getUniWifiCountryCode()
          → WiFi regulatory domain
```

**Security implication:** Because the framework instances are the same singletons
used by `WifiServiceImpl`, any state change made through `UniWifiInjector`
(e.g., `setSoftApConfiguration()`, Passpoint profile injection) is **immediately
visible** to the framework without any IPC boundary crossing. There is no
permission check, no Binder transaction, no audit log entry at the IPC layer.

---

## 6. `UniWifiApConfigStore` — SSID Derivation

### 6.1 `setDefaultTetherSsid()` Logic

```java
// Pseudocode from smali:
void setDefaultTetherSsid() {
    int sku = Integer.parseInt(SystemProperties.get("ro.boot.sku"));

    // 1. If Settings.Global "wifi_tether_default_ssid" is already set → SKIP
    String existing = Settings.Global.getString(cr, "wifi_tether_default_ssid");
    if (existing != null) return;

    // 2. Generate SSID from IMEI (prefix match) or resource default
    String ssid = UniWifiUtils.getDefaultNameViaImei(
        context, sku, new String[]{prefix1, prefix2, prefix3}
    );

    // 3. Apply to SoftAP
    SoftApConfiguration.Builder builder = new SoftApConfiguration.Builder();
    builder.setSsid(ssid);
    wifiManager.setSoftApConfiguration(builder.build());

    // 4. Persist
    Settings.Global.putString(cr, "wifi_tether_default_ssid", ssid);
}
```

### 6.2 `UniWifiUtils.getDefaultNameViaImei()`

```java
// Input: String[] prefixes = {prefix1, prefix2, prefix3}
// Logic:
String imei = TelephonyManager.getDeviceId();
if (imei.startsWith(prefix1)) return prefix1_name;
else if (imei.startsWith(prefix2)) return prefix2_name;
else return prefix3_name;  // default fallback
```

### 6.3 Security Implication

| Property | Value |
|----------|-------|
| SSID is deterministic | ✅ Same IMEI → same SSID, always |
| SSID is predictable | ✅ If attacker knows IMEI (box, `READ_PHONE_STATE`, physical) |
| SSID is persistent | ✅ Written to `Settings.Global`, survives reboots |
| SSID is overridable | ⚠️ Only by code with `WRITE_SECURE_SETTINGS` (these apps have it) |
| SSID is unique per device | ✅ Different IMEI → different SSID (unless same prefix) |

**Trackability:** Any WiFi scanner in range can enumerate kiosk devices by their
SSID. Combined with the deterministic IMEI→SSID mapping, a physical attacker can
correlate a device's physical location (kiosk #47) with its network identity
without any active scanning by the victim.

---

## 7. `isWifiOnlyDevice()` — Kiosk Detection

```java
// Returns true if ALL of:
// 1. TelephonyManager.isDataCapable() == false
// 2. ro.radio.noril == "false"
// 3. ro.boot.product.hardware.sku == "wifionly"
boolean isWifiOnlyDevice() { ... }
```

For the SATEG kiosk deployment: if the device ships without a SIM
(`keyguard.no_require_sim=true`), `isWifiOnlyDevice()` returns `true`.
This likely **enables SoftAP/Passpoint by default** — the kiosk always emits a
network, regardless of user action.

---

## 8. Verdict

| Question | Answer |
|----------|--------|
| Is Passpoint an app? | **No.** It is a hardware feature + code in `system_server`. |
| Where is the "OSU server"? | In `hostapd` (vendor daemon) + `Tethering` (framework) + `UniWifiApConfigStore` (config). |
| Who controls it? | `com.unisoc.wifi` (`process="system"`, UID 1000). |
| Can it be disabled by the user? | **No.** It is part of `system_server`. |
| Can it be reconfigured remotely? | **Yes.** Via `UniWifiApConfigStore` (FOTA) or `UniWifiCarrierNetworkManager` (carrier config OTA, no FOTA required). |
| Is the `BOOT_COMPLETED` receiver functional? | **No.** It is a no-op. Initialization is in `onCreate()` (pre-unlock). |
| Is the SSID predictable? | **Yes.** Deterministic function of IMEI. |

---

## 9. Forensic Verification Commands

```bash
# 1. Confirm app presence + signature
apksigner verify --print-certs /system_ext/priv-app/UniWifi/UniWifi.apk
# Expected: SHA-256 4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d

# 2. Confirm SSID is IMEI-derived
settings get global wifi_tether_default_ssid
getprop ro.boot.sku
getprop ro.boot.hardware.sku
# Cross-reference with IMEI prefix

# 3. Confirm P2P name
settings get global wifi_p2p_default_device_name

# 4. Confirm Passpoint profiles (if any pre-installed)
dumpsys wifi | grep -A30 Passpoint
dumpsys wifi | grep -A10 NetworkSuggestion

# 5. Confirm carrier config (OTA SSIDs)
dumpsys telephony.registry | grep -A5 carrier_config
content query --uri content://telephony/carrier_config | grep -i wifi

# 6. Confirm directBootAware + process
aapt dump badging /system_ext/priv-app/UniWifi/UniWifi.apk | grep -E "directBootAware|process|sharedUserId"
# Expected: sharedUserId=android.uid.system, directBootAware=true

# 7. Confirm BootupReceiver is no-op (requires decompilation)
# baksmali → BootupReceiver.smali → onReceive() → return
```

---

## 10. References

- `control_planes/01_uniwifiapp/smali/UniWifiController.smali`
- `control_planes/01_uniwifiapp/smali/UniWifiInjector.smali`
- `control_planes/01_uniwifiapp/smali/UniWifiApConfigStore.smali`
- `control_planes/01_uniwifiapp/smali/UniWifiUtils.smali`
- `control_planes/01_uniwifiapp/smali/BootupReceiver.smali`
- `control_planes/01_uniwifiapp/findings/passpoint_auto_join.md`
- `control_planes/01_uniwifiapp/findings/ssid_from_imei.md`
- `control_planes/01_uniwifiapp/findings/carrier_config_ota.md`


---

*Defensive disclosure. For forensic reproducibility and threat hunting only.
No exploitation code is provided or implied.*
```
