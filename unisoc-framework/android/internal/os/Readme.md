
---

## `com/android/internal/os/README.md`

```markdown
# com/android/internal/os — CPU Sensors & Background Thread

### Path
`/system/system_ext/framework/unisoc-framework.jar` → `com/android/internal/os/`

### What
The **sensor layer** for the performance pipeline. Detects when the system is
under heavy kernel load or when the main thread is blocked. Feeds decisions to
`UnisocProxyManagerService` which then calls `IUnionPnP`.

### Key classes

| Class | Role |
|---|---|
| `UnisocProcessCpuTracker` | Subclass of AOSP `ProcessCpuTracker`. Overrides `isCpuUsageHighInSystem()` |
| `UnisocBgThread` | Singleton `HandlerThread` ("unisoc.bg", priority 10) for Unisoc services |

### `UnisocProcessCpuTracker` — the trigger

```java
// isCpuUsageHighInSystem() logic:
int userUsage   = (user * 100) / total;
int systemUsage = (system * 100) / total;

// "System busy" = kernel consuming more than user-space AND ≥ 40%:
if (userUsage <= systemUsage && systemUsage >= 40) {
    Slog.w("ProcessCpuTracker", "system is busy!");
    return true;  // ← triggers IUnionPnP tuning
}
What it detects: driver-heavy workloads (NPU inference, GPU rendering,
modem burst, I/O storms) — NOT app-level CPU usage.

UnisocBgThread
| Field | Value |
|---|---|
| Name | `"unisoc.bg"` |
| Priority | `10` (THREAD_PRIORITY_LOW) |
| Init | Lazy (first `get()`) |
| Slow dispatch | 10,000 ms |
| Slow delivery | 30,000 ms |
| API | `get()`, `getHandler()`, `getExecutor()` |

Position in pipeline
UnisocProcessCpuTracker (THIS)  →  "system is busy"
AppWatchdogImpl (android/app/)  →  "main thread blocked"
        │
        ▼
UnisocProxyManagerService (unisoc-services/)  →  decision
        │
        ▼
IUnionPnP (unipnp/)  →  kernel

Cross-references
Watchdog: ../../../android/app/ (AppWatchdogImpl)
Decisor: ../../../../unisoc-services/
Actuator: ../../../../unipnp/ (IUnionPnP)
