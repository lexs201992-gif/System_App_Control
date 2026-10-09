## SYSTEMUI AD LAYER
┌─────────────────────────────────────────────────────────────────────────────────┐
│ SYSTEMUI AD LAYER (com.android.systemui, UID 1000)                             │
│                                                                                 │
│  NotificationShadeWindowView (layout XML, Dagger DI)                            │
│  ├── GlanceView (ID: 0x7f0a02e2)                                               │
│  │   └── TappableTagline (com.glance.bridge.sdk.ui)                             │
│  │       ├── ContentProviderWrapper.call() → com.glance.lockscreenM             │
│  │       ├── AppMeta.autoAppOpen (server-controlled)                            │
│  │       ├── CtaMeta.shouldUnlock (default TRUE)                               │
│  │       ├── CtaMeta.openInBg (server-controlled)                              │
│  │       └── GlanceInteractionData (fake social proof)                         │
│  │                                                                             │
│  └── TaboolaView (ID: 0x7f0a0748)                                              │
│      ├── TaboolaObserver (5 ContentProvider URIs)                              │
│      │   └── content://com.taboola.ody.data.provider/...                        │
│      ├── TaboolaHintAnimator (5 re-engagement rules)                           │
│      │   ├── Frequency from com.taboola.ody APK resources (remote-updatable)   │
│      │   ├── OOBEUnacceptReactiveRule (re-prompt after NO)                     │
│      │   └── registerReceiverForAllUsers() (monitors Taboola app)              │
│      ├── TaboolaSetupWizardActivity (FLAG_SECURE, no screenshots)              │
│      └── TaboolaViewController (CONNECTIVITY_CHANGE receiver)                  │
│                                                                                 │
│  IPC: ContentProvider.call() / ContentResolver (Binder, blocking)              │
│  Target: com.glance.lockscreenM + com.taboola.ody (device features)            │
│  Enrollment: com.ape.setupwizard (WRITE_SECURE_SETTINGS, carrier-gated)        │
│                                                                                 │
└─────────────────────────────────────────────────────────────────────────────────┘ 


