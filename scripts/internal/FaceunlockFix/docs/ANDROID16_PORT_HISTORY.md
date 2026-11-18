# Historical Android16 Noble face integration notes (archived)

**Current status (2026-10-12):** The genuine Noble2C enrollment, Samsung
preview and Keyguard unlock have been proven on star2lte via a guarded live
framework test; one Noble-ON reboot preserved the enrolled face. These earlier
source-only notes below document the pre-live investigation, not the final
capability. See `LIVE_SYSTEM_SERVER_CRASH_2026-10-12.md` for exact evidence.

Ordinary ROM builds remain unchanged. An **explicitly opted-in experimental
star2lte ROM build** now has a two-phase source assembly hook:

```sh
EXYNOS9810_FACEUNLOCKFIX_EXPERIMENTAL_BUILD=true bash scripts/make_rom.sh ...
```

The actual option arguments to `make_rom.sh` remain the regular project build
arguments. During the module phase, finalization decodes `services.jar`; the
pre-rebuild phase patches only the verified HIDL getter; after Apktool's normal
rebuild, an additional dex containing genuine Noble HIDL/native Binder classes
is appended without replacing preexisting framework dex. Verified native
daemon binaries and disabled/opt-in init config are staged with system metadata.
`stage_verified_rom.py` rejects unsupported jars, absent compiled hooks,
unexpected ABI layouts or native hashes. It does not use ADB or enable the
device property. The source-only read-only preflight is:

```sh
python3 scripts/internal/FaceunlockFix/stage_verified_rom.py
python3 scripts/internal/FaceunlockFix/test_stage_verified_rom.py
```

**No full post-reorganization ROM build or release flash has yet been
validated.** The subsequent native request(11) positive-template enumeration
fallback is also source/Java-tested only, not installed on the live S9+.

## Source facts verified

The extracted Android 16
HidlToAidlSensorAdapter.getIBiometricsFace() has a TestHal branch, a cached
mDaemon branch, then vendor ISehBiometricsFace.getService() discovery, followed
by common HIDL Binder death notification and framework cleanup registration.

Other target Android16 files, including HidlToAidlSessionAdapter.smali and
SemFaceServiceExImpl.smali, contain casts to
vendor.samsung.hardware.biometrics.face.V2_0.ISehBiometricsFace. **A bridge
that implements only the base Android HIDL 1.0 IBiometricsFace is unsafe on
this framework**; the probe requires the complete Samsung ISehBiometricsFace
V2 interface from worker1's actual HAL class.

## Inert integration mechanism

The new bridge/FaceunlockFixProbe.java is a Java-only helper with these checks:

- Build.IS_DEBUGGABLE (explicit development ROM; production ROM always false)
- readonly ro.un1ca.noble_face.experimental property set by a reviewed image
- ro.board.platform is exynos9810 or universal9810
- an internal, pre-registered bridge Factory (absent by default)
- the true framework Binder service
  com.samsung.android.bio.face.IFaceDaemon must be alive and its descriptor
  must match exactly
- the Factory must return an actual ISehBiometricsFace V2 with a nonnull
  IHwBinder. Native openHal, secure callbacks and frame handling are the
  Factory's responsibility; the probe NEVER constructs biometric tokens.

An internal factory must be explicitly registered by the HIDL implementation
before Android's face provider is allowed to probe. Since none is registered
in this source state, the probe always returns null. A fake or partial factory
is not permitted.

The offline smali patch generator stages exactly one call to
FaceunlockFixProbe.tryAcquire(Context) **after** TestHal/cached-daemon checks and
**before** Samsung vendor service discovery. A nonnull native-backed adapter
jumps to the original framework HIDL linkToDeath and callback registration.
Null falls through to the untouched Samsung service discovery.

It checks exact method anchors and never writes outside the audit directory:

```sh
python3 -B scripts/internal/FaceunlockFix/stage_adapter_probe.py
```

Review-only output:
out/target/star2lte/face-audit/faceunlockfix_adapter_probe_preview/
HidlToAidlSensorAdapter.smali

No ROM patch is created, no APK or runtime APEX is replaced, and the
source-only injector does not register/launch a service.

## Offline validation

```sh
python3 -B scripts/internal/FaceunlockFix/integration_ci.py --mode source
python3 -B scripts/internal/FaceunlockFix/integration_ci.py --mode release
python3 -B unica/patches/exynos9810_device_stack/exynos9810_finalization/face/FaceunlockFix/verify_aidl_contract.py out/target/star2lte/face-audit
python3 -B scripts/internal/FaceunlockFix_bridge/contract_audit.py
```

The source mode succeeds only when the opt-in preview, Noble Bindings,
factory gate, disabled init and example policy are present and the extracted
active Android16 services.jar smali remains unchanged. The release mode is
expected to return nonzero until all hard blockers are fixed.

For **syntax-only** Java checks, compile JavacSyntaxCheck.java with the JDK
and parse the seven files in noble_legacy/bridge. Full compilation of Camera2,
IFaceDaemon and Samsung HIDL types still needs Android16 framework stubs or
the proper platform build environment.

For Smali assembly validation, local Apktool's embedded smali assembler can
assemble the preview as an isolated DEX in face-audit (this does not prove
that FaceunlockFixProbe exists in a runtime classloader).

## Current RELEASE blockers (not bypasses)

1. Duplicate original init service named faced is declared in both
   vendor/etc/init/init.samsungexynos9810.rc and
   vendor/etc/init/hw/init.samsungexynos9810.rc. The old native stack cannot
   be launched concurrently with an isolated Noble daemon. Reconcile the
   **test image only** before manually starting a disabled service.
2. The assembled service_contexts have no mapping for
   com.samsung.android.bio.face.IFaceDaemon. Source-only examples live in
   policy/service_contexts.example, noble_faced.te.example and
   noble_system_server.te.example. Their narrow allow rules must be compiled
   against Android16 platform policy and neverallow. In-process system_server
   must have Binder find/call access; the daemon is the sole service publisher.
3. Device-originated auth requires the original trusted HAL/TEE, correct
   FaceManager security class, valid native HAT, exact camera privacy/AppOps,
   lifecycle, wake/display behavior and real enrollment/no-match tests.
4. Worker1's vendor HIDL V2 bridge/factory callback and registration remain
   unbuilt/unregistered. The current Java factory is intentionally null.
5. Vendor Camera2 mode 22 / AF 103 and front sensor 640x480 require provider
   validation; Camera2 errors must cancel without face success.

**Do not enable this in the active ROM just because static source tests pass.**
