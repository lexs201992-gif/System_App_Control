## OMA-DM APN Rewrite: Confirmed in Smali

**Class:** `UniOmaApnReceiver` (BroadcastReceiver)
**Package:** `com.unisoc.telephony` (UID 1001, com.android.phone)

### Mechanism

The receiver processes OMA-DM APN bundles and writes them directly to the
APN database (`content://telephony/carriers/preferapn/subId`).

### APN Types Handled

| `bundleTypes` | Effect |
|---------------|--------|
| `"apn"` | Default APN (all mobile data) |
| `"mms"` | MMS APN (SMS/MMS traffic) |
| `"bootstarp"` [sic] | Bootstrap APN (the OMA-DM connection itself) |

Note: "bootstarp" is a typo in the source code.

### Match Logic

Two matching paths:
1. **By proxy:** `to-proxy` (appBundle) == `proxy-id` (apnBundle)
2. **By NAP ID:** `to-napid` (appBundle) == `napid` (apnBundle)

### APID Routing

| `appid` | Type written | Fields |
|---------|-------------|--------|
| `"w4"` | `mms` | mmsc, mmsproxy, mmsport, user, password, protocol |
| Other | `default` | Via `putDefaultApnValues()` (full APN rewrite) |

### Telcel Mexico Special Case (Carrier ID "26006")

When the carrier ID is `"26006"` (Telcel Mexico internal ID), the protocol
is **forced to `IPV4V6`** regardless of the OMA-DM payload value. This
confirms Mexico-specific customization.

### Write Pattern

1. `putContentValuesNull()` — **Clears all existing APN fields**
2. `validAndPut()` — Writes new values field-by-field
3. `putValuesToDatabase()` — **COMMIT to content provider**

The original values are saved in `mOriginalApnMap` (HashMap) before the
overwrite — this enables forensic before/after comparison.

### Forensic Verification

```bash
# Current APN (look for non-standard proxy/addr)
content query --uri content://telephony/carriers/preferapn

# Check if protocol is forced IPV4V6 (Telcel)
content query --uri content://telephony/carriers/preferapn | grep "protocol"

# OMA-DM activity in logcat
logcat -b all | grep -i "UniOmaApn\|appBundle\|to-proxy\|to-napid"

# Check carrier ID
dumpsys telephony.registry | grep "mCarrierId"
# 26006 = Telcel Mexico   ## OMA-DM APN Rewrite: Confirmed in Smali

**Class:** `UniOmaApnReceiver` (BroadcastReceiver)
**Package:** `com.unisoc.telephony` (UID 1001, com.android.phone)

### Mechanism

The receiver processes OMA-DM APN bundles and writes them directly to the
APN database (`content://telephony/carriers/preferapn/subId`).

### APN Types Handled

| `bundleTypes` | Effect |
|---------------|--------|
| `"apn"` | Default APN (all mobile data) |
| `"mms"` | MMS APN (SMS/MMS traffic) |
| `"bootstarp"` [sic] | Bootstrap APN (the OMA-DM connection itself) |

Note: "bootstarp" is a typo in the source code.

### Match Logic

Two matching paths:
1. **By proxy:** `to-proxy` (appBundle) == `proxy-id` (apnBundle)
2. **By NAP ID:** `to-napid` (appBundle) == `napid` (apnBundle)

### APID Routing

| `appid` | Type written | Fields |
|---------|-------------|--------|
| `"w4"` | `mms` | mmsc, mmsproxy, mmsport, user, password, protocol |
| Other | `default` | Via `putDefaultApnValues()` (full APN rewrite) |

### Telcel Mexico Special Case (Carrier ID "26006")

When the carrier ID is `"26006"` (Telcel Mexico internal ID), the protocol
is **forced to `IPV4V6`** regardless of the OMA-DM payload value. This
confirms Mexico-specific customization.

### Write Pattern

1. `putContentValuesNull()` — **Clears all existing APN fields**
2. `validAndPut()` — Writes new values field-by-field
3. `putValuesToDatabase()` — **COMMIT to content provider**

The original values are saved in `mOriginalApnMap` (HashMap) before the
overwrite — this enables forensic before/after comparison.

### Forensic Verification

```bash
# Current APN (look for non-standard proxy/addr)
content query --uri content://telephony/carriers/preferapn

# Check if protocol is forced IPV4V6 (Telcel)
content query --uri content://telephony/carriers/preferapn | grep "protocol"

# OMA-DM activity in logcat
logcat -b all | grep -i "UniOmaApn\|appBundle\|to-proxy\|to-napid"

# Check carrier ID
dumpsys telephony.registry | grep "mCarrierId"
# 26006 = Telcel Mexico


### `persist_radio_engtest.md` (versión final)

```markdown
## persist.radio.engtest.nr.enable: 5G NR Engineer Backdoor

**Class:** `UniSmartCarrierManager` (singleton, extends Handler)
**Property:** `persist.radio.engtest.nr.enable` (default: `"false"`)

### Access Pattern

```java
// Read (any process):
SystemProperties.get("persist.radio.engtest.nr.enable", "false")

// Write (requires WRITE_SECURE_SETTINGS or root):
SystemProperties.set("persist.radio.engtest.nr.enable", "true")

## Who Can Write
| Process | Permission | Can write? |
|---------|-----------|:---:|
| `com.dti.amx` (DTI Ignite) | `WRITE_SECURE_SETTINGS` | ✅ (if not revoked) |
| `com.unisoc.phone` (UID 1001) | Same UID as `com.android.phone` | ✅ (via `SystemProperties.set`) |
| `cmd_services` (root, repo: Ipc_Hidl_Aidl) | `ctl_default_prop (set)` | ✅ |
| Any normal app | — | ❌ |

## Combined with Other Components
| Component | Interaction |
|-----------|-------------|
| `setNrEnabled(bool)` | Enables/disables 5G NR at radio level |
| `getSA()` via RadioInteractor | Queries SA mode from baseband (AT) |
| `ThermalMitigationRequest` | Data throttling (abusable with PMIC thermal mock) |
| PMIC thermal.mock (repo: Ipc_Hidl_Aidl) | Framework sees "normal" temperature |
| `persist.` prefix | Survives reboots |

## Hidden API Access (confirmed in smali)
| API | Class | Normal access | ODM access |
|-----|-------|--------------|------------|
| `PhoneFactory.getPhone(id)` | `com.android.internal.telephony` | `@SystemApi` (framework only) | ✅ Direct (same process, UID 1001) |
| `Phone.getSignalStrength()` | Same | Private | ✅ Direct |
| `ServiceState.getNetworkRegistrationInfo()` | Same | `@SystemApi` | ✅ Direct |
| `NetworkRegistrationInfo.getNrState()` | Same | Private | ✅ Direct |

## Forensic Verification
# Check 5G NR property
getprop persist.radio.engtest.nr.enable

# Check current NR mode
dumpsys telephony.registry | grep -i "nr\|5g\|sa\|nsa"

# Check if throttling is active
dumpsys telephony.registry | grep -i "thermal\|throttl"


### `at_spaselplmnmode.md` (nuevo finding)

```markdown
## AT+SPSELPLMNMODE: Unisoc Proprietary PLMN Search Command

**Class:** `UniFastReturnServiceTracker`
**Commands:**
- `AT+SPSELPLMNMODE=1` — Manual PLMN search (UPLMN list only)
- `AT+SPSELPLMNMODE=2` — Auto PLMN search (any available network)
- `AT+CNMPSD=` — PDP context control (proprietary, undocumented)

### Behavior

| Condition | Command | Retry |
|-----------|---------|-------|
| Out of service + not 2G/3G | `AT+SPSELPLMNMODE=2` | 4×, 30s delay |
| Has history search | `AT+SPSELPLMNMODE=2` | 4×, 30s delay |
| No history (first time) | `AT+SPSELPLMNMODE=1` | 1×, 30s delay |

### Combined with UPLMN Lock

### Security Implication

The combination of:
- `UplmnSettings` (set PLMN list)
- `AT+SPSELPLMNMODE=1` (search only UPLMN)
- `AT+CNMPSD=` (PDP context control)
- OMA-DM APN rewrite (route traffic via rogue proxy)

...provides **full network steering**: the device can be forced to connect
to a specific PLMN AND route all traffic through a specific APN/proxy.
Both are controlled remotely (OMA-DM) or at factory (UPLMN pre-set).

### Not 3GPP Standard

`AT+SPSELPLMNMODE` and `AT+CNMPSD` are **Unisoc proprietary** commands.
They do not appear in any 3GPP TS 27.007 (AT command) specification.
They are only documented (implicitly) in Unisoc baseband firmware.

### Forensic Verification

```bash
# Check AT command logging (if enabled)
logcat -b all | grep -i "SPSELPLMNMODE\|CNMPSD\|FastReturn"

# Check UPLMN
settings get global preferred_network
dumpsys isub | grep -i "uplmn\|preferred_plmn"

# Check if device is in "elevator" mode (aggressive search)
logcat -b all | grep "UniFastReturnServiceTracker"   
