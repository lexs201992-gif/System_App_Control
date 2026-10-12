# MotoSetupWizard (com.ape.setupwizard) — ODM First-Boot Provisioning Gate & Ad Platform Enrollment

> "The party starts here." — The wizard is the invitation. The ODM is the host.
> The user never sees who's in charge.

### Identity
- Package: `com.ape.setupwizard`
- APK: `/system/priv-app/MotoSetupWizard/MotoSetupWizard.apk` (10.5 MB)
- UID: 10091
- Version: 14 / 34 (Android 14)
- Signed by: **Longcheer** (CN=Longcheer, OU=Longcheer, O=Longcheer, L=ShangHai, C=CN)
  - Serial: `228526b0d1ef90c3b8ed568a49c3714f6a39506b`
  - SHA-256: `4cfe803b578fd6958d236e494248585ecbcb5c33a5113bda7ff1a47351e4118d`
  - Validity: 2023-09-15 → 2051-01-31
- Shared library: `moto-settings.jar` (`/system/framework/`)
- NOT a CVE. NOT an exploit. Architecture of ODM first-boot control.

### What it is
The **APE (Android Provisioning Engine)** Setup Wizard, modified by Longcheer to:
1. Execute ODM-specific provisioning steps (SIM, APN, carrier lock)
2. Activate ad platforms (Glance/InMobi, Taboola) **without explicit user opt-in**
3. Trigger the ODM control surface (`oem_post_setup` → IUnionPnP, rkpdapp, UniWifiApp)
4. Enforce carrier financing lock (PAKS) on financed devices
5. Force OTA updates **before** the user reaches home screen

### Key permissions (signature)

| Permission | Purpose |
|---|---|
| `WRITE_SECURE_SETTINGS` | Activate ad platforms, set defaults |
| `MANAGE_PROFILE_AND_DEVICE_OWNERS` | DPM/MDM (enterprise + PAKS) |
| `BIND_DEVICE_ADMIN` | Carrier lock (PAKS) |
| `WRITE_APN_SETTINGS` | APN provisioning |
| `CHANGE_NETWORK_STATE` | Network configuration |
| `FOREGROUND_SERVICE_DATA_SYNC` | Background sync during setup |
| `RECEIVE_BOOT_COMPLETED` | Re-execute after factory reset |
| `com.motorola.setup.permission.NOTIFY_POST_SETUP` | **The trigger** (self-defined) |
| `com.motorola.ccc.plm.permission.READPROVIDER` | CCC/PLM backend |

### Wizard scripts (25 XML files)

| Script | Role |
|---|---|
| `wizard_script.xml` | **Main flow** (26 steps, 14 ODM-injected) |
| `wizard_script_connect_and_update_flow.xml` | WiFi/data + **CCC OTA check** + GMS checkin |
| `wizard_script_account_flow.xml` | Google account |
| `wizard_script_moto_demo_mode_flow.xml` | **Demo mode** (retail/factory) |
| `wizard_script_zero_touch_flow.xml` | Enterprise zero-touch |
| `wizard_script_nfc_provision_flow.xml` | NFC provisioning (Longcheer resource) |
| `wizard_script_qr_provision_flow.xml` | QR provisioning |
| `wizard_script_unified_restore_flow.xml` | Cloud restore |
| `wizard_script_no_network_flow.xml` | Offline setup |
| `wizard_script_post_dpm_provision_finalization_flow.xml` | DPM finalization |
| `wizard_script_post_dpm_user_flow.xml` | Post-DPM user steps |
| `wizard_script_common_flow.xml` | Common steps |
| `wizard_script_common_biometric_screen_lock_flow.xml` | Biometric enrollment |
| `wizard_script_common_personalization_flow.xml` | Personalization |
| `wizard_script_deferred.xml` | Deferred actions |
| `wizard_script_pre_deferred.xml` | Pre-deferred actions |
| `wizard_script_finish_cloud_restore_flow.xml` | Cloud restore finish |
| `wizard_script_start_cloud_restore_flow.xml` | Cloud restore start |
| `wizard_script_user.xml` | User-specific steps |
| `wizard_script_user_account_flow.xml` | User account |
| `wizard_script_user_no_account_flow.xml` | No-account flow |
| `wizard_script_no_account_flow.xml` | No-account flow |
| `wizard_script_post_managed_provisioning.xml` | Managed provisioning |
| `gesture_navigation_preview.json` | Navigation preview |
| `register_email.json` | Email registration |

### Main flow (consumer, MX, SIM, WiFi)

| # | Step | ODM? | Action |
|---|---|---|---|
| 1 | `oem_pre_setup` | **Yes** | ODM injection (before user sees anything) |
| 2 | `welcome` | No | Language selection |
| 3 | `demo_mode_wrapper` | **Yes** | Demo mode gate (skip for consumer) |
| 4 | `slots_selection` | No | SIM detection |
| 5 | `carrier_setup` | No | Carrier activation |
| 6 | `moto_sim_setup_wrapper` | **Yes** | SIM setup (Longcheer) |
| 7 | `moto_sim_setup` | **Yes** | Data selection |
| 8 | `apn_setting` | **Yes** | APN (skips MX — only Japan/Hawaii) |
| 9 | `check_frp` | No | FRP check |
| 10 | `connect_and_update` | No+**Yes** | WiFi + **CCC OTA check** + GMS checkin |
| 11 | `setup_as_new_flow` | No | Google account |
| 12 | `oem_post_setup` | **Yes** | **TRIGGER: ODM control surface activates** |
| 13 | `jio_wrapper` | **Yes** | Jio lock (skips MX) |
| 14 | `glance_wrapper` | **Yes** | Glance/InMobi carrier gate |
| 15 | `glance_setting` | **Yes** | `com.glance.action.oobe` (InMobi onboarding) |
| 16 | `moto_stay_in_the_know` | **Yes** | Opt-in toggles (5 lambdas) |
| 17 | `moto_there_more` | **Yes** | Feature opt-in (5 lambdas) |
| 18 | `cpf_wrapper` | **Yes** | Carrier Provisioning Framework |
| 19 | `moto_navigation` | **Yes** | Gesture navigation |
| 20 | `moto_family_space` | **Yes** | Family Link |
| 21 | `taboola_wrapper` | **Yes** | Taboola carrier gate (LATAM: active) |
| 22 | `taboola_setting` | **Yes** | `com.taboola.ody.action.START_OOBE` |
| 23 | `paks_financed_setup` | **Yes** | `com.motorola.paks.action.financed_setup` (carrier lock) |
| 24 | `moto_finish` | **Yes** | **MotoFinishActivity**: checkin + clearAllActvity |
| 25 | `kid_post_setup` | No | Kid account |
| 26 | `exit` | No | Home screen |

**ODM-injected steps: 14 of 26 (54%)**

### The ODM triggers

| Trigger | Intent Action | Consumer | Effect |
|---|---|---|---|
| Pre-setup | `com.android.setupwizard.OEM_PRE_SETUP` | `com.longcheer.android.gmsintegration` | ODM injection before user |
| **Post-setup** | `com.android.setupwizard.OEM_POST_SETUP` | `com.longcheer.android.gmsintegration` | **Activates IUnionPnP + rkpdapp + UniWifiApp** |
| Glance | `com.glance.action.oobe` | `com.glance.lockscreenM` (InMobi) | Ad platform onboarding |
| Taboola | `com.taboola.ody.action.START_OOBE` | `com.taboola.ody` | Ad platform enrollment |
| PAKS | `com.motorola.paks.action.financed_setup` | `com.motorola.paks` | Carrier financing lock (DPM) |
| CCC OTA | `com.motorola.ccc.ota.CHECK_FOR_VITAL_UPDATE` | `com.motorola.ccc.ota` | **Forced FOTA before user reaches home** |
| Finish | `com.moto.android.setupwizard.MOTO_FINISH` | `com.ape.setupwizard` (self) | Checkin + wizard termination |

### `MotoFinishActivity.loadNext()` — The Gate

java
String carrier = SystemProperties.get("ro.carrier", "unknown");
String channel = SystemProperties.get("persist.sys.sub_channel_id", "unknown");
int pictorial = Settings.System.getInt(resolver, "motorola_customize_pictorial_apply", 0);

// Regional ad activation (NOT user opt-in):
if (isSupportEmeaTaboola(carrier, channel) || isSupportLatamTaboola(carrier, channel)) {
    setValueForCheckin("suw_onb", pictorial, context);  // "Setup Wizard OnBoarding"
    if (pictorial == 0) {
        setValueForCheckin("dev_act", 0, context);       // "Device Activation"
        setValueForCheckin("sc_ls", 0, context);         // "Setup Complete"
    }
}

clearAllActvity();  // No back navigation

## moto-settings.jar — ODM Settings Store
ContentProvider at com.motorola.android.provider.MotorolaSettings:

Global, Secure, System (mirrors android.provider.Settings)
NameValueCache, NameValueTable, GenerationTracker
ODM-specific keys that survive reboot, updatable via FOTA
Longcheer evidence in XML

| Evidence | Detail |
|---|---|
| `com.longcheer.android.gmsintegration` | NFC flow resource from Longcheer APK |
| Developer comments | `huanghaodong`, `zhangzhiyuan`, `jiangguohu`, `hushunfu` |
| Internal tickets | `EKCANCUN-*`, `EKLION-*`, `EKSABAHL-*` |
| `Utils.LENOVO_VERSION` | Same codebase for Lenovo (multi-brand ODM) |
| `onResume()` writes `sprd_display_color_temperature_mode` | SPRD = Spreadtrum = Unisoc |

## Ad platform activation (silent, carrier-gated)
| Platform | Gate | Activation Intent | APK |
|---|---|---|---|
| **Glance (InMobi)** | `Utils.isGLANCE(carrier)` | `com.glance.action.oobe` | `com.glance.lockscreenM` |
| **Taboola** | `isSupportEmeaTaboola` / `isSupportLatamTaboola` | `com.taboola.ody.action.START_OOBE` | `com.taboola.ody` |

Both are Dagger-injected into SystemUI (non-nullable, crash if absent).
Both are remotely configurable (frequency, UI, content via app update — no OTA needed).

## PAKS (carrier financing lock)
paks_financed_setup → com.motorola.paks.action.financed_setup
  → DevicePolicyManager activation
  → Carrier lock (no factory reset without authorization)
  → Ongoing: billing, compliance, remote wipe   

## connect_and_update_flow.xml — CCC OTA injection
WiFi connected / Mobile data activated
  → consolidate_captive_portal
  → moto_privacy_update_control    ← ODM (privacy toggles)
  → moto_ota_update                ← ODM (com.motorola.ccc.ota.CHECK_FOR_VITAL_UPDATE)
  → pre_checkin_and_update         ← GMS (standard)
  → ota_update / early_update      ← GMS (standard)
  → post_checkin_and_update        ← GMS (standard)   

  The CCC OTA check runs BEFORE GMS checkin. If a "vital" FOTA is available:
Device reboots
Re-enters connect_and_update_flow
Repeats until FOTA is applied
User cannot reach home screen until complete

## Cross-references
| Component | Location | Relationship |
|---|---|---|
| `com.longcheer.android.gmsintegration` | `../com.longcheer.android.gmsintegration/` | Listens to `OEM_PRE_SETUP` / `OEM_POST_SETUP` |
| `unisoc-framework.jar` | `../unisoc-framework/` | Activated by `OEM_POST_SETUP` trigger |
| `unisoc-services.jar` | `../unisoc-services/` | `UnisocProxyManagerService` (decisor) |
| `unipnp/` | `../unipnp/` | `IUnionPnP` HAL (actuator) |
| `RemoteProvisioner/` | `../RemoteProvisioner/` | `rkpdapp` (C2 sync trigger) |
| `com.android.virt/` | `../com.android.virt/` | AVF (dormant, activated post-setup) |
| `SystemUi/` | `../SystemUi/` | Glance + Taboola (Dagger-injected) |
| `Taboola/` | `../Taboola/` | `com.taboola.ody` (ad delivery) |
| `Vintf/` | `../Vintf/` | HAL manifests |

## Files in this folder
MotoSetupWizard/
├── README.md (this file)
├── AndroidManifest.xml
├── assets/
│   ├── MotoSetupWizard.apk (original binary)
│   └── wizard_scripts.zip (25 XML + 2 JSON)
├── scripts/
│   ├── wizard_script.xml
│   ├── wizard_script_connect_and_update_flow.xml
│   ├── wizard_script_moto_demo_mode_flow.xml
│   ├── wizard_script_zero_touch_flow.xml
│   ├── wizard_script_nfc_provision_flow.xml
│   └── ... (25 files)
├── moto-settings.jar/
│   ├── README.md
│   └── com/motorola/android/provider/MotorolaSettings*.smali
└── signature/
    └── Longcheer_platform_cert.txt   
