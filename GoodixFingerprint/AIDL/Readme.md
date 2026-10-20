┌─────────────────────────────────────────────────────────────────┐
│  system_server / Framework                                      │
│  FingerprintManager → IFingerprintService                       │
└──────────────────────────────┬──────────────────────────────────┘
                               │ binder (AIDL)
                               ▼
┌─────────────────────────────────────────────────────────────────┐
│  Proceso: com.goodix.gftest  (REE)                              │
│                                                                 │
│  GoodixFingerprintLocalService                                  │
│    → IGoodixFingerprintInterface.Stub  ← AIDL que ya viste      │
│        → DaemonProxy (ESTE smali)                               │
│            → DaemonProxyBase$Daemon                             │
│                → HwBinderDaemon  ← HIDL transport               │
└──────────────────────────────┬──────────────────────────────────┘
                               │ HwBinder (HIDL IPC)
                               ▼
┌─────────────────────────────────────────────────────────────────┐
│  Proceso: goodix_fingerprint_daemon  (native, C/C++)            │
│                                                                 │
│  4 HIDL services expuestos:                                     │
│    ├── IGFDaemon       (auth, enroll, remove)                   │
│    ├── IGFDaemonExt    (nav, screen, lockout, testCmd, dump)    │
│    ├── IGFDaemonFido   (FIDO2/WebAuthn)                         │
│    └── IGFDaemonHbd    (Heart Beat Detection)                   │
│                                                                 │
│  → /dev/goodix (kernel driver) → Sensor MoC                     │
└─────────────────────────────────────────────────────────────────┘   
