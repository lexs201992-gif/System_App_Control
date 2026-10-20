## 📋 MANIFEST ANALYSIS — `com.goodix.gftest`

**File:** `AndroidManifest.xml`
**Package:** `com.goodix.gftest` (v1.1.01, vCode 11)
**Build:** `compileSdkVersion="34" / compileSdkVersionCodename="14" / platformBuildVersionName="14"`
**Source:** `/system/priv-app/GoodixTest` (priv-app, Moto G04s XT2421-7, ULAS34.89-209-4 user/release-keys)

Summary

The manifest confirms the dual-purpose nature of the APK: production fingerprint service (`GoodixFingerprintLocalService`) + factory QA tool (`AutoTestActivity`, `TouchTestActivity`). Both test activities are **exported="true"** with **no `android:permission` gate**, despite shipping on a production user build.

Key Flags

| Attribute | Value | Forensic Note |
|-----------|-------|---------------|
| `android:usesNonSdkApi` | `true` | Full hidden-API access. Confirmed by App Manager: `Hidden API enforcement: None` |
| `android:debuggable` | `false` | Production build, not debug |
| `android:allowBackup` | `false` | Prevents `adb backup` extraction |
| `android:extractNativeLibs` | `false` | Native libs uncompressed in APK |
| `android:appComponentFactory` | `CoreComponentFactory` | AndroidX support lib |
| `android:name` | `.fingerprint.GoodixFingerprintApplication` | Application entry point |

SDK Anomaly (Build Misconfiguration)

```xml
<uses-sdk android:minSdkVersion="34" android:targetSdkVersion="33" />
`minSdk (34) > targetSdk (33)` is invalid per Android guidelines. Indicates Longcheer build chain compiled against Android 14 (API 34) but targeted API 33 to bypass Android 14 exported receiver/service enforcement (`RECEIVER_EXPORTED`). Pattern consistent across Longcheer platform builds.

Components

Exported (Attack Surface)
<activity android:name="com.goodix.gftest.AutoTestActivity" 
          android:exported="true" 
          android:screenOrientation="portrait" />

<activity android:name="com.goodix.gftest.TouchTestActivity" 
          android:exported="true" 
          android:screenOrientation="portrait" />
- `AutoTestActivity` → entry to `testCmd(int, byte[])` / `cameraCapture()`
- `TouchTestActivity` → touch sensor test
- Both: `No permission required` (verified in App Manager → Activities tab)
- `TaskAffinity`: `com.goodix.gftest` (default)

Not Exported (Production)
<activity android:name="com.goodix.gftest.HomeActivity" />
<service android:name="com.goodix.fingerprint.service.GoodixFingerprintLocalService" />
- `HomeActivity` → `taskAffinity=".HomeActivity"` (implicit `exported="false"` on API 34)
- `GoodixFingerprintLocalService` → hosts `IGoodixFingerprintInterface.Stub` (production AIDL). Not directly reachable, but reachable *indirectly* via exported test activities.

Verification

- Path: `/system/priv-app/GoodixTest` (priv-app)
- SELinux: `default:privapp:targetSdkVersion=33:complete`
- User ID: `10080` (shared priv-app UID range)
- Signature: Longcheer platform cert, 2023-09-15 → 2051-01-31 (28-year, SHA256withRSA, self-signed) — SHA-256: `eb92ccf3f90386a0f6e2a57918127e795a54038eb86ad8467cbda3fb6533a343`

Assessment

Manifest alone confirms a *packaging deficiency*: factory test activities intended for QA are left exported on a user/release-keys production build with full hidden-API access. Combined with the native daemon (`vendor/bin/goodix_fingerprint_daemon`) exposing `cameraCapture()` and `testCmd()` without HIDL permission enforcement, this provides a biometric data path that requires no root.

Reference: `../README.md` for full IOC mapping (FP-001 to FP-009) and `../AIDL/` / `../Smali/` for IPC chain.
