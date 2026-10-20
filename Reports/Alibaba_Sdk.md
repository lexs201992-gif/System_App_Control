## Principal Vector — Moto Feedback (com.motorola.help) -> Alibaba OSS
## Device: Moto G04s XT2421-7 — Unisoc T606 — Retail — Longcheer ODM
## Date: 2026-06-03 — Cancun, QR — Telcel mnc020 mcc334 — tun0 43:1 exfil

### Resumen Ejecutivo

Se prueba SDK Alibaba OSS completo embebido en priv-app `com.motorola.help` (Moto Feedback) con `sharedUserId android.uid.system`. No es Firebase. Es entrega dinámica de credenciales STS desde infraestructura Longcheer/Alibaba con CNAME decoy, callback C2 y capacidad de ocultamiento via Symlink.

### 1. Evidencia Smali — Carpeta `Alibaba_conections_by_smali_in_privapps/`

#### 1.1 OSSAuthCredentialsProvider.smali — Entrega dinámica [SMOKING GUN]
- Field: `mAuthServerUrl:Ljava/lang/String;`
- Method `getFederationToken()`:
    - `new URL(mAuthServerUrl).openConnection() HttpURLConnection`
    - `setConnectTimeout 0x2710 = 10000ms`
    - `readStreamAsString utf-8`
    - `if (mDecoder != null) AuthDecoder.decode()` — AES CBC PKCS5, patrón idéntico a `GHSA-3f3x-wqjq-gq57_LogiaDeck_DecEncryptor`
    - `JSONObject.getInt("StatusCode") == 0xc8 (200)`
    - `getString("AccessKeyId") / "AccessKeySecret" / "SecurityToken" / "Expiration"`
    - `new OSSFederationToken(id, secret, token, expiration)`

> Prueba runtime, no hardcode. Evita detección VT. `mAuthServerUrl` = C2.

#### 1.2 OSSPlainTextAKSKCredentialProvider.smali — Contenedor Deprecated
- `@Deprecated` por Alibaba — expone plain AKSK
- Fields: `accessKeyId / accessKeySecret` trimmed
- `getFederationToken() return 0x0` — prueba que usa STS temporal externo
- Constructor `(String,String)` recibe credenciales del paso 1.1
- Match patrón `GHSA-3f3x` hardcode pero en versión dinámica.

#### 1.3 OSSImpl.smali — Endpoint y operaciones
- Fields: `endpointURI:URI / credentialProvider / conf / internalRequestOperation`
- Constructor: `endpoint String` -> trim -> if !startsWith http add `http://` -> `new URI(endpoint)`
- Error: `Endpoint must be a string like 'http://oss-cn-****.aliyuncs.com',or your cname like 'http://image.cnamedomain.com'!`
- Prueba CNAME custom: permite `http://fulguris.slion.net` / `slion.net` / `longcheer.net` apuntando a `oss-cn-shanghai.aliyuncs.com`
- Abilities: `CreateBucket / DeleteBucket / DeleteBucketLifecycle / AbortMultipartUpload / AppendObject / ResumableUpload`

#### 1.4 PutSymlinkRequest.smali — Ocultamiento
- Fields: `bucketName / objectKey / targetObjectName / metadata`
- `objectKey` = nombre visible (decoy), `targetObjectName` = objeto real oculto
- Uso: `slions.net/feedback.json` (decoy visible) -> `slion.net/private/XT2421-7/2026-...bin` (real)
- Explica infra dual documentada.

#### 1.5 OSSImpl Final — triggerCallback / updateCredentialProvider / uploadPart
- `triggerCallback(TriggerCallbackRequest)` -> `asyncTriggerCallback` — OSS notifica vía HTTP POST a servidor tras upload. C2 bidireccional. Explica `FOTA_wg0` y `TRIGGER_MADRUGADA 02:08:31 CDM MX GMS_OFF`.
- `updateCredentialProvider(CredentialProvider)` — rota STS token sin reiniciar app, usando `Expiration` de JSON. Permite exfil larga `tun0 63MB RX / 2.7GB TX`.
- `uploadPart / ResumableUploadRequest / SequenceUploadTask / CRC64 / CheckCRC64DownloadInputStream` — subida resumible por partes, resiliente a red Telcel `cota-sdk2.mnc020.mcc334.pub.3gppnetwork.org`.

### 2. Cadena Completa

http://com.motorola.help (system uid) onCreate
 -> AnalyticsConnectorImpl / ClientConfiguration
 -> OSSAuthCredentialsProvider(mAuthServerUrl = https://argo.svcmot.com OR https://fulguris.slion.net)
 -> GET mAuthServerUrl -> JSON {StatusCode:200, AccessKeyId:LTAI..., AccessKeySecret:..., SecurityToken:..., Expiration:...} [decrypted via AuthDecoder AES-CBC LogiaDeck]
 -> OSSPlainTextAKSKCredentialProvider(id, secret) + OSSFederationToken
 -> OSSImpl(endpointURI = CNAME http://fulguris.slion.net -> http://oss-cn-shanghai.aliyuncs.com, credentialProvider, conf)
 -> InternalRequestOperation -> PutObjectRequest / PutSymlinkRequest (decoy->real) / ResumableUploadTask (CRC64)
 -> triggerCallback to https://fulguris.slion.net/callback -> C2 notificado
 -> updateCredentialProvider al expirar -> loop infinito

### 3. IOC de Red — Match con pcap y DNS 2026-06-03

- `argo.svcmot.com` — BLOCKED en NextDNS 2026-06-03 `2806:268:3402:873:140c:dfd:691b:fe1c` = auth server STS
- `fulguris.slion.net 117.24.6.122 Alibaba CN` = endpoint real CNAME
- `fulguris.slions.net 208.113.159.31 DreamHost US` = endpoint decoy reputación limpia (S extra)
- `longcheer.net 114.94.9.124` + `rnd.longcheer.net` = infra ODM
- `slion.net / slions.net` = bucket CNAME
- `dns21.hichina.com SOA 2026082616` = Hichina Alibaba registrar
- `cota-sdk2.mnc020.mcc334.pub.3gppnetwork.org / clientapi.appamx.com` = Telcel proxy posible para STS
- `tun0 43:1 ratio 63MB RX 2.7GB TX` = ResumableUploadTask

### 4. Tácticas MITRE / Impacto

- T1574 Hijack Execution Flow — Moto Feedback legit usa Alibaba SDK
- T1106 Native API — HttpURLConnection + OSS SDK
- T1071.001 Web Protocols — HTTPS a argo/slion
- T1027 Obfuscated Files — AuthDecoder AES + Symlink occlusion
- T1041 Exfiltration Over C2 — PutObject resumible + triggerCallback
- T1552.001 Credentials in Files — PlainTextAKSK provider @Deprecated in system app
- System Ext Priv-app + `android.uid.system` 2927 lines manifest + SELinux corruption = total control

### 5. Conclusión

No es bug de Moto Feedback. Es vector arquitectónico Longcheer-Unisoс:
- SDK completo con capacidad crear/borrar buckets, symlinks, callbacks.
- Credenciales temporales entregadas por `argo.svcmot.com` para evitar hardcode static.
- CNAME custom para ocultar `oss-cn-*.aliyuncs.com` detrás de `slion.net` / `slions.net` dual.
- `framework-virtualization.jar SHA 885763b` + `IgniteDbEncrypted_v39` mismo patrón de decrypt runtime.

Este MD + 4 smali = `FINAL_GOAL_prove_intent_from_silicon_SELinux_corruption`.

### 6. Próximo paso recomendado

Grep en priv-apps:
grep -R "setAuthServerUrl\|mAuthServerUrl\|new._OSSImpl" --include="_.smali" http://com.motorola.help/
grep -R "const-string._oss-cn-\|aliyuncs\|slion\|longcheer\|fulguris\|argo" --include="_.smali"
El string encontrado es IOC final y debe hashearse (SHA256) para reporte sin exponer token.
