
# Virtualization (com.android.virt) — EL2 Design Space Exploited by ODM

> **NOT a CVE. NOT an exploit. NOT a vulnerability.**
> This is a **design-space decision** made by an ODM with 20+ years of
> experience assembling millions of devices per day. They know exactly
> where the standard has gaps. They filled them with control.

---

## Identity

| Field | Value |
|-------|-------|
| APEX | `/apex/com.android.virt/` |
| App | `android.system.virtualmachine.res@ULAS34.89-209-4` |
| JAR (bootclasspath) | `/apex/com.android.virt/javalib/framework-virtualization.jar` |
| Signed by | **Longcheer** (CN=Longcheer, O=Longcheer, L=ShangHai, C=CN) |
| Cert serial | `73180675b0f8648179fd2746e3dccbb780b9fc67` (same as rkpd) |
| Issued | 2023-09-15, Expires 2051-01-31 |
| Build | **ULAS34.89-209-4** (FOTA abril 2026) |
| Build host | `sh-16-52.rnd.longcheer.net` (Jenkins, Shanghai R&D) |
| Permissions defined | `MANAGE_VIRTUAL_MACHINE`, `USE_CUSTOM_VIRTUAL_MACHINE`, `DEBUG_VIRTUAL_MACHINE` |
| Protection level | `signature` (only Longcheer-signed apps) |

---

## What this is (legitimate function)

Android Virtualization Framework (AVF) — pKVM protected VMs for isolated
key operations, payment apps, and DRM. Standard AOSP component
(`packages/modules/Virtualization`).

## What Longcheer did (design-space control)

1. **Signed the APEX with their platform key** → Google CANNOT update it
   via Play Store. The APEX manager rejects any update not signed with
   the same key.

2. **Deployed via FOTA ULAS34.89-209-4** (same build as rkpd) → single
   deployment unit, atomic activation.

3. **Defined permissions with `protectionLevel=signature`** → only
   Longcheer-signed apps (Moto Genie, UniWifi, etc.) can launch VMs.
   No user app, no third-party, no Google service can access the
   virtualization layer.

4. **Bootloader (`lion-2026-03-18_LOCAL`) built on the same host**
   (`sh-16-52.rnd.longcheer.net`) as the ROM → no trust separation.
   The bootloader sets `ro.boot.hypervisor.*` in kernel cmdline.
   The APEX reads them. Same entity controls both ends.

5. **No `/bin/` in the APEX** (no crosvm, no pKVM module) → the
   management layer is deployed but the hypervisor binary is absent.
   **Capability present, not yet activated.** Activation requires a
   future FOTA that adds the VMM binary + sets the bootloader prop.

---

## Why "design space" and not "vulnerability"

AOSP + APEX are Google's published standards. They define:

- An APEX **can** be signed by the OEM (by design, for OEM customization)
- A bootloader **can** set arbitrary `androidboot.*` props (by design)
- A permission **can** be `signature`-protected (by design, for OEM apps)
- A HAL **can** be `vendor.*` namespace (by definition, vendor-specific)
- A TEE **can** be implemented by the OEM (by architecture)

None of these are vulnerabilities. They are **design spaces** that
Google left open for OEM customization. Longcheer filled them with
control planes.

**This is a business decision, not a technical flaw.** The ODM
chose to maintain control over the full lifecycle (bootloader →
kernel → APEX → TEE → C2) because their business model requires it.

---

## Architecture (what's present vs. what's absent)

### Present in APEX (management layer)

```
/apex/com.android.virt/
├── javalib/framework-virtualization.jar    ← bootclasspath (priority 1, API 34)
│   ├── android.system.virtualizationservice/
│   │   ├── VirtualizationService           ← runs in system_server (UID 1000)
│   │   ├── IVirtualizationService          ← AIDL: createVm, initPartition, idsig, debug
│   │   ├── IVirtualMachine                 ← AIDL: per-VM control
│   │   ├── IVirtualMachineCallback         ← AIDL: async notifications
│   │   ├── VirtualMachineAppConfig$Payload ← union: configPath | payloadConfig
│   │   ├── VirtualMachinePayloadConfig     ← DTO: payloadBinaryName
│   │   ├── VirtualMachineRawConfig         ← binary config (to VMM)
│   │   ├── DiskImage                       ← VM disk (ParcelFileDescriptor)
│   │   └── Partition                       ← partition table (label, fd, writable)
│   ├── android.system.virtualmachine/
│   │   ├── VirtualMachineManager           ← client API
│   │   ├── VirtualMachineConfig$Builder    ← VM configuration
│   │   ├── VirtualizationFrameworkInitializer ← ContentProvider auto-init
│   │   └── VirtualMachine                  ← client-side VM handle
│   └── com.android.system.virtualmachine.sysprop/
│       └── HypervisorProperties            ← READ-ONLY: reads ro.boot.hypervisor.*
│
├── lib64/
│   ├── libvirtualizationservice_jni.so     ← JNI: talks to /dev/kvm (kernel)
│   ├── libvirtualmachine_jni.so            ← JNI: client side
│   ├── android.system.virtualizationservice-ndk.so
│   └── android.system.virtualizationcommon-ndk.so
│
├── app/.../android.system.virtualmachine.res.apk
│   └── AndroidManifest.xml (hasCode=false, defines permissions only)
│
└── apex_manifest.pb
    └── Bundled: libbinder_ndk, libbinder_rpc_unstable, libc, liblog...
    └── JNI: libvirtualizationservice_jni.so, libvirtualmachine_jni.so
```

### Absent (not deployed)

| Component | Where it would be | Status |
|-----------|-------------------|--------|
| pKVM hypervisor module | Kernel module or `/apex/com.android.virt/bin/` | **ABSENT** |
| crosvm (VMM) | `/apex/com.android.virt/bin/crosvm` | **ABSENT** |
| VM kernel | `/apex/com.android.runtime/` (separate APEX) | **ABSENT** (that APEX is ART linker, not VM runtime) |
| `/dev/kvm` | Kernel | **UNCONFIRMED** (requires `ls /dev/kvm`) |
| `ro.boot.hypervisor.vm.supported` | Bootloader → kernel cmdline | **UNCONFIRMED** (requires `getprop`) |

---

## Control chain

```
┌─────────────────────────────────────────────────────────────────┐
│ BOOTLOADER (lion-2026-03-18_LOCAL)                              │
│ Built: sh-16-52.rnd.longcheer.net (Jenkins)                     │
│ Role: SETS androidboot.hypervisor.* in kernel cmdline           │
│ Control: 100% Longcheer (no trust separation from ROM)          │
└──────────────────────────┬──────────────────────────────────────┘
                           │ kernel cmdline
                           ▼
┌─────────────────────────────────────────────────────────────────┐
│ init (early-init)                                               │
│ Role: translates androidboot.* → ro.boot.*                      │
│ Control: AOSP standard                                          │
└──────────────────────────┬──────────────────────────────────────┘
                           │ ro.boot.hypervisor.vm.supported
                           ▼
┌─────────────────────────────────────────────────────────────────┐
│ HypervisorProperties (bootclasspath, in APEX virt)              │
│ Role: READS the prop. Returns Optional<Boolean>                 │
│ Control: Passive. Cannot set, modify, or override.              │
└──────────────────────────┬──────────────────────────────────────┘
                           │ Optional.empty() or false
                           ▼
┌─────────────────────────────────────────────────────────────────┐
│ VirtualMachineConfig$Builder.setProtectedVm()                   │
│ Role: GATES VM creation. Throws UnsupportedOperationException   │
│       if prop absent/false.                                     │
│ Control: Standard AOSP logic.                                   │
└──────────────────────────┬──────────────────────────────────────┘
                           │ (only if prop = "true")
                           ▼
┌─────────────────────────────────────────────────────────────────┐
│ VirtualizationService (system_server, UID 1000)                 │
│ Role: EXECUTES createVm(). Checks USE_CUSTOM_VIRTUAL_MACHINE.   │
│ Control: Longcheer-signed. Only Longcheer apps pass.            │
└──────────────────────────┬──────────────────────────────────────┘
                           │ binder → JNI → /dev/kvm
                           ▼
┌─────────────────────────────────────────────────────────────────┐
│ VMM (crosvm/pKVM) → VM at EL2                                   │
│ Role: Runs isolated VM with own kernel, own network stack.      │
│ Control: Longcheer (payload = arbitrary binary)                 │
└─────────────────────────────────────────────────────────────────┘
```

**If any link in the chain is absent (prop not set, /dev/kvm missing,
VMM binary absent), the entire chain is inert.**

---

## Permission model (closed loop)

```
USE_CUSTOM_VIRTUAL_MACHINE (signature)
  → Only apps signed with Longcheer's key can launch VMs
  → Moto Genie, UniWifi, UniTelephony, etc.
  → NO user app, NO GMS, NO third-party

MANAGE_VIRTUAL_MACHINE (development|privileged|signature)
  → Priv apps + Longcheer-signed apps
  → Full lifecycle control (start, stop, inspect)

DEBUG_VIRTUAL_MACHINE (signature)
  → Longcheer-signed apps only
  → Introspection (debugListVms)
```

**Result:** The virtualization layer is a **closed system** accessible
only to Longcheer's own components. No external party can launch,
inspect, or interact with a VM.

---

## IVirtualizationService — 4 operations

| Code | Method | Purpose |
|------|--------|---------|
| 1 | `createVm(config, fd, fd)` | Launch VM → returns `IVirtualMachine` |
| 2 | `initializeWritablePartition(fd, size, type)` | Prepare VM disk |
| 3 | `createOrUpdateIdsigFile(fd, fd)` | **VM identity attestation** (Longcheer-controlled) |
| 4 | `debugListVms()` | List running VMs |

`createOrUpdateIdsigFile` is the cryptographic identity of the VM.
Without a valid IDsig, the VM cannot establish trust with the host
or TEE. Longcheer controls IDsig generation (runs in
VirtualizationService, signed by Longcheer).

---

## What the smalis confirm (and don't)

### Confirmed standard AOSP (no ODM modification detected)

- `VirtualMachineConfig$Builder` — no `setDevicePassthrough()`, no hardcoded payload, no auto-launch
- `VirtualMachinePayloadConfig` — single field: `payloadBinaryName` (caller-configurable)
- `VirtualMachineAppConfig$Payload` — union type (configPath | payloadConfig), standard AIDL
- `DiskImage` + `Partition` — standard Parcelable (ParcelFileDescriptor + label + writable)
- `HypervisorProperties` — read-only, 3 props, no logic
- `IVirtualizationService$Stub$Proxy` — standard AIDL binder IPC (passive)
- `RegistrationProxy` (rkpd JAR) — standard bind → deliver → unbind

### What the smalis CANNOT tell us

- Whether the bootloader actually sets `ro.boot.hypervisor.vm.supported`
- Whether `/dev/kvm` exists
- Whether a future FOTA will add the VMM binary
- What payload Moto Genie would launch (if/when activated)
- Whether the TEE firmware has a VM↔TEE bridge

---

## Evidence chain

1. APEX path: `virtualmachine.res@ULAS34.89-209-4` (same FOTA as rkpd)
2. Signature: Longcheer platform key (same serial as rkpd: `73180675...`)
3. Build host: `sh-16-52.rnd.longcheer.net` (same as bootloader + ROM)
4. Bootloader: `lion-2026-03-18_LOCAL` (March 2026, before FOTA)
5. Permissions: `signature` protection → closed loop to Longcheer apps
6. No `/bin/` in APEX → VMM not deployed → **inert**
7. `HypervisorProperties` reads `ro.boot.hypervisor.*` → gated on bootloader
8. `setProtectedVm()` throws if prop absent → **cannot create VM without bootloader**

---

## Relationship to other repos

```
System_App_Control (UID 1000/1001):
  RadioInteractorApp, UniWifiApp, UniTelephonyApp, SystemUI
  → Control planes: WiFi + cellular + baseband

RemoteProvisioner (UID 10213):
  rkpdapp APEX
  → Attestation control + C2 synchronizer + Firebase dual-use

THIS REPO (virt, EL2):
  com.android.virt APEX
  → pKVM persistence layer (capability present, not yet active)
  → Future: hidden VM with own network stack, invisible to host

Moto Genie (Alibaba OSS, separate):
  → C2 primary + FOTA transport (fulguris + argo.svcmot.com)

Together: complete ODM control surface
  Bootloader → Kernel → APEX → TEE → C2 → FOTA
  All from the same build server. All signed by the same key.
```

---

## Verification (pending)

| # | Command | Expected if INACTIVE | Expected if ACTIVE |
|---|---------|---------------------|-------------------|
| 1 | `getprop ro.boot.hypervisor.vm.supported` | empty | `true` |
| 2 | `getprop ro.boot.hypervisor.version` | empty | `pKVM-x.x` |
| 3 | `getprop ro.boot.hypervisor.protected_vm.supported` | empty | `true` |
| 4 | `ls -la /dev/kvm` | No such file | crw-rw---- |
| 5 | `cat /proc/modules \| grep kvm` | empty | `pkvm ...` |
| 6 | `ls /apex/com.android.virt/bin/` | No such directory | `crosvm`, `pKVM` |
| 7 | `dumpsys activity services \| grep virtual` | no output | VirtualizationService |
| 8 | `ps -A \| grep -i "crosvm\|vmm"` | no output | process visible |

**If 1-5 return empty/absent → APEX is inert. Document as:**
> "Capability deployed. Hypervisor not active in current firmware.
> Activation requires: (1) pKVM kernel module, (2) bootloader prop,
> (3) VMM binary in APEX. All three under Longcheer control."

---

## Files

```
Virtualization_EL2_Control/
├── README.md (this file)
├── apex_manifest.pb (decoded)
├── AndroidManifest.xml
├── CERT.RSA / CERT.SF
├── classes/
│   ├── android/system/virtualizationservice/
│   │   ├── VirtualizationService.smali
│   │   ├── IVirtualizationService.smali (+Stub/Proxy)
│   │   ├── IVirtualMachine.smali (+Stub/Proxy)
│   │   ├── IVirtualMachineCallback.smali (+Stub/Proxy)
│   │   ├── VirtualMachineAppConfig$Payload.smali
│   │   ├── VirtualMachinePayloadConfig.smali
│   │   ├── VirtualMachineRawConfig.smali
│   │   ├── DiskImage.smali
│   │   └── Partition.smali
│   ├── android/system/virtualmachine/
│   │   ├── VirtualMachineConfig$Builder.smali
│   │   ├── VirtualMachineManager.smali
│   │   ├── VirtualizationFrameworkInitializer.smali
│   │   ├── VirtualMachine.smali
│   │   └── ...
│   └── com/android/system/virtualmachine/sysprop/
│       └── HypervisorProperties.smali
├── javalib/
│   └── MANIFEST.MF
├── lib64/ (file list + sizes only)
├── vintf/ (if present)
├── init/ (.rc file, if present)
└── verification/
    ├── getprop_hypervisor.txt
    ├── dev_kvm.txt
    ├── proc_modules.txt
    ├── dumpsys_virtual.txt
    └── apex_manifest_strings.txt
```

---

## Methodology note

This repo documents a **design-space decision**, not a vulnerability.
The distinction matters:

- A **vulnerability** is a flaw that the vendor didn't intend.
- A **design-space decision** is a choice the vendor made deliberately,
  using the freedom that the standard explicitly grants.

Longcheer did not exploit a bug. They **used the standard as designed**:
sign the APEX, set the bootloader prop, protect the permission with
`signature`, deploy the management layer. Every step is "allowed" by
AOSP. The question is not "is this a bug?" but **"why did the ODM
choose to control this layer, and what do they do with that control?"**

The answer: the same build server that compiles the bootloader also
compiles the ROM, the APEX, the TEE firmware, and the C2 infrastructure.
There is no trust boundary between any of them. That is the design.

---

*Device: Motorola Moto g04s (Unisoc T606) / Android 14*
*FOTA: ULAS34.89-209-4 (April 2026)*
*Build host: sh-16-52.rnd.longcheer.net*
*Bootloader: lion-2026-03-18_LOCAL*
*Analysis: lexs201992-gif*
```
