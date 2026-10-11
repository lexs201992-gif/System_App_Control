# com/unisoc/internal/app — Shutdown Countdown (FOTA Fallback UI)

### Path
`/system/system_ext/framework/unisoc-framework.jar` → `com/unisoc/internal/app/`

### What
The **user-visible fallback** when silent reboot cannot proceed. Shows a countdown
dialog before the device shuts down/reboots. Two modes: normal (cancelable) and
overheat (NOT cancelable).

### Key class

| Class | Role |
|---|---|
| `ShutdownCountdownActivity` | Activity: countdown dialog + `IPowerManager.shutdown()` |

### Two modes

| | Normal | Overheat |
|---|---|---|
| Countdown | **15 s** | **3 s** |
| Cancelable | Yes | **No** |
| Window type | `0x80b0001` | `0x80b0000` (higher priority) |
| Intent extra | `"ShutdownTiming"` | `"ShutdownDueToOverheat" = 1` |

### Critical mechanisms

| Mechanism | Purpose |
|---|---|
| `setProcessProtectStatusByPid(pid, RUNNING)` | **Custom IActivityManager method** — prevents OOM kill during countdown |
| `PhoneStateListener` (CALL_STATE) | Cancel shutdown if call is active |
| `PARTIAL_WAKE_LOCK` | Keep CPU alive for `postDelayed` timer |
| `FLAG_SHOW_WHEN_LOCKED` + `FLAG_TURN_SCREEN_ON` | Show over lock screen, wake display |
| `sSingleInstance` guard | Prevent overlapping countdowns |

### `setProcessProtectStatusByPid` — ODM extension to IActivityManager

```java
ActivityManager.getService().setProcessProtectStatusByPid(myPid(), status);
// status: 0 = IDLE (normal), 1 = RUNNING (protected from kill)

This method does not exist in AOSP. It's a custom addition by Unisoc to
IActivityManager that marks a process as "protected" so the OOM killer and
am kill cannot terminate it.

When it's triggered

IUniSilentReboot.isPreparedForUnattendedReboot() → false
  OR isDeviceMoving() → true
    → Silent reboot CANCELLED
    → ShutdownCountdownActivity launched (user sees countdown)

Cross-references
Silent path: ../../../android/unisoc/silent/reboot/ (IUniSilentReboot)
Wake scheduler: ../../../com/android/server/alarm/ (UniPowerOnWakeup)
FOTA: ../../../../RemoteProvisioner/ (rkpdapp)
