┌─────────────────────────────────────────────────────────────────────────┐
│ 1. com.unisoc.phone (UniTelephonyApp) — RADIO CELLULAR                 │
│    • RIL directo (BIND_RADIO_SERVICE)                                  │
│    • AT commands arbitrarios (SPASENGMD, etc.)                         │
│    • APN reconfiguración (OMACP)                                       │
│    • 5G SA/NSA control (PhoneFactory + getSA)                          │
│    • Throughput control (speedtest_control)                            │
│    • Data throttling (ThermalMitigationRequest)                        │
│    • SIM lock (PN, NCK derivable)                                      │
│    • Foreground monitoring (IProcessObserver)                          │
│    • persist.radio.engtest.* (engineer backdoor)                       │
├─────────────────────────────────────────────────────────────────────────┤
│ 2. WiFi UniApp — RADIO WIFI                                            │
│    • SoftAP + Passpoint (OVERRIDE_WIFI_CONFIG)                         │
│    • OSU server (tethering)                                            │
│    • VPN (CONTROL_VPN + CONTROL_ALWAYS_ON_VPN)                         │
│    • CA installation (INSTALL_AS_USER)                                 │
│    • MAINLINE_NETWORK_STACK                                            │
├─────────────────────────────────────────────────────────────────────────┤
│ 3. Radio Controller — HAL/VENDOR                                       │
│    • cplog_svc (modem logging)                                         │
│    • HAL services (vendor.sprd.hardware.*)                             │
│    • Baseband control (reboot, dump, state)                            │
└─────────────────────────────────────────────────────────────────────────┘   
