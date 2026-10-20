## **Package:** `com.goodix.gftest` v1.1.01 (11)
**Path:** `/system/priv-app/GoodixTest/GoodixTest.apk`
**Scheme:** v3 — Verified ✔

### 1. APK Hash (IOC-FP-001)

| Algorithm | Hash |
|-----------|------|
| MD5 | `32751e6c7b6f9ab05e212a1be36fd435` |
| SHA-1 | `c24eec18aa7c88b0f27e385e306caa1393627e44` |
| **SHA-256** | **`9b4d89acc9759b9f84611334b498c91bd3b94ed0885c8d09d637670c2ffd3da9`** |
| SHA-384 | `0b590d91a327ed3901c66cdfa77373f7d1c23b4093b584e078e7589012bae82d627f030651011502bb7f6bc0b5f55cee` |
| SHA-512 | `f0294ebe9d98f23316589812e6f908267bac5f79b9070cbc2420a9d38496bcf98260210ff0e5415769f660c20391f0c9b613c153b705cf779f2df1fc2fd4275d` |

Primary IOC for fleet hunting.

### 2. Signing Certificate (IOC-FP-002) — Longcheer Platform Cert

**Subject / Issuer (self-signed):**
CN=Longcheer, OU=Longcheer, O=Longcheer, L=ShangHai, ST=ShangHai, C=CN
Email: please@Longcheer.com (OID 1.2.840.113549.1.9.1 = #161572656c65617365404c6f6e6763686565722e636f6d)

| Field | Value |
|-------|-------|
| Validity | `Fri Sep 15 02:31:05 EST 2023 → Tue Jan 31 02:31:05 EST 2051` **(28 years)** |
| Version | X.509 v3 |
| Serial | `73180675b0f8648179fd2746e3dccbb780b9fc67` |
| Algorithm | `SHA256withRSA (OID 1.2.840.113549.1.1.11)` |
| Public Key | RSA 2048, Exponent 65537 |
| Modulus | `00a8cedb26faab48f59ce1fbde02892bc5a...` (truncated, see full in cert dump) |

**Certificate Hashes:**

| Algorithm | Hash |
|-----------|------|
| MD5 | `1d948d956c1c78d6e23d8602fcfd5657` |
| SHA-1 | `efad0eebeafcb52ccd7dd386ef2b01f7fa4c0d8f` |
| **SHA-256** | **`eb92ccf3f90386a0f6e2a57918127e795a54038eb86ad8467cbda3fb6533a343`** |
| SHA-384 | `58936b02f15224986be465146fc55b4cc919047ea47d6925e6763f37b621ff4a0b8d0419546cb70c542f16e1157a0eac` |
| SHA-512 | `f217cf67935c1aea28cc022517b4a45d2bbbd2667b65618f5a177fd473c30a5ee7d25a681b6a31753ea006bee6921e260d794014e21ba0253361b371ce0bb3ca` |

**Extensions:**

| Extension | Value | Note |
|-----------|-------|------|
| Critical: `basicConstraints` | `040530030101ff` (CA:TRUE) | Certificate is a CA — can sign other certs. Matches `IOC-CA-001` pattern |
| Non-critical: `authorityKeyIdentifier` | `0418301680149ee319ed5c722e14c67ca2cfb2669602ec83b978` | KeyID: `9ee319ed5c722e14c67ca2cfb2669602ec83b978` |
| Non-critical: `subjectKeyIdentifier` | `041604149ee319ed5c722e14c67ca2cfb2669602ec83b978` | Same as Authority (self-signed) |

### 3. Assessment

1.  **Provenance broken:** Goodix (Shenzhen Huiding) original signature absent. APK re-signed by Longcheer platform key. Longcheer controls code integrity.
2.  **28-year validity:** Matches CA certificate IOC already documented in this repo (`IOC-CA-001`). Non-standard for AOSP platform certs (normally 25 years or less). Generic email `please@Longcheer.com`.
3.  **CA flag TRUE:** This cert can issue other certificates. If private key leaked (build host `sh-16-52.rnd.longcheer.net` exposed), attacker can sign arbitrary platform APKs.
4.  **v3 scheme verified:** APK integrity intact per this cert, but trust chain originates from ODM, not SoC vendor.

### Raw Signature (for YARA / cert pinning)

2ce629faee236943e4622a8f4fd6928024f1744ccdf384d9a7663f1b686fe671ab7e4310cf90730d4ac91651da4713a7854f1d75c733f34bd5f9aa06421599b5eab63c958adfa92431570ca65a86ce276dec10d9e9bc20053fb3f1f37998cb04c95d0e769a448172f521aa5cff128f3ed3e1c5ec63a4b669bdfe7b5ae39a0abcf8ecd1d45396560ab054249bd32a26069209a00bc8eec7d594aec41ae720501ea36cc175e4afa07522a61ac43d1d973c85da628e055d99ef0ee712f89c41fbc70892a561ba7e52e99507f944dd2a1a6f9f141509b9da0712be4e3ac0cd42b42fb70eefa5ee4a96ec0d7849a2b5fff4577807cedf8f22955a1168cde9d58ac6a2

### References

- `../Manifest/AndroidManifest.xml` — exported activities
- `../../` root README — correlation with `tun0 → 10.215.173.x` and build host exposure
- `IOC-FP-001 / FP-002` in main GoodixFingerprint README
