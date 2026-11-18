# Historical stock Noble 2C face service research (archived)

**2026-10-12 update:** The sections below describe the initial source-only
research. Genuine native enroll, live Samsung preview, Keyguard unlock and
single-reboot persistence are now proven on the connected star2lte using the
guarded framework version SHA `5ae5fc418a54...` (full evidence in
`LIVE_SYSTEM_SERVER_CRASH_2026-10-12.md`). `make_rom.sh` now has an explicit
`EXYNOS9810_FACEUNLOCKFIX_EXPERIMENTAL_BUILD=true` star2lte-only build path,
default OFF, and `stage_verified_rom.py` provides read-only preflight. No
full ROM build/reflash has been validated. The subsequent real-native
enumeration enhancement is source-only, not live deployed. No synthetic face
recognition or biometric token is ever permitted.

## Verified call chain

```text
Noble BioFaceService.apk (system UID; Samsung framework Java AIDL)
   ServiceManager.addService("samsung.face", IFaceService.Stub)
      |
      +-- getService("com.samsung.android.bio.face.IFaceDaemon")
            |
            v
     /system/bin/faced (native libbinder service)
       hw_get_module("face") --> /system/lib64/hw/face.default.so
            |
            v
     /system/lib64/libFaceService.so
            |
            v
     /system/lib64/libsecfr_engine.so --> Trustonic /dev/mobicore-user
```

The APK uses Camera2 from Java. By default `FaceService.java:2932` selects
camera ID **1** (secure camera ID **91**, TOF ID **81** when enabled).
`FrCamCtrl.java:439` opens that Camera2 ID, and ImageReader frames enter
`FaceService.java:3020` as `IFaceDaemon.processFrontImage(...)`. Noble's
`FEATURE_JDM_HAL` evaluates false, so its optional HIDL route is inactive.

Source locations under
`out/target/star2lte/face-audit/noble2c_face/`:

- `system/bin/faced`, `system/lib64/hw/face.default.so`,
  `system/lib64/libFaceService.so`, `system/lib64/libsecfr_engine.so`.
- `system/priv-app/BioFaceService/BioFaceService.apk`.
- `decompiled/BioFaceService/sources/com/samsung/android/bio/face/service/`.
- `system/etc/init/faced.rc` (original Noble startup contract).

## Confirmed integration blockers

1. **Signing**: Noble BioFaceService uses
   `android:sharedUserId="android.uid.system"` with Samsung certificate
   SHA-256 `34:DF:0E:7A:9F:1C:F1:89:2E:45:C0:56:B4:97:3C:D8:1C:CF:14:8A:40:50:D1:1A:EA:4A:C5:A6:5F:90:0A:42`.
   Current Android 16 `framework-res.apk` platform certificate SHA-256 is
   `C8:A2:E9:BC:CF:59:7C:2F:B6:DC:66:BE:E2:93:FC:13:F2:FC:47:EC:77:BC:6B:2B:0D:52:C1:1F:51:19:2A:B8`.
   The original APK cannot join that shared UID unchanged. The repository
   **does** contain matching `security/aosp_platform.x509.pem` and
   `security/aosp_platform.pk8`; the public key in the private-key file was
   verified against the signing certificate and current framework-res APK.
   Rebuild a compatible service and sign with those keys only after resolving
   Java Binder classes and privilege/permission checks. Re-signing the
   unmodified old APK alone does not fix its Android 16 API dependencies.
2. **Java Binder classpath**: Noble `framework.jar` declares
   `IFaceDaemon` and `IFaceService`, but Android 16 `framework.jar`
   contains neither. Noble BioFaceService imports them and does not bundle
   their class definitions. A compatible app must include the original
   Binder interfaces and transaction layout, or use a purpose-built
   framework bridge. Do not replace the whole Android 16 framework jar.
3. **Service registration and SELinux**: neither
   `com.samsung.android.bio.face.IFaceDaemon` nor `samsung.face` appears
   in the assembled Android 16 `plat_service_contexts`. Separate service
   types and narrowly scoped `service_manager add/find` and Binder rules
   must be compiled into the appropriate platform/system_ext policy.
   Policies under `policy/` are **uncompiled reference examples**.
4. **Init collisions**: Android 16 work_dir already contains
   `service faced /system/bin/faced` in two vendor init RC copies.
   Do not add Noble's original `faced.rc` verbatim. The example
   `faceunlockfixd.rc` uses an independent, manually started service named
   `noble_faced`, with the executable renamed accordingly. Remove or
   reconcile the preexisting declarations before the final build.
5. **Legacy HAL slot collision**: Android 16 already has a different
   `/system/lib64/hw/face.default.so`. `hw_get_module("face")` resolves
   that conventional module path. A dedicated build/image variant could
   replace this HAL, but the experimental per-process
   `noble_face_hwredirect.c` instead redirects only Noble's lookup to
   `/system/lib64/nobleface/face.noble.so`, without overwriting the A16
   system HAL. Blindly replacing the A16 module can break other services.
   The old and new engines still need explicit camera/Trustonic arbitration.
6. **Camera/data/storage**: ensure Camera2 camera `"1"` is actually
   exported, the platform-signed app has `CAMERA` plus AppOps authorization,
   and both processes can use `/data/system/users/<user>/bio/fr` under
   appropriate file contexts. A Preview surface must be available if Noble
   requests daemon-managed surfaces. Avoid broad SELinux exceptions.

## Proposed gated sequence

Run the offline ABI audit and preflight (read-only):

```sh
python3 scripts/internal/audit_noble_face_abi.py
python3 scripts/internal/FaceunlockFix/preflight.py
```

The ELF audit currently resolves all direct imported symbols for the four
Noble native objects against staged Android 16 libraries; this is only a
link-name check. It does not validate runtime C++ Binder ABI behavior,
linker namespaces, camera HAL availability, or the trustlet.

For the **native-only** phase, compile and validate the optional
`noble_face_hwredirect.c` 64-bit shared library with the Android 16
toolchain. In a disposable/test image, stage these paths:

```text
/system/bin/noble_faced                         <- Noble system/bin/faced
/system/lib64/nobleface/face.noble.so           <- Noble lib64/hw/face.default.so
/system/lib64/nobleface/libFaceService.so      <- Noble lib64/libFaceService.so
/system/lib64/nobleface/libsecfr_engine.so     <- Noble lib64/libsecfr_engine.so
/system/lib64/nobleface/libnoble_face_hwredirect.so  <- newly built shim
```

The **disabled** service template sets `LD_PRELOAD` to the shim and
`LD_LIBRARY_PATH` to the private directory. The shim validates the
`face.noble.so` module's exported `HMI` and refuses the request if
loading fails; it never falls back to the A16 HAL. Verify Android's dynamic
linker actually honors process-scoped preload and private library lookup.
Compile reviewed SELinux and both Binder service contexts before manually
starting the disabled service. Read the daemon registration log and
`service list`; require a valid
`com.samsung.android.bio.face.IFaceDaemon` descriptor and a successful
`openHal`. Never report success from a mere process launch.

For the **Java and Android 16 bridge** phase, supply exact Noble
`IFaceDaemon` / `IFaceDaemonCallback` Binder transaction definitions in a
compatibility module, and adapt the service into an Android 16-compatible,
platform-signed package. The source `FaceService` from the Noble APK
depends on legacy Samsung framework and `IBiometricService` APIs; audit
them before first launch. Expose real enrollment, callbacks, cancellations,
template enumeration and hardware authentication tokens through the
Android 16 biometric provider using its existing framework lifecycle.

For **authentication**, accept an unlock only when the real face engine
reports success and supplies whatever cryptographically valid authentication
token the Android 16 biometric framework requires. No fabricated enrollment,
fallback fingerprint result, trust-token bypass, or inflated biometric
strength is permitted. Classify security conservatively until tested.

The legacy engine maps `0x97000` followed by `0x81000`, as confirmed from
ARM64 disassembly of Noble `libsecfr_engine.so`; the newer donor had
different buffers/order that previously caused secure MCP error 8.

## Example policy files

The adjacent `faceunlockfixd.rc` and `policy/*` show only the minimal
intended relationships. They are **not deployable standalone**. Validate
against Android 16 SELinux neverallow rules, linker namespace restrictions,
OEM Trustonic labels, system UID and camera permissions, and actual device
denials. Do not enable the service until all hard gates pass.
