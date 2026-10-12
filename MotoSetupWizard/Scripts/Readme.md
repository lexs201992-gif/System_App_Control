### wizard_script.xml — The Main Flow (Longcheer-injected)

Primary APE script. Parsed by Google's APE engine on first boot.

**Longcheer injections visible in XML:**
- `com.longcheer.android.gmsintegration` (NFC flow resource)
- Developer comments: huanghaodong, zhangzhiyuan, jiangguohu, hushunfu
- Internal tickets: EKCANCUN-*, EKLION-*, EKSABAHL-*
- `oem_pre_setup` / `oem_post_setup` (Google hooks, ODM consumers)

**Consumer flow (MX, SIM, WiFi):**
welcome → demo_mode → slots → carrier → moto_sim → apn → 
connect_and_update → account → **oem_post_setup** → 
glance → stay_in_the_know → there_more → cpf → navigation → 
family_space → **MotoFinishActivity**

**The ODM trigger:** `oem_post_setup` (step 12)
- Intent: `com.android.setupwizard.OEM_POST_SETUP`
- Listened by: `com.longcheer.android.gmsintegration` (receiver)
- Effect: activates UnisocProxyManagerService + IUnionPnP + rkpdapp

### Complete step sequence (consumer, MX, SIM, WiFi)

| # | Step ID | Action/URI | ODM? |
|---|---|---|---|
| 1 | `oem_pre_setup` | `OEM_PRE_SETUP` | **Yes** (hook) |
| 2 | `welcome` | `WELCOME` | No |
| 3 | `demo_mode_wrapper` | `DEMO_MODE_WRAPPER` | **Yes** |
| 4 | `slots_selection` | `SLOTS_SELECTION` | No |
| 5 | `carrier_setup` | `CARRIER_SETUP` | No |
| 6 | `moto_sim_setup_wrapper` | `SIM_SETUP_WRAPPER` | **Yes** |
| 7 | `moto_sim_setup` | `SIM_SETUP` | **Yes** |
| 8 | `apn_setting` | `APN_SETTING` | **Yes** (skips MX) |
| 9 | `check_frp` | `CHECK_FRP` | No |
| 10 | `connect_and_update` | sub-script | No |
| 11 | `setup_as_new_flow` | sub-script (account) | No |
| 12 | `oem_post_setup` | `OEM_POST_SETUP` | **Yes** (TRIGGER) |
| 13 | `jio_wrapper` | `JIO_WRAPPER` | **Yes** (skips MX) |
| 14 | `glance_wrapper` | `GLANCE_WRAPPER` | **Yes** |
| 15 | `glance_setting` | `com.glance.action.oobe` | **Yes** (InMobi) |
| 16 | `moto_stay_in_the_know` | `STAY_IN_THE_KNOW` | **Yes** |
| 17 | `moto_there_more` | `THERE_MORE` | **Yes** |
| 18 | `cpf_wrapper` | `CPF_WRAPPER` | **Yes** |
| 19 | `moto_navigation` | `MOTO_NAVIGATION` | **Yes** |
| 20 | `moto_family_space` | `FAMILY_SPACE` | **Yes** |
| 21 | `taboola_wrapper` | `TABOOLA_WRAPPER` | **Yes** |
| 22 | `taboola_setting` | `com.taboola.ody.action.START_OOBE` | **Yes** (Taboola) |
| 23 | `paks_financed_setup` | `com.motorola.paks.action.financed_setup` | **Yes** (carrier lock) |
| 24 | `moto_finish` | `MOTO_FINISH` | **Yes** (FINAL TRIGGER) |
| 25 | `kid_post_setup` | `KID_POST_SETUP` | No |
| 26 | `exit` | `EXIT` | No |

### ODM-injected steps: 14 of 26 (54%)

### Key triggers:
- **Step 1** (`oem_pre_setup`): ODM injection point (before user sees anything)
- **Step 12** (`oem_post_setup`): ODM surface activation (IUnionPnP, rkpdapp, etc.)
- **Step 22** (`taboola_setting`): `com.taboola.ody.action.START_OOBE` → ad enrollment
- **Step 23** (`paks_financed_setup`): `com.motorola.paks.action.financed_setup` → carrier lock
- **Step 24** (`moto_finish`): `MotoFinishActivity` → checkin + wizard termination

# MotoSetupWizard (com.ape.setupwizard) — ODM First-Boot Provisioning Gate & Ad Platform Enrollment

> "The party starts here." — The wizard is the invitation. The ODM is the host.
> The user never sees who's in charge.   
