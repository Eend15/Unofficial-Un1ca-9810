# Noble 2C genuine Java HIDL bridge feasibility

This is a **source-only integration reference** for Android 16 Exynos9810.
Nothing under this directory is installed, built into `services.jar`, or
connected to the active ROM/phone. The existing `hidl/TestHal` is a simulated
test HAL; it must **never** be invoked for real enrollment/authentication.

## Conclusion: a Java HIDL wrapper is feasible

`out/target/star2lte/apktool/system/framework/services.jar/smali/com/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter.smali`,
`getIBiometricsFace()` at approximately lines 142–243, already returns a
**typed** `android.hardware.biometrics.face.V1_0.IBiometricsFace`. The code
constructs a Java `TestHal extends HwBinder implements
vendor.samsung.hardware.biometrics.face.V2_0.ISehBiometricsFace`
in the **test-only** branch. This demonstrates that an in-process Java object
can serve the Android 16 HIDL-to-AIDL adapter **without running or registering
a separate HIDL service**.

An independent **`FaceunlockFixHidl`** class can therefore implement
`ISehBiometricsFace` with *real* Noble 2C methods, while reusing Android 16's
existing `HidlToAidlSessionAdapter` and `HidlToAidlCallbackConverter`.
Implement all **40** Java methods in `contract.json`; do not subclass/call
`TestHal`, which returns synthetic successes. In-process use removes the
need for a new native HIDL `ISehBiometricsFace` server, but **does not**
remove the need for Noble's *real* native Binder `faced` or its secure engine.

The reviewed flow is:

```text
Android 16 FaceProvider / HidlToAidlSensorAdapter
  getIBiometricsFace()
       |
       v
FaceunlockFixHidl implements ISehBiometricsFace (new Java services.jar class)
       |                         ^                ^
       |                         |                |
       v                         |                |
NativeFaceTransport              |          NobleCamera2Feed
  Binder IFaceDaemon             |            Camera2 ID "1"
  exact 21 AIDL transactions     |            640x480, YUV
       |                         |               |
       v                         |               |
/system/bin/noble_faced ---------+ callback      |
       |                                       image bytes
face.default.so -> libFaceService.so -> libsecfr_engine.so
       |                                 via processFrontImage
       v
Trustonic TEE: real enroll/auth/HAT
```

The two native service identities are different:

- Samsung classic Binder `com.samsung.android.bio.face.IFaceDaemon` is
  published in the **framework servicemanager**, not hwservicemanager.
- Android 16's Java `FaceunlockFixHidl` implements the **vendor HIDL interface**
  directly in system_server and feeds its existing HIDL-to-AIDL adapter.

No Noble `BioFaceService.apk` is necessary on this route. That avoids the
old APK's mismatched `android.uid.system` signing certificate and the
missing `IFaceService` classes in Android 16 framework.jar. A standalone
Camera2 companion APK, *if needed*, must use the ROM's real platform key.

## Integration point (reference pseudocode, not active smali)

Inside `HidlToAidlSensorAdapter.getIBiometricsFace()`, preserve the explicit
`mTestHalEnabled` branch for controlled platform tests. For production,
before default vendor `ISehBiometricsFace.getService()` discovery:

```java
// Java-only illustrative code; this is not installed or compiled.
if (!mFaceProvider.mTestHalEnabled && mDaemon == null &&
        NobleFaceFeatureFlag.isEnabledForExynos9810()) {
    NativeFaceTransport nativeTransport =
            NativeFaceTransport.connectRealDaemonOrNull();
    if (nativeTransport != null && nativeTransport.hasRealOpenHal()) {
        FaceunlockFixHidl bridge = FaceunlockFixHidl.create(
                nativeTransport, NobleCamera2Feed.forCurrentUser(mContext));
        bridge.requireValidNativeCallbackRegistration();
        mDaemon = bridge; // typed ISehBiometricsFace / IBiometricsFace
    }
}
// Keep the original vendor HIDL discovery path if no bridge was created.
```

Connection must resolve the actual `IBinder` named
`com.samsung.android.bio.face.IFaceDaemon`, verify
`getInterfaceDescriptor()`, link to *that Binder's* death, invoke
`init(real IFaceDaemonCallback)`, and verify `openHal() != 0`.
When that daemon dies, tear down the active Camera2 session and invalidate
`mDaemon` so the normal reconnect flow runs. Also implement local
`IHwBinder.linkToDeath` / `unlinkToDeath` behavior or a proven replacement.
Do not accidentally select this bridge when the user-selected native stack
is absent.

The source-only `NativeFaceTransport.java.reference` includes real transport
methods backed by the original Noble AIDL interfaces; before compiling it
you must include their **exact extracted generated AIDL classes** in the
Android 16 `services.jar` classpath, or regenerate identically from their
contract. They were recovered (ignored build-audit output) under:
`out/target/star2lte/face-audit/noble2c_face/noble_framework_smali/smali_classes5/com/samsung/android/bio/face/`.
In particular `IFaceDaemon$Stub` specifies 21 exact transaction codes,
and `IFaceDaemonCallback$Stub` supplies 6 callback codes; both are checked
by `contract_audit.py`.

## Operations and callbacks

All **40 HIDL methods**, **21 native AIDL methods**, **6 native callbacks**,
six corresponding HIDL callback transaction IDs and nine relevant native
`request()` codes are enumerated in `contract.json`.
`contract_audit.py` parses the *actual* smali and rejects missing entries.

Important functional conversions:

- `generateChallenge()` -> real `preEnroll()` challenge. Enrollment must
  pass the unmodified **69-byte** Gatekeeper/TEE hardware auth token.
- `enroll(token,features)` -> real native
  `enroll(byte[] hat,int groupId,int timeout,int flags)`. Any unverified
  legacy flags/features fail closed. Begin Camera2 frames only after the
  native operation starts successfully.
- `authenticate(opId)`/`sehAuthenticate` -> real
  `authenticate(long opId,int userId,int securityLevel,byte[] fidoData)`.
- `setActiveUser` -> `setActiveGroup` with trusted current user and path
  `/data/system/users/<id>/bio/fr`, consistent with Noble BioFaceService
  source `FaceService.java:2496-2506`. A user-controlled path is invalid.
- `sehOpenTaSession`/`sehCloseTaSession` ->
  `request(12)`/`request(14)` respectively; do not invent a successful
  session result. `sehGetSecurityLevel` queries native `request(10002)`.
- `onEnrollResult`: the Android 16
  `HidlToAidlCallbackConverter.onTransact` dispatches HIDL transaction
  **1** to `AidlResponseHandler.onEnrollmentProgress`. The converter
  lacks a typed `onEnrollResult` Java method in the current jar, so an
  in-process `HwParcel` transaction carrying the exact fields is required
  for this callback.
- `onAuthenticated`: HIDL callback `onAuthenticated(deviceId,faceId,userId,
  ArrayList<Byte> hat)` converts the unmodified HAT to AIDL.
  **Security-critical:** `HidlToAidlCallbackConverter.smali:290-395`
  currently allows a positive face ID and a short token to call
  `onAuthenticationSucceeded(...,null)`. The bridge must reject **every**
  positive authentication callback without an original 69-byte HAT and a
  matching live user+operation. Never substitute a token, replay a previous
  token, or map a visual similarity result to successful authentication.
- `onEnumerate`/`onRemoved` use only real native engine face IDs, after
  verifying the native group ID equals the current Android 16 user.

Avoid treating an integer return code of zero as proof of successful
enrollment; only authenticated callbacks and actual native template storage
can establish that.

## Camera2 is a required subsystem

Noble's actual `FrCamCtrl.java` requests **640x480**; it prefers NV21
`ImageFormat=17` (`mImageType=0`) or YUV_420_888
`ImageFormat=35` (`mImageType=2`). The old
`FaceService.java:2921-2942` uses Camera2 ID **1** for ordinary RGB
capture, **91** for secure RGB and **81** for TOF. Native
`processFrontImage(byte[] pixels,int width,int height,int rotation,int
imageType)` is `IFaceDaemon` transaction **16**.

In a real Java `NobleCamera2Feed`, enumerate and validate the front lens
and formats, acquire the Camera2/AppOps permissions for the host process,
use `ImageReader` with a dedicated `HandlerThread`, convert plane
strides/pixel strides faithfully to the original old-engine format, and
throttle to at most one outstanding `processFrontImage` Binder transaction.
Unconverted 640x480 `YUV_420_888` planes are **not** interchangeable with
packed NV21. Determine the exact historical byte-copy layout from
`FrCamCtrl.java:344-383` before implementing conversion. Reject unknown
camera formats/IDs. Release camera and stop in-flight frame delivery on
cancel, user switch, native Binder death or app privacy revocation.

Running Camera2 directly in `system_server` may be prevented by camera
service policy/AppOps and can burden system_server Binder threads. A
separate platform-signed **privileged camera process** with an authenticated
single-client Binder stream is the preferred fallback. This interface
cannot pass a face-match decision; it only forwards real camera frames.

## Known blockers before claiming a full genuine port

1. **Native daemon** must be launched from the isolated Noble source stack
   with the intended `face.default.so`, `libFaceService.so`,
   `libsecfr_engine.so`, and real `/dev/mobicore-user` access. The
   adjacent `../noble2c_face_port/` has a disabled isolated startup and
   fail-closed loader prototype. No active HAL replacement is needed.
2. **SELinux framework servicemanager** must allow registration/find for
   `com.samsung.android.bio.face.IFaceDaemon`. Legacy faced checks
   `com.samsung.android.bio.face.permission.USE_FACE` and
   `MANAGE_FACE`; Android 16 system_server identity and permission
   registration must be verified. Do not give broad permissions.
3. **Legacy AIDL Java types** from Noble's `framework.jar` must be staged
   exactly in `services.jar` without replacing the Android 16 core
   framework. The original APK and `samsung.face` Binder service can be
   omitted for this route.
4. **Callback details**: HIDL `onEnrollResult` is marshaled through the
   converter's native `HwParcel` path. The correct interface token,
   transaction flags, success replies and callback ordering need an isolated
   Binder test before integration. Callback death/reconnection must work.
5. **Permissions and camera formats**: the real Android 16 Camera2 service
   must expose a compatible RGB camera and accept the chosen process identity.
6. **Trustonic, HAT and strength**: Noble 2C maps memory in original
   Exynos9810 order `0x97000` then `0x81000`, but success of real secure
   enrollment/authentication and token validity still requires live testing.
   Do not assert `BIOMETRIC_STRONG` or unlock readiness before a verified
   original token reaches Android 16 Keystore/Gatekeeper.

## Read-only test

```sh
python3 -B scripts/internal/FaceunlockFix_bridge/contract_audit.py
```

Expected today: **all 40 HIDL methods, all 21 Noble daemon AIDL
transactions, all six callbacks, all nine native request codes covered**.
It audits the extracted source files, but it is not a runtime validation,
compiled service, or boot-tested port.
