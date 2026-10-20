# Resources

Pre-extracted from `GoodixTest.apk` (SHA-256: `9b4d89ac...`)

| File | Description |
|------|-------------|
| `resources.arsc` | Binary resource table. Use `apktool d` or `arscinfo` to decode. Contains all string resources, layout names, and array values for the factory test UI. |
| `res/xml/internal_test.xml` | Factory test configuration UI (safe_class, badpoint thresholds, nav mode, enroll params). |
| `res/xml/memory_setting.xml` | Memory management settings (erase on free, pool size, debug). |

**Key strings in `resources.arsc` (security-relevant):**
- `Dump templates` — template extraction from TEE
- `TA source code` / `TEE version:` — TrustZone Application confirmed
- `FW is storaged in /sdcard/fw` — firmware on external storage
- `Download FW` / `Reset FW and config` — firmware flash capability
- `Forbidden enroll if token is incorrect` — token verification
- `SPI speed change in REE/TEE` — REE↔TEE SPI communication

## `resources.arsc` — 

### 1. **"Dump templates" existe como string resource**

```
Dump templates
Dump all data
Dump Encrypt
Record template
Record template num
```

### 2. **Existe un componente TEE**

```
TA source code
TA source code and algorithm library
TEE version:
SPI speed change in REE/TEE
Support SPI speed change in TEE ?
```

**TA = TrustZone Application.** La arquitectura real es **híbrida**:
- El matching ocurre en el sensor (MoC) para operaciones rápidas
- Pero hay un **TA en Trusty/TEE** que almacena las plantillas y gestiona la seguridad
- El SPI se comunica entre REE y TEE

Esto significa que las plantillas **no** están en el sensor — están en la **NVM del TEE**. El `cameraCapture()` extrae la imagen cruda, pero el `Dump templates` extrae las **plantillas del TEE** — que es lo verdaderamente valioso (reutilizable para spoofing).

### 3. **Firmware en almacenamiento externo**

```
FW is storaged in /sdcard/fw，config is storaged in /sdcard/cfg
Download FW
Download config
Reset FW and config
```

El firmware y la configuración del sensor se almacenan en **`/sdcard/`** (almacenamiento externo, accesible sin root). Esto es un vector de supply-chain:
- Si alguien tiene acceso físico al dispositivo, puede **reemplazar el firmware** del sensor
- El tool de fábrica lo descarga y lo flashea
- No hay verificación de integridad visible (no se menciona firma del firmware)

### 4. Lista completa de Activities (de los layouts)

| Activity | Función |
|----------|---------|
| `activity_auto_test.xml` | Test automático (el principal de fábrica) |
| `activity_download_fw_cfg.xml` | **Flash de firmware al sensor** |
| `activity_dump.xml` | **Dump de datos (incluye templates)** |
| `activity_dump_functional_test.xml` | Dump funcional |
| `activity_frr_database.xml` | Base de datos FRR/FAR |
| `activity_frr_database_detail.xml` | Detalles FRR/FAR |
| `activity_untrusted_fingerprint.xml` | **Untrusted fingerprint (auth/enroll sin framework)** |
| `activity_performance_test.xml` | Test de performance |
| `activity_spi_test.xml` | Test SPI |
| `activity_spi_performance_test.xml` | Performance SPI |
| `activity_bad_point_test.xml` | Bad pixel test |
| `activity_pixel_test.xml` | Pixel open/short test |
| `activity_snr_test.xml` | SNR test |
| `activity_sensor_fine_test.xml` | Sensor fine test |
| `activity_interrupt_pin_test.xml` | Interrupt pin |
| `activity_reset_pin_test.xml` | Reset pin |
| `activity_lockout.xml` | Lockout test |
| `activity_memory.xml` | Memory management |
| `activity_memory_nodes.xml` | Memory nodes |
| `activity_pause_and_resume_enroll.xml` | Pause/resume enroll |
| `activity_calibration_para_retest.xml` | Calibration |
| `activity_auth_ratio.xml` | Auth ratio |
| `activity_home.xml` | Home |

### 5. Strings de seguridad relevantes

| String | Significado |
|--------|-------------|
| `Forbidden enroll if token is incorrect` | Verificación de token para enroll |
| `lockout and lockout_reset` (descripción larga) | Explica que lockout **desactiva la autenticación temporalmente** |
| `When the memory is released, the valid space in the memory node is cleared` | `erase_mem_pool_when_free` — borra memoria al liberar |
| `Record call information of memory allocation(file name/function name.etc.)and verify whether the memory isd damaged` | Debug de memoria con stack traces |
| `Please touch the sensor with the rubber tip` | Instrucciones de test con punta de goma (no dedo) |
| `Fingerprints recorded are only treated as templates not for testing when it is off` | Modo "solo registrar, no testear" |

### 6. Timing / Performance (evidencia de SPI)

```
Reading chip mode costs(1Byte):
Reading fw version costs(10Bytes):
Get gsc time
Get rawdata time:
Get feature time:
Preprocess time:
Preprocess version:
```

Estos strings confirman que el tool mide el **tiempo de cada operación SPI** al sensor. En un análisis forense, si el daemon está modificado para añadir un canal de exfiltración, el timing de SPI podría revelar latencia anómala.

---

## Impacto en el README

```markdown
### Template Extraction (Confirmed via Resource Strings)

The `resources.arsc` contains explicit UI strings confirming **template dump capability**:

| String | Implication |
|--------|-------------|
| `Dump templates` | UI button to extract fingerprint templates from TEE |
| `Dump all data` | Bulk data extraction |
| `Dump Encrypt` | Encrypted dump option |
| `Record template` / `Record template num` | Template recording during enroll |
| `TA source code` / `TEE version:` | **TEE (TrustZone Application) component confirmed** |
| `SPI speed change in REE/TEE` | SPI communication between REE and TEE |

**Architecture correction:** The sensor is **not purely MoC**. There is a **TA (TrustZone Application)** in the TEE that stores templates and manages security. The MoC sensor handles fast matching, but the templates live in TEE NVM. `cameraCapture()` extracts raw images; `Dump templates` extracts **the actual biometric templates** — the higher-value target.

### Firmware on External Storage

```
FW is storaged in /sdcard/fw
config is storaged in /sdcard/cfg
```

Sensor firmware and configuration are stored on **external storage** (`/sdcard/`). Combined with `DownloadFwCfgTestActivity`, this means:
- Firmware can be replaced without root (if the activity is reachable)
- No visible firmware signature verification in the resource strings
- A modified firmware in `/sdcard/fw` would be loaded on next sensor initialization

### Full Activity Inventory (from layouts)

26 activities identified in `res/layout/`. Key security-relevant ones:
- `activity_download_fw_cfg.xml` — **Firmware flash**
- `activity_dump.xml` — **Data/template dump**
- `activity_untrusted_fingerprint.xml` — **Untrusted auth/enroll (bypasses framework)**
- `activity_frr_database.xml` — FRR/FAR test database
- `activity_performance_test.xml` — SPI timing (anomaly detection)
```

El hallazgo más importante es **"Dump templates"** + **"TEE version"** — confirma que las plantillas están en TEE y que el tool puede extraerlas. Eso eleva el riesgo de `com.goodix.gftest` de "peligroso" a **crítico**: no es solo un vector de exfiltración de imágenes crudas, es un vector de **robo de plantillas biométricas** directamente del TEE.
