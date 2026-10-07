# Target Widevine compatibility

The Exynos9810 donor OEMCrypto/TA pair failed `TEEC_OpenSession` with
`0xffff0000` on the S9+, and Widevine selected L3. Restoring the target stock
`vendor/lib/liboemcrypto.so` and
`vendor/app/mcRegistry/00060308060501020000000000000000.tlbin` together produced:

    OEMCrypto_Initialize Level 1 success. I will use level 1.
    Level 1 Build Info (v15): LSI OEMCrypto v15.2 Aug 25 2021

The final build helper stages each target's own pair from its extracted target
firmware, after the embedded vendor restoration. It fails if either file is
missing. The current Widevine 1.3 service accepts the stock v15 OEMCrypto ABI.
No keyboxes, provisioning data, or security-level property overrides are used.

Validation: extracted helper staged byte-identical target files for starlte,
star2lte and crownlte; shell syntax and diff checks passed. Runtime L1
initialization was verified on star2lte. Streaming licenses, application
certification and protected HD playback are separate checks and have not been
verified. Android's newer RKPD worker still requests `provisioningModel`, an
unsupported property on this legacy CDM; that error does not negate the logged
successful L1 initialization.
