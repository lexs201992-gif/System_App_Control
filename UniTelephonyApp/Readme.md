## App Info - http://com.unisoc.phone.UniTelephonyApp

- Package: http://com.unisoc.phone.UniTelephonyApp
- Package name: http://com.unisoc.phone
- Version: 14 (34)


- Paths & directories
    - Source directory: /system_ext/priv-app/UniTelephony
    - Data directory: /data/user_de/0/com.unisoc.phone
    - Device-protected data directory: /data/user_de/0/com.unisoc.phone

- Storage and cache
    - App: 51.71 kB
    - Data: 10.75 kB
    - Cache: 0 B
    - Total: 62.46 kB

- More info
    - SDK Target: 34, Min: 34
    - Flags: FLAG_HARDWARE_ACCELERATED
    - Date installed: December 31, 2008 6:00 PM
    - Date updated: December 31, 2008 6:00 PM
    - Process name: http://com.android.phone
    - User ID: 1001
    - Shared user ID: http://android.uid.phone
    - Primary ABI: arm64-v8a
    - Hidden API enforcement policy: None (full-access to the hidden API)
    - SELinux: platform:privapp:targetSdkVersion=33:complete

*Activities tab*

- Acs Provisioning Alert Dialog
    - ExcludeRecent, HardwareAccel
    - Soft input mode: null | No permission required
    - Launch mode: Multiple | Orientation: Unspecified
    - Process name: http://com.android.phone
    - Task affinity: http://com.unisoc.phone
    - .acs.AcsProvisioningAlertDialog

- Modem Notifier
    - HardwareAccel
    - Launch mode: Multiple | Orientation: Unspecified
    - Process name: http://com.android.phone
    - Task affinity: http://com.unisoc.phone
    - .modemnotifier.ModemInfoActivity

- SIMLOCK Setting
    - HardwareAccel
    - Launch mode: Multiple | Orientation: Unspecified
    - Process name: http://com.android.phone
    - Task affinity: http://com.unisoc.phone
    - .simlock.ChooseSimLockTypeActivity

- Network personalization
    - HardwareAccel
    - Launch mode: Multiple | Orientation: Unspecified
    - Process name: http://com.android.phone
    - Task affinity: http://com.unisoc.phone
    - .simlock.TelcelOnekeyLockActivity

- Auto Enable Data Activity
    - ExcludeRecent, HardwareAccel
    - Launch mode: Multiple | Orientation: Unspecified
    - Process name: http://com.android.phone
    - Task affinity: http://com.unisoc.phone
    - .subsidy.AutoEnableDataActivity

- UPLMN Preference
    - HardwareAccel
    - Permission: http://com.unisoc.permission.UPLMNSETTINGS
    - Launch mode: Multiple | Orientation: Unspecified
    - Process name: http://com.android.phone
    - Task affinity: http://com.unisoc.phone
    - .uplmn.UplmnSettings

*Services tab*

- Preload Contacts Sync Service
    - No permission required
    - Process name: http://com.android.phone
    - http://com.android.account.PreloadContactsSyncService

- Sdn Sync Service
    - No permission required
    - Process name: http://com.android.phone
    - http://com.android.account.SdnSyncService

- Bootup Service
    - Permission: http://android.permission.MODIFY_PHONE_STATE
    - Process name: http://com.android.phone
    - .BootupService

- Uni Phone Service
    - No permission required
    - Process name: http://com.android.phone
    - .UniPhoneService

*Receivers tab*

- Profile Install Receiver
    - Permission: http://android.permission.DUMP
    - Launch mode: Multiple | Orientation: Unspecified
    - Process name: http://com.android.phone
    - Task affinity: http://com.unisoc.phone
    - http://androidx.profileinstaller.ProfileInstallReceiver

- Bootup Receiver
    - No permission required
    - Launch mode: null
    - Process name: http://com.android.phone
    - Task affinity: http://com.unisoc.phone
    - .BootupReceiver

- Uni Oma Apn Receiver
    - No permission required
    - Launch mode: null
    - Process name: http://com.android.phone
    - Task affinity: http://com.unisoc.phone
    - http://com.unisoc.telephony.UniOmaApnReceiver

*Providers tab*

- Initialization Provider
    - Path permissions: Patterns allowed: Grant URI permissions: false
    - Process name: http://com.android.phone
    - Authority: http://com.unisoc.phone.androidx-startup
    - http://androidx.startup.InitializationProvider

*Uses permissions tab*

- http://android.permission.ACCESS_COARSE_LOCATION - dangerous|instant|granted - Package: android - Group: UNDEFINED
- http://android.permission.ACCESS_FINE_LOCATION - dangerous|instant|granted - Package: android
- http://android.permission.INTERACT_ACROSS_USERS_FULL - signature|installer|granted - Package: android
- http://android.permission.MAINLINE_NETWORK_STACK - signature|granted - Package: http://com.google.android.networkstack
- http://android.permission.MANAGE_ACTIVITY_TASKS - signature|granted - Package: android
- http://android.permission.READ_PHONE_STATE - dangerous|granted - Allows access to phone features, phone number, device IDs, call state, remote number - Package: android
- http://android.permission.RECEIVE_BOOT_COMPLETED - normal|granted - Allows to have itself started as soon as system has finished booting - Package: android
- http://android.permission.SET_ACTIVITY_WATCHER - signature|granted - Package: android
- http://android.permission.SYSTEM_ALERT_WINDOW - signature|pre23|installer|setup|development|appop|granted - This app can appear on top of other apps - Package: android
- http://android.permission.UNLIMITED_TOASTS - signature|granted - Package: android
- http://android.permission.VIBRATE - normal|instant|granted - Allows control of vibrator - Package: android
- http://com.android.unisoc.telephony.server.BIND_RADIO_SERVICE - signature|granted - Package: http://com.android.unisoc.telephony.server
- http://com.dm.permission.OP_MANAGER_COMMON - signature|granted - Package: http://com.unisoc.phone
- http://com.slc.permission.SUBSIDYLOCK - normal|revoked
- http://com.spreadtrum.ims.permisson.IMS_COMMON - signature|privileged|granted - Package: http://com.spreadtrum.ims
- http://com.unisoc.permission.OMACP - signature|granted - Package: http://com.sprd.omacp
- http://com.unisoc.permisson.PLMN_COMMON - signature|granted - Package: http://com.unisoc.phone
- http://com.unisoc.permisson.SMS_COMMON - signature|granted - Package: http://com.unisoc.phone
- http://com.unisoc.phone.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION - signature|granted - Package: http://com.unisoc.phone
- http://unisoc.permission.SIMLOCK_UPDATE - signature|granted - Package: http://com.unisoc.phone
- http://unisoc.permission.SYNC_SIM_CONTACTS - signature|privileged|granted - Package: http://com.unisoc

*Permissions tab (defines)*

- http://android.permission.DUMP - Group: null - signature|privileged|development - EXTERNAL - http://android.permission.DUMP
- http://android.permission.MODIFY_PHONE_STATE - Group: null - signature|privileged - EXTERNAL - http://android.permission.MODIFY_PHONE_STATE
- http://com.dm.permission.OP_MANAGER_COMMON - Group: null - signature - INTERNAL - http://com.dm.permission.OP_MANAGER_COMMON
- http://com.unisoc.permission.MSSV - Group: null - signature - INTERNAL - http://com.unisoc.permission.MSSV
- http://com.unisoc.permission.UPLMNSETTINGS - Group: null - signature - INTERNAL - http://com.unisoc.permission.UPLMNSETTINGS
- http://com.unisoc.permisson.PLMN_COMMON - Group: null - signature - INTERNAL - http://com.unisoc.permisson.PLMN_COMMON
- http://com.unisoc.permisson.SMS_COMMON - Group: null - signature - INTERNAL - http://com.unisoc.permisson.SMS_COMMON
- http://com.unisoc.phone.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION - Group: null - signature - INTERNAL - .DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION
- http://unisoc.permission.SIMLOCK_UPDATE - Group: null - signature - INTERNAL - http://unisoc.permission.SIMLOCK_UPDATE

## Signatures

- Verified - Signature scheme: v3
- Signer Certificate
    - Subject: 1.2.840.113549.1.9.1=#161572656c6561736534404c6f6e6763686565722e636f6d, CN=Longcheer, OU=Longcheer, O=Longcheer, L=ShangHai, ST=ShangHai, C=CN
    - Issuer: same
    - Issued date: Fri Sep 15 02:31:06 EST 2023
    - Expiry date: Tue Jan 31 02:31:06 EST 2051
    - Type: X.509, Version: 3, Validity: Valid
    - Serial number: 228526b0d1ef90c3b8ed568a49c3714f6a39506b
    - Checksums MD5: 4d4cbf7963362188e0af01ca9eac8194, SHA-1: b0c7dc5f6277b80abad48c6fe6965c9a260a380c, SHA-256: 4cfe803b578fd6958d236e494248585eccbc5c33a5113bda7ff1a47351e4118d, SHA-384: 195d230899ce5b559e04df83098605f721ea7e0d3bc619ebe15f7123273ea76e4accc34c49c6451ec979017700b8ae, SHA-512: 470274b461ecf552074b0c5a51350bdcff9021299acd23093177300a5bf2f44cbb2121d78a0a172c339d126e86672d5128b0dc4479a674c65261158baf88aa42
    - Signature Algorithm: SHA256withRSA, OID: 1.2.840.113549.1.1.11
    - Signature: 1d68f96045e3c693c18ad08c427f48b30e16963e0a844937cb9bf6bf9a15f4a752c8cafe61496c9f22cf960fe3b10b5e41fcecc6137570aa0db98b38705fdf931ecb33cdaa9e9ce7bbd492e7db6096586c33a20f65727006493ea9b51947f90da885b5e1de7529c6e08289d493b933e74edf79ee52fe0fc5d6bf2c4621e480a3905d76f9ac425a2f787767e8f704dcc5af4e2076f5417f5bf5610c5a13ba29c381426b8399f95d91519b9a874417aa76c8f8d28753a1b839acfde14ae9f4beaee1f9d7887482ea2170ef0b6633ec90fab01837b07533f3d29bfee300e3f10ac686e9e11a809bdbb28b334f549ad9d7a7ec64118cca116dc5b342bbb8
    - Public key Algorithm: RSA, Format: X.509, Exponent: 65537, Modulus: 00d60fbb9d0fbba8058e66f268c838bc050463c4a5023fb26809ed8cc4f955a60fd08036c2cf72a677930a3e9d06da54dc2a82b12a5f679cfab2dfbdc81e518b4b0d30ce7253e33b8c549d039951c1ef28be09c5f57f194ed1833fe90024ec78e1eed2448b0f16666d40fb8d70de395854882632c4e98a07f583809698f029260c78d54fe18518347720f3245a9567c9d896ea3864e19f58431063f8eff3131bf31ebb038e8b9a07277e056b2b67e26ede764e269dd9334d93d562265de820dba34a5bdd297595bf398eb0e8ae26baaee48374182272af6d475ae93691b6ac1c9db078d7a84d9748f4fb8b2a8b5eafa2f2c35a32ea56837ef019122c876d
    - Critical extensions: basicConstraints: 040530030101ff
    - Non-critical extensions: authorityKeyIdentifier: 04183016801497b6e1f1b2acdbda805c56b04e82d052833c8f7b, subjectKeyIdentifier: 0416041497b6e1f1b2acdbda805c56b04e82d052833c8f7b
