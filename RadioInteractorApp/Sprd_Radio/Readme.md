## OMA-DM

┌─────────────────────────────────────────────────────────────────────┐
│ 1. SMS OMA-DM (o trigger interno)                                  │
│    • Origen: OMA-DM server de Telcel (comprometido)                 │
│    • O: SMS spoofed al número del kiosk                            │
│    • O: AT command vía RIL (BIND_RADIO_SERVICE)                    │
└───────────────────────────────┬─────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────────┐
│ 2. OMA-DM engine (mismo proceso com.android.phone, UID 1001)       │
│    • Procesa el payload XML                                         │
│    • Extrae APN bundle (proxy, addr, port, user, password)         │
│    • Envía broadcast: com.android.ApnDataConfig                     │
└───────────────────────────────┬─────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────────┐
│ 3. UniOmaApnReceiver (mismo proceso)                               │
│    • Recibe el bundle                                               │
│    • match proxy-id / napid                                         │
│    • WRITE en content://telephony/carriers/preferapn/subId          │
│    • APN rogue ahora es el DEFAULT o MMS del dispositivo           │
└───────────────────────────────┬─────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────────┐
│ 4. Resultado: TODO el tráfico celular va por el proxy rogue         │
│    • APN type=default → datos móviles → rogue proxy                 │
│    • APN type=mms → MMS → rogue proxy (exfiltración de SMS/MMS)    │
│    • Bootstrap APN → la conexión OMA-DM misma va por rogue          │
│    • Combined con CONTROL_VPN → VPN intercepta el tráfico Wi-Fi     │
│    • Combined con INSTALL_AS_USER → CA rogue para MITM TLS          │
└─────────────────────────────────────────────────────────────────────┘

## SIM Lock Attack

┌─────────────────────────────────────────────────────────────────────┐
│ 1. Comprometer proceso com.android.phone (UID 1001)                 │
│    • CVE-2022-27250 (AutoSLT)                                      │
│    • OMACP trigger                                                 │
│    • AT command vía RIL                                             │
└───────────────────────────────┬─────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────────┐
│ 2. RadioInteractor accesible (mismo proceso)                        │
│    • getNckCode() → deriva NCK del IMEI (determinista)             │
│    • setFacilityLock("PN", false, nck, ...) → DESBLOQUEA           │
│    • O: setFacilityLock("PN", true, rogue_nck, ...) → BLOQUEA      │
│      a un PLMN rogue                                                │
└───────────────────────────────┬─────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────────┐
│ 3. Resultado:                                                       │
│    • Device desbloqueado → se conecta a red rogue                   │
│    • O: device bloqueado a rogue PLMN → data por rogue gateway     │
│    • Combined con UniOmaApnReceiver → APN rogue + red rogue        │
└─────────────────────────────────────────────────────────────────────┘

## Dmyk

┌─────────────────────────────────────────────────────────────────────────┐
│ TRIGGER (pre-unlock, directBootAware)                                  │
│ • SMS OMACP → UniOmaApnReceiver (mismo proceso)                        │
│ • C2DM → com.dti.amx → IPC con UID 1001                               │
│ • AT command vía RIL (BIND_RADIO_SERVICE)                              │
│ • FOTA OTA → actualiza /system_ext/priv-app/UniTelephony               │
└───────────────────────────────┬─────────────────────────────────────────┘
                                │
                                ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ RECONFIGURACIÓN (proceso com.android.phone, UID 1001)                   │
│ • UniOmaApnReceiver → escribe APN rogue en preferapn                   │
│ • DmykTelephonyManager.Ap   


## persist.radio.engtest.nr.enable — Engineer backdoor
SystemProperties.get("persist.radio.engtest.nr.enable", "false")

Aspecto	Detalle
persist.	Sobrevive reboots (escrito en /data/property/ o /persist/)
radio.engtest.	Espacio de engineer test — no es una propiedad de runtime normal
nr.enable	Controla si 5G NR está habilitado
Accesible desde UID 1001	SystemProperties.get() no requiere permiso especial (cualquier proceso puede LEER). Para ESCRIBIR se necesita WRITE_SECURE_SETTINGS o root

Implicación: Si el atacante puede escribir en persist.radio.engtest.nr.enable (vía WRITE_SECURE_SETTINGS que tiene com.dti.amx — aunque tú lo revocaste, o vía AT command al modem), puede forzar 5G SA o deshabilitar 5G para controlar qué red usa el dispositivo.

## Conclusión 
com.unisoc.phone (con UniTputController + UniSmartCarrierManager + UniOmaApnReceiver + TelcelOnekeyLock) es el control plane de radio celular del ODM. No es una "app de telefonía" — es un SDK de control total del radio que Unisoc/Longcheer empaquetan en el firmware y que les da:

Acceso directo al baseband (AT commands arbitrarios)
Acceso a APIs hidden del framework (PhoneFactory, IProcessObserver, getRunningTasks)
Control de la red (APN, 5G, throughput, throttling)
Monitorización del usuario (foreground app, screen state, connectivity)
Backdoors de fábrica (persist.radio.engtest.*, SPASENGMD)
Junto con WiFi UniApp (control WiFi/VPN/CA) y Radio Controller (HAL/vendor), el ODM tiene control total de todas las interfaces de radio del dispositivo, independiente del framework de Android
