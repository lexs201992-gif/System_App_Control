## Surface

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
│  Registered as:                                                     │
│    vendor.goodix.hardware.biometrics.fingerprint@2.1::              │
│      IGoodixFingerprintDaemon                                       │
│    vendor.goodix.hardware.biometrics.fingerprint@2.1::              │
│      IGoodixFingerprintDaemonExt                                    │
│    vendor.goodix.hardware.biometrics.fingerprint@2.1::              │
│      IGoodixFingerprintDaemonFido                                   │
│    vendor.goodix.hardware.biometrics.fingerprint@2.1::              │
│      IGoodixFingerprintDaemonHbd                                    │
│                                                                     │
│  No @EnforcePermission in HIDL. No standard Android interface.     │
│  Security relies SOLELY on SELinux + internal daemon checks.        │
└────────────────────────────────┬────────────────────────────────────┘
                                 │ ioctl
                                 ▼
┌─────────────────────────────────────────────────────────────────────┐
│  /dev/goodix  (kernel driver) → Goodix Milan F-series sensor (MoC) │
└─────────────────────────────────────────────────────────────────────┘   
