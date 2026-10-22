# Network - Covert Control Plane Live PCAP
Config: ipv4/6 quad9 853 los dialers spliters usan 443 udp si les bloqueas quic mueren
Device: Moto G04s XT2421-7 Unisoc T606 Longcheer ULA34.89-209-4
Tool: PCAPdroid 2.0.2 DNS 9.9.9.9 / 2620:fe::9:853 Block Private DNS ON Block QUIC Always

## Report
Bytes sent: 3.9 MB Bytes received: 39.5 MB IPv6 bytes sent: 3.0 MB IPv6 bytes received: 38.0 MB IPv6 bytes percentage: 94% Packets sent: 12.3 K Packets received: 16.2 K Active connections: 12 Dropped connections: 0 Total connections: 365 DNS server: 9.9.9.9 DNS queries: 253

## infra - ULA -> Quad9/Google DoT blocked + Facebook STUN Fallback
[W] 21/Oct/2026 19:32:35 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:47049 -> 2620:fe:9:853:53 net/host unreachable
[W] 21/Oct/2026 19:32:35 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:19175 -> 2620:fe:9:853:53
...
[TCP6] fd00:2:fd00:1:fd00:1:fd00:1:35214 -> 2a03:2880:f38a:8:face:b00c:0:38d9:5222 UID not found!
[TCP4] 10.215.173.1:55260 -> 57.144.79.54:3478 UID not found!


## Report
Bytes sent: 3.9 MB
Bytes received: 39.5 MB
IPv6 bytes sent: 3.0 MB
IPv6 bytes received: 38.0 MB
IPv6 bytes percentage: 94%
Packets sent: 12.3 K
Packets received: 16.2 K
Active connections: 12
Dropped connections: 0
Total connections: 365
DNS server: 9.9.9.9
DNS queries: 253
Heap usage: 6.4 MB / 256.0 MB (2%)
Memory usage: 2.6 GB / 3.7 GB (68%)
Low memory: No
Open sockets: 11

## infra 
[W] 21/Oct/2026 19:32:35 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:47049 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:35 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:9175 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:35 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:5726 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:37 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:53098 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:32:37 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:53098 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:32:38 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:53098 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:32:39 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:56544 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:32:39 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:56544 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:32:39 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:43839 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:39 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:30460 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:39 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:56544 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:32:40 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:50678 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:40 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:49386 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:41 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:36481 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:41 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:57750 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:43 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:55837 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:32:43 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:55837 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:32:47 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:59728 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:47 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:6284 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:47 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:36481 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:47 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:57750 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:51 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:51670 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:32:51 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:51670 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:32:53 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:6284 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:53 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:59728 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:53 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:7118 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:53 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:41752 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:54 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:47429 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:32:55 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:47429 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:32:59 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:57757 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:59 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:54192 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:59 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:7118 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:32:59 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:41752 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:33:05 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:54192 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:33:05 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:57757 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:33:18 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:13474 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:33:18 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:49703 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:33:18 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:55929 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:33:18 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:7186 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:35:26 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:46774 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:36:19 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:46774 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:36:20 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:16107 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:20 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:55340 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:27 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:13474 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:27 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:49703 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:27 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:55929 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:27 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:7186 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:34 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:41353 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:36:34 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:41353 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:36:34 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:41353 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:36:34 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:41353 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:36:35 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:55340 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:35 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:16107 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:43 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:50028 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:43 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:49150 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:43 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:19774 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:43 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:30609 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:43 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:5515 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:43 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:7999 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:43 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:18051 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:43 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:7322 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:45 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:49698 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:36:45 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:49698 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:36:45 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:49698 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:36:45 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:49698 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:36:46 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:32272 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:46 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:15914 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:46 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:12487 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:46 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:55448 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:46 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:59300 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:46 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:24322 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:46 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:23400 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:46 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:38773 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:46 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:22541 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:46 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:9045 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:46 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:28151 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:46 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:53334 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:46 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:14452 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:46 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:27970 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:47 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:40918 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:36:47 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:40918 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:36:47 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:40918 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:36:47 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:40918 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:36:49 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:50028 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:49 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:49150 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:52 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:37009 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:52 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:48358 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:52 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:15914 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:52 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:32272 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:52 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:24322 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:52 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:23400 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:52 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:38773 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:52 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:22541 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:52 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:27970 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:52 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:14452 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:55 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:5271 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:55 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:22328 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:55 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:45233 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:36:55 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:45233 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:36:56 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:55488 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:56 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:30383 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:56 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:45233 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:36:57 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:35623 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:57 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:29791 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:57 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:45233 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:36:57 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:44461 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:36:58 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:37009 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:58 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:48358 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:58 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:33580 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:58 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:20567 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:58 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:60057 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:58 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:9786 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:58 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:2189 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:58 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:30427 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:59 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:65168 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:59 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:10363 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:36:59 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:44461 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:36:59 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:44461 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:37:00 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:44461 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:37:01 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:5271 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:01 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:22328 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:02 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:30383 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:02 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:55488 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:03 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:35623 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:03 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:29791 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:04 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:20567 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:04 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:33580 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:04 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:9786 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:04 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:60057 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:04 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:2189 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:04 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:30427 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:05 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:10363 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:05 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:65168 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:06 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:16008 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:06 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:64717 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:06 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:1823 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:06 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:32072 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:07 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:50205 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:07 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:12032 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:07 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:36038 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:07 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:22703 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:09 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:46054 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:37:09 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:46054 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:37:10 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:46054 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:37:10 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:46054 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:37:10 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:5333 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:10 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:28800 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:10 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:18600 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:10 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:54326 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:10 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:46054 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:37:11 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:46054 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:37:11 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:39406 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:37:11 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:39406 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:37:12 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:39406 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:37:12 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:39406 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:37:12 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:39406 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:37:12 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:16008 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:12 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:64717 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:12 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:1823 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:12 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:32072 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:12 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:39406 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:37:13 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:50205 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:13 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:12032 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:13 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:36038 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:13 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:22703 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:16 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:18600 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:16 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:54326 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:18 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:60636 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:18 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:40312 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:18 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:46434 -> 2001:4860:4860::8844:53: net/host unreachable
[W] 21/Oct/2026 19:37:18 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:14014 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:18 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:55958 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:19 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:7810 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:19 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:28662 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:19 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:22322 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:19 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:31125 -> 2620:fe::9:853:53: net/host unreachable
[W] 21/Oct/2026 19:37:22 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:53936 -> 2001:4860:4860::8888:53: net/host unreachable
[W] 21/Oct/2026 19:37:23 - [UDP6] fd00:2:fd00:1:fd00:1:fd00:1:53936 -> 200
