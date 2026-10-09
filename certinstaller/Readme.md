## CertInstaller Re-Signature: The Trust Boundary Change

**Component:** `com.android.certinstaller`
**APK SHA-256:** `efa434fafc6e354f5f5bf62bd61268cd2cdfa943df4762b7045d61c96193ca8c`
**Path:** `/system/app/CertInstaller`
**UID:** 10106
**Code:** AOSP standard (no modifications)
**Anomaly:** Signed with Longcheer ODM cert (`4cfe803b...`) instead of platform key

### What the re-signature enables

In AOSP, `INSTALL_AS_USER` is `protectionLevel="signature"` — only apps signed
with the **platform key** can invoke it. The ODM cannot silently install CAs.

On this device, the platform key IS the Longcheer cert. Therefore:

| App | Cert | Can invoke INSTALL_AS_USER? |
|-----|------|:---:|
| UniWifiApp (Axis 1) | `4cfe803b...` | ✅ |
| UniTelephonyApp (Axis 2) | `4cfe803b...` | ✅ |
| RadioInteractor (Axis 3) | `4cfe803b...` | ✅ |
| CertInstaller (itself) | `4cfe803b...` | ✅ (self) |
| Any third-party app | Different cert | ❌ |

### Trust stores affected (from smali: `InstallVpnAndAppsTrustAnchorsTask`)

| `certificate_install_usage` | Target | Impact |
|------------------------------|--------|--------|
| `"ca"` | User trust store + VPN + Apps | `src="user"` apps (mDisableCT=true) |
| `"vpn"` | VPN trust store | System VPN traffic |
| `"apps"` | Apps trust store | App-level TLS |
| `"client"` | User keystore | Mutual TLS (client certs) |

### Forensic artifacts

| Artifact | Location | Survives? |
|----------|----------|-----------|
| CA cert file | `/data/misc/user/0/cacerts-added/` | ✅ (until removed) |
| Passpoint profile | `dumpsys wifi` | ✅ |
| Config file (OSU) | **DELETED** by `dropFile()` | ❌ |
| EventLog entry | `0x534e4554` ("SNET") | ✅ (in `/data/system/event-log-*) |
| `install_as_uid` value | Logcat (if `CertInstaller` tag enabled) | ⚠️ (ring buffer) |

### The 1-line change

Longcheer did not modify the AOSP code. They **re-signed the APK** with their
ODM cert. One signature change = the ODM gains the ability to silently install
CAs into all three trust stores. No code modification. No backdoor in the smali.
The "backdoor" is the **signature itself**.   

## Flow
Intent (VIEW / INSTALL / INSTALL_AS_USER)
  │
  ├── MIME = "wifi-config" → startWifiInstallActivity() → WiFiInstaller
  │     → ConfigParser.parsePasspointConfig()
  │     → Dialog (HomeSP friendly name) → Aceptar/Cancelar
  │     → dropFile() (auto-delete)
  │
  └── MIME = "CERT"/"PKCS12" → startInstallActivity()
        → readWithLimit() (max 10MB)
        → CertInstaller (con extras: install_as_uid, certificate_install_usage, name)   

  ## Chain
  Axis 1: UniWifiCarrierNetworkManager (UID 1000, cert Longcheer)
  │
  │  OSU server entrega:
  │    ├── CA cert (rogue) → MIME: application/x-x509-ca-cert
  │    └── Passpoint config → MIME: application/x-wifi-config
  │
  ▼
Framework dispatcha:
  │
  ├── INSTALL_AS_USER (permission: signature)
  │     → CertInstallerMain (UID 10106, cert Longcheer)
  │     → ¿Quién invoca? → UniWifiApp (mismo cert: 4cfe803b...)
  │     → ¿Pasa el check? → SÍ (signature match)
  │     → ¿User prompt?   → NO (INSTALL_AS_USER = sin dialog)
  │     → confirmDeviceCredential() → NO se invoca (solo para VIEW manual)
  │
  ▼
CertInstaller:
  │
  ├── certificate_install_usage = "ca"
  │     → InstallVpnAndAppsTrustAnchorsTask
  │     → /data/misc/user/0/cacerts-added/ (user)
  │     → VPN trust store
  │     → Apps trust store
  │
  └── (si es wifi-config)
        → WiFiInstaller
        → ConfigParser.parsePasspointConfig()
        → Passpoint profile instalado
        → dropFile() (evidencia eliminada)

  ▼
KeyChainService → handleTrustStorageUpdate()
  │
  ▼
Apps con src="user": mDisableCT=true → CA rogue ACTIVA
Apps con system VPN: VPN trust store → CA rogue ACTIVA
Apps con app-level trust: Apps trust store → CA rogue ACTIVA   

## detection/ioc/iocs
## OTA / FOTA

| IOC | Tipo | Valor |
|-----|------|-------|
| `/etc/security/otacerts.zip` | File | Contiene `release.x509.pem` (Longcheer cert) |
| `release.x509.pem` SHA-256 | Hash | Verificar contra `4cfe803b...` |
| `fsverity-release.x509.der` | File | Cert fs-verity (mismo root) |

## WAPI

| IOC | Tipo | Valor |
|-----|------|-------|
| OID `1.2.156.11235` | Sig algorithm | WAPI (Chinese WiFi security) |
| `parseWapiCertType` en CertInstaller | Code | Soporte WAPI en firmware |   
