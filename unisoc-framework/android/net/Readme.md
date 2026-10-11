# android/net — Network Performance & QoS

### Path
`/system/system_ext/framework/unisoc-framework.jar` → `android/net/`

### What
Framework-side network control: QoS per UID, MultiPath TCP, WiFi+Cellular bonding,
traffic throttling, and raw daemon commands. This is the **network equivalent** of
`IUnionPnP` (which controls CPU/GPU/IO).

### Key classes

| Class | Type | Role |
|---|---|---|
| `INetworkAdapterService` | AIDL (33 methods) | QoS, MPTCP, SLA whitelists, throttling, `sendCmdsToDaemon` |
| `INetworkAdapterService$Stub` | AIDL server | `onTransact` dispatch (codes 1–0x21) |
| `INetworkAdapterService$Stub$Proxy` | AIDL client | Binder IPC wrapper |
| `ILinkTurboManager` | AIDL (6 methods) | WiFi+Cellular bonding, MultiPath HTTP (RFC 8684) |
| `ILinkTurboManager$Stub` / `$Proxy` | AIDL | Same pattern |
| `INetworkReachableNotifier` | AIDL (1 method) | One-way callback: `onNotifyNetworkReachable(boolean)` |
| `LinkTurboManagerImpl` | Impl | Framework-side manager (callbacks, network binding) |
| `LinkTurboMonitorImpl` | Monitor | 6 lambdas: throughput/latency/signal polling → bonding decisions |
| `LinkTurboThread` | Thread | Dedicated thread for Link Turbo operations |

### INetworkAdapterService — 33 methods by category

| Category | Methods | Codes |
|---|---|---|
| Socket mgmt | `closeInterfaceSockets`, `destorySocketByUid` | 1, 2 |
| Reachability | `probeNetworkReachableActually`, `register/unregisterNotifier` | 3, 4, 5 |
| IPv6 | `setIPv6Mtu`, `deleteExtraIPv6Addr` | 6, 0xa |
| **Raw daemon** | `sendCmdsToDaemon(String)` | 7 |
| DNS | `setDnsFilterEnabled` | 8 |
| Ethernet | `setEthernetInterface` | 9 |
| Binding | `bindAppUidToNetwork`, `bindDstIpToNetwork` | 0xb, 0xc |
| MPTCP | `getMptcpStatus`, `setMptcpStatus` | 0xd, 0xe |
| VoWiFi | `doPingForVowifi` | 0xf |
| Traffic limit | `initTrafficLimit`, `setTrafficLimit`, `enableTrafficLimit`, `addAllowedListUidForTraffic` | 0x10–0x13 |
| AP restrictor | `setApSpeedRestrictorKbit/Kbyte/Mbyte`, `abolishApSpeedRestrictor` | 0x14–0x17 |
| **QoS priority** | `setPriorityByUid`, `flushPriorityRules`, `setWifiPriorityByUid`, `flushWifiPriorityRules` | 0x18, 0x19, 0x1a, 0x1b |
| Network info | `getMobileNetworkType`, `getNetworkType` | 0x1c, 0x1d |
| **SLA whitelists** | `getSlaWhiteListApp`, `getGameSlaWhiteListApp`, `getSpecialSlaWhiteListApp`, `updateSlaAppStatus` | 0x1e–0x21 |

### Notable
- `sendCmdsToDaemon(String)` — sends **raw commands** to network daemon (tc, iptables, ip rule)
- Dual QoS: cellular (`setPriorityByUid`) and WiFi (`setWifiPriorityByUid`) are **separate**
- 3 SLA tiers: normal / game / special (each returns `Map<String, String>`)
- No VINTF, no versioning — pure framework service

### Cross-references
- Decisor: `../../unisoc-services/` (UnisocProxyManagerService)
- CPU side: `../../unipnp/` (IUnionPnP)
- VINTF: `../../Vintf/` (vendor.sprd.hardware.network)   
