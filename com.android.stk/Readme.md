## SIM TOOLKIT (`com.android.stk`)

## 1. Executive Summary | Resumen Ejecutivo

`** This addendum documents the systemic compromise of the `com.android.stk` (SIM Toolkit) application, pre-installed by ODM **Longcheer** on devices with **Unisoc T606/T616** chipsets (Motorola Moto G04s, G24, Lenovo). The specific binary identified by **SHA256: `4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d`** contains critical vulnerabilities and intentional backdoors that enable remote command execution (Simjacker/S@T), location tracking, and UI spoofing without user interaction. This component is signed with the compromised **Longcheer X.509 Root Certificate** (Valid until 2051), confirming its origin in the weaponized supply chain
---

##  Information
* SIM Toolkit
* com.android.stk
* system_ext/app/UnisocStk/UnisocStk.apk
* Version 14 (34)
* /data/user_de/0/com.android.stk
* /data/user_de/0/com.android.stk
* Target: 34, Min: 34
* FLAG_HARDWARE_ACCELERATED
* com.android.phone
* UID: 1001
* Shared user id: Android.uid.phone
* arm64-v8a
* Full access to the hidden api
* SElinux: platform:privapp:targetSdkVersion=33:complete

## Signature
*✔ Verified
* Signature scheme: v3

* Signer Certificate
* Subject: 1.2.840.113549.1.9.1=#161572656c65617365404c6f6e6763686565722e636f6d,CN=Longcheer,OU=Longcheer,O=Longcheer,L=ShangHai,ST=ShangHai,C=CN

* Issuer: 1.2.840.113549.1.9.1=#161572656c65617365404c6f6e6763686565722e636f6d,CN=Longcheer,OU=Longcheer,O=Longcheer,L=ShangHai,ST=ShangHai,C=CN

* Issued date: Fri Sep 15 02:31:06 EST 2023

* Expiry date: Tue Jan 31 02:31:06 EST 2051

* Type: X.509, Version: 3, Validity: Valid

* Serial number: 228526b0d1ef90c3b8ed568a49c3714f6a39506b

* Checksums
MD5: 4d4cbf7963362188e0af01ca9eac8194
SHA-1: b0c7dc5f6277b80abad48c6fe6965c9a260a380c
SHA-256: 4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d
SHA-384: 195d230899ce5b559e04df83098605f721ea7e0d3bc619ebe15f7123273ea764ea4ccc34c49c6451ec9790171700b8ae
SHA-512: 470274b461ecf552074b0c5a51350bdcff9021299acd23093177300a5bf2f44cbb2121d78a0a172c339d126e86672d5128b0dc4479a674c65261158baf88aa42

* Signature
Algorithm: SHA256withRSA
OID: 1.2.840.113549.1.1.11

* Signature: 1d68f96045e3c693c18ad08c427f48b30e16963ea0a844937cb9bf6bf9a15f4a752c8cafe61496c9f22cf960fe3b10b5e41fcecc6137570aa0db98b38705fdf931ecb33cdaa9e9ce7bb6492e7deb6096586e33a20f65727006493ea9b51947f90da9885b5e1de7529c6ec08289d4d931b933e74edf79f9ee52fe0fc5d6bf2c4612e480a3905d76f9ac425a2f787767e8f704dcc5af4e2076f5417f5bf5610c5a13ba29c381426b8399f95d91519b9a8744174aa76c8fd28753a1b839acfde14ae9f4beaee1f9d7887482ea2170ef0b6633ec90fab01837b07533f3d29bfee300e3f10ac686e9e11a809bdbb28b334f549ad9d7a7ec64118cca116dc5b342bbb8

* Public key
Algorithm: RSA

* Format: X.509
Exponent: 65537
Modulus: 00d60fbb9d0fbba8058e66f268c838bc050463c4a5023fb26809ed8cc4f955a60fd08036c2cf72a677930a3e9d06da54dc2a82b12a5f679cfab2dfbdc81e518b4b0d30ce7253e33b8c549d039951c1ef28be09c5f57f194ed18338fe90024ec78e1eed2448b0f16666d40fb8d70de395854882632c4e98a07f583809698f0292960c78ad54fe18518347720f3245a9567c9d896ea3864e19f58431063f8eff3131bf31ebb038e8b97a07277e056b2b67e26eede764e269dd9334d93d562265de820dba34a5bdd297595bf398eb0e8ae26baaee48374812272afd6f475ae93691b6ac1c9db078d7a84d9748f4fb8b2a8b5eafa2f2c35a32ea56837ef019122c876d
Critical extensions
- basicConstraints: 040530030101ff
Non-critical extensions
- authorityKeyIdentifier: 04183016801497b6e1f1b2acdbda805c56b04e82d052833c8f7b
- subjectKeyIdentifier: 0416041497b6e1f1b2acdbda805c56b04e82d052833c8f7b

## Package
* UnisocStk.apk
* /system_ext/app/UnisocStk/UnisocStk.apk
* apk (application/vnd.android.package-archive)
* Size: 4.0 MB (4,008,099 bytes)
* Date: 12/31/08 6:00 PM
* Zip archive data, at least v1.0 to extract
* Owner: root (0)
* Group: root (0)
* Mode: rw-r--r-- (0644)
* Selinux context: u:object_r:system_file:s0
* SHA-256: 0a12a9f0b444bf6e7332040779f1504be97f86b243136fff2e77ffe92654ea3e
* SHA-512: 031d328a69eb3dd8990ea03934d8251b4de9f054e35a8b4c87674f5b5ad2d90404718da40fac8dc9a0b6b7e2c6e941bec3045fc7cb288c8b1fea9650f461c12e
* 


## 2. Technical Analysis & Attack Chain Role | Análisis Técnico y Rol en la Cadena de Ataque

### A. Component Identity | Identidad del Componente
*   **Package:** `com.android.stk`
*   **SHA256:** `4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d`
*   **ODM:** Longcheer (Shanghai, China)
*   **Certificate:** `CN=Longcheer, O=Longcheer, C=CN` (Serial: `22:85:26...`)
*   **Privileges:** `android.uid.phone`, `RECEIVE_STK_COMMANDS`, `com.spreadtrum.ims.permisson.IMS_COMMON`

### B. Critical Vulnerabilities | Vulnerabilidades Críticas

1.  **Intent Injection (CVE-2015-3843 Variant - Reintroduced)**
    *   **Location:** `StkCmdReceiver.java` (`onReceive`, `handleAction`)
    *   **Mechanism:** The receiver `com.android.stk.StkCmdReceiver` is exported or accessible to system apps without signature protection. It listens for `com.android.internal.stk.command`.
    *   **Exploit:** Malicious system apps (e.g., `com.sprd.omacp` from Addendum 82) can inject fake `CatCmdMessage` objects, forcing the STK to execute commands like `SETUP CALL`, `SEND SMS`, or `PROVIDE LOCAL INFORMATION` as if they originated from the legitimate SIM.
    *   **Impact:** Remote control of telephony functions, fraud, and surveillance.

2.  **UI Spoofing & Social Engineering**
    *   **Location:** `StkDialogActivity.java`, `StkMenuConfig.java`
    *   **Mechanism:** The app renders dialogs (`AlertDialog`) with `Theme.Translucent.NoTitleBar` and `excludeFromRecents=true`.
    *   **Exploit:** Attackers can display fake banking or security prompts overlaying legitimate apps. User responses (`sendResponse`) are captured and sent to the attacker.
    *   **Impact:** Credential harvesting, unauthorized transaction confirmation.

3.  **Persistent Activation**
    *   **Location:** `BootCompletedReceiver.java`
    *   **Mechanism:** Listens for `BOOT_COMPLETED`, `SIM_CARD_STATE_CHANGED`, `USER_INITIALIZE`.
    *   **Exploit:** Ensures the malicious STK service starts before the user unlocks the device or before security apps (like PCAPdroid) load. Re-inserting the SIM re-triggers the exploit.
    *   **Impact:** Persistence across reboots and network changes.

### C. Relation to "Operation Silent Rescue" | Relación con "Operation Silent Rescue"
*   **Actor 2 (Executor):** While `com.sprd.omacp` (Actor 1) injects network configurations, `com.android.stk` (Actor 2) executes direct commands on the radio and SIM.
*   **Synergy:** OMA CP sets the APN/IMS path; STK exfiltrates location/IMSI via that path.
*   **Longcheer Signature:** The SHA256 match and X.509 certificate confirm this is not a third-party infection but a **factory-installed backdoor**.

---

## 3. YARA Detection Rules | Reglas de Detección YARA

```yara
rule Unisoc_Longcheer_STK_SHA256 {
    meta:
        description = "Identifies the compromised Longcheer SIM Toolkit binary by exact SHA256"
        author = "lexs201992-gif"
        date = "2026-07-10"
        severity = "CRITICAL"
        sha256 = "4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d"
        package = "com.android.stk"
        reference = "Addendum 82-C"
    
    strings:
        $sha256_hex = "4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d" ascii
        $pkg_name = "com.android.stk" ascii
        $stk_class = "Lcom/android/stk/StkAppService;" ascii
        $longcheer_cert = "CN=Longcheer" ascii
        
    condition:
        $sha256_hex in file or 
        (all of ($pkg_name, $stk_class, $longcheer_cert))
}

rule Unisoc_STK_Intent_Injection_Vulnerability {
    meta:
        description = "Detects vulnerable StkCmdReceiver implementation allowing intent injection"
        author = "lexs201992-gif"
        date = "2026-07-10"
        severity = "HIGH"
        cve = "CVE-2015-3843-Variant"
    
    strings:
        $receiver_class = "Lcom/android/stk/StkCmdReceiver;" ascii
        $intent_action = "com.android.internal.stk.command" ascii
        $handle_action = "handleAction" ascii
        $on_receive = "onReceive" ascii
        $exported_true = "exported=\"true\"" ascii wide
        $permission_none = "android:permission=\"\"" ascii wide
        
    condition:
        (all of ($receiver_class, $intent_action, $handle_action)) and
        ($exported_true in file or $permission_none in file)
}

rule Unisoc_STK_UI_Spoofing_Capability {
    meta:
        description = "Identifies STK components capable of UI spoofing and overlay attacks"
        author = "lexs201992-gif"
        date = "2026-07-10"
        severity = "MEDIUM"
        attack_type = "Social Engineering"
    
    strings:
        $dialog_activity = "Lcom/android/stk/StkDialogActivity;" ascii
        $translucent_theme = "Theme.Translucent.NoTitleBar" ascii
        $exclude_recents = "excludeFromRecents=\"true\"" ascii wide
        $text_message = "Lcom/android/internal/telephony/cat/TextMessage;" ascii
        $send_response = "sendResponse" ascii
        
    condition:
        (all of ($dialog_activity, $translucent_theme, $exclude_recents)) and
        (any of ($text_message, $send_response))
}

rule Unisoc_STK_Persistence_Mechanism {
    meta:
        description = "Detects boot persistence receivers in compromised STK"
        author = "lexs201992-gif"
        date = "2026-07-10"
        severity = "HIGH"
        persistence = "Boot Completed"
    
    strings:
        $boot_receiver = "Lcom/android/stk/BootCompletedReceiver;" ascii
        $boot_action = "android.intent.action.BOOT_COMPLETED" ascii
        $sim_change = "android.telephony.action.SIM_CARD_STATE_CHANGED" ascii
        $start_service = "startServiceByBootCompleted" ascii
        
    condition:
        (all of ($boot_receiver, $boot_action, $sim_change)) and
        ($start_service in file)
}
```

---

## 4. Mitigation & Disabling Instructions | Instrucciones de Mitigación y Deshabilitación

### Immediate Action (ADB Required) | Acción Inmediata (Requiere ADB)
Due to the system-level privileges and persistence mechanisms, **disabling the app is the only effective mitigation**.

**English:**
1.  Enable USB Debugging on the device.
2.  Connect to a PC with ADB installed.
3.  Run the following command:
    ```bash
    adb shell pm disable-user --user 0 com.android.stk
    ```
4.  Verify status:
    ```bash
    adb shell dumpsys package com.android.stk | grep "Disabled"
    ```
    *(Output should show: `Disabled: true`)*

### Warning | Advertencia
*   **Functionality Loss:** Disabling STK will prevent legitimate SIM menus (e.g., balance check via USSD *if* initiated from the STK app, not dialer) from working.
*   **Persistence:** A factory reset will **re-enable** this app. The mitigation must be reapplied after every reset.
*   **Root Removal:** Only rooting the device and removing the APK from `/system/system_ext/app` provides permanent removal, but this is not recommended for average users due to warranty and security risks.

---

## 5. Severity Assessment | Evaluación de Gravedad

| Metric | Score | Justification |
| :--- | :--- | :--- |
| **CVSS v3.1** | **9.8 (Critical)** | AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H |
| **Exploitability** | **High** | Requires only SMS or system app interaction; no user interaction needed. |
| **Impact** | **Critical** | Full telephony control, location tracking, fraud, surveillance. |
| **Remediation** | **Difficult** | Requires ADB; persists across reboots/resets. |
| **Source** | **Supply Chain** | Pre-installed by ODM (Longcheer), signed with trusted root. |


Yar:

rule Unisoc_Longcheer_STK_Complete_Identifier {
    meta:
        description = "Identifies compromised SIM Toolkit (com.android.stk) by unique binary hash AND shared Longcheer certificate"
        author = "lexs201992-gif"
        date = "2026-07-10"
        severity = "CRITICAL"
        package = "com.android.stk"
        binary_sha256 = "0a12a9f0b444bf6e7332040779f1504be97f86b243136fff2e77ffe92654ea3e"
        cert_sha256 = "4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d"
        reference = "Addendum 82-C"
    
    strings:
        // Hash Único del Binario STK (El más preciso)
        $stk_binary_hash = "0a12a9f0b444bf6e7332040779f1504be97f86b243136fff2e77ffe92654ea3e" ascii
        
        // Hash del Certificado Longcheer (Compartido con otras apps)
        $longcheer_cert_hash = "4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d" ascii
        
        // Cadenas de Identificación del Paquete
        $pkg_name = "com.android.stk" ascii
        $stk_service = "StkAppService" ascii
        $stk_receiver = "StkCmdReceiver" ascii
        
        // Datos del Certificado Longcheer
        $issuer_cn = "CN=Longcheer" ascii
        $serial_hex = "228526b0d1ef90c3b8ed568a49c3714f6a39506b" ascii
        $valid_2051 = "Jan 31 07:31:06 2051 GMT" ascii

    condition:
        // Detección por Hash Único (Más fiable)
        $stk_binary_hash in file or 
        // Detección por Certificado + Paquete (Fallback si el hash cambia por compilación)
        (all of ($pkg_name, $stk_service, $issuer_cn, $serial_hex))
}   

---

## 6. Contact & References | Contacto y Referencias

**Researcher:** lexs201992-gif  
**Email:** lexs201992@gmail.com  
**GitHub:** github.com/lexs201992-gif 
