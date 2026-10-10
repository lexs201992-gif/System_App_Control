┌─────────────────────────────────────────────────────────────────┐
│ MOTO GENIE (C2/FOTA)                                            │
│   Alibaba OSS → argo.svcmot.com                                 │
│   Fulguris → sion.net                                           │
│   wg0 → 117.24.6.122:51820                                      │
└──────────┬──────────────────────────────────────────────────────┘
           │ binder (on-demand)
           ▼
┌─────────────────────────────────────────────────────────────────┐
│ vendor.sprd HALs (root/system)                                  │
│                                                                 │
│  ITrustyClientProvider ──→ Trusty TEE                           │
│       ├── KeyMint (attestation keys)                            │
│       ├── IFAA / Soter (biometría financiera)                   │
│       ├── Sunwave fingerprint (sw_config.xml)                    │
│       └── [otros objetos TEE]                                   │
│                                                                 │
│  IAIEngineControl ──→ NPU (inferencia local)                    │
│  IBootControl ──→ Boot state control                            │
│  IUnisocGnss ──→ GNSS vendor ext                                │
│  IFingerprintmmi ──→ Fingerprint MMI                            │
│  ITui ──→ Touch/Trust UI                                        │
│  IUnionPnP ──→ Unisoc PnP                                       │
└─────────────────────────────────────────────────────────────────┘

## apex/com.android.rkpd/priv-app/rkpdapp@ULAS34.89-209-4`
