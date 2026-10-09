# com.unisoc.wifi.UniWifiApp - Technical Sheet

**Label:** com.unisoc.wifi.UniWifiApp
**Package name:** com.unisoc.wifi
**Version:** 14 (34)

### Paths & directories
- Source directory: /system_ext/priv-app/UniWifi
- Data directory: /data/user_de/0/com.unisoc.wifi
- Device-protected data directory: /data/user_de/0/com.unisoc.wifi

### Data usage
- Data transmitted: 657 kB
- Data received: 704 kB

### Storage and cache
- App: 51.71 kB
- Data: 10.75 kB
- Cache: 0 B
- Total: 62.46 kB

### More info
- SDK Target: 34, Min: 34
- Flags: FLAG_HARDWARE_ACCELERATED
- Date installed: December 31, 2008 6:00 PM
- Date updated: December 31, 2008 6:00 PM
- Process name: system
- User ID: 1000
- Shared user ID: android.uid.system
- Hidden API enforcement policy: None (full-access to the hidden API)
- SELinux: platform:privapp:targetSdkVersion=34:complete

### Receivers (1)
- Bootup Receiver
    - .BootupReceiver
    - No permission required
    - Soft input mode: null
    - Launch mode: Multiple | Orientation: Unspecified
    - Process name: system
    - Task affinity: com.unisoc.wifi

### Uses permissions (8)
- android.permission.ACCESS_WIFI_STATE - normal|granted - Allows the app to view information about Wi-Fi networking - Package: android
- android.permission.CHANGE_WIFI_STATE - normal|granted - Allows the app to connect to and disconnect from Wi-Fi access points and to make changes to device configuration for Wi-Fi networks - Package: android
- android.permission.MANAGE_WIFI_COUNTRY_CODE - signature|granted - Package: android
- android.permission.NETWORK_SETTINGS - signature|granted - Package: android
- android.permission.READ_PHONE_STATE - dangerous|granted - Allows the app to access the phone features of the device - Package: android - Group: android.permission-group.UNDEFINED
- android.permission.READ_PRIVILEGED_PHONE_STATE - signature|privileged|granted - Package: android
- android.permission.RECEIVE_BOOT_COMPLETED - normal|granted - Allows the app to have itself started as soon as the system has finished booting - Package: android
- android.permission.WRITE_SECURE_SETTINGS - signature|privileged|installer|development|granted - Package: android

### Scanner
- 9 classes - Tap to see details
- No tracker found
- No libraries

### APK checksums
- MD5: c9ddfe998b92a3c1372034fbd236ea9e
- SHA-1: 60d30e487965e383f91cf7ca76d55da1a9f736e2
- SHA-256: 5d3c86bd33df86b1dc4318baef91e5596b9666bcabe7305520b948ea78fa9
- SHA-384: d477e317efca86a5272f94e3cc17cb2b3c2926566a87c97717a44e0461a3003e18acc0e96088d55c94554464411398de
- SHA-512: e1b7cc77725e2c8d1c26a68e87c1d75efdee8a3435c8c58438e586111016ecebb15124122ac2614d39dbeacc5f3475bab532ebe14e3eeb96826e8aa7609c7ca

### Signature
- Verified - Signature scheme: v3
- Signer Certificate
    - Subject: 1.2.840.113549.1.9.1=#161572656c65617365404c6f6e6763686565722e636f6d, CN=Longcheer, OU=Longcheer, O=Longcheer, L=ShangHai, ST=ShangHai, C=CN
    - Issuer: 1.2.840.113549.1.9.1=#161572656c65617365404c6f6e6763686565722e636f6d, CN=Longcheer, OU=Longcheer, O=Longcheer, L=ShangHai, ST=ShangHai, C=CN
    - Issued date: Fri Sep 15 02:31:06 EST 2023
    - Expiry date: Tue Jan 31 02:31:06 EST 2051
    - Type: X.509, Version: 3, Validity: Valid
    - Serial number: 228526b0d1ef90c3b8ed568a49c3714f6a39506b
    - Checksums
        - MD5: 4d4cbf7963362188e0af01ca9eac8194
        - SHA-1: b0c7dc5f6277b80abad48c6fe6965c9a260a380c
        - SHA-256: 4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d
        - SHA-384: 195d230899ce5b559e04df83098605f721ea7e0d3bc619ebe15f7123273ea764ea4ccc34c9c6451ec97901770b8ae
        - SHA-512: 470274b461ecf552074b0c5a51350bdcff9021299acd23093177300a5bf2f44cbb2121d78a0a172c339d126e86672d5128b0dc4479a674c65261158baf88aa42
    - Algorithm: SHA256withRSA
    - OID: 1.2.840.113549.1.1.11
    - Signature: 1d68f96045e3c693c18ad08c427f48b30e16963e0a844937cb9bf6bf9a15f4a752c8cafe61496c9f22cf960fe3b10b5e41fcecc6137570aa0db98b38705fdf931ecb33cdaa9e9ce7bbd492e7db6096586c33a20f65727006493ea9b51947f90da885b5e1de5a2f787767e8f704dcc5af4e2076f5417f5bf5610c5a13ba29c381426b8399f95d91519b9a874417aa76c8f8d28753a1b839acfde14ae9f4beaee1f9d7887482ea2170ef0b6633ec90fab01837b07533f3d29bfee300e3f10ac686e9e11a809bdbb28b334f549ad9d7a7ec64118cca116dc5b342bbb8
    - Public key
        - Algorithm: RSA
        - Format: X.509
        - Exponent: 65537
        - Modulus: 00d60fbb9d0fbba8058e66f268c838bc050463c4a5023fb26809ed8cc4f955a60fd08036c2cf72a677930a3e9d06da54dc2a2b12a5f679cfab2dfbdc81e518b4b0d30ce7253e33b8c549d039951c1ef28be09c5f57f194ed1833fe90024ec78e1eed2448b0f16666d40fb8d70de395854882632c4e98a07f583809698f029260c78d54fe18518347720f3245a9567c9d896ea3864e19f58431063f8eff3131bf31ebb038e8b9a07277e056b2b67e26ede764e269dd9334d93d562265de820dba34a5bdd297595bf398eb0e8ae26baaee48374182272af6d475ae93691b6ac1c9db078d7a84d9748f4fb2b2a8b5ea2af2c35a32ea56837ef019122c876d
    - Critical extensions: basicConstraints: 040530030101ff
    - Non-critical extensions: authorityKeyIdentifier: 04183016801497b6e1f1b2acdbda805c56b04e82d052833c8f7b - subjectKeyIdentifier: 0416041497b6e1f1b2acdbda805c56b04e82d052833c8f7b
