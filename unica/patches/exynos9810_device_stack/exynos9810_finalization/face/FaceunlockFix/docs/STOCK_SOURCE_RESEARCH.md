# Historical stock RGB Face Unlock research (archived)

This is the shared FaceunlockFix source module for `starlte`, `star2lte` and
`crownlte` on One UI 8 / Android16. The implementation under `bridge/` contains the native Binder
backend, Samsung HIDL V2 adapter, Camera2 front-camera transport and guarded
Android16 callback handling. The original Samsung AIDL definitions remain in
`aidl/`. Source-only checks and opt-in ROM assembly tools are in
`scripts/internal/FaceunlockFix/` (see its current README).

The following retained notes describe the Samsung-compatible donor and its
authentic proprietary ABI, not a second separately launched Face Unlock app.

This directory documents a genuine S9/Note9 Exynos9810 facial recognition
backend based on the legacy Samsung `faced` Binder service. The supported
Android 16 ROM currently uses a newer donor HIDL 2.0 service, whose Trustonic
engine fails during the second secure memory mapping. The legacy face alternative
uses the original Exynos9810 `face.default.so`, `libFaceService.so`, and
`libsecfr_engine.so` from stock firmware.

The Samsung face daemon speaks `com.samsung.android.bio.face.IFaceDaemon` over the
system Binder. Native operations are invoked through 21 Binder transactions.
The associated `BioFaceService.apk` registers `samsung.face` and uses Android
Camera2 for real RGB camera frames; it is not interchangeable with the gallery
`FaceService.apk`. Both the daemon and framework bridge are required.

The old system app uses a Samsung platform signature and shared system UID.
On this ROM it cannot be installed unmodified alongside Android-platform-signed
system components. Never force or relax signature validation. The repository
has a matching AOSP development platform certificate and private signing key;
a modified Samsung-compatible APK can be signed to match the present ROM, but
this does not cure removed Android 12 framework APIs or absent SELinux rules.
Such a test APK must not be activated until the HIDL sensor adapter and genuine
authentication pipeline have been implemented and validated.

`verify_backend.py` is read-only and intentionally fails until a genuine
Android 16 HAL bridge and correctly signed camera service are supplied.
This repository must not switch its active HIDL face provider to an unverified
backend, and it must not fabricate fingerprint responses, authentication
tokens, FaceManager success events or enrolled biometrics.

Reference and SHA-256 analysis are retained under `out/target/star2lte/face-audit/`.

## Source-only Camera2 frame helper

`bridge/FaceunlockFixCamera2FrameSource.java` captures real **640x480** front-camera
frames using `ImageReader`. It selects the stock-supported native NV21 format
(imageType 0) or YUV_420_888 raw-plane payload (imageType 2), retaining the
original plane bytes for `FaceunlockFixNativeBackend.processFrontImage` on a
separate transport thread. Native transport remains disabled during Camera2
prewarm until authentic native startup succeeds. It also accepts an optional, caller-owned preview
`Surface` for the enrollment UI. It follows Samsung's display rotation
mapping: portrait -> 270 degrees. A single frame can be in transit at a time;
incoming stale frames are dropped. Camera/device/format/transport errors close
the source and invoke the caller's `onFailure` so the HAL can cancel the active
operation. Native result 1 stops frame production but **does not** imply any
authentication success. It never creates an auth token or match.

The helper applies Samsung's stock capture extensions `shootingMode=22`
and `CONTROL_AF_MODE=103`. If the Android 16 camera provider rejects them, the
helper fails closed; the Java API cannot reproduce the legacy framework's additional hidden
`CameraDevice.setParameters("samsungcamera=true;shootingmode=22")` call without
further work. Actual vendor-tag support and camera permissions require device
verification. The helper is presently **source only**, not part of a compiled
or active ROM service. Worker1's HIDL adapter must own `start/stop` timing,
operation cancellation and authentication callbacks.

The pure-JDK YUV conversion check can be run offline from the repository root:

```sh
mkdir -p out/target/star2lte/face-audit/camera-jdk-test
javac -d out/target/star2lte/face-audit/camera-jdk-test \
    unica/patches/exynos9810_device_stack/exynos9810_finalization/face/FaceunlockFix/bridge/Nv21Packer.java \
    unica/patches/exynos9810_device_stack/exynos9810_finalization/face/FaceunlockFix/bridge/tests/Nv21PackerTest.java
java -cp out/target/star2lte/face-audit/camera-jdk-test \
    com.android.server.biometrics.sensors.face.faceunlockfix.Nv21PackerTest
```
