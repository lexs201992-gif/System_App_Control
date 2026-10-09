# com.android.unisoc.telephony.server.RadioInteractorApp

## App Info

- **Package Name:** `com.android.unisoc.telephony.server`
- **App Label:** `RadioInteractorApp`
- **Version:** 14 (34)
- **Classification:** System app / Bloatware / Stopped
- **Source directory:** `/system_ext/priv-app/radio_interactor_service`
- **Data directory:** `/data/user/0/com.android.unisoc.telephony.server`
- **Device-protected data directory:** `/data/user_de/0/com.android.unisoc.telephony.server`
- **APK size:** 51.71 kB
- **Data:** 14.85 kB / Cache: 0 B / Total: 66.56 kB
- **Classes:** 118 classes
- **Trackers:** No tracker found
- **Libraries:** No libraries
- **Primary ABI:** arm64-v8a

## Runtime Context

- **Process name:** `com.android.phone`
- **User ID:** 1001
- **Shared User ID:** `android.uid.phone`
- **SDK:** Target: 34, Min: 34
- **Flags:** `FLAG_HARDWARE_ACCELERATED`
- **Hidden API enforcement policy:** `None (full-access to the hidden API)`
- **SELinux:** `platform:privapp:targetSdkVersion=33:complete`
- **Date installed / updated:** December 31, 2008 6:00 PM (system image timestamp)

## Services

- **Radio Interactor Service**
    - Service: `com.android.unisoc.telephony.server.BIND_RADIO_SERVICE`
    - Process: `com.android.phone`
    - Implementation: `.RadioInteractorService`

This is the AT backbone. It binds directly to baseband via vendor.sprd.

## Permissions

### Defines (INTERNAL)
- `com.android.unisoc.telephony.server.BIND_RADIO_SERVICE`
    - Protection: `signature` / `INTERNAL`
- `com.android.unisoc.telephony.server.permission.RADIO_INTERACTOR_COMMON`
    - Protection: `signature|privileged` / `INTERNAL`
    - Suffix: `.permission.RADIO_INTERACTOR_COMMON`

### Uses (granted)
- `com.android.unisoc.telephony.server.BIND_RADIO_SERVICE` - `signature|granted`
- `com.android.unisoc.telephony.server.permission.RADIO_INTERACTOR_COMMON` - `signature|privileged|granted`

No dangerous permissions declared = runs silently inside phone process.

## APK Checksums

- **MD5:** `df1d8b738f6ff19110f71a36620c8151`
- **SHA-1:** `483b8a79ed59d16041c4a78a7bdbc2dabbec9d3b`
- **SHA-256:** `953f20ed046f4d04d491aff1d44926c3bd38cecd23f7a39715cac8bebb2eea0d6`
- **SHA-384:** `3f4d1548da6de0a6aaa00331e962cfb20ad5fe53b7a9edcd6bad1e6782e4f647428ae35e6087caff1d9cac7a69ea1744`
- **SHA-512:** `88b6540594aff5316a586d57e67cb66fd41213b3b957b7aaaed111659ef6fb3366e66e63e3b82aa58c158c66bce5a278ff0aa6e2e3b7d3d0e3f8987edc867d`

## Signature - Same Longcheer Chain (critical for YARA)

- **Status:** Verified
- **Signature scheme:** v3
- **Type:** X.509, Version: 3, Validity: Valid
- **Issued date:** Fri Sep 15 02:31:06 EST 2023
- **Expiry date:** Tue Jan 31 02:31:06 EST 2051
- **Subject/Issuer:** `1.2.840.113549.1.9.1=#161572656c65617365404c6f6e6763686565722e636f6d,CN=Longcheer,OU=Longcheer,O=Longcheer,L=ShangHai,ST=ShangHai,C=CN` (release@Longcheer.com)
- **Serial number:** `228526b0d1ef90c3b8ed568a49c3714f6a39506b`
- **Algorithm:** SHA256withRSA
- **OID:** 1.2.840.113549.1.1.11

### Signer Certificate Checksums

- **MD5:** `4d4cbf7963362188e0af01ca9eac8194`
- **SHA-1:** `b0c7dc5f6277b80abad48c6fe6965c9a260a380c`
- **SHA-256:** `4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d` <- **IOCs for all 3 apps**
- **SHA-384:** `195d230899ce5b559e04df83098605f721ea7e0d3bc619ebe15f7123273ea764ea4ccc34c9c6451ec97901770b8ae`
- **SHA-512:** `470274b461ecf552074b0c5a51350bdcff9021299acd23093177300a5bf2f44cbb2121d78a0a172c339d126e86672d5128b0dc4479a674c65261158baf88aa42`

### Signature hex
`1d68f96045e3c693c18ad08c427f48b30e16963e0a844937cb9bf6bf9a15f4a752c8cafe61496c9f22cf960fe3b10b5e41fcecc6137570aa0db98b38705fdf931ecb33cdaa9e9ce7bbd492e7db6096586c33a20f65727006493ea9b51947f90da885b5e1de7529c6e08289d493b933e74edf79ee52fe0fc5d6bf2c4621e480a3905d76f9ac425a2f787767e8f704dcc5af4e2076f5417f5bf5610c5a13ba29c381426b8399f95d91519b9a874417aa76c8f8d28753a1b839acfde14ae9f4beaee1f9d7887482ea2170ef0b6633ec90fab01837b07533f3d29bfee300e3f10ac686e9e11a809bdbb28b334f549ad9d7a7ec64118cca116dc5b342bbb8`

### Public Key
- **Algorithm:** RSA
- **Format:** X.509
- **Exponent:** 65537
- **Modulus:** `00d60fbb9d0fbba8058e66f268c838bc050463c4a5023fb26809ed8cc4f955a60fd08036c2cf72a677930a3e9d06da54dc2a82b12a5f679cfab2dfbdc81e518b4b0d30ce7253e33b8c549d039951c1ef28be09c5f57f194ed1833fe90024ec78e1eed2448b0f16666d40fb8d70de395854882632c4e98a07f583809698f029260c78d54fe18518347720f3245a9567c9d896ea3864e19f58431063f8eff3131bf31ebb038e8b9a07277e056b2b67e26ede764e269dd9334d93d562265de820dba34a5bdd297595bf398eb0e8ae26baaee48374182272af6d475ae93691b6ac1c9db078d7a84d9748f4fb8b2a8b5eafa2f2c35a32ea56837ef019122c876d`

### Extensions
- **Critical:** basicConstraints: `040530030101ff`
- **Non-critical:** 
    - authorityKeyIdentifier: `04183016801497b6e1f1b2acdbda805c56b04e82d052833c8f7b`
    - subjectKeyIdentifier: `0416041497b6e1f1b2acdbda805c56b04e82d052833c8f7b`

## ODM Control Use

This is the baseband control plane. While `com.unisoc.wifi` controls WiFi (UID 1000) and `com.unisoc.phone` controls telephony logic (APN, NCK, OMACP), this service provides direct AT command bridge to modem:

- `AT+SPASENGMD` and other proprietary AT observed in `UniTputController`
- Used by `UniTelephonyApp` to throttle, monitor throughput, change carrier
- Full hidden API access means it can call `PhoneFactory`, `ServiceState`, `RIL`

Consumer danger: Cannot be disabled, runs as `com.android.phone` immortal persistent service. Even in airplane mode, the binder is still published.

## Forensic Checklist

```bash
dumpsys activity services | grep RadioInteractor
service check radio_interactor
adb shell pm dump com.android.unisoc.telephony.server | grep -A5 SHA-256
