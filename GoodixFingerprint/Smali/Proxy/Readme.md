## Proxy — Java → HIDL Bridge Layer

**`com.goodix.fingerprint.proxy`** — The IPC transport between the Goodix Java service and the native fingerprint daemon. This is the **exact boundary** where Java code crosses into the native HIDL world.

> NOT a CVE. NOT an exploit. This is the communication layer that makes `testCmd()`, `cameraCapture()`, and `setSafeClass()` possible. Without understanding this layer, you cannot trace a biometric operation from the framework to the sensor.

---

## Role in the Stack

```
GoodixFingerprintLocalService (Java, REE)
    │
    │  IGoodixFingerprintInterface (AIDL)
    ▼
GoodixFingerprintManager (client singleton)
    │
    │  ┌─────────────────────────────────────────────┐
    │  │  THIS LAYER: com.goodix.fingerprint.proxy   │
    │  │                                              │
    │  │  DaemonProxy                                 │
    │  │    ├── GFDaemonImp      → IGFDaemon         │
    │  │    ├── GFDaemonExtImp   → IGFDaemonExt      │
    │  │    ├── GFDaemonFidoImp  → IGFDaemonFido     │
    │  │    └── GFDaemonHbdImp   → IGFDaemonHbd      │
    │  │                                              │
    │  │  HwBinderDaemon (transport)                  │
    │  └─────────────────────────────────────────────┘
    │
    │  HwBinder (HIDL IPC)
    ▼
goodix_fingerprint_daemon (native C/C++, /vendor/bin/)
    │
    │  ioctl
    ▼
/dev/goodix → Sensor
```

The proxy layer is a **trivial wrapper** — it translates `byte[]` ↔ `ArrayList<Byte>`, handles lazy initialization, and registers death callbacks. **No security logic is added here.** All authorization (or lack thereof) is determined by:
1. The AIDL layer above (`opPackageName` check)
2. The native daemon below (internal UID/PID verification, if any)

---

## File Inventory

### Core Infrastructure

| File | Class | Role |
|------|-------|------|
| `DaemonProxy.smali` | `DaemonProxy` | **Factory** — creates and returns the 4 daemon implementations. Entry point for the service. |
| `DaemonProxyBase.smali` | `DaemonProxyBase` | Abstract base. Holds 4 `Daemon` fields (lazy). Provides `getGoodixFingerprintDaemon*()` methods with `getService()` + null check. |
| `DaemonProxyBase$Daemon.smali` | `DaemonProxyBase$Daemon` | Inner abstract class. Wraps a single HIDL service reference. `getService()` → `HwBinder.getService()`. |
| `DaemonProxy$HwBinderDaemon.smali` | `HwBinderDaemon` | **Concrete transport.** Implements `Daemon` using `HwBinder`. This is where the actual HIDL IPC happens. |
| `DaemonManager.smali` | `DaemonManager` | Daemon lifecycle management (start/stop/restart). Likely called by `init()` in the service. |
| `IDaemonDiedCallback.smali` | `IDaemonDiedCallback` | Death notification interface. Called when the native daemon process dies. |

### Daemon Implementations (one per HIDL service)

| File | Class | HIDL Service |
|------|-------|-------------|
| `DaemonProxy$GFDaemonImp.smali` | `GFDaemonImp` | `IGFDaemon` (auth, enroll, remove, testCmd) |
| `DaemonProxy$GFDaemonImp$1.smali` | *(anonymous)* | Death recipient / callback registration for Main |
| `DaemonProxy$GFDaemonExtImp.smali` | `GFDaemonExtImp` | `IGFDaemonExt` (cameraCapture, setSafeClass, dumpCmd, navigate) |
| `DaemonProxy$GFDaemonExtImp$1.smali` | *(anonymous)* | Death recipient / callback registration for Ext |
| `DaemonProxy$GFDaemonFidoImp.smali` | `GFDaemonFidoImp` | `IGFDaemonFido` (FIDO2/WebAuthn) |
| `DaemonProxy$GFDaemonFidoImp$1.smali` | *(anonymous)* | Callback 1 for Fido |
| `DaemonProxy$GFDaemonFidoImp$2.smali` | *(anonymous)* | Callback 2 for Fido |
| `DaemonProxy$GFDaemonFidoImp$3.smali` | *(anonymous)* | Callback 3 for Fido |
| `DaemonProxy$GFDaemonHbdImp.smali` | `GFDaemonHbdImp` | `IGFDaemonHbd` (Heart Beat Detection) |
| `DaemonProxy$GFDaemonHbdImp$1.smali` | *(anonymous)* | Death recipient / callback registration for Hbd |
| `DaemonProxy$1.smali` | *(anonymous)* | ServiceConnection or initialization callback in DaemonProxy |

### HIDL Interfaces (Request side — Java → Daemon)

| File | Interface | Methods |
|------|-----------|---------|
| `IGFDaemon.smali` | `IGFDaemon` | `testCmd(int, byte[]) → int` |
| `IGFDaemonExt.smali` | `IGFDaemonExt` | `cameraCapture()`, `setSafeClass(int)`, `dumpCmd(int, byte[])`, `navigate(int)`, `screenOn/Off()`, `lockout()`, `reset_lockout()`, `pauseEnroll()`, `resumeEnroll()`, `enableFingerprintModule(boolean)`, `enableFfFeature(boolean)`, `stopNavigation()`, `stopCameraCapture()` |
| `IGFDaemonFido.smali` | `IGFDaemonFido` | `authenticateFido(...)`, `stopAuthenticateFido(...)`, `invokeFidoCommand(byte[], byte[])` |
| `IGFDaemonHbd.smali` | `IGFDaemonHbd` | `startHbd(...)`, `stopHbd(...)` |

### HIDL Interfaces (Callback side — Daemon → Java)

| File | Interface | Methods |
|------|-----------|---------|
| `IGFDaemonCallback.smali` | `IGFDaemonCallback` | `onAcquired(J,I)`, `onAuthenticated(J,I,I,B[])`, `onEnrollResult(J,I,I,I)`, `onError(J,I)`, `onRemoved(J,I,I)`, `onTestCmd(J,I,B[])` |
| `IGFDaemonExtCallback.smali` | `IGFDaemonExtCallback` | Ext-specific async events |
| `IGFDaemonFidoCallback.smali` | `IGFDaemonFidoCallback` | `onAuthenticatedFido(J,I,B[])` (UVT data) |
| `IGFDaemonHbdCallback.smali` | `IGFDaemonHbdCallback` | HBD data events |

---

## Forensic Value

### Why this layer matters

1. **`HwBinderDaemon` is the choke point.** Every single biometric operation — from `untrustedAuthenticate` to `cameraCapture()` — passes through this class. If you can hook or trace `HwBinderDaemon.getService()`, you see **every command sent to the native daemon**.

2. **`DaemonManager` controls lifecycle.** If the daemon can be restarted at will, a modified daemon could be swapped in at runtime. Check whether `DaemonManager` verifies the daemon binary hash before starting.

3. **Death callbacks reveal crash behavior.** `IDaemonDiedCallback` + the anonymous inner classes (`$1`) register death recipients. If the daemon crashes (or is killed), what happens? Does the service silently fail? Does it auto-restart? An auto-restart without verification = persistence mechanism.

4. **The Fido layer has 3 callbacks** (`$1`, `$2`, `$3`) vs. 1 for the others. This suggests FIDO2 has a more complex async flow (challenge-response with multiple stages). If the Fido daemon is modified, the UVT data in `onAuthenticatedFido(J, I, B[])` could be a covert channel.

5. **No SELinux context in the proxy.** The proxy doesn't check `SELinux` context of the caller. It trusts that the AIDL layer above already validated the `opPackageName`. If the AIDL check is bypassed (e.g., via the exported activities), the proxy will happily forward any command to the daemon.

### What to search for in these smali files

| Target | What to look for |
|--------|-----------------|
| `HwBinderDaemon.smali` | The exact `HwBinder.getService()` call — service name string. Confirm it matches `vendor.goodix.hardware.biometrics.fingerprint@2.1::...` |
| `DaemonManager.smali` | Any `Process.start()` or `Runtime.exec()` — does it spawn the daemon? Does it verify the binary? |
| `GFDaemonExtImp.smali` | The `initCallback()` call — when is the callback registered? Can it be re-registered? |
| `IGFDaemonExt.smali` | Confirm the method list matches the AIDL. Any **extra methods** not in the AIDL would indicate a modified build. |
| Anonymous `$1` classes | Death recipient logic — what happens on daemon death? Auto-restart? Log only? |

---

## Relationship to Other Folders

| Folder | Relationship |
|--------|-------------|
| `../AIDL/` | The AIDL interfaces that **call into** this proxy. `IGoodixFingerprintInterface.testCmd()` → `DaemonProxy.getGoodixFingerprintDaemonExt()` → `IGFDaemonExt.dumpCmd()` |
| `../Smali/` | `DaemonProxy.smali` and `DaemonProxyBase.smali` are also in `../Smali/` (key files). This folder contains the **complete** proxy package including all inner classes and interfaces. |
| `../Resources/` | `resources.arsc` strings like `SPI speed change in REE/TEE` confirm the HIDL transport crosses the REE/TEE boundary. |

---

## Source

Extracted from `GoodixTest.apk` (SHA-256: `9b4d89acc9759b9f84611334b498c91bd3b94ed0885c8d09d637670c2ffd3da9`)
Package: `com.goodix.fingerprint.proxy`
Device: Motorola Moto G04s (XT2421-7), Unisoc T606, build `ULAS34.89-209-4`
Build host: `sh-16-52.rnd.longcheer.net`

**Note:** This package is **not publicly documented** by Goodix. The AIDL source files (in `../AIDL/`) are the interface definitions, but the proxy implementation (this folder) is proprietary Goodix code that has never been published. Its presence in a factory test APK is a packaging artifact — it should only exist in the vendor HAL library, not in a user-facing priv-app.
```

