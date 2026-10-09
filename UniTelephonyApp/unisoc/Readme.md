
---

## Inventario actualizado: UniTelephonyApp

| Componente | Rol | Evidencia en smali |
|-----------|-----|-------------------|
| `TelcelOnekeyLockActivity` | SIM lock UI (NCK = f(IMEI)) | `setFacilityLockByUser("PN", ...)`, `queryFacilityLock` |
| `TelcelOnekeyLockUtil` | NCK derivation | `getNckCode()`, `resetSimLockRemainTimes()`, `saveRemainTimes()` |
| `TigoOnekeyLockUtil` | NCK derivation (Tigo) | Same pattern, different multiplier |
| `UniOmaApnReceiver` | OMA-DM → APN rewrite | Receives `ApnDataConfig`, writes `preferapn` |
| `UniTputController` | AT commands + foreground monitor | `AT+SPASENGMD` |
| `UniSmartCarrierManager` | 5G NR + PhoneFactory + throttling | `persist.radio.engtest.nr.enable` |
| `DmykTelephonyManager` | Binder + BT PAN + APN observer | Published service |
| `BootupService` | Boot init (MODIFY_PHONE_STATE) | Service, not receiver |
| `AcsProvisioningAlertDialog` | Auto Carrier Selection | Provisioning UI |
| `AutoEnableDataActivity` | Force data ON (kiosk) | Kiosk mode |
| `UplmnSettings` | PLMN lock | `UPLMNSETTINGS` permission |
| `SdnSyncService` | SIM Download Name (contacts preload) | Factory provisioning |
| `PreloadContactsSyncService` | Contact preload | Factory provisioning |

**Todo en el mismo proceso (`com.android.phone`, UID 1001), mismo cert Longcheer, full-access hidden API, SELinux complete policy.**

TelcelOnekeyLockActivity ("Network personalization")
  │
  ├── User enters new PIN (mEditPwd + mEditPwdConfirm)
  │
  ├── verifyNck()
  │     → TelcelOnekeyLockUtil.getNckCode()
  │     → NCK = f(IMEI)  [deterministic, no user input]
  │
  ├── doLock() / doUnLock()
  │     → RadioInteractor.setFacilityLockByUser("PN", true/false, messenger, 1, 0)
  │     → RadioInteractor (Axis 3, persistent=true)
  │     → Baseband: AT+CLCK (SIM lock/unlock)
  │
  └── On success:
        → mSimLockUtil.resetSimLockRemainTimes(true)
        → SIM locked/unlocked to Telcel   


  ## UniWifiApConfigStore (kiosk)
  Axis 1: UniWifiApConfigStore (kiosk)
  │
  │  Define: OSU server URI (en el Passpoint config)
  │  Ej: "https://rogue-osu.attacker.com/signup"
  │  O:   "http://192.168.1.1:8080/cert_install"  ← cleartext (permitido)
  │
  ▼
Usuario se conecta al Passpoint (auto-join, sin prompt)
  │
  ▼
Android detecta OSU → lanza OsuLoginActivity (Google APEX)
  │
  │  WebView carga la URL del OSU server
  │  bindProcessToNetwork → solo por WiFi OSU
  │
  ▼
OSU server (rogue) entrega:
  │
  ├── Opción A: Página HTML con <a href="intent:#Intent;action=android.credentials.INSTALL_AS_USER;...">
  │     → Usuario toca → CertInstaller (Longcheer) → CA rogue instalada
  │
  ├── Opción B: Página HTML con JS que dispara el intent automáticamente
  │     → Sin interacción (si el usuario no cierra el WebView)
  │
  └── Opción C: Download de .crt / .wificonfig
        → CertInstallerMain (VIEW) → WiFiInstaller / CertInstaller  

## OMA-DM payload (XML) → OMA-DM engine (com.android.phone)
OMA-DM payload (XML) → OMA-DM engine (com.android.phone)
  │
  │  Extra: "app0", "app1", ... (Bundle[] de APN configs)
  │  Extra: "apnBundle" (Bundle: proxy-id, napid, addr, pxaddr, portnbr,
  │           user, password, protocol, pxaddrtype, appid, napdef_name)
  ▼
UniOmaApnReceiver.onReceive()
  │
  ├── Para cada appBundle[i]:
  │     │
  │     ├── ¿to-proxy match proxy-id?
  │     │     ├── appid="w4" → MMS:
  │     │     │     putContentValuesNull()  [borra todo]
  │     │     │     type="mms"
  │     │     │     mmsc = addr
  │     │     │     mmsproxy = pxaddr
  │     │     │     mmsport = portnbr
  │     │     │     user = pxauth-id (o authname)
  │     │     │     password = pxauth-pw (o authsecret)
  │     │     │     protocol = pxaddrtype (o "IPV4V6" si Telcel 26006)
  │     │     │     → putValuesToDatabase()
  │     │     │
  │     │     └── appid!="w4" → DEFAULT:
  │     │           putDefaultApnValues(bundle, contentValues, subId, uri)
  │     │           [mismo pattern pero type="default"]
  │     │
  │     └── ¿to-napid match napid?
  │           → Mismo flujo (ruta alternativa)
  │
  └── Resultado: content://telephony/carriers/preferapn/subId REESCRITO
        → TODO el tráfico celular (default/mms/bootstrap) va por el proxy rogue   

## UniSmartCarrierManager — 5G NR + Hidden API + Speed Monitor
| Dato | Valor | Implicación |
|------|-------|-------------|
| Singleton | `sInstance`, `init(context)` | Una sola instancia en `com.android.phone` |
| Extiende | `Handler` | Corre en su own thread (no bloquea main) |
| `getSmart5Gfeature()` | `SystemProperties.get("persist.radio.engtest.nr.enable", "false")` | **Engineer backdoor** (confirmado) |
| `getRsrp()` | `PhoneFactory.getPhone(id).getSignalStrength().getDbm()` | **HIDDEN API** (`@SystemApi`, no accessible a apps) |
| `getSaMode()` | `mRadioInteractor.getSA(messenger, 1000, phoneId)` | AT command al baseband (SA query) |
| `isNsaMode()` | `PhoneFactory.getPhone().getServiceState().getNetworkRegistrationInfo().getNrState()` | **HIDDEN API** + ServiceState internals |
| `setDataThrottling()` | `ThermalMitigationRequest.Builder` | Throttle data por "térmico" (abusable con PMIC mock) |
| `setNrEnabled(bool)` | Enable/disable 5G NR | Control remoto de red |
| Speed monitor | `firstBytes`, `firstRxBytes`, `firstStamp` | Throughput tracking (QoS o monitoring) |
| Broadcasts | SCREEN_ON/OFF, CONNECTIVITY_CHANGE, DEFAULT_DATA_SUBSCRIPTION_CHANGED | Monitorea estado del usuario |
| `mMessenger` | Callback de RadioInteractor | AT commands async |

## La combinación persist.radio.engtest.nr.enable + setNrEnabled() + PMIC thermal mock (repo anterior):

Atacante (o ODM):
Atacante (o ODM):
  1. Escribe persist.radio.engtest.nr.enable=true  → 5G SA forzado
  2. O: setNrEnabled(false) → 5G deshabilitado (fallback 4G/3G)
  3. PMIC thermal mock (repo: Ipc_Hidl_Aidl) → framework ve "normal"
  4. setDataThrottling() → "mitigación térmica" (en realidad: QoS del atacante)
  
Resultado: Control de qué red usa el dispositivo + throttling selectivo,
sin que el framework detecte anomalía térmica.   


