# APE Testbed - Evidencia Forense de Origen no AOSP / no Google

**Caso:** `com.ape.setupwizard` en Motorola Moto G04s (lion_g - Unisoc T606 - Longcheer)
**Documento base:** `apetestbed.sourceforge.net/ape-testbed.pdf - How to build, install and run the APE testbed - Uppsala University - Nov 8, 2002 - Partly funded by Ericsson AB`

Este documento demuestra que el `APE` de Longcheer NO es parte del Android AOSP SetupWizard de Google, es la implementación comercial del testbed académico de 2002.

### 1. Origen

APE = **Ad-hoc Protocol Evaluation testbed**.
Proyecto iniciado en Uppsala University, Suecia, financiado por **Ericsson AB**.
Distribución original: Red Hat 6.2, kernel 2.2.14-12, tarjetas Orinoco WaveLAN con firmware 6.06, parches marcados como `/*****APE_BEGIN******/`.

> "The main concept of the APE testbed is to provide an environment which greatly simplifies the process of performing complex real world tests of ad hoc routing protocols."

### 2. Arquitectura 2002 vs 2024

| Concepto APE 2002 (PDF pág 3-9) | Implementación Longcheer 2024 (Moto G04s) |
|---|---|
| **Participant nodes + Collect node** `192.168.5.0/24` con `.rhosts` / `rcp/scp` | `lion_g` participant, `argo.svcmot.com -> rnd.longcheer.net -> fulguris.slion.net` collect node en Alibaba Cloud |
| **superspy log** - spy mode modificado de WaveLAN para loguear signal level / noise | `SuwWifiService.java` `handleScanResultsAvailable() size:` + `getRssi()>>>>>rssi:` + log tag `liuhanjun` |
| **mackill MAC-filter** - fuerza conectividad | `isPreProvisionedEapAccountsWithCarrier()` + `ssidToNetworkId()` fuerza conexión a `VodafoneWiFi / TIM Wi-Fi` |
| **netswitch** script ad-hoc <-> basestation | `enableNetwork/disableNetwork` en `SuwWifiService.onStartCommand()` `START_STICKY` |
| **ape.conf** configuración central | `zero_touch_flow/` + `Paks/` + `res/raw/` con endpoints |
| **Logs** `ping.log / superspy.log / tsb.log / *.apelog` subidos al collect node con `upload.sh` y sincronizados con `timesync.sh / Tsb.pm / mk_eth_log.pl / mk_ip_log.pl / vm_node.pl` | `CpfWrapper / SPUtils / SarControl` suben `.apelog` a `apecloud` |

### 3. Hallazgo Forense Clave

**Firma de desarrolladores internos:**
- `liuhanjun` - tag en todos los logs de `SuwWifiService`
- `Michael: Done connect to network`
No existen en AOSP. Son firma de Longcheer.

**Collect Node moderno (evidencia NextDNS):**
com.longcheer.SarControl (INJECT_EVENTS)
  -> argo.svcmot.com [bloqueado por blacklist] 
  -> sh-16-52.rnd.longcheer.net 61.129.170.0/16 AS4811 Shanghai
  -> fulguris.slion.net (SIN S) 117.24.6.122 AS141679 Alibaba Cloud CN - REAL
  -> fulguris.slions.net (CON S) 208.113.159.31 DreamHost US AS26347 CloudFront - DECOY reputación

SOA: dns21.hichina.com / dns7.hichina.com
Seriales correlacionados: 2026082616 / 2026082617 / 2026082709
TTL: 600 fast-flux
Registrar: Hichina (Alibaba) / DreamHost Proxy Protection LLC (30 años)


**Dominios correlacionados en logs:**
- `cota-sdk2.mnc020.mcc334.pub.3gppnetwork.org` - carrier provisioning MCC 334 MNC 020 Telcel, usado por `isPreProvisionedEapAccountsWithCarrier`
- `clientapi.appamx.com` - Paks / financiamiento
- `unisoc.supl.qxwz.com:7275` - SUPL Unisoc AGPS `39.105.240.30 Alibaba`

**Payload:**
`framework-virtualization.jar 80.58 kB SHA256 885763b951f68b13f...` entregado vía `rnd.longcheer.net` cuando `argo.svcmot.com` falla.

### 4. Conclusión Forense

1.  `com.ape.setupwizard` no es Google. Es port del APE Testbed de Uppsala/Ericsson 2002 a Android.
2.  Mantiene la misma arquitectura de `collect node` para exfiltración de `superspy.log` y `*.apelog`.
3.  Usa infraestructura dual Real/Decoy (slion.net vs slions.net) y fast-flux en Hichina para evasión de reputación.
4.  El `SuwWifiService` no es WiFi asistido, es la implementación moderna de `mackill` + `start_spyd` del testbed.

Esta evidencia demuestra implementación ajena a AOSP Setup Wizard, con fines de telemetría, provisioning de carrier y entrega FOTA fuera del control de Google/Motorola.

### 5. Referencias

- `apetestbed.sourceforge.net/ape-testbed.pdf` (PDF adjunto en este repo)
- Smali: `SuwWifiService.smali` - tags `liuhanjun / Michael`
- Logs NextDNS: `argo.svcmot.com / cota-sdk2.mnc020... / clientapi.appamx.com`
- Infra: `longcheer.net 114.94.9.124 / slion.net / slions.net`

### Evidencia: portal_optional.xml

Archivo `res/xml/portal_optional.xml` no es AOSP. Define 6 categorías sugeridas que el APE ejecuta post-provisioning al collect node `apecloud`:

- EMAIL, DISPLAY_SETTINGS, PERSONALIZE (isRepeatable=true), PAI, LOCK_SCREEN_REDACTION, FINGERPRINT_ENROLL

PERSONALIZE repeatable es el hook para Glance/Taboola (ads en lockscreen).
FINGERPRINT_ENROLL forza re-enroll para mantener SarControl INJECT_EVENTS.
Este archivo reemplaza los start scripts de APE 2002 sección 7.2.3.

### Evidencia 2: res/xml/suggested_options.xml

Archivo: `res/xml/suggested_options.xml` dentro de `com.ape.setupwizard`

Contiene namespace no-AOSP:
`xmlns:suw="http://schemas.android.com/apk/res-auto"`
`PAI suw:lifecycle="default"`

Esto indica:
1. Uso de librería SetupCompat de Google para evadir detección, pero con acciones custom de Longcheer.
2. PAI es acción default, no opcional, siempre ejecuta post-provisioning.
3. PERSONALIZE isRepeatable=true permite persistencia post-reset, equivalente a start scripts de APE 2002 sección 7.2.3.

Contrasta con AOSP SetupWizard que no incluye PAI ni PERSONALIZE repeatable.

## Conclusión Final - No AOSP

`com.ape.setupwizard` / `com.ape.setupwizard.overlay` no pertenece a AOSP ni a Google. 

Es una implementación del ODM Longcheer basada en el APE Testbed de Uppsala University / Ericsson AB 2002, reutilizando:

- Arquitectura collect-node para subida de logs superspy
- MAC-filter mackill ahora como ssidToNetworkId
- Start scripts ahora como portal_optional.xml / suggested_options.xml con suw:lifecycle default

Su función no es configurar Android, es mantener control del ODM sobre el dispositivo post-venta vía:

- Provisioning carrier 3GPP `cota-sdk2.mnc020.mcc334.pub.3gppnetwork.org`
- Entrega FOTA `framework-virtualization.jar` desde `fulguris.slion.net (Alibaba CN)`
- Persistencia ads `PERSONALIZE isRepeatable=true` + `PAI suw:lifecycle=default` -> Glance / Taboola / Moto Engage

Bloqueo efectivo en NextDNS:
`argo.svcmot.com, *.svcmot.com, rnd.longcheer.net, *.longcheer.net, fulguris.slion.net, slion.net, slions.net, clientapi.appamx.com`

Evidencia forense verificable en Motorola Moto G04s lion_g Unisoc T606.
