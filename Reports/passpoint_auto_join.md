## Passpoint Auto-Join: Confirmed in Smali

**Class:** `UniWifiCarrierNetworkManager`
**Package:** `com.unisoc.wifi` (UID 1000, process="system")
**Source:** `UniWifiCarrierNetworkManager.java`

### Mechanism

The class implements **dual-path** WiFi network pre-configuration:

1. **Modern path** (Android 10+): `WifiNetworkSuggestion` with
   `setIsInitialAutojoinEnabled(true)` → device auto-connects without user
   prompt or consent.

2. **Legacy path** (Android < 10): `WifiConfiguration` + `addNetwork()` +
   `enableNetwork()` → same effect (UID 1000 bypasses permission checks).

### Passpoint Profile Construction (`createPasspointConfig`)

| Field | Source | OTA-updatable? |
|-------|--------|:---:|
| FQDN | `securityArray[0]` (carrier config or hardcoded resources) | Carrier config: ✅ / Resources: ❌ |
| FriendlyName | `securityArray[1]` | Same |
| IMSI | Device SIM (`TelephonyManager`) | ❌ (physical) |
| EAP Type | `securityArray[2]` (integer) | Same |
| Realm | `securityArray[3]` | Same |

The profile uses **SIM credential** (not certificate) — the device
authenticates to the Passpoint network using its IMSI. This means:
- The Passpoint network is tied to the **subscriber identity** (IMSI)
- A device with a Telcel SIM will auto-join Telcel Passpoint networks
- A device with a Tigo SIM will auto-join Tigo Passpoint networks
- The carrier can change FQDN/realm/EAP via carrier config OTA (no FOTA)

### Carrier Gate (`isCarrierIdMatch`)

The class only acts for carriers in `mUniWifiCarrierIds` (a string array
from resources, `0x7f010000`). If the SIM's carrier ID is not in the list,
`loadCarrierConfig()` is a no-op.

**Implication:** The carrier config OTA vector only affects devices with
SIMs from carriers in the whitelist. For kiosk devices (WiFi-only, no SIM),
only `loadUniWifiConfig()` (hardcoded resources) applies.

### Boot Sequence (confirmed)
UniWifiController.handleBootCompleted()
→ UniWifiCarrierNetworkManager.handleReceiveBootCompleted()
→ lambda$0()
→ loadUniWifiConfig() [hardcoded SSIDs from resources]
→ loadCarrierConfig() [carrier SSIDs from CarrierConfigManager]


Both are called **immediately in the constructor** (via `handleBootCompleted()`),
not on `BOOT_COMPLETED`. Pre-unlock, pre-user-interaction.

### Forensic Verification

```bash
# Check active network suggestions (auto-join)
dumpsys wifi | grep -A5 "NetworkSuggestion"
dumpsys wifi | grep "isInitialAutojoinEnabled"

# Check Passpoint profiles
dumpsys wifi | grep -A30 "Passpoint"

# Check carrier config (what SSIDs the carrier pushes)
content query --uri content://telephony/carrier_config | grep -i "wifi\|ssid\|passpoint"

# Check if carrier ID matches
getprop | grep -i "carrier_id"
# Compare against mUniWifiCarrierIds (decompile resources.arsc)   
