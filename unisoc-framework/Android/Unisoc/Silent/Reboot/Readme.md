# android/unisoc/silent/reboot — Silent Party Rescue

### Path
`/system/system_ext/framework/unisoc-framework.jar` → `android/unisoc/silent/reboot/`

### What
AIDL interface for **unattended reboot** — the device reboots itself to apply FOTA
without user interaction. The "party" (device) "rescues" itself into a new state
while the user is unaware.

### The "Silent Party Rescue" theory

The name "silent reboot" is misleading. What it actually does:

1. **Schedules a party** — `UniPowerOnWakeup` sets RTC/PMIC wake timer (device OFF)
2. **Checks if the guest can stay** — `isDeviceMoving()` (GPS/accel: is user holding it?)
3. **Checks if the venue is ready** — `isPreparedForUnattendedReboot()` (battery, no call, etc.)
4. **Starts the party** — `silentRebootForApply()` → recovery → FOTA apply → boot
5. **If the party can't start** — `ShutdownCountdownActivity` (the "loud fallback")

The device "rescues" its own software state without waking the user.

### Key classes

| Class | Type | Role |
|---|---|---|
| `IUniSilentReboot` | AIDL (3 methods) | Interface: can we reboot silently? |
| `IUniSilentReboot$Stub` | AIDL server | `onTransact` (codes 1–3) |
| `IUniSilentReboot$Stub$Proxy` | AIDL client | Binder IPC wrapper |
| `UniSilentRebootManager` | Manager | Framework-side caller |

### Methods

| Method | Code | Return | Gate |
|---|---|---|---|
| `isDeviceMoving()` | 1 | `boolean` | GPS/accel: user has device? |
| `silentRebootForApply()` | 2 | `void` | **Triggers** the reboot |
| `isPreparedForUnattendedReboot()` | 3 | `boolean` | Battery, no call, screen off? |

### Decision logic (caller side)
  if (isPreparedForUnattendedReboot() && !isDeviceMoving()) {
silentRebootForApply(); // ← SILENT: no UI, no sound, no light
} else {
// Fallback: ShutdownCountdownActivity (15s, cancelable)
// or: ShutdownCountdownActivity (3s, NOT cancelable) [overheat]
}


### Differences vs. IUnionPnP

| | `IUnionPnP` | `IUniSilentReboot` |
|---|---|---|
| VINTF | Yes | **No** |
| `markVintfStability()` | Yes | **No** |
| Versioning (HASH) | Yes | **No** |
| Location | `/vendor/bin/hw/` (root) | `system_server` (framework) |
| Actuator | Kernel (CPU, GPU, IO) | **Recovery / A-B switch** |

### Cross-references
- Wake scheduler: `../../../com/android/server/alarm/` (UniPowerOnWakeup)
- Fallback UI: `../../../com/unisoc/internal/app/` (ShutdownCountdownActivity)
- FOTA transport: `../../../../../RemoteProvisioner/` (rkpdapp sync trigger)   
