## [v1.0] Informe de Seguridad Público & Evidencia Forense: Planos de Control ODM en WiFi/Telefonía

> Este release contiene dos partes: un aviso de seguridad público redactado para usuarios finales y prensa (Sección A), y un anexo técnico con checklist forense para investigadores de ciberseguridad (Sección B).

---

### 🛡️ SECCIÓN A: Informe de Seguridad Público (¿Por qué tu celular te espiaba por WiFi?)

**1. ¿Qué está pasando? (La Casa con Llaves Replicadas)**

Imagina que te mudas a una casa nueva. En el contrato dice que solo tú y tu familia tienen llaves. Pero al revisar, descubres que el constructor dejó **tres llaves adicionales** escondidas en el marco de la puerta, que solo él puede usar. Peor aún: esas llaves no abren solo la puerta principal — **controlan la electricidad, el agua y el teléfono de la casa**.

Esto es exactamente lo que hay en millones de celulares económicos (Motorola, Lenovo, y otros) fabricados por **Longcheer** con chips **Unisoc T606/T616**.

**Lo que NO ves:** Tres aplicaciones ocultas que corren **dentro del sistema operativo**, con los mismos privilegios que el propio Android. No aparecen en tu lista de apps. No puedes desinstalarlas. No puedes desactivarlas. Y están ahí **desde que el celular salió de la fábrica**.

**2. ¿Qué pueden hacer con esas "llaves"? (Paso a Paso)**

- **Control total del WiFi:** Pueden encender/apagar tu WiFi, crear redes falsas, y conectar tu celular a redes del operador **sin pedirte permiso** (se llama "Passpoint auto-join"). Es como si alguien entrara a tu casa y cambiara el canal de tu TV sin que te des cuenta.

- **Control de la señal celular:** Tienen acceso directo a la banda base (el "módem" interno). Pueden reconfigurar cómo se conecta tu celular a la red del operador.

- **Tu celular es rastreable:** El nombre de tu red WiFi (cuando compartes internet) y el nombre de tu WiFi Direct **se generan a partir de tu IMEI** (el número de serie único de tu celular). Cualquier persona con un escáner WiFi puede identificar tu dispositivo en público.

- **El operador puede cambiar la configuración a distancia:** Sin que tú veas una notificación, el operador (Telcel, Tigo, etc.) puede empujar nuevas configuraciones de red, redes WiFi nuevas, y parámetros de seguridad. Tú no ves prompt, no aceptas nada.

- **Bloqueo de DNS seguro:** El sistema puede bloquear o redirigir tu conexión DNS segura (DoT/DoH) a nivel de hardware, lo que significa que **ni siquiera usar un DNS privado te protege completamente**.

- **Instalación silenciosa de apps:** Combinado con una app de monetización (DT Ignite) que también viene preinstalada, el sistema puede instalar aplicaciones en segundo plano al encender por primera vez.

**3. ¿Por qué es un peligro para ti?**

| Riesgo | Explicación simple |
|--------|-------------------|
| **Rastreo** | Tu IMEI se "pinta" en el nombre de tu WiFi. En un café, aeropuerto o evento, un escáner puede identificar tu celular. |
| **Redes falsas** | El sistema puede conectarte automáticamente a redes WiFi del operador sin tu consentimiento. Si esa red está comprometida, todo lo que envías por ella es visible. |
| **Sin remedio** | No hay actualización de software que elimine estas apps. Vienen firmadas con la llave del fabricante y viven en una parte del sistema que **sobrevive a la restauración de fábrica**. |
| **Sin control** | No puedes auditar qué hacen, desactivarlas, ni desinstalarlas sin root (y el root en estos dispositivos es limitado). |
| **Monetización + Espionaje** | La combinación de control de red + instalación silenciosa + rastreo por IMEI crea una cadena completa: te rastrean, te conectan a donde quieren, y pueden instalar lo que quieran. |

**4. ¿Cómo identificar si tu celular está afectado?**

**Paso 1: Revisa tu modelo**
Si tu celular es un Motorola Moto G04s, G24, E24, Lenovo económico, o cualquier dispositivo de gama baja/baja-media con chip **Unisoc T606 o T616**, está en la zona de riesgo.

**Paso 2: Revisa tu SSID de tethering (compartir internet)**
- Ve a **Configuración → Red e Internet → Zona de cobertura (Hotspot)**
- Mira el nombre de red (SSID). Si parece un nombre genérico o derivado de un número, probablemente se generó desde tu IMEI.

**Paso 3: Revisa redes WiFi conectadas automáticamente**
- Ve a **Configuración → WiFi → Redes guardadas**
- Si hay redes que no recuerdas haber conectado tú (especialmente redes de tu operador), es probable que sean Passpoint auto-join.

**5. Pasos para Protegerse**

| Prioridad | Acción |
|-----------|--------|
| **1** | **No uses este celular para banca, contraseñas sensibles, ni datos de trabajo.** Usa una PC o un celular con chip Qualcomm/MediaTek para eso. |
| **2** | **Desactiva Passpoint:** Ve a Configuración → WiFi → Ajustes avanzados → Passpoint → Desactivar. (Si no aparece, no lo tienes activado, pero el sistema puede activarlo por OTA.) |
| **3** | **No compartas internet (tethering)** si no es estrictamente necesario. Tu SSID expone tu IMEI. |
| **4** | **Usa una VPN de app** (no la VPN del sistema) para cifrar tu tráfico. Esto no elimina el problema, pero añade una capa. |
| **5** | **Planifica el reemplazo.** La única solución real es cambiar a un dispositivo con Qualcomm o MediaTek. |

**Conclusión:** No es un virus. No es un exploit. Es el **diseño mismo del dispositivo**. El fabricante (ODM) se reservó el derecho de controlar tu WiFi y tu señal celular desde la fábrica, sin tu conocimiento ni consentimiento. No se arregla con una actualización. La protección más efectiva es no depender de estos dispositivos para información sensible.

---

### 🔬 SECCIÓN B: Anexo Técnico para Investigadores (Technical Addendum)

Como se documenta en el repositorio, el control ODM en dispositivos Unisoc/Longcheer no depende de un exploit ni de un CVE, sino de **tres aplicaciones de sistema inyectadas en procesos core de Android** que proporcionan control total de radio (WiFi + celular + baseband) por diseño.

**Resumen de hallazgos:**

| App | UID | Proceso | Función |
|-----|-----|---------|---------|
| `com.unisoc.wifi.UniWifiApp` | 1000 (system) | `system_server` | Control WiFi, Passpoint, P2P, Tethering |
| `com.unisoc.phone.UniTelephonyApp` | 1001 (phone) | `com.android.phone` | Control telefonía, baseband |
| `com.android.unisoc.telephony.server.RadioInteractorApp` | 1001 (phone) | `com.android.phone` | Interacción radio (AT commands) |

**Firma común:** Certificado auto-firmado Longcheer (SHA-256: `4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d`), válido 2023-09-15 → 2051-01-31.

**Checklist Forense (reproducible):**

```bash
# 1. Verificar firma (esperar SHA-256 4cfe803b...)
apksigner verify --print-certs /system_ext/priv-app/UniWifi/*.apk
apksigner verify --print-certs /system_ext/priv-app/UniTelephony/*.apk
apksigner verify --print-certs /system_ext/priv-app/radio_interactor_service/*.apk

# 2. Passpoint preinstalado
dumpsys wifi | grep -A30 Passpoint
dumpsys wifi | grep -A10 NetworkSuggestion

# 3. Carrier config OTA
dumpsys telephony.registry | grep carrier_config
content query --uri content://telephony/carrier_config | grep wifi

# 4. P2P name (IMEI-derived)
settings get global wifi_p2p_default_device_name
getprop ro.boot.sku

# 5. NetworkSecurityPolicy custom (Longcheer, no AOSP)
dexdump -d /system/framework/framework.jar | grep ConfigNetworkSecurityPolicy

# 6. KeyStore source
logcat -b all -s KeyStoreCertificateSource
```

**Regla YARA:**

```yara
rule longcheer_odm_control_plane {
  strings:
    $sha256 = "4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d"
    $serial = "228526b0d1ef90c3b8ed568a49c3714f6a39506b"
    $pkg1 = "com.unisoc.wifi"
    $pkg2 = "com.unisoc.phone"
    $pkg3 = "com.android.unisoc.telephony.server"
  condition:
    any of them
}
```


**Firma:** Alexis de la Cruz (lexs201992-gif) | Analista de Riesgos y Seguridad
Cancún, México — Oct 09, 2026
Email: lexs201992@gmail.com
🛡️ ORCID: https://orcid.org/0009-0009-4336-1491
🟣 AttackerKB: https://attackerkb.com/contributors/lexs201992-gif
🐙 GitHub: https://github.com/lexs201992-gif
🔵 LinkedIn: https://www.linkedin.com/in/alexdelacruz92
🦠 VirusTotal: https://www.virustotal.com/gui/user/Alex992
