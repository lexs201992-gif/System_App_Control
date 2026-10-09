# System_App_Control
Control planes ODM Longcheer/Unisoc in Android system processes. │    3 apps injected into system_server (UID 1000) and com.android.phone (UID 1001) │    provide total radio control (WiFi + cellular + baseband) NOT a CVE. NOT an exploit. Architecture of ODM control that enables │    the attack vector WITHOUT 0-days

## Technical App Infomation 
**All three applications are signed with the identical Longcheer certificate (SHA-1: `b0c7dc5f6277b80abad48c6fe6965c9a260a380c`), which is a self-signed X.509 v3 certificate issued on September 15, 2023, and valid until January 31, 2051.**

### 1. `com.unisoc.wifi.UniWifiApp`
*   **Package Name:** `com.unisoc.wifi`
*   **Installation Path:** `/system_ext/priv-app/UniWifi`
*   **Shared User ID:** `android.uid.system` (UID 1000)
*   **Key Permissions:** `FLAG_HARDWARE_ACCELERATED`, full access to hidden APIs.
*   **Signature Status:** Verified (Scheme v3)
*   **Signer Certificate:**
    *   **Subject/Issuer:** `CN=Longcheer, OU=Longcheer, O=Longcheer, L=ShangHai, ST=ShangHai, C=CN`
    *   **Validity:** 2023-09-15 to 2051-01-31
    *   **SHA-256:** `4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d`
    *   **Algorithm:** SHA256withRSA

### 2. `com.unisoc.phone.UniTelephonyApp`
*   **Package Name:** `com.unisoc.phone`
*   **Installation Path:** `/system_ext/priv-app/UniTelephony`
*   **Shared User ID:** `android.uid.phone` (UID 1001)
*   **Key Permissions:** Full access to hidden APIs (same as UniWifi).
*   **Signature Status:** Verified (Scheme v3)
*   **Signer Certificate:** Identical to `UniWifiApp` (Longcheer self-signed cert, SHA-1: `b0c7dc5f...`).

### 3. `com.android.unisoc.telephony.server.RadioInteractorApp`
*   **Package Name:** `com.android.unisoc.telephony.server`
*   **Installation Path:** `/system_ext/priv-app/radio_interactor_service`
*   **Signature Status:** Verified (Scheme v3)
*   **Signer Certificate:** Identical to the other two apps (Longcheer self-signed cert, SHA-1: `b0c7dc5f...`).

### Common Technical Context (for the README)
*   **Certificate Authority:** The certificate is a **self-signed** root CA issued by **Longcheer** (the ODM manufacturer for these Unisoc devices). It is not issued by a public CA.
*   **Privilege Level:** Because these apps reside in `/system_ext/priv-app` and use system-level shared UIDs (`android.uid.system` and `android.uid.phone`), they bypass standard Android permission checks and have elevated privileges over the Wi-Fi and Telephony subsystems.
*   **X.509 Implementation:** The presence of `org.bouncycastle.asn1.x509.X509ObjectIdentifiers` in the decompiled code indicates the apps use the Bouncy Castle library to handle ASN.1/X.509 parsing, likely for internal certificate validation or provisioning logic.

## ODM Control Use of the Apps

### Why you should pay attention

These 3 apps are not user apps. They are **ODM control planes** running inside the Android core processes:

- `com.unisoc.wifi` runs as `system` (UID 1000, `process="system"`) - same process as `WifiServiceImpl`
- `com.unisoc.phone` + `radio_interactor_service` run as `com.android.phone` (UID 1001, `persistent=true` immortal)

This means Longcheer code is injected into `system_server` and `com.android.phone` via `UniWifiInjector` singleton which returns the **same instance** of `WifiManager`, `WifiP2pManager` and `ContentResolver` used by the framework. It calls `handleBootCompleted()` immediately in constructor, no BOOT_COMPLETED wait, `directBootAware` - active before user unlock.

Combined with custom `android.security.net.config.ConfigNetworkSecurityPolicy` and `KeyStoreCertificateSource` (BouncyCastle ASN.1/X.509 impl, `TrustedCertificateIndex`, no-op `handleTrustStorageUpdate()`), the ODM can override cleartext, Certificate Transparency and trust anchor resolution. This is what explains the `net/host unreachable` for DoT (9.9.9.9:853) observed in the pcap.

### How to identify them (for any forensic researcher)

All extracted directly from jar:

1. **Signature:** Same self-signed Longcheer cert v3 in all 3
   - Serial: `228526b0d1ef90c3b8ed568a49c3714f6a39506b`
   - SHA-1: `b0c7dc5f6277b80abad48c6fe6965c9a260a380c`
   - SHA-256: `4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d`
   - Issuer: `CN=Longcheer, O=Longcheer, L=ShangHai, C=CN / release@Longcheer.com`
   - Validity: 2023-09-15 to 2051-01-31, SHA256withRSA

   ```bash
   apksigner verify --print-certs /system_ext/priv-app/UniWifi/UniWifi.apk
   apksigner verify --print-certs /system_ext/priv-app/UniTelephony/UniTelephony.apk
   apksigner verify --print-certs /system_ext/priv-app/radio_interactor_service/*.apk
2. *Paths & UIDs:*
   - `/system_ext/priv-app/UniWifi` -> `android.uid.system` (1000)
   - `/system_ext/priv-app/UniTelephony` -> `android.uid.phone` (1001)
   - `/system_ext/priv-app/radio_interactor_service` -> same cert

3. *Behavioral IO:*
   - Listens to: `CARRIER_CONFIG_CHANGED`, `SIM_STATE_CHANGED`, `WIFI_STATE_CHANGED`, `LOCALE_CHANGED`, `ACTION_SHUTDOWN`
   - `CARRIER_CONFIG_CHANGED` -> re-evaluates Passpoint SSIDs
   - `SIM_STATE_CHANGED` -> updates P2P name = f(IMEI) via `UniWifiUtils.getDefaultNameViaImei()` and IMSI for Passpoint
   - `UniWifiApConfigStore.setDefaultTetherSsid()` -> `SoftApConfiguration.Builder.setSsid(imei-derived)` + writes `Settings.Global wifi_tether_default_ssid`

4. *Network artifacts:*
   - Passpoint auto-join without consent: `builder.setIsInitialAutojoinEnabled(true)` in `UniWifiCarrierNetworkManager`
   - Pre-installed Passpoint FQDN/realm from carrier config (OTA updatable by carrier without FOTA)
   - IPv6 RA `fd00:2:fd00:1::/64` + RDNSS `fd00:2:fd00:1:fd00:1:fd00:1` -> wcn chr blocks DoT
  
## Chain of Control
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
        │     ├── UniWifiConfigStore (P2P/IMEI)
        │     ├── UniWifiApConfigStore (AP/Passpoint)
        │     ├── UniWifiCarrierNetworkManager (auto-join)
        │     └── UniWifiCountryCode
        │
        └── handleBootCompleted()
              ├── registerReceiver: SHUTDOWN, LOCALE_CHANGED,
              │   WIFI_STATE_CHANGED, SIM_STATE_CHANGED,
              │   CARRIER_CONFIG_CHANGED
              ├── UniWifiCountryCode.handleLocaleChanged()
              ├── UniWifiApConfigStore.handleReceiveBootCompleted()
              └── UniWifiCarrierNetworkManager.handleReceiveBootCompleted()
                    ├── loadUniWifiConfig() → SSIDs hardcodeados
                    └── loadCarrierConfig() → SSIDs del carrier (OTA)   
Validated 
// setDefaultTetherSsid():
int sku = Integer.parseInt(SystemProperties.get("ro.boot.sku"));

// 1. Si Settings.Global "wifi_tether_default_ssid" is from SKIP
// 2. Si no → genera SSID desde IMEI (prefix match) o resource default
// 3. WifiManager.setSoftApConfiguration(builder.setSsid(ssid).build())
// 4. Settings.Global.putString("wifi_tether_default_ssid", ssid)  

UniWifiUtils.getDefaultNameViaImei()
// Input: String[3] = {prefix1, prefix2, prefix3} (IMEI prefixes)
// Logic:
String imei = TelephonyManager.getDeviceId();
if (imei.startsWith(prefix1)) return prefix1_name;
else return prefix3_name;  // default   

Forensic Checklist for any researcher
1. Same cert?
apksigner verify --print-certs /system_ext/priv-app/UniWifi/*.apk
apksigner verify --print-certs /system_ext/priv-app/UniTelephony/*.apk
Expect SHA-256 4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d

2. Passpoint profiles preinstalled?
dumpsys wifi | grep -A30 Passpoint
dumpsys wifi | grep -A10 NetworkSuggestion

3. Carrier config OTA?
dumpsys telephony.registry | grep carrier_config
content query --uri content://telephony/carrier_config | grep wifi

4. P2P name
settings get global wifi_p2p_default_device_name
getprop ro.boot.sku
getprop ro.boot.hardware.sku

5. NetworkSecurityPolicy impl?
dexdump -d /system/framework/framework.jar | grep ConfigNetworkSecurityPolicy
If present -> Longcheer impl, not AOSP

6. KeyStore source
logcat -b all -s KeyStoreCertificateSource
Containment (defensive)

- Block OMACP push at carrier level, audit APN changes
- Disable Passpoint auto-join: `settings put global wifi_networks_available_notification_on 0` + remove suggestions via `cmd wifi`
- Monitor `fd00:2::/32` RA via `ip -6 route` + `ndp -a`
- Use DoH via app (not system) to bypass wcn chr block
- YARA: hash `4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d

UniWifiInjector (singleton)
├── getWifiManager() → Context.getSystemService(WifiManager.class)
│   → Es la MISMA instancia que usa WifiServiceImpl
│   → No es una copia. Es el framework.
├── getWifiP2pManager() → Context.getSystemService(WifiP2pManager.class)
│   → Mismo
├── getContentResolver() → context.getContentResolver()
│   → Mismo
├── getUniWifiApConfigStore() → [COMPONENTE LONGCHEER]
├── getUniWifiCarrierNetworkManager() → [COMPONENTE LONGCHEER]
├── getUniWifiConfigStore() → [COMPONENTE LONGCHEER]
└── getUniWifiCountryCode() → [COMPONENTE LONGCHEER]   

┌─────────────────────────────────────────────────────────────────────┐
│ LAYER 1: HARDWARE (feature declaration)                             │
│   android.hardware.wifi.passpoint → "el chip soporta 802.11u"      │
│   android.hardware.wifi.direct → "el chip soporta WiFi P2P"        │
│   → Solo metadata. No ejecuta nada.                                │
└─────────────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────────┐
│ LAYER 2: DAEMONS (vendor + apex)                                    │
│   /vendor/bin/hw/hostapd → AP side (emite ANQP, gestiona clientes)  │
│   /apex/com.android.wifi/bin/wpa_supplicant_mainline → STA side     │
│   → Son daemons, no apps. No tienen UI.                            │
│   → Son controlados vía AIDL por el framework.                     │
└─────────────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────────┐
│ LAYER 3: FRAMEWORK (system_server, UID 1000)                        │
│   WifiServiceImpl → gestiona redes, tethering, VPN                  │
│   Tethering → SoftAP + portal cautivo                               │
│   → Es el framework estándar de Android.                            │
└─────────────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────────┐
│ LAYER 4: ODM CODE INJECTED (com.unisoc.wifi, process="system")      │
│                                                                     │
│   UniWifiController (ORCHESTRATOR)                                  │
│     • Escucha: SHUTDOWN, LOCALE_CHANGED, WIFI_STATE_CHANGED,        │
│       SIM_STATE_CHANGED, CARRIER_CONFIG_CHANGED                     │
│     • On boot → dispara todo el stack                               │
│                                                                     │
│   UniWifiInjector (DEPENDENCY CONTAINER)                            │
│     • HandlerThread "UniWifiHandlerThread"                          │
│     • Crea e inyecta:                                              │
│       ├── UniWifiApConfigStore → Config del AP (SSID, Passpoint)    │
│       ├── UniWifiCarrierNetworkManager → Passpoint auto-join        │
│       ├── UniWifiConfigStore → P2P name (IMEI-based)               │
│       └── UniWifiCountryCode → Country code WiFi                   │
│     • Expone: WifiManager, WifiP2pManager, ContentResolver          │
│       (son las INSTANCIAS del framework, no copies)                 │
└─────────────────────────────────────────────────────────────────────┘   

5. *YARA:*
   rule longcheer_same_cert {
     strings: $a = "4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d"
             $b = "228526b0d1ef90c3b8ed568a49c3714f6a39506b"
   }
### What is dangerous for the consumer

*NOT a CVE. NOT an exploit.* It's ODM architecture, but it enables attack vectors without 0-days:

1. *No-interaction radio control:* WiFi AP, P2P, Passpoint, Tethering, VPN, CA installer, APN rewrite, AT commands (`AT+SPASENGMD`) all inside UID 1000/1001. Immutable, survives factory reset.

2. *Identifiable device:* Tether SSID and WiFi Direct device name derived from IMEI via `getDefaultNameViaImei()` + `ro.boot.sku`. Any scanner can track the device. Overridable if attacker has `WRITE_SECURE_SETTINGS` (which these apps have).

3. *Carrier can reconfigure remotely:* `loadCarrierConfig()` vs `loadUniWifiConfig()`. Hardcoded SSIDs need FOTA, but carrier config is OTA. Telcel/Tigo can push new Passpoint FQDN/realm/EAP/IMSI remotely. Consumer never sees prompt due to auto-join.

4. *Trust control:* Custom `ConfigNetworkSecurityPolicy` + `KeyStoreCertificateSource` with `TrustedCertificateIndex` and BouncyCastle `X509ObjectIdentifiers` (OID 2.5.4.3, 1.3.14.3.2.26, 1.3.6.1.5.5.7) means ODM does its own ASN.1/X.509 parsing for internal cert validation/provisioning (Passpoint OSU, OMACP). `handleTrustStorageUpdate()` is no-op, so system trust updates are ignored.

5. *Monetization chain on top:* Separate app `com.dti.amx` (DT Ignite, Speedy Movil cert SHA-256 `7d7226772d4f6d778fef53a36be15ad78d8d9d4bc4ce00c5f2e3216c19480fa0`, v1/v2 152 warnings SHA1withRSA) with `INSTALL_PACKAGES, READ_PRIVILEGED_PHONE_STATE, QUERY_ALL_PACKAGES, DOWNLOAD_WITHOUT_NOTIFICATION, WRITE_SECURE_SETTINGS`, providers `com.kochava.preinstall`, `com.oem.attribution`, `com.dti.amx.attribution.adjust`. This does silent install on first boot (see link to DIGITAL_TURBINE_IGNITE repo). Combined with radio control, it explains the Guanajuato kiosk vector: OMACP APN rewrite -> RA fd00::/64 -> DoT block -> QUIC 443 SNI cloning.

*For consumer:* You cannot uninstall, disable, or audit these apps without root. They run as system and phone. Even with VPN always-on and private DNS, `wcn chr` (UniSoC WiFi daemon) can block/redirect at HAL level. This is the cost of low-cost Unisoc T606 ODM devices.

---
Defensive disclosure - forensic reproducibility only.
