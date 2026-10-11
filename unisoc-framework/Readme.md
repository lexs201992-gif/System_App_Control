# unisoc-framework.jar — ODM Framework Extension (Longcheer/Unisoc)

### Identity
- Location: `/system/system_ext/framework/unisoc-framework.jar`
- Classloader: **Boot classpath extension** (loaded with framework.jar)
- Signed by: **Longcheer** (ODM platform key)
- Update channel: **FOTA** (ULAS34.89-209-4) — NOT Google Play
- NOT AOSP. NOT visible in standard `framework.jar` or `services.jar`.

### What it is
The **ODM injection layer** that Longcheer places in the Android boot classpath
to gain control over CPU, network, FOTA, telephony, and UI — without modifying
Google's system image.

### Package map

| Package | Role | Key classes |
|---|---|---|
| `android/os` | OS hooks | `UnisocProcessCpuTracker`, `UnisocBinderTracker`, `UnisocProcess`, `UnisocUserManager` |
| `android/app` | App monitoring | `AppWatchdogImpl` (main thread watchdog, 4s threshold) |
| `android/net` | **Network performance** | `ILinkTurboManager`, `INetworkAdapterService`, `INetworkReachableNotifier` |
| `android/unisoc/silent/reboot` | **FOTA reboot** | `IUniSilentReboot` (AIDL), `UniSilentRebootManager` |
| `android/telephony` | Modem control | `ModemStatusTrackerImpl`, `UniSettings` |
| `android/media` | Audio extension | `IAudioServiceEx` (AIDL) |
| `android/location` | GPS extension | `UnisocGpsNetInitiatedHandler`, `UnisocLocationUtilsManagerImpl` |
| `android/view` | UI hooks | `UnisocChoreographerImpl`, `UnisocViewRootImpl` |
| `android/mtp` | USB MTP | `UnisocMtpDatabaseImpl` |
| `android/graphics` | Bitmap debug | `UnisocSaveBitmapToFileImpl` |
| `android/content/pm` | Package manager | `UniPackageManagerUtilsImpl` |
| `android/util` | Utilities | `UniFrameworkComponentFactoryImpl`, `WmTraceFileInterceptorImpl` |
| `com/android/internal/os` | Internal OS | `UnisocBgThread` (HandlerThread "unisoc.bg", priority 10) |
| `com/android/internal/telephony` | **Telephony HAL** | `IUniTelephony` (AIDL), `SimStateTracker`, `DataEnableController` |
| `com/android/internal/telephony/simlock` | SIM lock | Operator-specific controllers (Airtel, MTN, Orange, True, Tigo) |
| `com/android/internal/telephony/uicc` | UICC/SIM | `UniIccRecords`, `UniRoamingBrokerController` |
| `com/android/internal/telephony/phonebook` | SIM phonebook | `IUniIccPhoneBook` (AIDL) |
| `com/android/server/alarm` | **Power-on wakeup** | `UniPowerOnWakeup` (RTC/PMIC wake via `unipoweron_jni.so`) |
| `com/unisoc/internal/app` | Shutdown UI | `ShutdownCountdownActivity` (15s normal / 3s overheat) |
| `com/unisoc` | Manifest/R | `Manifest`, `R*`, permissions |

### Architecture
   ┌─────────────────────────────────────────────────────────────────────────────┐
│ unisoc-framework.jar (THIS — system_ext/framework, boot classpath) │
│ │
│ SENSORS: │
│ • UnisocProcessCpuTracker → isCpuUsageHighInSystem() [40% sys threshold]│
│ • AppWatchdogImpl → main thread blocked? [4s threshold] │
│ • INetworkReachableNotifier → network up/down callback │
│ │
│ DECISION: │
│ • UnisocProxyManagerService (in unisoc-services.jar, same process) │
│ • ProxyConfigFeature XML → allowlists, actions, max count │
│ │
│ TRANSPORT: │
│ • IUnionPnP$Stub$Proxy → Binder IPC → vendor HAL │
│ • ILinkTurboManager → Binder IPC → network service │
│ • INetworkAdapterService → Binder IPC → network daemon │
│ │
│ ACTUATORS (vendor HALs, /vendor/bin/hw/, root): │
│ • unionpnp_service → IUnionPnP → kernel (uclamp, affinity, ioprio) │
│ • ai_engine → IAIEngineControl → NPU │
│ • enhance → IEnhance → Gaming engine │
│ │
│ FOTA: │
│ • UniPowerOnWakeup → native setPower() → RTC/PMIC wake from OFF │
│ • IUniSilentReboot → silentRebootForApply() │
│ • ShutdownCountdownActivity → fallback UI (15s/3s) │
│ • setProcessProtectStatusByPid() → protect from OOM kill │
└─────────────────────────────────────────────────────────────────────────────┘


### Performance pipeline (CPU/GPU/IO)
   UnisocProcessCpuTracker.isCpuUsageHighInSystem()
→ userUsage <= systemUsage && systemUsage >= 40%
→ "system is busy!"

AppWatchdogImpl
→ postAtFrontOfQueue(callback) + sleep(4000ms)
→ if callback not executed → "main thread may be blocked"

UnisocProxyManagerService (decisor)
→ matches broadcast/service/wakelock rules from XML
→ calls IUnionPnP:
setUclamp(pid, min, max)
setAffinity(pid, bigCores)
setGPUBoost(level)
setIoprio(pid, class, data)
setIolimit(pid, read, write)
perferIdle(pid, ...)
sceneChangedNotify("game")
notifyAppChanged(pkg, state, pid, uid)


### Network pipeline (QoS/Bonding)
INetworkAdapterService (33 methods):
• setPriorityByUid(uid, priority) → cellular QoS (tc + iptables)
• setWifiPriorityByUid(uid, priority) → WiFi QoS (separate rules)
• setMptcpStatus(true/false) → MultiPath TCP
• bindAppUidToNetwork(uid, network) → pin app to specific network
• bindDstIpToNetwork(ip, network) → pin destination IP
• setTrafficLimit(enabled, limit) → global throttle
• setApSpeedRestrictorKbit/Mbyte(dir, limit) → hotspot speed cap
• sendCmdsToDaemon(String) → RAW commands to network daemon
• getSlaWhiteListApp() / getGameSlaWhiteListApp() / getSpecialSlaWhiteListApp()

ILinkTurboManager (6 methods):
• registerLinkTurboCallback(messenger, binder, pkg) → per-app bonding
• registerMpHttpNetworkCallback(messenger, binder) → RFC 8684
• getNetwork(pkg) → bonded Network object
• onBindedNetworkFinished(handle, status) → one-shot notification


### FOTA pipeline
   Download complete (ULAS34.89-209-4)
→ UniPowerOnWakeup.setPowerOnToRtc(3AM, PendingIntent→silentReboot)
→ native setPower(epoch_ms) → RTC/PMIC register (Dimensity 7020)

[Device OFF]
→ 3AM: RTC fires → PMIC powers on SoC
→ Boot → FOTA service detects pending update
→ IUniSilentReboot.isPreparedForUnattendedReboot() → true?
→ IUniSilentReboot.isDeviceMoving() → false?
→ IUniSilentReboot.silentRebootForApply()
→ Recovery → apply → boot normal

[Fallback: device moving or battery low]
→ ShutdownCountdownActivity (15s, cancelable)
→ setProcessProtectStatusByPid(RUNNING)
→ PhoneStateListener (cancel if call active)
→ IPowerManager.shutdown()


### Debug / Backdoors

| Mechanism | Access | Effect |
|---|---|---|
| `cmd unisoc_proxy dump` | ADB shell | Full proxy state |
| `cmd unisoc_proxy debug-enable` | ADB shell | **Reflection**: all `DEBUG*` fields → true |
| `cmd unisoc_proxy enable BR <pkg>` | ADB shell | Activate broadcast proxy |
| `cmd unisoc_proxy clearall` | ADB shell | Clear all proxies |
| `persist.unipnp.debug.background_agent` | setprop | Enable verbose logging |
| `debug.unibinder.tracker.enabled.<uid>` | setprop | Per-UID binder call monitoring |
| `debug.unibinder.tracker.slow.<uid>` | setprop | Slow threshold (default 50ms) |
| `persist.sys.alarm.debug` = "1" | setprop | PowerOnWakeup verbose logs |
| `debug.appwatchdog.check_interval` | setprop | Watchdog interval (default 4000ms) |
| `INetworkAdapterService.sendCmdsToDaemon(String)` | Binder (privileged) | **Raw network daemon commands** |

### VINTF

IUnionPnP` is declared in `/vendor/etc/vintf/unionpnpdefault`:
xml
<hal format="aidl">
    <name>vendor.sprd.hardware.unipnp</name>
    <interface>
        <name>IUnionPnP</name>
        <instance>default</instance>
    </interface>
</hal>

## Init service (/vendor/etc/init/unionpnp.rc):

service unionpnp_service /vendor/bin/hw/unionpnp_service
     class main
     user root
     group system
     interface aidl vendor.sprd.hardware.unipnp.IUnionPnP/default

## IUnionPnP interface (AIDL)
| Method | Code | Params | Kernel target |
|---|---|---|---|
| `setUclamp` | 1 | `(int, int, int)` | `/sys/.../uclamp_min/max` |
| `setAffinity` | 2 | `(int, int)` | `sched_setaffinity()` |
| `setGPUBoost` | 3 | `(int)` | GPU DVFS |
| `notifyAppChanged` | 4 | `(String, int, int, int)` | workload classification |
| `setIoprio` | 5 | `(int, int, int)` | `ioprio_set()` |
| `setIolimit` | 6 | `(int, int, int)` | cgroup blkio |
| `perferIdle` | 7 | `(int, int, int)` | cpufreq governor |
| `sceneChangedNotify` | 8 | `(String)` | profile switch |

DESCRIPTOR: vendor.sprd.hardware.unipnp.IUnionPnP
HASH: 7a32b7bfdbb9f376d2a3ea59b3dcb47fdea2f5e0
VERSION: 1
markVintfStability(): yes

## Files in this folder
unisoc-framework/
├── README.md (this file)
├── assets/
│   ├── unisoc-framework.jar        (original binary)
│   └── classes.dex                 (decompiled source)
└── (smali sources organized by package — see upload)   

## Relationship to other folders
unisoc-framework/ (THIS)     → sensors + transport + FOTA + hooks
unisoc-services/             → UnisocProxyManagerService (decisor)
unipnp/                      → IUnionPnP HAL (interface + Stub + Proxy)
Vintf/                       → HAL manifests + compatibility matrix
init/                        → .rc service files
RemoteProvisioner/           → rkpdapp APEX (C2 sync + attestation)
com.android.virt/            → AVF (dormant, Longcheer-signed)   



