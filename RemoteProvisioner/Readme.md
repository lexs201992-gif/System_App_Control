

```markdown
## RemoteProvisioner (com.android.rkpdapp) — APEX C2 Synchronizer & Attestation Control

### Identity
- Package: `com.android.rkpdapp`
- UID: 10213
- APEX: `/apex/com.android.rkpd/priv-app/rkpdapp@ULAS34.89-209-4`
- Signed by: **Longcheer** (CN=Longcheer, OU=Longcheer, O=Longcheer, L=ShangHai, C=CN)
  - Serial: `73180675b0f8648179fd2746e3dccbb780b9fc67`
  - SHA-256: `eb92ccf3f90386a0f6e2a57918127e795a54038eb86ad8467cbda3fb6533a343`
  - Issued: 2023-09-15, Expires: 2051-01-31
- Build: **ULAS34.89-209-4** (FOTA de abril 2026)
- NOT a CVE. NOT an exploit. Architecture of ODM control.

### What it is (legitimate function)
Remote Key Provisioning (RKP) — provisions attestation keys from
`remoteprovisioning.googleapis.com` into the TEE via HAL KeyMint.
Standard AOSP component (`packages/modules/RemoteKeyProvisioning`).

### What Longcheer added (ODM control)
1. **Signed the APEX with their platform key** → Google cannot update via Play
2. **Deployed via FOTA ULAS34.89-209-4** (not factory image)
3. **Firebase dual-use**: `firebaseremoteconfig.googleapis.com` + `firebaselogging.googleapis.com`
   survive when fulguris/wg0 are blocked (TCP 443 fallback)
4. **Trigger for Moto Genie**: rkpd HTTP cycle completion = sync signal for C2 activation
5. **Kill-switch**: `GeekResponse.numExtraAttestationKeys = 0` → provisioning disabled remotely

### Activation conditions
| Condition | rkpd active in pcap? |
|-----------|---------------------|
| GMS enabled | NO (GMS mediates attestation) |
| GMS disabled | **YES** (rkpd is sole provider) |
| First boot + network | YES (BootReceiver → PeriodicProvisioner) |
| Periodic (~24h) | YES (WorkManager cycle) |

### Network channels
```
Channel 1 (primary, legitimate):
  remoteprovisioning.googleapis.com:443/TCP
  → attestation keys (X.509 chain, EC P-256)

Channel 2 (Firebase, dual-use):
  firebaseremoteconfig.googleapis.com:443/TCP  ← survives QUIC block
  firebaselogging.googleapis.com:443/TCP
  → config delivery / metrics (can carry C2 if project_id modified)

Channel 3 (Widevine, HAL-controlled URL):
  MediaDrm.getDefaultUrl() → URL from DRM HAL (not from Settings)
  → WV cert provisioning
```

### C2 sync mechanism (empirically captured)
```
02:08:31  UID -1  kernel → wg0 fail (Quad9 DoT blocked)
02:08:32  UID 1000 → NTP sync (45.231.168.6:123)
02:17:35  UID 10213 rkpd → remoteprovisioning.googleapis.com
          rkpd → fulguris.sion.net:51820/UDP (wg0)
          fulguris responds → activates dns21.hichina.com
```
Gap: 9min (WorkManager backoff + NTP prerequisite)

### URL resolution (Settings.smali)
```
getUrl(context):
  ├── SharedPreferences["url"] → if set, use it (runtime override)
  └── getDefaultUrl():
        SystemProperties.get("remote_provisioning.hostname")
        → https://{hostname}/v1

setDeviceConfig(context, keys, duration, url):
  → writes SharedPreferences["url"] = url
  → PUBLIC STATIC → callable from any code in process
  → No FOTA needed to change destination
```

### HAL interface (IRemotelyProvisionedComponent)
```
rkpdapp (framework, UID 10213)
    │  binder: IRemotelyProvisionedComponent
    ▼
HAL KeyMint RPC (Longcheer/Unisoc .so, Trusty TEE)
    ├── getHardwareInfo()
    │     → RpcHardwareInfo { rpcAuthorName, uniqueId, supportedNumKeysInCsr }
    │     → rpcAuthorName = "Unisoc" (ODM identity in attestation cert)
    ├── generateEcdsaP256KeyPair()
    │     → key pair in TEE
    └── generateCertificateRequest()
          → CSR signed by TEE → sent to Google → signed cert chain returned
```

### Database (Room/SQLite)
- `RkpdDatabase` → `ProvisionedKeyDao`
- `ProvisionedKey`: keyBlob, encodedCertChain, expiry
- `RkpKey`: individual key record
- Stored in device-protected storage (directBootAware)

### Metrics (AOSP StatsLog)
- `ProvisioningAttempt`: status, enablement, duration, error code
- `RkpdClientOperation`: per-client UID tracking
- `RkpdStatsLog`: writes to AOSP statsd (visible via `adb shell cmd statsdump`)

### Why the APEX is signed by Longcheer
```
If Google publishes standard APEX via Play Store:
  ├── Settings.getUrl() → always remoteprovisioning.googleapis.com
  ├── No SharedPreferences override
  ├── No Firebase project_id modification
  ├── No sync with Moto Genie
  └── Longcheer loses C2 trigger

If Longcheer signs the APEX:
  ├── Google CANNOT update it (APEX manager rejects different key)
  ├── Longcheer controls Settings, ServerInterface, all code
  ├── Trigger rkpd → Moto Genie persists
  ├── Kill-switch (GeekResponse) stays on their server
  ├── Firebase dual-use channel persists
  └── FOTA ULAS34.89-209-4 can push new APEX with modified code
```

### Evidence chain
1. APEX path: `rkpdapp@ULAS34.89-209-4` (FOTA build name)
2. Signature: Longcheer platform key (not Google)
3. Pcap: UID 10213 → fulguris.sion.net (only when GMS disabled)
4. NextDNS: firebaseremoteconfig resolved (TCP 443) when QUIC blocked
5. VINTF: `IRemotelyProvisionedComponent/default` → Trusty (Longcheer TEE)
6. `RpcHardwareInfo.rpcAuthorName` = ODM identity in attestation cert
7. `sw_config.xml`: Sunwave fingerprint in same Trusty TEE

### Files in this repo
```
rkpdapp/
├── README.md (this file)
├── AndroidManifest.xml
├── classes/
│   ├── com/android/rkpdapp/
│   │   ├── service/
│   │   │   ├── RegistrationBinder.smali (+13 lambdas)
│   │   │   └── RemoteProvisioningService.smali
│   │   ├── interfaces/
│   │   │   ├── ServerInterface.smali
│   │   │   ├── SystemInterface.smali
│   │   │   └── ServiceManagerInterface.smali
│   │   ├── provisioner/
│   │   │   ├── WidevineProvisioner.smali
│   │   │   └── PeriodicProvisioner.smali
│   │   ├── utils/
│   │   │   ├── Settings.smali
│   │   │   └── X509Utils.smali
│   │   ├── database/
│   │   │   ├── RkpdDatabase.smali
│   │   │   ├── ProvisionedKeyDao.smali
│   │   │   └── ProvisionedKey.smali
│   │   ├── metrics/
│   │   │   ├── ProvisioningAttempt.smali
│   │   │   └── RkpdStatsLog.smali
│   │   ├── RemotelyProvisionedKey.smali
│   │   └── GeekResponse.smali
│   └── android/hardware/security/keymint/
│       ├── IRemotelyProvisionedComponent.smali
│       ├── RpcHardwareInfo.smali
│       ├── DeviceInfo.smali
│       └── MacedPublicKey.smali
├── firebase/
│   ├── client_analytics.proto
│   ├── firebase-measurement-connector.properties
│   └── play-services-basement.properties
├── vintf/
│   └── android.hardware.security.keymint@2.0-unisoc.service.trusty.xml
└── signature/
    └── Longcheer_platform_cert.txt
```

### Relationship to System_App_Control repo
```
System_App_Control (UID 1000/1001):
  RadioInteractorApp, UniWifiApp, UniTelephonyApp, SystemUI, etc.
  → Control planes: WiFi + cellular + baseband

THIS REPO (UID 10213):
  rkpdapp APEX
  → Attestation control + C2 synchronizer + Firebase dual-use

Moto Genie (separate, Alibaba OSS):
  → C2 primary + FOTA transport (fulguris + argo.svcmot.com)

Together: complete ODM control surface
```
```

---
