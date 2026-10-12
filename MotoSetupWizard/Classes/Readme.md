## First Boot Flow 

FOTA ULAS34.89-209-4 
  │
  ├── UniPowerOnWakeup.setPowerOnToRtc(3AM, ...)
  │     → RTC/PMIC wake → boot
  │
  ├── IUniSilentReboot.silentRebootForApply()
  │     → Recovery → aplica update → boot
  │
  ├── Boot → system_server carga:
  │     • unisoc-framework.jar (boot classpath)
  │     • unisoc-services.jar (system_server)
  │     • unionpnp_service (root, /vendor/bin/hw/)
  │     • IAIEngineControl, IEnhance, INetworkControl
  │
  ├── APE Setup Wizard (com.ape.setupwizard)
  │     → wizard_script.xml → wizard_script_user.xml
  │    
  │     → Wizard termina
  │
  ▼
┌─────────────────────────────────────────────────────────────────────┐
│  TRIGGER: "Setup Complete"                                          │
│                                                                     │
│  UnisocProxyManagerService:                                         │
│    → notifyFeatureXmllLoaded(true)                                  │
│    → loadXmlProxyConfig() → ProxyConfigFeature XML                  │
│    → setBroadcastProxy("android.intent.action.LOCALE_CHANGED", ...) │
│    → setBroadcastProxy("android.net.conn.CONNECTIVITY_CHANGE", ...) │
│                                                                     │
│  INetworkAdapterService:                                            │
│    → initTrafficLimit()                                             │
│    → setPriorityByUid(1000, HIGH)  [system_server]                  │
│    → setMptcpStatus(true)                                           │
│    → CA activation (Carrier Aggregation)                            │
│    → IPv6 activation                                                │
│                                                                     │
│  IUnionPnP:                                                         │
│    → sceneChangedNotify("normal")                                   │
│    → setUclamp(system processes)                                    │
│                                                                     │
│  rkpdapp (UID 10213):                                               │
│    → BootReceiver → PeriodicProvisioner                             │
│    → remoteprovisioning.googleapis.com                              │
│    → Firebase (firebaseremoteconfig)                                │
│                                                                     │
│  40+ system apps:                                                   │
│    → Activate (UniWifiApp, UniTelephonyApp, RadioInteractorApp,   │
│      SystemUI ad layer, Taboola, etc.)                              │
└─────────────────────────────────────────────────────────────────────┘   

### Activity flow (provisioning sequence)

The wizard executes these activities in order:
1. SIM detection → APN → Data selection
2. WiFi → Privacy (toggles) → Account
3. **Opt-in screens** (StayInTheKnow, ThereMore, StayInTouch)
4. **Silent activations** (GlanceWrapper, TaboolaWrapper)
5. OTA check (MotoOtaUpdateActivity)
6. **MotoFinishActivity** → NOTIFY_POST_SETUP → ODM surface ACTIVE

### Silent activations (no user opt-in)
- `TaboolaWrapper` → activates ad SDK
- `GlanceWrapper` → sets Glance as default home
- `MotoPhoneProtectActivity` → Find My Device

### The "gate"
`MotoFinishActivity` is the trigger that wakes:
- UnisocProxyManagerService (IUnionPnP tuning)
- rkpdapp (attestation + C2 sync)
- UniWifiApp / UniTelephonyApp / RadioInteractorApp
- All 240+ system apps

## MotoFinishActivity.loadNext()
private void loadNext() {
    String carrier = SystemProperties.get("ro.carrier", "unknown");
    String carrierObj = Carrier.getCarrier();
    String subChannel = SystemProperties.get("persist.sys.sub_channel_id", "unknown");
    int pictorial = Settings.System.getInt(resolver, "motorola_customize_pictorial_apply", 0);
    
   // REGIONAL Taboola activation:
    boolean taboola = Utils.isSupportEmeaTaboola(carrier, subChannel)
                   || Utils.isSupportLatamTaboola(carrier, subChannel);
    
  if (taboola) {
        Utils.setValueForCheckin("suw_onb", pictorial, context);  // "Setup Wizard OnBoarding"
        if (pictorial == 0) {
            Utils.setValueForCheckin("dev_act", 0, context);      // "Device Activation"
            Utils.setValueForCheckin("sc_ls", 0, context);        // "Screen Lock" / "Setup Complete"
        }
    }
    
  if (!isNotification) {
        Intent next = WizardManagerHelper.getNextIntent(getIntent(), -1);
        startActivityForResult(next, -1);
    }
    
  MotoApplication.clearAllActvity();  // ← TERMINA el wizard
}   

## onResume()
@Override
protected void onResume() {
    Settings.System.putInt(getContentResolver(), 
        "sprd_display_color_temperature_mode", 2);
}   

### MotoFinishActivity — The Gate

`loadNext()` is the final trigger:
1. **Regional Taboola check**: `isSupportEmeaTaboola` / `isSupportLatamTaboola`
   → Taboola activates by CARRIER + sub_channel_id (NOT user opt-in)
2. **Checkin values** (via CCC/PLM ContentProvider):
   - `suw_onb` = onboarding complete
   - `dev_act` = device activated  
   - `sc_ls` = setup complete
3. **Wizard termination**: `clearAllActvity()` (no back navigation)

### ODM injection evidence
- `onResume()` writes `sprd_display_color_temperature_mode` (SPRD = Spreadtrum = Unisoc)
- `Utils.LENOVO_VERSION` → same codebase for Lenovo (Longcheer multi-brand ODM)
- `setValueForCheckin` → Motorola CCC/PLM backend (not Google)   
