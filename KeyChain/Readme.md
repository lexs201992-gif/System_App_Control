### KeyChain UID = 1000 (same as ODM)

KeyChain (`/system/app/KeyChain`, SHA-256: `51a07fa0...`) declares
`sharedUserId="android.uid.system"` → UID 1000.

This is the **same UID** as `UniWifiApp` (Axis 1) and `system_server`.

**Implication:** The ODM control plane and the trust store management
service are the same security principal. No permission check, no SELinux
denial, no audit log entry when UniWifiApp interacts with KeyChainService.

In AOSP, this would be a different UID (or at least a different signing
key). Here, the ODM *is* the trust store.   

UniWifiApp (UID 1000, process="system")
    │
    │  Llama a KeyChainService (UID 1000, /system/app/KeyChain)
    │  → android.security.IKeyChainService
    │
    │  ¿IPC? → SÍ (Binder), pero:
    │  ¿Permission check? → NO (mismo UID 1000)
    │  ¿SELinux boundary? → NO (hal_radio → system_server es allow)
    │  ¿Audit log? → NO (no hay denials, está en el allowlist)
    │
    ▼
KeyChainService.handleTrustStorageUpdate()
    │
    │  [NO-OP en la implementación Longcheer]
    │  → El trust store NO se refresca dinámicamente
    │  → PERO la CA SÍ se añade al user store
    │  → La próxima conexión TLS de una app con src="user" la ve
    │
    ▼
CA rogue ACTIVA (inmediata para apps con src="user")   

## Single Root of Trust
| Component | UID | Relationship to ODM |
|-----------|-----|-------------------|
| UniWifiApp (Axis 1) | 1000 | **Same UID as KeyChain** — no IPC boundary to trust store |
| KeyChainService | 1000 | Trust store management (BouncyCastle parser) |
| system_server | 1000 | Framework (WifiServiceImpl, etc.) |

**All three share UID 1000.** The ODM code, the trust store, and the
framework are the same security principal. There is no boundary to
"cross." The ODM doesn't attack the trust store — it *is* the trust store.   

### BouncyCastle in KeyChain APK

The KeyChain APK (SHA-256: `51a07fa0...`) contains BouncyCastle classes
(`org.bouncycastle.asn1.*`) embedded directly. This confirms the trust store
parsing is NOT using standard Conscrypt/OpenSSL — it uses a custom
BouncyCastle-based implementation.

Classes observed:
- `OIDTokenizer` (OID string splitting)
- `X509ObjectIdentifiers` (OID constants)
- `BasicConstraints` (CA check)
- `ASN1InputStream` / `ASN1Sequence` / `DEROctetString` (ASN.1 DER parsing)

All signed with Longcheer cert (`4cfe803b...`).

**Implication:** The trust store is parsed by ODM-controlled code, not by
AOSP Conscrypt. Combined with `handleTrustStorageUpdate()` being a no-op,
this means the ODM controls both WHAT is trusted (parsing) and WHEN it
updates (no dynamic refresh).   

KeyStoreCertificateSource (custom, Longcheer)
  └── Usa BouncyCastle para ASN.1/X.509 parsing
        ├── OIDTokenizer (este smali)
        ├── X509ObjectIdentifiers (OID 2.5.4.3, 1.3.14.3.2.26, 1.3.6.1.5.5.7)
        ├── BasicConstraints (isCA check)
        └── ASN1InputStream / ASN1Sequence / DEROctetString   

  ### Kiosk Auto-Approval (CredentialHelper.maybeApproveCaCert)

In kiosk/MDM deployments, the CA cert is **auto-approved** without user
interaction:

    DevicePolicyManager.approveCaCert(certDer, userId, forceApprove=true)

This is AOSP code (not Longcheer modification). However, the **combination**
of:
- CertInstaller re-signed with Longcheer cert (enables INSTALL_AS_USER)
- Kiosk MDM active (enables approveCaCert)
- OSU delivery (provides the cert)

...means the full chain is: **OSU → INSTALL_AS_USER → approveCaCert → ACTIVE**
with **zero user interaction** in kiosk mode.

In non-kiosk (consumer) mode, the CA is installed but remains "pending"
unless the user manually approves it (Settings → Security → Trust apps & CAs).
However, `certificate_install_usage = "vpn"` or `"apps"` bypasses the
approval requirement entirely.   

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
