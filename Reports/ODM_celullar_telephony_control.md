
```markdown
# Technical Forensic Threat Report: ODM Cellular/Telephony Control Plane
## System_App_Control — UniTelephonyApp + RadioInteractorApp Deep-Dive

**Author:** Alexis de la Cruz (lexs201992-gif)
**Date:** October 2026
**Device:** Motorola Moto G04s (lion), Unisoc T606, ULAS34.89-209-4, PVT
**Classification:** Defensive disclosure — forensic reproducibility only

---

## 1. Executive Summary

This report documents the architectural analysis of `com.unisoc.phone`
(UniTelephonyApp) and `com.android.unisoc.telephony.server` (RadioInteractorApp),
system applications injected into `com.android.phone` (UID 1001, `persistent=true`)
by ODM manufacturer Longcheer on Unisoc T606/T616 devices.

**Key findings:**

| # | Finding | Severity |
|---|---------|----------|
| 1 | `UniOmaApnReceiver` rewrites the default APN via OMA-DM, redirecting ALL cellular traffic through a rogue proxy | Critical |
| 2 | NCK (SIM unlock code) is **deterministically derived from IMEI** (`NCK = f(IMEI)`). Any process in UID 1001 can compute and apply it | Critical |
| 3 | `DmykTelephonyManager` publishes a **Binder service** with APN observation, BT PAN, and hidden API access (`Phone`, `ServiceState`, `RSRP`) | High |
| 4 | `persist.radio.engtest.nr.enable` — engineer-test property that survives reboots, allows forcing/disabling 5G NR | High |
| 5 | `UniTputController` issues proprietary AT commands (`AT+SPASENGMD`) to the baseband and monitors foreground apps | High |
| 6 | `UniSmartCarrierManager` provides hidden API access to `PhoneFactory`, `IProcessObserver`, `getRunningTasks()` — full process/radio introspection | High |
| 7 | `RadioInteractorApp` is `persistent=true` — the OS will **never** kill it. It holds `BIND_RADIO_SERVICE` (immortal) | Architectural |
| 8 | The combination of APN rewrite + SIM lock control + baseband AT + BT PAN provides **total cellular radio control** without any user interaction | Critical |

**NOT a CVE. NOT an exploit. NOT malware.** This is ODM architecture that enables
attack vectors without 0-days.

---

## 2. Architecture: The Cellular Control Plane

### 2.1 Process Model

Unlike `UniWifiApp` (which injects into `system_server`, UID 1000), the telephony
control plane injects into `com.android.phone` (UID 1001):

```
com.android.phone process (UID 1001, persistent=true)
│
├── [AOSP] PhoneApp (Application)
│     └── PhoneFactory, ServiceStateTracker, etc.
│
├── [AOSP] RIL / IPhone / ISIM
│     └── Standard telephony framework
│
├── [LONGCHEER] UniTelephonyApp (Application, directBootAware)
│     ├── UniOmaApnReceiver          → OMA-DM APN rewrite
│     ├── UniSmartCarrierManager     → 5G, PhoneFactory, throttling
│     ├── UniTputController          → AT+SPASENGMD, foreground monitor
│     ├── TelcelOnekeyLockActivity   → SIM lock UI (NCK = f(IMEI))
│     ├── TelcelOnekeyLockUtil       → NCK derivation (Telcel)
│     ├── TigoOnekeyLockUtil         → NCK derivation (Tigo)
│     └── DmykTelephonyManager       → Binder + BT PAN + APN observer
│
└── [LONGCHEER] RadioInteractorApp (persistent=true)
      ├── BIND_RADIO_SERVICE         → Immortal binding
      └── Baseband AT passthrough
```

### 2.2 Why `com.android.phone` is the Target

| Property | Value | Implication |
|----------|-------|-------------|
| UID | 1001 (`android.uid.phone`) | Bypasses standard permission checks for telephony APIs |
| `persistent=true` | OS never kills this process | Control plane is **immortal** |
| `directBootAware` | Initializes before unlock | APN/AT config ready pre-user-interaction |
| Same process as RIL | No IPC boundary to baseband | AT commands issued directly, no audit log |
| `BIND_RADIO_SERVICE` | RadioInteractorApp holds this | Cannot be unbound without killing the process (which won't happen) |

---

## 3. OMA-DM APN Rewrite Vector

### 3.1 Attack Chain

```
┌─────────────────────────────────────────────────────────────────────────┐
│ 1. TRIGGER                                                              │
│    • OMA-DM server push (carrier infrastructure, e.g. Telcel)          │
│    • OR: SMS to OMA-DM port (9202) with crafted payload                │
│    • OR: AT command via RIL (BIND_RADIO_SERVICE, same process)         │
└───────────────────────────────┬─────────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ 2. OMA-DM ENGINE (com.android.phone, UID 1001)                          │
│    • Processes OMA-DM XML payload                                       │
│    • Extracts APN bundle: {proxy, addr, port, user, password, type}    │
│    • Broadcasts: com.android.ApnDataConfig                              │
└───────────────────────────────┬─────────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ 3. UniOmaApnReceiver (same process, UID 1001)                           │
│    • Receives the APN bundle                                            │
│    • Matches proxy-id / napid                                           │
│    • WRITE: content://telephony/carriers/preferapn/subId               │
│    • APN rogue is now the DEFAULT (or MMS) APN of the device           │
└───────────────────────────────┬─────────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ 4. RESULT: ALL cellular traffic routed through rogue proxy              │
│                                                                         │
│    • APN type=default → mobile data → rogue proxy                      │
│    • APN type=mms → MMS traffic → rogue proxy (SMS/MMS exfil)         │
│    • Bootstrap APN → the OMA-DM connection ITSELF goes through rogue   │
│    • Combined with CONTROL_VPN → VPN intercepts WiFi traffic too       │
│    • Combined with INSTALL_AS_USER → CA rogue enables TLS MITM         │
└─────────────────────────────────────────────────────────────────────────┘
```

### 3.2 Why This Works Without User Interaction

| Factor | Explanation |
|--------|-------------|
| Same process | `UniOmaApnReceiver` runs in `com.android.phone` — no IPC, no permission check |
| OMA-DM is trusted | Android's OMA-DM engine processes carrier pushes by design. No user prompt for APN changes |
| `preferapn` is the source of truth | The telephony stack reads APN config from this content provider. Write = effective immediately |
| No FOTA required | OMA-DM is a separate channel from FOTA. Carrier can push APN changes over-the-air without a firmware update |
| `directBootAware` | The receiver is registered before unlock. A trigger arriving during boot is processed |

### 3.3 Forensic Verification

```bash
# Check current APN (look for non-standard proxy/addr)
settings get global carrier_apn_settings
content query --uri content://telephony/carriers/preferapn

# Check for OMA-DM activity in logcat
logcat -b all | grep -i "oma\|ApnDataConfig\|UniOma"

# Check if UniOmaApnReceiver is registered
dumpsys activity receivers | grep -i "UniOma\|ApnDataConfig"
```

---

## 4. SIM Lock Attack (NCK = f(IMEI))

### 4.1 Derivation Logic

`TelcelOnekeyLockUtil` and `TigoOnekeyLockUtil` implement a **deterministic**
NCK derivation from the device IMEI:

```java
// Pseudocode from smali:
// TelcelOnekeyLockUtil:
int nck = (imei_int * 20 + last_8_digits) % 100000000;

// TigoOnekeyLockUtil:
// (similar, different multiplier/offset)
```

| Property | Value |
|----------|-------|
| NCK is deterministic | ✅ Same IMEI → same NCK, always |
| NCK is computable by any UID 1001 process | ✅ `TelephonyManager.getDeviceId()` is accessible |
| NCK can unlock the SIM | ✅ `setFacilityLock("PN", false, nck, ...)` |
| NCK can lock to a rogue PLMN | ✅ `setFacilityLock("PN", true, rogue_plmn, ...)` |
| Requires user interaction | ❌ No. Runs in `com.android.phone` (UID 1001) |

### 4.2 Attack Chain

```
┌─────────────────────────────────────────────────────────────────────────┐
│ 1. TRIGGER                                                              │
│    • CVE-2022-27250 (AutoSLT) — if applicable                          │
│    • OMA-DM push (same channel as APN rewrite)                         │
│    • AT command via RIL (same process)                                 │
└───────────────────────────────┬─────────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ 2. RadioInteractor (same process, UID 1001)                            │
│    • getNckCode() → computes NCK from IMEI (deterministic)            │
│    • setFacilityLock("PN", false, nck, ...) → UNLOCK SIM             │
│    • OR: setFacilityLock("PL", true, rogue_plmn, ...) → LOCK to rogue │
└───────────────────────────────┬─────────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ 3. RESULT                                                               │
│    • Device unlocked → registers on rogue network                      │
│    • OR: Device locked to rogue PLMN → all data via rogue gateway     │
│    • Combined with UniOmaApnReceiver → APN rogue + network rogue      │
│    • Combined with UniTputController → AT commands to rogue baseband   │
└─────────────────────────────────────────────────────────────────────────┘
```

### 4.3 Why This is Architecturally Significant

The SIM lock/unlock is **not** a user-facing feature here. It is an **internal
ODM control mechanism** that allows the firmware to:
- Factory-unlock devices in bulk (production line)
- Lock devices to a specific carrier (Telcel/Tigo exclusive)
- **Remotely** unlock/re-lock if the trigger channel (OMA-DM, AT, FOTA) is active

The fact that the NCK is a **simple arithmetic function of the IMEI** (not a
secure random value stored in the SIM) means:
- Anyone with the IMEI (box, `READ_PHONE_STATE`, physical) can compute the NCK
- The "lock" provides **zero security** against a determined attacker
- It is a **convenience mechanism for the ODM/carrier**, not a security control

---

## 5. `DmykTelephonyManager` — Published Binder Service

### 5.1 What It Exposes

`DmykTelephonyManager` publishes a **Binder service** within `com.android.phone`.
This is not a standard Android service — it is a custom IPC endpoint:

| Exposed Capability | Risk |
|--------------------|------|
| APN observer (callback on APN change) | Real-time monitoring of network reconfiguration |
| BT PAN (Bluetooth Personal Area Network) | Secondary exfiltration channel (no WiFi required) |
| `Phone` object access | Hidden API: registration, signal strength, data state |
| `ServiceState` access | Current PLMN, roaming status, 5G state |
| RSRP/RSRQ values | Radio signal quality (useful for positioning/interference analysis) |

### 5.2 Security Implication

A Binder service in `com.android.phone` (UID 1001) is accessible to:
- Any process that can bind to it (if `exported=true` or same UID)
- The ODM control plane itself (same process — no IPC needed)

If `exported=true`, **any app** on the device can bind and query radio state.
This is a **hidden API surface** not documented in Android's public API.

### 5.3 BT PAN as Exfiltration Channel

```
DmykTelephonyManager
  └── BT PAN enable
        → Device appears as a Bluetooth network adapter
        → Traffic can be routed via BT (no WiFi, no cellular required)
        → Independent of wcn chr (UniSoC WiFi daemon)
        → Independent of APN configuration
        → Survives airplane mode (BT is separate from radio)
```

**Why this matters:** Even if the attacker blocks WiFi (wcn chr) and cellular
(APN rewrite), BT PAN provides a **third independent exfiltration channel**
that is:
- Not visible in standard network monitoring (it's Bluetooth, not IP-over-WiFi)
- Not affected by APN changes
- Not affected by DNS blocking
- Low bandwidth but sufficient for targeted data (credentials, tokens, SMS)

---

## 6. `UniTputController` — AT Commands + Foreground Monitor

### 6.1 `AT+SPASENGMD` (Proprietary Baseband Command)

```
AT+SPASENGMD
  → Unisoc proprietary command
  → "SPA" = likely "Service Provider Access" or "SP Architecture"
  → "SENGMD" = "Send MD" (mode? message?)
  → Issued directly to baseband via RIL (same process, no IPC)
  → Not documented in any public Unisoc spec
```

| Property | Value |
|----------|-------|
| Documented publicly? | ❌ No |
| Requires root? | ❌ No (UID 1001 has direct RIL access) |
| Auditable by user? | ❌ No (no log, no permission prompt) |
| Survives reboot? | ✅ Yes (re-issued on boot via `directBootAware`) |

### 6.2 Foreground App Monitoring

`UniTputController` monitors:
- Current foreground app (via `UsageStatsManager` or `IProcessObserver`)
- Screen state (on/off)
- Connectivity state (WiFi/cellular/BT)

**Purpose (inferred):** Throughput management (throttling background apps when
foreground app needs bandwidth). **Abuse case:** Build a usage profile of the
user (what apps, when, how often) without any user consent or notification.

---

## 7. `UniSmartCarrierManager` — Hidden API Access

### 7.1 Exposed Hidden APIs

| API | Normal Access | ODM Access (UID 1001) |
|-----|---------------|----------------------|
| `PhoneFactory` | `@SystemApi` (framework only) | ✅ Direct (same process) |
| `IProcessObserver` | `@SystemApi` | ✅ Direct |
| `getRunningTasks()` | `GET_TASKS` (deprecated, restricted) | ✅ Direct (UID 1001 bypasses) |
| `ServiceStateTracker` internals | Private | ✅ Direct (same process) |
| RSRP/RSRQ/CQI | Not exposed to apps | ✅ Direct (RIL access) |

### 7.2 5G NR Control

```java
// UniSmartCarrierManager:
SystemProperties.get("persist.radio.engtest.nr.enable", "false")
```

| Property | Detail |
|----------|--------|
| `persist.` prefix | Survives reboots (written to `/data/property/` or `/persist/`) |
| `radio.engtest.` namespace | Engineer-test space — NOT a normal runtime property |
| `nr.enable` | Controls whether 5G NR is enabled |
| Read access | Any process (no permission needed for `SystemProperties.get()`) |
| Write access | Requires `WRITE_SECURE_SETTINGS` or root |
| Who has `WRITE_SECURE_SETTINGS`? | `com.dti.amx` (DTI Ignite) — if not revoked |

**Implication:** If the attacker can write to `persist.radio.engtest.nr.enable`:
- Force 5G SA → route traffic through 5G core (different security domain)
- Disable 5G → force fallback to 4G/3G (weaker encryption, easier interception)
- **Control which network the device uses** without user awareness

---

## 8. `RadioInteractorApp` — Immortal Process

| Property | Value |
|----------|-------|
| `persistent=true` | OS will **never** kill this process |
| `BIND_RADIO_SERVICE` | Holds the radio service binding |
| UID | 1001 (`android.uid.phone`) |
| `directBootAware` | Initializes before unlock |
| Signature | Same Longcheer cert (SHA-256: `4cfe803b...`) |

**Why "immortal" matters:**
- No `adb shell am force-stop` will kill it
- No `pm disable` will stop it (system app, shared UID)
- No factory reset removes it (`/system_ext/priv-app/`)
- The ONLY way to stop it is to remove the APK from `/system_ext/` (requires root + remount)

---

## 9. Combined Attack Surface: WiFi + Cellular + Baseband

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                        TOTAL RADIO CONTROL MODEL                            │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  com.unisoc.wifi (UID 1000, system_server)                                 │
│  ├── WiFi AP (SoftAP, SSID = f(IMEI))                                     │
│  ├── WiFi P2P (name = f(IMEI))                                            │
│  ├── Passpoint (auto-join, carrier OTA)                                   │
│  ├── Tethering (captive portal)                                           │
│  └── wcn chr (HAL-level DNS/DoT block)                                    │
│                                                                             │
│  com.unisoc.phone (UID 1001, com.android.phone)                            │
│  ├── Cellular APN (OMA-DM rewrite → rogue proxy)                          │
│  ├── SIM lock (NCK = f(IMEI), unlock/lock to rogue PLMN)                 │
│  ├── Baseband AT (AT+SPASENGMD, arbitrary)                                │
│  ├── 5G NR control (persist.radio.engtest.nr.enable)                      │
│  ├── BT PAN (independent exfil channel)                                   │
│  ├── Foreground monitoring (usage profile)                                │
│  └── Hidden APIs (PhoneFactory, ServiceState, RSRP)                       │
│                                                                             │
│  com.android.unisoc.telephony.server (UID 1001, persistent)                │
│  ├── BIND_RADIO_SERVICE (immortal)                                        │
│  └── Baseband passthrough                                                 │
│                                                                             │
│  vendor HAL (ring 0 / kernel)                                              │
│  ├── /dev/modem (SIPC, CP access, 73MB range)                             │
│  ├── /dev/pmsys (PMIC, power/thermal control)                             │
│  ├── sprd_sipc_ioctl (AP→CP commands)                                     │
│  └── cplog_svc (anti-forensics: erase modem logs)                         │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

**The ODM has control over ALL radio interfaces independently of the Android
framework.** The framework is a passenger — the ODM code is the driver.

---

## 10. Forensic Verification Commands

```bash
# 1. Confirm app presence + signature
apksigner verify --print-certs /system_ext/priv-app/UniTelephony/*.apk
apksigner verify --print-certs /system_ext/priv-app/radio_interactor_service/*.apk
# Expected: SHA-256 4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d

# 2. Check APN configuration (look for rogue proxy)
settings get global carrier_apn_settings
content query --uri content://telephony/carriers/preferapn
# Red flag: proxy/addr pointing to non-carrier IP

# 3. Check SIM lock state
dumpsys isp | grep -A5 "Facility Lock"
# Red flag: PL lock active with non-standard PLMN

# 4. Check 5G NR property
getprop persist.radio.engtest.nr.enable
# If "true" on a device that shouldn't be in 5G SA → suspicious

# 5. Check for DmykTelephonyManager Binder service
dumpsys activity services | grep -i "dmyk\|unisoc.*telephony"

# 6. Check BT PAN state
settings get global bluetooth_pan_enabled
ip link show | grep -i "bnep\|bt-pan"

# 7. Check for AT command logging (if enabled)
logcat -b all | grep -i "AT+\|SPASENGMD\|RIL"

# 8. Check RadioInteractorApp persistence
dumpsys activity processes | grep "com.android.unisoc.telephony"
# Should show: persistent=true, adj=0 (PERSIST)

# 9. Check OMA-DM activity
logcat -b all | grep -i "OmaDm\|OMA-DM\|ApnDataConfig"
dumpsys oma_dm 2>/dev/null
```

---

## 11. Verdict

| Question | Answer |
|----------|--------|
| Is `com.unisoc.phone` a "phone app"? | **No.** It is an ODM radio control SDK packaged as a system app. |
| Can the user disable it? | **No.** UID 1001, persistent, system_ext. |
| Does it require user interaction? | **No.** All triggers (OMA-DM, AT, FOTA) are server-side. |
| Can it be patched via OTA? | **No.** Signed with Longcheer cert valid to 2051. |

## 12. References
``control_planes/02_unitelephony/smali/UniOmaApnReceiver.smali
control_planes/02_unitelephony/smali/UniSmartCarrierManager.smali
control_planes/02_unitelephony/smali/UniTputController.smali
control_planes/02_unitelephony/smali/TelcelOnekeyLockUtil.smali
control_planes/02_unitelephony/smali/TigoOnekeyLockUtil.smali
control_planes/02_unitelephony/smali/DmykTelephonyManager.smali
control_planes/02_unitelephony/findings/oma_apn_reconfig.md
control_planes/02_unitelephony/findings/nck_derivable.md
control_planes/02_unitelephony/findings/at_spasengmd.md
control_planes/02_unitelephony/findings/bt_pan_exfil.md
control_planes/02_unitelephony/findings/dmyk_binder.md
control_planes/02_unitelephony/findings/persist_radio_engtest.md
CVE-2022-27250 (Kryptowire AutoSLT) — references/cve-2022-27250.md``

``Defensive disclosure. For forensic reproducibility and threat hunting only.
No exploitation code is provided or implied.``

