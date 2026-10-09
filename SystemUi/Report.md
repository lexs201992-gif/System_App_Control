### 📋 BUILD FARM INFRASTRUCTURE — LONGCHEER ODM

**Title:** Longcheer R&D Build Infrastructure — Shanghai & Shenzhen nodes 
exposed via public device firmware

**Summary:** Four engineering build nodes confirmed across two geographic 
segments (Shanghai `sh-*`, Shenzhen `sz-*`) using the naming convention 
`[city]-[subnet]-[host].rnd.longcheer.net`. All nodes use `jenkins@<host>` 
as the build user, indicating a Jenkins CI/CD pipeline. The presence of 
internal hostnames in shipped firmware represents a build hygiene gap 
that exposes internal network topology.

**Confirmed IOCs:**

| ID | Host | Device | OS/Kernel | Build Date | Source |
|----|------|--------|-----------|------------|--------|
| IOC-001 | sh-16-52.rnd.longcheer.net | Moto g04s (Unisoc T606) | Android 14 | 2026-03-18 | build.prop / bootloader |
| IOC-002 | sh-48-205.rnd.longcheer.net | Moto e13 (Unisoc) | Android 14 | — | build.prop |
| IOC-003 | sh-16-201.rnd.longcheer.net | HTC Desire 12s (SDM435) | Android 8.1 / Kernel 3.18.71 | 2020-08-11 | /proc/version (Flower #930) |
| IOC-004 | sz-103.rnd.longcheer.net | Nokia 5.3 / CAP (SDM665) | Android 10 | 2021-04-26 | Vigilante #224 |

**Raw Evidence:**
> `jenkins@sh-16-201.rnd.longcheer.net #1 Tue Aug 11 10:52:57 CST 2020`
> `Host: sz-103.rnd.longcheer.net / User: jenkins` — Nokia 5.3 (CAP/captainamerica)
> `Bootloader: lion-2026-03-18_LOCAL` — Moto g04s

**Network Context:**
- AS4811/AS4812 (China Telecom), 61.129.170.0/16
- DNS: dns21/dns22.hichina.com (no zone transfer)
- `sh` = Shanghai R&D, `sz` = Shenzhen R&D

**Assessment:**
- Confirmed: 4 build hosts across 2 cities, Jenkins CI user, sequential numbering
- Inferred (not confirmed): total fleet size, additional hosts in unobserved ranges
- Security implication: Internal hostname exposure in firmware = build hygiene gap. 
  Does not by itself prove malicious injection. Correlation with other IOCs 
  (CA cert 2051, unpatched CVEs, MOTOCIT) needed for supply-chain compromise 
  classification.   
