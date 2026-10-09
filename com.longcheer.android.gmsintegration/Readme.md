## com.longcheer.android.gmsintegration
/system/operator-app/app/GmsSampleIntegration_full_telcel


✔ Verified
Signature scheme: v3

Signer Certificate
Subject: 1.2.840.113549.1.9.1=#161572656c65617365404c6f6e6763686565722e636f6d,CN=Longcheer,OU=Longcheer,O=Longcheer,L=ShangHai,ST=ShangHai,C=CN
Issuer: 1.2.840.113549.1.9.1=#161572656c65617365404c6f6e6763686565722e636f6d,CN=Longcheer,OU=Longcheer,O=Longcheer,L=ShangHai,ST=ShangHai,C=CN
Issued date: Fri Sep 15 02:31:06 EST 2023
Expiry date: Tue Jan 31 02:31:06 EST 2051
Type: X.509, Version: 3, Validity: Valid
Serial number: 228526b0d1ef90c3b8ed568a49c3714f6a39506b
Checksums
MD5: 4d4cbf7963362188e0af01ca9eac8194
SHA-1: b0c7dc5f6277b80abad48c6fe6965c9a260a380c
SHA-256: 4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d
SHA-384: 195d230899ce5b559e04df83098605f721ea7e0d3bc619ebe15f7123273ea764ea4ccc34c49c6451ec9790171700b8ae
SHA-512: 470274b461ecf552074b0c5a51350bdcff9021299acd23093177300a5bf2f44cbb2121d78a0a172c339d126e86672d5128b0dc4479a674c65261158baf88aa42
Signature
Algorithm: SHA256withRSA
OID: 1.2.840.113549.1.1.11
Signature: 1d68f96045e3c693c18ad08c427f48b30e16963ea0a844937cb9bf6bf9a15f4a752c8cafe61496c9f22cf960fe3b10b5e41fcecc6137570aa0db98b38705fdf931ecb33cdaa9e9ce7bb6492e7deb6096586e33a20f65727006493ea9b51947f90da9885b5e1de7529c6ec08289d4d931b933e74edf79f9ee52fe0fc5d6bf2c4612e480a3905d76f9ac425a2f787767e8f704dcc5af4e2076f5417f5bf5610c5a13ba29c381426b8399f95d91519b9a8744174aa76c8fd28753a1b839acfde14ae9f4beaee1f9d7887482ea2170ef0b6633ec90fab01837b07533f3d29bfee300e3f10ac686e9e11a809bdbb28b334f549ad9d7a7ec64118cca116dc5b342bbb8
Public key
Algorithm: RSA
Format: X.509
Exponent: 65537
Modulus: 00d60fbb9d0fbba8058e66f268c838bc050463c4a5023fb26809ed8cc4f955a60fd08036c2cf72a677930a3e9d06da54dc2a82b12a5f679cfab2dfbdc81e518b4b0d30ce7253e33b8c549d039951c1ef28be09c5f57f194ed18338fe90024ec78e1eed2448b0f16666d40fb8d70de395854882632c4e98a07f583809698f0292960c78ad54fe18518347720f3245a9567c9d896ea3864e19f58431063f8eff3131bf31ebb038e8b97a07277e056b2b67e26eede764e269dd9334d93d562265de820dba34a5bdd297595bf398eb0e8ae26baaee48374812272afd6f475ae93691b6ac1c9db078d7a84d9748f4fb8b2a8b5eafa2f2c35a32ea56837ef019122c876d
Critical extensions
- basicConstraints: 040530030101ff
Non-critical extensions
- authorityKeyIdentifier: 04183016801497b6e1f1b2acdbda805c56b04e82d052833c8f7b
- subjectKeyIdentifier: 0416041497b6e1f1b2acdbda805c56b04e82d052833c8f7b

## /Wizard_script folder conect directly to (https://github.com/lexs201992-gif/Project-LION-Manager-Provisioning-Enterprise/tree/cc520a0e82ae86e232a42389fae4705b7b45e0dc/Smali/com.ape.setupwizard)


# APE Setup Wizard Scripts (com.ape.setupwizard)

**Location in repository:** `Smali/apesetupwizard/scripts/`

**Evidence of Longcheer ODM supply-chain connection point**  
This folder contains the decompiled / extracted wizard scripts and related artifacts from the privileged system application **com.ape.setupwizard** (APK name: `MotoSetupWizard.apk`).

These scripts execute on **every first boot** of the device and **after every factory reset or Android Rescue Party** event. They represent a critical, manufacturer-signed entry point used by the ODM **Longcheer** to perform initial device provisioning, network configuration, account binding, Device Policy Manager (DPM) setup, and potential C2 beaconing / backdoor activation before the end-user reaches the home screen.
