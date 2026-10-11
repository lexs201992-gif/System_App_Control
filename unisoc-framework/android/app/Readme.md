
---

## `android/app/README.md`

```markdown
# android/app — Main Thread Watchdog

### Path
`/system/system_ext/framework/unisoc-framework.jar` → `android/app/`
`vfs://2063416765/android/app/AlarmManagerWrapper.smali
vfs://2063416765/android/app/AppWatchdogImpl%24%24ExternalSyntheticLambda0.smali
vfs://2063416765/android/app/AppWatchdogImpl.smali
vfs://2063416765/android/app/LinkTurboApp%241.smali
vfs://2063416765/android/app/LinkTurboApp%242.smali
vfs://2063416765/android/app/LinkTurboApp.smali
vfs://2063416765/android/app/UnisocApplicationErrorReportImpl.smali
vfs://2063416765/android/app/UnisocDynamicDebugManagerImpl%24DynamicDebugControllerSingleton-IA.smali
vfs://2063416765/android/app/UnisocDynamicDebugManagerImpl%24DynamicDebugControllerSingleton.smali
vfs://2063416765/android/app/UnisocDynamicDebugManagerImpl.smali`
### What
`AppWatchdogImpl` — a **non-invasive** main thread monitor. Unlike AOSP's
`AppWatchdog` (which crashes the app), this one **only logs**. It detects when
the main thread is blocked and provides a signal for the performance system.

### Key class

| Class | Role |
|---|---|
| `AppWatchdogImpl` | Subclass of AOSP `AppWatchdog`. Thread-based watchdog with `AtomicBoolean` |

### How it works
   Loop (while mIsWorking):

mBlocked.set(true)
mMainHandler.postAtFrontOfQueue(() -> mBlocked.set(false))
sleep(4000ms) [CHECK_INTERVAL]
if (mBlocked.get()) {
// Main thread did NOT execute the callback → BLOCKED
Log.w("AppWatchdog", "main thread may be blocked", stackTrace)
} else {
sleep(2000ms) [RESET_INTERVAL]
}

### Configuration (SystemProperties)

| Property | Default | Meaning |
|---|---|---|
| `debug.appwatchdog.check_interval` | `4000` ms | How long to wait for main thread response |
| `debug.appwatchdog.reset_interval` | `2000` ms | Pause between checks when OK |

### vs. AOSP

| | AOSP `AppWatchdog` | Unisoc `AppWatchdogImpl` |
|---|---|---|
| On detection | **Crash** (RuntimeException) | **Log only** (Log.w) |
| Mechanism | Looper timestamps | `AtomicBoolean` + `postAtFrontOfQueue` |
| Purpose | Kill unresponsive apps | **Feed performance system** |

### Why non-invasive
It's a **sensor**, not a killer. The signal goes to `UnisocProxyManagerService`
which may then call `IUnionPnP.setAffinity()` to move the blocked process to
big cores, or `setUclamp()` to boost its frequency ceiling.

### Cross-references
- CPU sensor: `../os/` (UnisocProcessCpuTracker)
- Decisor: `../../../unisoc-services/`
- Actuator: `../../../unipnp/`

