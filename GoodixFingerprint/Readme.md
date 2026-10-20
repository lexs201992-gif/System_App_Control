# GoodixFingerprint

## Goodix Fingerprint Factory Tool — `com.goodix.gftest`

**Re-signed by Longcheer. Exported activities + testCmd IPC chain expose raw sensor access (cameraCapture, setSafeClass) on production builds. NOT a CVE. NOT an exploit. ODM packaging deficiency that enables biometric data exfiltration WITHOUT 0-days.**

---

## Summary

The `com.goodix.gftest` priv-app (v1.1.01, build 11) is a dual-purpose component shipped in `/system/priv-app/GoodixTest/`:

1. **Production fingerprint service** — `GoodixFingerprintLocalService` hosts the `IGoodixFingerprintInterface` Stub. Every biometric operation on the device routes through this process.
2. **Factory QA tool** — `AutoTestActivity` and `TouchTestActivity` are the UIs used by Longcheer's production line to validate sensor hardware (SPI comms, bad-pixel test, OTP readout).

Both test activities are **exported without permission protection** in a `user/release-keys` production build. The underlying IPC chain (`testCmd(int, byte[])` → native HIDL daemon) accepts arbitrary command IDs and payloads, including `cameraCapture()` (raw sensor image extraction) and `setSafeClass(int)` (security level downgrade).

The APK is **re-signed by Longcheer** (not Goodix) using a 28-year platform certificate (2023–2051), matching the CA certificate IOC already documented in this repository. The original Goodix/Huiding signature is **not present** — provenance chain is broken at the ODM level.

In the context of the confirmed build infrastructure exposure (IOC-001 through IOC-004) and C2 infrastructure (`tun0` → `10.215.173.x`), this component represents a **biometric data exfiltration vector** present in every shipped unit.

---

## Folder Contents

```
GoodixFingerprint/
├── README.md                  ← This file
├── AIDL/                      ← Goodix AIDL interface definitions (source)
│   ├── IGoodixFingerprintInterface.aidl
│   ├── IGoodixFingerprintCallback.aidl
│   ├── IGoodixFingerprintDumpCallback.aidl
│   ├── IGoodixFingerprintDaemon.aidl
│   ├── IGoodixFingerprintDaemonCallback.aidl
│   ├── IGoodixFingerprintDaemonExt.aidl
│   ├── IGoodixFingerprintDaemonExtCallback.aidl
│   ├── IGoodixFingerprintDaemonFido.aidl
│   ├── IGoodixFingerprintDaemonFidoCallback.aidl
│   ├── IGoodixFingerprintDaemonHbd.aidl
│   ├── IGoodixFingerprintDaemonHbdCallback.aidl
│   ├── GFConfig.aidl
│   └── GFDevice.aidl
├── Smali/                     ← Decompiled smali (jadx → baksmali)
│   ├── GoodixFingerprintManager.smali       ← Singleton client (entry point)
│   ├── TestCmdClient.smali                  ← testCmd operation handler
│   ├── DaemonProxy.smali                    ← Java→HIDL bridge
│   ├── DaemonProxyBase.smali                ← Base class (lazy init)
│   ├── MilanHVSeriesChecker.smali           ← Factory QA validator
│   ├── SensorInfoStream.smali               ← OTP struct (Unisoc extension)
│   ├── IGF_Daemon.smali                     ← Vendor HIDL (generated)
│   ├── IGF_DaemonCallback.smali
│   ├── IGF_DaemonExt.smali
│   └── FingerprintEngineering$1.smali       ← Unisoc chipset layer
├── Manifest/
│   └── AndroidManifest.xml          ← Extracted from APK
└── Signature/
    └── cert_info.txt                  ← Longcheer signing cert details
```

### AIDL/ — What to read first

| File | Role |
|------|------|
| `IGoodixFingerprintInterface.aidl` | **Main contract** — all operations (auth, enroll, testCmd, cameraCapture, setSafeClass, FIDO2) |
| `IGoodixFingerprintDaemonExt.aidl` | Extended daemon methods (navigation, screen control, dump) |
| `IGoodixFingerprintDaemonFido.aidl` | FIDO2/WebAuthn support |
| `IGoodixFingerprintDaemonHbd.aidl` | Heart Beat Detection (liveness) |
| `IGoodixFingerprintCallback.aidl` | Async callback interface (events from daemon) |
| `IGoodixFingerprintDumpCallback.aidl` | Data dump transport (single `onDump` method) |

### Smali/ — Key files

| File | What it reveals |
|------|----------------|
| `GoodixFingerprintManager.smali` | Singleton pattern, `initService()` dual path (remote `ServiceManager` + local `bindService`), `opPackageName` via reflection, `testCmd()` entry point, `registerTestCmdCallback(0x7D0)` |
| `TestCmdClient.smali` | `start()` flow: cmdId validation, pre-reset (`0x19`), dispatch to daemon. `mInitiatedByClient` flag gates callback re-delivery. Whitelist of async cmdIds (5, 0x2E, 0x30, 0xD, 0xE, 0x11, 0x12, 0x37–0x39) |
| `DaemonProxy.smali` | 4 HIDL daemons (Main, Ext, Fido, Hbd). `HwBinderDaemon` transport. Lazy `getService()` via ServiceManager |
| `MilanHVSeriesChecker.smali` | Factory QA logic: SPI test (cmdId `0xCD`), bad-pixel test (cmdIds `0x12E`, `0x130`, `0x136`, `0x137`). `TEST_ITEM_MILAN_F_SERIES = [1,2,3,4,5]` |
| `SensorInfoStream.smali` | 98-byte OTP struct: wafer ID, position, lot ID, timestamp, **32-byte `mVendorData`** (unexplained) |
| `IGF_DaemonExt.smali` | Generated HIDL stub: `cameraCapture()`, `setSafeClass(int)`, `dumpCmd(int, ArrayList)`, `enableFingerprintModule(boolean)` — **no `@EnforcePermission`** |

---

## Confirmed IOCs

| ID | Indicator | Type |
|----|-----------|------|
| IOC-FP-001 | `com.goodix.gftest` — APK SHA-256: `9b4d89acc9759b9f84611334b498c91bd3b94ed0885c8d09d637670c2ffd3da9` | APK hash |
| IOC-FP-002 | Signing cert SHA-256: `eb92ccf3f90386a0f6e2a57918127e795a54038eb86ad8467cbda3fb6533a343` | Platform cert (Longcheer, 2023–2051) |
| IOC-FP-003 | `com.goodix.gftest/.AutoTestActivity` — exported, no permission | Activity (attack surface) |
| IOC-FP-004 | `com.goodix.gftest/.TouchTestActivity` — exported, no permission | Activity (attack surface) |
| IOC-FP-005 | `IGoodixFingerprintDaemonExt.cameraCapture()` — no caller UID verification | HIDL method (data exfil) |
| IOC-FP-006 | `IGoodixFingerprintDaemonExt.setSafeClass(int)` — security level control | HIDL method (priv escalation) |
| IOC-FP-007 | `IGoodixFingerprintDaemon.testCmd(int, byte[])` — arbitrary opcode + payload | HIDL method (cmd injection) |
| IOC-FP-008 | `vendor.goodix.hardware.biometrics.fingerprint@2.1::IGoodixFingerprintDaemon` | HIDL service name |
| IOC-FP-009 | `SensorInfoStream.mVendorData` (32 bytes, unverified) | OTP field (potential marker) |

---

## Signing Analysis

| Field | Value |
|-------|-------|
| Subject | `CN=Longcheer, OU=Longcheer, O=Longcheer, L=ShangHai, ST=ShangHai, C=CN` |
| Email | `please@Longcheer.com` |
| Validity | **2023-09-15 → 2051-01-31 (28 years)** |
| Algorithm | SHA256withRSA (RSA 2048) |
| Serial | `73180675b0f8648179fd2746e3dccbb780b9fc67` |
| Self-signed | Yes (Subject = Issuer) |
| Signature scheme | v3 |

**Key observation:** The Goodix factory tool is re-signed by Longcheer. The original Goodix/Huiding signature is absent. Longcheer holds the private key → any modification to the APK (including injection into `AutoTestActivity` or the native daemon) would be **cryptographically valid**.

---

## Architecture

```
┌─────────────────────────────────────────────────────────────────────┐
│  com.goodix.gftest  (priv-app, /system/priv-app/GoodixTest/)       │
│                                                                     │
│  ┌───────────────────────────────────────────────────────────────┐  │
│  │  EXPORTED (no permission):                                    │  │
│  │    AutoTestActivity   → factory test UI → testCmd() calls     │  │
│  │    TouchTestActivity  → touch sensor test                     │  │
│  └───────────────────────────────────────────────────────────────┘  │
│                                                                     │
│  ┌───────────────────────────────────────────────────────────────┐  │
│  │  NOT exported:                                                │  │
│  │    GoodixFingerprintLocalService  ← PRODUCTION fingerprint    │  │
│  │    (hosts IGoodixFingerprintInterface.Stub)                   │  │
│  └───────────────────────────────────────────────────────────────┘  │
│                                                                     │
│  usesNonSdkApi="true"  |  debuggable="false"  |  allowBackup="false"│
└────────────────────────────────┬────────────────────────────────────┘
                                 │ AIDL (Binder)
                                 ▼
┌─────────────────────────────────────────────────────────────────────┐
│  IGoodixFingerprintInterface  (Goodix AIDL)                        │
│    testCmd(IBinder, int cmdId, byte[] param, int userId,           │
│             IGoodixFingerprintCallback, String opPackageName)       │
│    cameraCapture(String opPackageName)                             │
│    setSafeClass(int safeClass, String opPackageName)               │
│    dumpCmd(int cmdId, byte[] param, String opPackageName)          │
└────────────────────────────────┬────────────────────────────────────┘
                                 │ HwBinder (HIDL)
                                 ▼
┌─────────────────────────────────────────────────────────────────────┐
│  goodix_fingerprint_daemon  (native, /vendor/bin/)                 │
│                                                                     │
│  Registered in ServiceManager:                                      │
│    vendor.goodix.hardware.biometrics.fingerprint@2.1::              │
│      IGoodixFingerprintDaemon                                       │
│    vendor.goodix.hardware.biometrics.fingerprint@2.1::              │
│      IGoodixFingerprintDaemonExt                                    │
│    vendor.goodix.hardware.biometrics.fingerprint@2.1::              │
│      IGoodixFingerprintDaemonFido                                   │
│    vendor.goodix.hardware.biometrics.fingerprint@2.1::              │
│      IGoodixFingerprintDaemonHbd                                    │
│                                                                     │
│  No @EnforcePermission. No standard Android interface in chain.    │
│  Security relies SOLELY on SELinux + internal daemon checks.        │
└────────────────────────────────┬────────────────────────────────────┘
                                 │ ioctl
                                 ▼
┌─────────────────────────────────────────────────────────────────────┐
│  /dev/goodix  (kernel driver) → Goodix Milan F-series sensor (MoC) │
└─────────────────────────────────────────────────────────────────────┘
```

### IPC Layers (request → callback)

| Layer | Request (Java→Daemon) | Callback (Daemon→Java) |
|-------|----------------------|----------------------|
| **AIDL** (Goodix) | `IGoodixFingerprintInterface.testCmd(...)` | `IGoodixFingerprintCallback.onTestCmd(cmdId, byte[])` |
| **Proxy** (wrapper) | `IGFDaemon.testCmd(int, byte[])` | `IGFDaemonCallback.onTestCmd(long, int, byte[])` |
| **HIDL** (vendor) | `IGoodixFingerprintDaemon.testCmd(int, ArrayList<Byte>)` | `IGoodixFingerprintDaemonCallback.onTestCmd(J, I, ArrayList<Byte>)` |

The proxy layer (`com.goodix.fingerprint.proxy`) is a **trivial wrapper** that translates `byte[]` ↔ `ArrayList<Byte>` and encapsulates `initCallback()`. No additional logic is added.

---

## Critical Methods

| Method | Risk | Description |
|--------|------|-------------|
| `testCmd(int, byte[])` | **CRITICAL** | Arbitrary opcode + payload to native daemon. No type safety at IPC boundary. A modified daemon could map an unknown `cmdId` to a data-exfiltration routine. |
| `cameraCapture()` | **CRITICAL** | Captures **raw sensor image** (fingerprint ridge data). No caller UID/PID verification in HIDL. CVE-2020-7958 demonstrated this exact vector on Goodix MoH sensors. |
| `setSafeClass(int)` | **HIGH** | Changes daemon security verification level. If set to "factory" value in runtime, token verification is bypassed → full sensor access without framework authorization. |
| `dumpCmd(int, byte[])` | **HIGH** | Data retrieval channel. Returns bytes via `IGoodixFingerprintDumpCallback.onDump(cmdId, byte[])`. |
| `enableFingerprintModule(false)` | **MEDIUM** | Disables entire fingerprint subsystem. Could prevent user from detecting absence of biometric functionality. |
| `navigate(int)` | **LOW** | Gesture navigation mode. No direct security risk but confirms sensor dual-use (biometric + input). |

---

## OTP / Hardware Identity (Unisoc Extension Layer)

`/vendor/framework/com.fingerprints.extension.jar` → `com.fingerprints.extension.stream.SensorInfoStream`

98-byte struct serializing the **OTP (One-Time Programmable) memory** of the fingerprint sensor:

| Offset | Size | Field | Forensic Value |
|--------|------|-------|----------------|
| 0 | 4 | `mSensorDieValidFlag` | Data validity |
| 4 | 4 | `mHardwareId` | Sensor model/revision |
| 8 | 4 | `mWaferId` | **Wafer lot identification** |
| 12 | 4 | `mWaferPositionX` | **Die position X on wafer** |
| 16 | 4 | `mWaferPositionY` | **Die position Y on wafer** |
| 20 | 4 | `mCompanionDieValidFlag` | Companion die validity |
| 24 | 4 | `mCompanionChipHardwareId` | Companion chip HW ID |
| 28 | 4 | `mVendorHwValidFlag` | Vendor HW data validity |
| 32 | 4 | `mTotalNumOtpBitErrors` | OTP integrity (0 = clean) |
| 36 | 4 | `mMaxNumOtpBitErrorsInByte` | Max errors per byte |
| 40 | 4 | `mProductType` | Product classification |
| 44 | 6 | `mSensorDieInfoLotId` | **Production lot ID (ASCII)** |
| 50 | 10 | `mDieInfoProductTimestamp` | **Manufacture date (ASCII)** |
| 60 | 6 | `mCompanyDieInfoLotId` | **Company lot ID (ASCII)** |
| 66 | **32** | `mVendorData` | **Unstructured vendor data — unexplained** |

The 32-byte `mVendorData` field is controlled by the sensor manufacturer. If a supply-chain compromise occurred at the **sensor fabrication level** (not firmware), this field could contain:
- A device-tracking identifier correlated with C2 infrastructure
- A key or nonce for encrypted exfiltration channels
- A flag enabling hidden functionality in the daemon

**Correlation test:** Compare `mVendorData` across 3+ Longcheer-built devices vs. 1 non-Longcheer device using the same Goodix Milan F-series sensor. A shared pattern absent in non-Longcheer units would indicate sensor-level compromise.

---

## Exploitation Path (No Root Required)

```
1. Launch exported activity (any app can do this):
   am start -n com.goodix.gftest/.AutoTestActivity

2. Activity calls:
   GoodixFingerprintManager.getFingerprintManager(context)
   manager.testCmd(cmdId, payload)

3. Flow reaches native daemon via HIDL:
   IGoodixFingerprintDaemonExt.cameraCapture()
   → raw fingerprint image returned via onTestCmd(cmdId, byte[])

4. If daemon is modified (supply-chain):
   → image data routed to tun0 → 10.215.173.x (C2)
   → or stored locally for later exfiltration
```

**Requirements:** None. No root. No user interaction beyond initial app install. The exported activity can be launched by any installed app via `Intent`.

---

## Device Context

| Attribute | Value |
|-----------|-------|
| Device | Motorola Moto G04s (XT2421-7) |
| Build host | `sh-16-52.rnd.longcheer.net` (IOC-001) |
| Build date | 2026-03-18 |
| Build ID | `ULAS34.89-209-4` |
| Fingerprint | `motorola/lion_gq/lion:14/ULAS34.89-209-4/44e17340:user/release-keys` |
| SoC | Unisoc T606 (UMS9230), 8-core (6×A55 + 2×A75) |
| Android | 14 (API 34) |
| Security patch | 2026-04-05 |
| SELinux | Enforcing |
| dm-verity | Enforcing |
| Bootloader | Locked |
| C2 interface | `tun0` → `10.215.173.1/30` (active at time of capture) |
| Sensor | Goodix Milan F-series (in-display, MoC) |

---

## Assessment

**Classification:** Supply-chain risk indicator (not confirmed malicious in isolation)

**Factors supporting compromise hypothesis:**
1. APK re-signed by Longcheer with 28-year cert (matches IOC-CA-001)
2. Exported activities with no permission gate on a `user/release-keys` production build
3. `cameraCapture()` and `setSafeClass()` present without HIDL-level access control
4. Active C2 tunnel (`tun0` → `10.215.173.x`) on the same device
5. Build infrastructure exposure (IOC-001 through IOC-004)
6. `mVendorData` (32B) in sensor OTP is unverified and unexplained
7. No original Goodix signature present — provenance chain broken at ODM

**Factors against confirmed compromise:**
1. APK version (1.1.01, 2020) matches publicly available Goodix factory tools (Xiaomi/Redmi, APKMirror)
2. Exported activities without permission are a **known Goodix packaging deficiency** (present in multiple OEM builds)
3. `cameraCapture()` is a standard Goodix factory method (documented in CVE-2020-7958)
4. The 28-year cert, while unusual, is consistent across all Longcheer platform keys observed in this repository

**Bottom line:** The component is a **force multiplier**. In isolation it's a packaging deficiency. In combination with the confirmed C2 infrastructure, build host exposure, and radio control apps documented in this repository, it provides a **biometric data channel** that requires no 0-day, no user interaction, and no root.

---

## ODEx / VDEx Analysis

| Field | Value | Forensic Significance |
|-------|-------|----------------------|
| `compilation-reason` | `prebuilt` | Compiled at Longcheer factory (Jenkins, `sh-16-52.rnd.longcheer.net`), not on-device |
| `compiler-filter` | `verify` | **No AOT code** — all logic in `classes.dex`. ODEx/VDEx are verification stamps only |
| `debuggable` | `false` | Production build confirmed |
| `classpath` | `PCL[]` | No additional classpath — self-contained APK |
| `apex-versions` | empty | No APEX dependencies |

**Bootclasspath (system jars accessible to this app):**
- `radio_interactor_common.jar` — Radio control layer (see [RadioInteractorApp](../RadioInteractorApp/))
- `unisoc_ims_common.jar` — Unisoc IMS
- `unisoc-framework.jar` — Unisoc extension (SensorInfoStream, FingerprintEngineering)
- `unipnp-framework.jar` — Unisoc PnP
- `framework-moto-enterprise.jar` — Motorola enterprise

**Key finding:** The `verify` filter means the ODEx contains **no executable code**. All forensic analysis of the Java layer is fully covered by the smali in `Smali/`. The native attack surface is exclusively in `vendor/bin/goodix_fingerprint_daemon` (not present in this APK).

**Integrity note:** `bootclasspath-checksums: i;17/12d58656:i;24/e491c7d5` — if any bootclasspath jar is modified without regenerating the ODEx, ART will reject the verification stamp and re-verify the DEX. This is a passive integrity check, not a prevention mechanism.   

## Recommended Next Steps

| # | Action | Method |
|---|--------|--------|
| 1 | **Binary comparison** | Extract `vendor/bin/goodix_fingerprint_daemon` from this build. Diff against known-clean Goodix daemon from another OEM using same Milan F-series sensor (e.g., Xiaomi Redmi with same chip) |
| 2 | **OTP extraction** | Read `mVendorData` via `testCmd` on 3+ Longcheer devices vs. 1 non-Longcheer device with same sensor → look for shared pattern |
| 3 | **SELinux audit** | `sesearch allow -s untrusted_app -t <goodix_daemon_context> binder` → confirm whether non-system apps can reach the daemon directly |
| 4 | **Network monitor** | Launch `AutoTestActivity` while monitoring `tun0` traffic → if packets to `10.215.173.x` appear, exfiltration is confirmed |
| 5 | **cmdId enumeration** | Fuzz `testCmd` with sequential `cmdId` values (0–0xFFFF), log all responses → identify non-standard handlers in the daemon |
| 6 | **Cross-SKU check** | Verify presence, version, and signature of `com.goodix.gftest` across all Longcheer-built SKUs (Moto, Nokia, HTC, Wiko) |

---

## Mitigation (Applied on Test Unit)

- `com.goodix.gftest` **disabled** (fingerprint non-functional)
- No further action required on this unit
- For fleet assessment: verify presence and version across all Longcheer-built SKUs

---

## Related

- [Build Infrastructure](../README.md) — IOC-001 through IOC-004
- [UniWifiApp](../UniWifiApp/) — WiFi control in system_server
- [UniTelephonyApp](../UniTelephonyApp/) — Cellular/baseband control
- [RadioInteractorApp](../RadioInteractorApp/) — Radio interaction layer
- [Reports/](../Reports/) — SELinux policy analysis (Unisoc T606)
```
