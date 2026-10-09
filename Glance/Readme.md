## Glance (InMobi) — System-Embedded Ad Platform

**OEM:** Motorola (also Realme — shared SDK)
**Device:** moto g04s, Android 14, build ULAS34.89-209-4
**Package:** `com.glance.lockscreenM` (device feature, not app)

### Architecture
- **SystemUI hook:** `GlanceView` (FrameLayout, ID 0x7f0a02e2) 
  hardcoded in `NotificationShadeWindowView` layout, managed by Dagger DI
- **SDK view:** `TappableTagline` (ConstraintLayout) — self-initializing 
  singleton that creates its own `GlanceBridgeApiImpl` + `ContentProviderWrapper`
- **IPC:** Blocking `ContentProvider.call()` via `runBlocking(Dispatchers.IO)`
  — SystemUI main thread stalls waiting for Glance app response
- **Persistence:** SharedPreferences in SystemUI data dir + 
  `Settings.Global: glance_triggered` + `Settings.Secure: state_glance_lockscreen`
- **Enrollment:** `com.ape.setupwizard` (WRITE_SECURE_SETTINGS) at first boot,
  carrier-gated (`Utils.isGLANCE(carrier)`)

### Capabilities (server-controlled per content)
- Unlock device on tap (`shouldUnlock`, defaults TRUE)
- Open URL in background (`openInBg`)
- Install/launch arbitrary app (`AppMeta.packageName` + `autoAppOpen`)
- Redirect chain (`url` ≠ `originalUrl`)
- Fake engagement metrics (`likeCount`, `liveViewCount`, `shareCount`)
- Auto-advance content (`mFetchingNextGlance`)
- Reactivation nudge if user disables (`mReactivationNudgeContentObserver`)

### Multi-OEM evidence
- `realmePeekRibbon` field in `TappableTagline` 
  → same SDK deployed on Motorola AND Realme devices
- InMobi's "screen-zero" platform is a **universal OEM SDK**, not a per-device app

### Classification
Not traditional malware. A **system-privileged, remotely-configurable 
ad-delivery platform** with:
- Platform-level persistence (compiled into SystemUI)
- No user-visible app footprint (device feature)
- No per-action consent (server decides unlock/bg-open/target)
- Multi-OEM deployment (InMobi SDK, not OEM-specific)
- First-boot auto-enrollment via privileged setup wizard

## Architecture 
┌─────────────────────────────────────────────────────────────────┐
│  SystemUI.apk (OEM-modified, Dagger-managed)                    │
│                                                                 │
│  ┌───────────────────────────────────────────────────────────┐  │
│  │  NotificationShadeWindowView (layout XML)                 │  │
│  │    └── GlanceView (ID: 0x7f0a02e2) [FrameLayout]         │  │
│  │          └── TappableTagline [ConstraintLayout]           │  │
│  │                ├── mStoryTitle / mStoryCategoryText       │  │
│  │                ├── mCtaText (CTA button)                  │  │
│  │                ├── glanceLogo (branding)                  │  │
│  │                ├── mPeekRibbon / realmePeekRibbon         │  │
│  │                └── reactivationWidgetRemoteView           │  │
│  │                                                           │  │
│  │  GlanceBridgeSdk (singleton, self-init)                   │  │
│  │    ├── GlanceBridgeApiImpl                                │  │
│  │    │     └── ContentProviderWrapper → Binder IPC          │  │
│  │    └── oemDataStore (SharedPreferences in SystemUI data)  │  │
│  │                                                           │  │
│  │  GlanceViewController (lifecycle, visibility, wallpaper)   │  │
│  └───────────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────────┘
         │
         │  ContentProvider.call() (blocking, Dispatchers.IO)
         │  Methods: GET_TAGLINE_Y, SET_EULA_STATE, eulaAccepted()
         │
┌─────────────────────────────────────────────────────────────────┐
│  com.glance.lockscreenM (device feature, not user-visible)      │
│                                                                 │
│  ├── Network layer (InMobi SDK, sockets, C2)                    │
│  ├── Content delivery (JSON → Gson models)                      │
│  │     ├── Cta / CtaMeta (actions: unlock, bg-open, URL)        │
│  │     ├── AppCta / AppMeta (app-install funnel)                │
│  │     └── GlanceInteractionData (fake social proof)            │
│  └── Analytics (mrFlowCount, glanceId attribution)              │
└─────────────────────────────────────────────────────────────────┘ 

## IPC
com.glance.lockscreenM (single APK)
├── com.glance.bridge.sdk        ← IPC layer (talks to SystemUI)
│   ├── ContentProviderWrapper   ← Binder bridge
│   └── ui.TappableTagline       ← View injected into SystemUI
├── glance.content.sdk.model     ← Remote payload models (Gson)
│   ├── Cta / CtaMeta            ← Action engine
│   ├── AppCta / AppMeta         ← App-install funnel
│   └── GlanceInteractionData    ← Fake social proof
└── [network/SDK layer]          ← Sockets, InMobi SDK, tracking   
