# com/android/server/alarm — Power-On Wakeup (RTC/PMIC)

### Path
`/system/system_ext/framework/unisoc-framework.jar` → `com/android/server/alarm/`
`vfs://694101562/com/android/server/alarm`

### What
Programs the **hardware RTC/PMIC wake timer** to power ON the device from complete
OFF state at a specific time. This is what makes unattended FOTA possible —
the device wakes itself from a dead state.

### Key classes

| Class | Role |
|---|---|
| `UniPowerOnWakeup` | Manager: list of scheduled wakeups, calls native `setPower()` |
| `UniPowerOnWakeup$PowerOnWakeup` | Record: `triggerAtTime` (long) + `operation` (PendingIntent) |

### The native bridge

java
static { System.loadLibrary("unipoweron_jni"); }
private static native int setPower(long timeMillis);

Writes to the PMIC wake timer register of MediaTek Dimensity 7020.
Persists across battery pull (RTC backed by CR2032 coin cell).

Semantics

| `triggerAtTime` value | Meaning |
|---|---|
| `> 0` | Schedule wake at epoch ms |
| `0` | **CANCEL** (clear for that package) |


setPowerOnToRtcLocked logic
Reject past times (log warning)
Remove expired entries from list
Replace duplicate PendingIntent (equals)
Cancel by package (shouldRemove — same getCreatorPackage())
Add new entry
Track mNextPowerOnWakeup (earliest pending)
If list empty → setPower(0) (clear hardware)
If changed → setPower(mNextPowerOnWakeup) (write to PMIC)
Debug
persist.sys.alarm.debug = "1" → verbose Slog.d("UnisocAlarmManagerService", ...)
Cross-references
Consumer: ../../../android/unisoc/silent/reboot/ (IUniSilentReboot)
PendingIntent target: FOTA service → silentRebootForApply()
Fallback: ../../../com/unisoc/internal/app/ (ShutdownCountdownActivity)
