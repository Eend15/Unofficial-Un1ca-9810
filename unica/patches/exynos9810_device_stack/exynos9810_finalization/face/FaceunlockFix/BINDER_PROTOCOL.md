# FaceunlockFix Samsung Binder contract and Android 16 integration

Static reverse-engineering of the Samsung-compatible donor `system/framework/framework.jar`
(`classes5.dex`) and `BioFaceService.apk`. The `.aidl` definitions in `aidl/`
are source-only and preserve original Binder method numbers. Run
`python3 verify_aidl_contract.py out/target/star2lte/face-audit` from the ROM
repository to compare them with extracted JADX `IFace*.java` references.

## Native daemon is the authenticated backend

`/system/bin/faced` publishes Binder service
`com.samsung.android.bio.face.IFaceDaemon` with interface descriptor of the
same name. Samsung `BioFaceService` registers a distinct framework-level service
named `samsung.face`, descriptor `com.samsung.android.bio.face.IFaceService`.
The latter's `onAuthenticationSucceeded` callback does **not** carry a HAT;
the native daemon's `IFaceDaemonCallback.onAuthenticated` does carry actual
`hatData` bytes from the native engine. A genuine Android 16 HAL adapter
should consume native callbacks directly and forward any real HAT unchanged.

Daemon Binder operations: `init(callback)` tx11, `openHal()` tx9,
`setActiveGroup(userId, path)` tx8, `preEnroll()` tx5,
`enroll(hat,userId,timeout,flags)` tx3, `postEnroll()` tx12,
`authenticate(opId,userId,recognitionMode,fidoRequest)` tx1,
`cancelEnrollment()` tx4, `cancelAuthentication()` tx2,
`remove(faceId,userId)` tx6, `enumerate()` tx14 and
`getAuthenticatorId()` tx7. All are synchronous Binder transactions.
The stock face daemon also exposes `processFrontImage(bytes,width,height,rotation,imageType)`
as tx16 and daemon-owned camera-surface methods tx17-20. Raw fd-based TA
installation is tx21 (uses `FileDescriptor`, **not** `ParcelFileDescriptor`).

## Minimum legitimate compatibility chain

```
Android 16 FaceManager / Keyguard
  -> system_server FaceProvider + HidlToAidlSensorAdapter (already in services.jar)
  -> FaceunlockFixProbe (property- and SoC-gated in-process Java HIDL instance)
  -> FaceunlockFixHidl + FaceunlockFixNativeBackend
  -> Samsung stock /system/bin/faced
  -> stock S9+ face.default.so / libFaceService.so / libsecfr_engine.so
  -> Exynos9810 Trustonic TEE and real stored face templates
```

The FaceunlockFix local HIDL 1.0/V2 Java adapter implements all methods in AOSP
`IBiometricsFace.hal`, including `setCallback`, `setActiveUser`,
`generateChallenge`, `enroll`, `revokeChallenge`, `authenticate`, `cancel`,
`enumerate`, `remove`, `getAuthenticatorId`, lockout, and feature handling.
Use genuine native operations above. The current Android 16
`HidlToAidlCallbackConverter` converts a nonempty genuine HIDL auth token
into `HardwareAuthToken`; a null or absent native HAT must **never** be
replaced with a constructed success token.

The HAL must drive the real front camera with Camera2, selecting the capture
format, rotation, exposure, and buffer layout verified from Samsung's
`FrCamCtrl.java`, then deliver captured frames to the daemon via tx16 (or
attach daemon-created input surfaces, if the daemon reports that capability).
FaceunlockFixCamera2FrameSource opens the front camera during the real native
authentication setup but never sends a frame before native authentication is
accepted. An operation-scoped cancellation gate prevents a cancel request from
racing ahead of the native authenticate/enroll Binder start.
The old `BioFaceService.apk` supplies this camera workflow but cannot simply
be installed unchanged: its original Samsung signature/shared UID and old
IBiometricService integration differ from this Android 16 ROM.

When selecting the native face user, Samsung's service passes the UTF-8 bytes of
`/data/system/users/<userId>/bio/fr` to `setActiveGroup`. Correct DAC, SELinux
and user switching are prerequisites. Do not silently change the path to
Android's generic `/data/vendor_de/.../facedata` without mapping the legacy
storage contract.

The `authenticate` `recognitionMode` parameter is **not** the Android
biometric sensor strength: stock native code uses values such as 0 or 2, and values
offset by 4/8 for its eye-detection setting. The RGB face method should be
advertised as a convenience-grade modality unless its security class is
independently verified. Never register it as class-3/strong to authorize
Keystore operations or spoof another biometric.

## Completion criteria

This interface reconstruction alone is not a working Face HAL. Validate
Binder connect/init/openHal, genuine user-specific challenge and enrollment,
real RGB frame feed and enrollment callbacks, enumeration, matching callback
on actual face, no-match behavior, cancellation, and screen-lock policy.
With no matching face, no real native face ID, or no compatible callback,
the bridge must report failure. Do not synthesize matches, HATs or templates.
