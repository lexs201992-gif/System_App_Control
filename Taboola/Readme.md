## TaboolaObserver + TaboolaHintAnimator — IPC & Re-engagement

### IPC: ContentProvider (5 URIs)
- content://com.taboola.ody.data.provider/... (kill, main, mobile, autoplay, noReact)
- SystemUI reads/writes these via ContentResolver (Binder IPC)
- Same pattern as Glance's ContentProviderWrapper

### Carrier whitelist (isTaboolaCarrier)
- EMEA: retgb, 3gb, o2gb, reteu, oraeu, pluspl, playpl, timit, teleu, vfeu, retru, retmea
- LATAM: openmx (Telcel MX), attmx, altmx, opencl, entcl, womcl, openpe, avaco, retla, tigca, retar
- APAC: retapac
- Gate: com.taboola.ody must be installed AND enabled

### Silent enrollment
- initSettingValue(): if Settings.System key == -1 (never set) → writes default
- Default is likely "on" → user never explicitly opted in

### Remotely configurable re-engagement
- Frequency arrays loaded from com.taboola.ody APK resources at runtime
- Taboola app update = new re-prompt frequency (no Motorola OTA needed)
- Fallback: reactive [45d, 20d], OOBE-unaccept [60d, 30d, 10d]
- "Don't show again" stored in Settings.System → resettable by setup wizard

### Cross-user monitoring
- registerReceiverForAllUsers() on PACKAGE_ADDED/REPLACED/CHANGED/REMOVED
- Monitors com.taboola.ody lifecycle across ALL user profiles

### Cross-app resource dependency
- getTaboolaResources(): SystemUI loads UI strings/images from Taboola APK
- Taboola app update = new SystemUI hint UI (no OTA needed)

  ## SystemUI Hard Dependency (Dagger DI)

Both ad platforms are **Dagger-injected, non-nullable components** of
NotificationShadeWindowView:

    NotificationShadeWindowView (layout XML, compiled into SystemUI.apk)
    ├── GlanceView   (ID: 0x7f0a02e2) → Dagger: GetGlanceViewFactory
    └── TaboolaView  (ID: 0x7f0a0748) → Dagger: GetTaboolaViewFactory

- checkNotNullFromProvides() → SystemUI crashes if either view is absent
- No runtime loading, no plugin mechanism, no user toggle
- Removal requires recompiling SystemUI.apk (root + OTA)
- Both are in the SAME layout file, same Dagger component, same process

## Complete evidence chain (both platforms)

1. Setup Wizard (com.ape.setupwizard)
   ├── GlanceWrapper → carrier gate → WRITE_SECURE_SETTINGS
   └── TaboolaWrapper → carrier+channel gate → WRITE_SECURE_SETTINGS
   └── Permissions: WRITE_SECURE_SETTINGS, RECEIVE_BOOT_COMPLETED,
                    BIND_DEVICE_ADMIN, FOREGROUND_SERVICE_DATA_SYNC

2. SystemUI (compiled, Dagger-managed)
   ├── Glance: GlanceView → TappableTagline → ContentProviderWrapper
   │   └── IPC: ContentProvider.call() → com.glance.lockscreenM
   └── Taboola: TaboolaView → TaboolaObserver → 5 ContentProvider URIs
       └── IPC: ContentResolver → com.taboola.ody.data.provider
       └── TaboolaHintAnimator: 5 re-engagement rules,
           frequency from com.taboola.ody APK resources (remote-updatable)
       └── FLAG_SECURE on consent screen (no screenshots)
       └── OOBEUnacceptReactiveRule: re-prompt after user says NO

3. Companion apps (device features, not user-visible)
   ├── com.glance.lockscreenM (InMobi)
   │   ├── AppCta/AppMeta: remote app-install + auto-launch
   │   ├── Cta/CtaMeta: shouldUnlock (default TRUE), openInBg
   │   └── GlanceInteractionData: fake social proof
   └── com.taboola.ody (Taboola)
       ├── ContentProvider (5 control URIs)
       ├── Resources (frequency arrays, UI strings/images)
       └── Network layer (ad delivery, tracking)

4. Multi-OEM proof
   ├── TappableTagline.realmePeekRibbon (Realme UI in InMobi SDK)
   └── Taboola carrier whitelist: EMEA + LATAM + APAC (12+ carriers)

## Taboola IPC
┌────────────────────────────────────────────────────────────────────┐
│  SystemUI (com.android.keyguard.taboola)                           │
│                                                                    │
│  TaboolaObserver                                                   │
│    ├── 5 ContentProvider URIs → com.taboola.ody.data.provider     │
│    ├── isTaboolaCarrier() — carrier/channel whitelist             │
│    ├── State machine (7 states)                                   │
│    └── initSettingValue() — silent default enrollment             │
│                                                                    │
│  TaboolaViewController                                             │
│    ├── CONNECTIVITY_CHANGE receiver                               │
│    └── TaboolaHintAnimator                                        │
│         ├── 5 rules (read, carousel, reactive, OOBE, SW card)    │
│         ├── getValue() → reads arrays from com.taboola.ody APK   │
│         ├── getTaboolaResources() → loads UI from Taboola APK    │
│         └── registerReceiverForAllUsers() → monitors Taboola app │
└────────────────────────────────────────────────────────────────────┘
         │
         │  ContentResolver query/update (Binder IPC)
         │  URIs: content://com.taboola.ody.data.provider/...
         │
┌────────────────────────────────────────────────────────────────────┐
│  com.taboola.ody (device feature, not user-visible)                │
│                                                                    │
│  ├── ContentProvider (data provider) ← SystemUI reads/writes      │
│  ├── Resources (arrays, strings, images) ← SystemUI loads         │
│  ├── Network layer (Taboola SDK, ad delivery)                     │
│  └── Can update frequency/UI via app update (no OTA needed)       │
└────────────────────────────────────────────────────────────────────┘   
