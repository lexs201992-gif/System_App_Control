## The Silent Installer
Location: /system/operator-app/priv-app/InmobiInstaller

## Critical chain
Glance/Taboola (SystemUI) shows ad card
  → User taps CTA (AppMeta.autoAppOpen=true)
    → InMobi Installer (InstallationService, exported=true)
      → DownloadApplicationService (fetches APK)
        → LocalInstallService (INSTALL_PACKAGES)
          → AppsflyerInstallProvider (attribution/tracking)
            → DsScheduleRetryJob (Swish SDK: retry if failed)   

  ## Iocs
  | Campo | URL | Significado |
|-------|-----|-------------|
| `AF_TRANSACTION_URL` | `https://beacons.glance.inmobi.com/api/v0/attribution` | **Glance IS InMobi.** El endpoint de atribución está en el dominio de Glance. Cada install se atribuye vía Glance. |
| `AUTH_URL` | `https://api.swishapps.ai/authentication/installer` | "Swish" = marca del installer (cert: `CN=Swish, O=InMobi`) |
| `CERTIFICATE_URL` | `https://sta-fusion-files-cf.pinsightmedia.com/apk_certs.txt` | **PinSight Media** verifica certs de APKs antes de instalar |
| `CERT_PRINCIPAL` | `com.pinsightmedia.odm.inertia.codesign.pro` | PinSight tiene un **SDK de code-signing para ODMs** |
| `PACKAGE_INFO_URL` | `https://api.swishapps.ai/swish/apk/latest` | Self-update (no Play Store) |


## com.inmobi.installer —
├── OkHttp3 BUNDLED (stock, obfuscado)
│   └── WebSocket → push channel
│
├── BuildConfig (URLS = "core")
│   ├── beacons.glance.inmobi.com/api/v0/attribution  ← GLANCE = INMOBI
│   ├── api.swishapps.ai/authentication/installer     ← auth
│   ├── api.swishapps.ai/swish/apk/latest             ← self-update
│   └── sta-fusion-files-cf.pinsightmedia.com/apk_certs.txt ← whitelist remoto
│
├── Manifest (privilegios)
│   ├── INSTALL_PACKAGES (silent install)
│   ├── QUERY_ALL_PACKAGES (dedup/targeting)
│   ├── RECEIVE_BOOT_COMPLETED (re-queue on boot)
│   ├── WAKE_LOCK (keep alive during install)
│   └── InstallationService + InmobiProvider (exported=true ← IPC)
│
├── Dark patterns
│   ├── ConsentActivity (noHistory, excludeFromRecents, non-resizable)
│   └── InstallHistory (enabled=false)
│
└── Cert: CN=Swish, O=InMobi (2021→2121, 100 años)   

## What is inmobi?

InMobi is a mobile advertising network that reached a settlement with the FTC in 2016 for tracking the locations of hundreds of millions of consumers without their consent, while Digital Turbine is a mobile growth platform that monetizes devices through its Ignite software, which facilitates app distribution and advertising via cost-per-install (CPI) models.

InMobi: Location Tracking and FTC Settlement
The Violation: The FTC alleged that InMobi deceptively tracked consumer locations by collecting WiFi network data (ESSID, BSSID, and signal strength) to infer physical locations, even when users had explicitly denied location permissions or turned off location services on their devices.
COPPA Violations: InMobi also violated the Children’s Online Privacy Protection Act (COPPA) by collecting location data from children using child-directed apps without parental consent.
Settlement Terms: InMobi agreed to pay $950,000 in civil penalties (suspended from a $4 million penalty based on financial condition), delete all location data collected without consent, and implement a comprehensive privacy program subject to independent audits for 20 years.

## Reference Mobile Advertising Network InMobi Settles FTC Charges It Tracked Hundreds of Millions of Consumers’ Locations Without Permission
Company Will Pay $950,000 For Tracking Children Without Parental Consent (https://www.ftc.gov/news-events/news/press-releases/2016/06/mobile-advertising-network-inmobi-settles-ftc-charges-it-tracked-hundreds-millions-consumers)

## Corporate Context: InMobi × Taboola Partnership (2015–present)

- **October 29, 2015**: Strategic partnership announced
  - Taboola's content recommendation engine integrated into InMobi's
    700-app native mobile network
  - InMobi's "Miip" discovery commerce platform as the vehicle
  - Goal: 1 billion mobile consumers, 200 countries
  - InMobi CEO: Naveen Tewari | Taboola CEO: Adam Singolda

- **2019**: InMobi launched "Glance" (screen-zero lock screen platform)
  - Built on the InMobi×Taboola partnership infrastructure
  - OEM partnerships (Motorola, Realme, Xiaomi, OPPO, etc.)

- **2024-2026**: Both embedded as device features in Motorola SystemUI
  - com.glance.lockscreenM (InMobi/Glance)
  - com.taboola.ody (Taboola "Live Lock Screen")
  - Single setup wizard (com.ape.setupwizard) enrolls both
  - Single SystemUI process hosts both (Dagger DI, same layout)

- **Key admission (2015 press release)**:
  "Taboola's advanced mathematical engine analyzes hundreds of signals
  including device, geography, behavior, collaborative filtering, and
  social media trends to predict what content a user may most want
  to consume next."
  → This is exactly what the SystemUI code implements in 2024-2026.

  ## Reference: InMobi and Taboola Partner To Engage Over One Billion Mobile Consumers Through Content Discovery on Native Platform (https://advertising.inmobi.com/company/press/inmobi-taboola-to-engage-one-billion-mobile-consumers-on-native-platform)
  
