# Noble 2C Face Unlock / Android 16: 12 October 2026 live crash audit

## Reproduced failure

User physically entered the PIN confirmation and attempted real face enrollment.
Android had a **system_server soft reboot**, NOT a successful face enrollment.
The system crash buffer and dropbox entry recorded exactly:

```text
2026-10-12 10:18:47 Europe/Amsterdam
FATAL EXCEPTION IN SYSTEM PROCESS: FaceHandler
java.lang.ClassCastException: java.lang.Integer cannot be cast to java.lang.Byte
  at com.android.server.biometrics.sensors.face.faceunlockfix.FaceunlockFixHidl.supportsNativeEnrollmentFeatures(FaceunlockFixHidl.java:324)
  at com.android.server.biometrics.sensors.face.faceunlockfix.FaceunlockFixHidl.enroll(FaceunlockFixHidl.java:448)
  at com.android.server.biometrics.sensors.face.hidl.HidlToAidlSessionAdapter.enroll(...)
  at com.android.server.biometrics.sensors.face.aidl.FaceEnrollClient.doEnroll(...)
```

Root cause: Android16's legacy HIDL enrollment bridge supplies the feature
list as an `ArrayList<Integer>` (HIDL int32 vector). The Noble adapter used a
Java enhanced-for loop `for (Byte feature : features)`, inserting a runtime
Byte cast into a critical Android `FaceHandler` thread. The resulting
uncaught `ClassCastException` killed `system_server`.

## Source correction

The bridge source was moved by the shared, uncommitted ROM source
reorganization from the old
`unica/mods/zzzzz_exynos9810_final_cleanup/face/noble_legacy` folder to:

```text
unica/patches/exynos9810_device_stack/exynos9810_finalization/face/FaceunlockFix/bridge/FaceunlockFixHidl.java
```

`supportsNativeEnrollmentFeatures(ArrayList<?> features)` now iterates
`Object`, explicitly accepts only `Integer` and `Byte`, reads
`((Number) boxedFeature).intValue()`, and applies a closed allow-list.
The *framework* HIDL feature codes are `2`=standard diverse poses and
optional `3`=debug request ignored. Android16 first converts AIDL
`1 -> 2` and `2 -> 3` in `AidlConversionUtils`. The initially corrected
`1/2` allow-list avoided the crash but still rejected real enrollment;
this was detected in a subsequent physical test and fixed separately.
Unknown values, duplicates and unsupported framework attention=1 are rejected.
No HAT, face frame, token or security workaround was added.

The release CI in `scripts/internal/FaceunlockFix/integration_ci.py` now
rejects source that restores the invalid Byte loop. A new independent
`FaceunlockFixEnrollmentFeatureTypeSmoke.java` reflects on the actual bridge parser,
tests the converted Android16 `Integer(2), Integer(3)` vector and other
valid/invalid boxed combinations, and
never performs enrollment, opens a camera or reads any real credentials.

## Tests, real device

- Before patch, isolated Android `app_process` against installed
  `services.jar`: **BLOCK** `AssertionError: Unexpected feature parser crash`.
- After patch, isolated `app_process` against the candidate preview:
  **PASS** `real Noble enrollment feature method handles Integer, Byte and rejects invalid features without crash`.
- A separate regression using Android16's actual converted framework vector
  `[2,3]` found the first type-only fix still returned **false**.
  After correcting the allow-list to `[2,3]`, the old candidate was
  **BLOCK** and the new candidate was **PASS** for genuine framework
  feature codes, including unknown/duplicate rejection.
- Android ART `DexVerifySmoke` on candidate: **PASS**.
- Offline `build_services_trial.sh`, `run_source_checks.sh`, and
  `integration_ci.py --mode release`: **PASS**.
- Initial type-corrected live framework SHA256:
  `a717bcd437b615010d664fa28bec614faeee22e9a648570d595ddb365f2ad7eb`.
- Later combined type + framework-feature-mapping preview SHA256:
  `82c26ea0814b5ba0d990384a97ecf0613ea35fe4e5b702c4d09b67c8fecbb642`.
  This preview was installed with Noble property set OFF by the guarded
  upgrade script, but the following boot **has not been verified** because
  Windows/ADB lost USB detection. Do not infer the boot result from an
  `adb wait-for-device` exit code alone.
  On rebuilding the same source after the Codex path reorganization, the
  ZIP SHA can differ because packaging is not reproducible; do not compare
  newly generated ZIP bytes with the installed manifest to infer a failed
  installation. The manifest and active device hash take precedence.
- Stable boot with gate OFF: `sys.boot_completed=1`, SELinux
  `Enforcing`, Face HAL deaths=0, scheduler empty.
- Boot with gate ON: genuine Noble V2 HIDL bridge selected, original
  native `enumerate()` still has no callback and fails closed after
  30s through `InternalCleanupClient`; scheduler empty; no crash during boot.
- Stock original `services.jar` local/device back-up SHA256:
  `790b977cee857e028e4dd0a43844c5d0d54701d9581ec7afd39712e70c088ad6`.

## Current status / limits

The combined framework-feature fix is source-built and on-device
ART-verified. It was live-staged with the Noble opt-in OFF, but the
post-install reboot verification is pending USB reconnection.
The previous type-only firmware did boot successfully with Noble ON and
the official Settings PIN confirmation reached real enrollment without
another system_server crash; that enrollment was correctly rejected due
to the subsequently found feature-code mismatch.

### Recovery update: 2026-10-12, after USB reconnection

- Confirmed the *actual installed* `/system/framework/services.jar`
  SHA256 is `82c26ea0814b5ba0d990384a97ecf0613ea35fe4e5b702c4d09b67c8fecbb642`,
  the combined feature-type + converted-code candidate.
- Confirmed `sys.boot_completed=1`, `SELinux=Enforcing`, Noble gate initially
  `0`, no FaceProvider pending operations or HAL deaths. Verified original
  backup on-device and locally still SHA256 `790b977c...`.
- Executed the live Android ART feature parser smoke on the *installed*
  framework and the `DexVerifySmoke`: both **PASS**.
- Explicitly set Noble opt-in `1` and rebooted. Second boot **PASS**:
  `sys.boot_completed=1`, `SELinux=Enforcing`,
  `init.svc.faceunlockfixd=running`, HAL deaths `0`.
  `FaceunlockFixProbe` logs confirm genuine V2-HIDL bridge selected.
- Native original `enumerate()` again omitted its completion callback.
  Cleanup timed out at 30 seconds and failed closed through
  `NobleCleanupFailure`; framework scheduler returned to idle.
- Opened official Samsung `android.settings.FACE_ENROLL`; the phone focused
  `ConfirmLockPassword$InternalActivity` awaiting **physical PIN entry by
  user**. New actual enrollment with this candidate **not yet observed**.

This supersedes the earlier warning about USB preventing reboot verification.
Do **not** claim this proves enrollment, native front-camera operation or
Keyguard unlock; only the corrected boot and ART feature validation are proven.

### Second physical enrollment crash: 2026-10-12 11:25:51 +0200

After the user again entered the PIN and attempted genuine Samsung face
enrollment with the combined type + framework-feature-mapping build, the
device soft-rebooted again. **This is a different, independently confirmed
native HIDL transport crash**:

```text
Fatal signal 6 (SIGABRT), system_server, tid binder:1635_4
Abort message: Failed HIDL return status not checked;
    Status(EX_TRANSACTION_FAILED): UNKNOWN_ERROR
libhidlbase.so android::hardware::details::return_status::assertOk
libandroid_runtime.so JHwBinder_native_transact
services.jar FaceunlockFixHidl.sendOneway
services.jar FaceunlockFixHidl.onAcquired
services.jar FaceunlockFixNativeBackend$1.onAcquired
services.jar IFaceDaemonCallback$Stub.onTransact
```

Root cause: Android 16's `HidlToAidlCallbackConverter` is a local
`HwBinder` Java callback, **not a registered remote HIDL service**. Its
generated Java interface omits public `onAcquired` and `onEnrollResult`,
so our experimental bridge was manually sending
`cb.asBinder().transact(txn, request, reply, FLAG_ONEWAY)`. JNI treats
the transport error as a fatal unchecked HIDL Return and immediately
aborts the entire system_server process; Java `catch (RemoteException)`
cannot catch the native abort.

The genuine original faced service had started generating acquired face
feedback. This is positive evidence that native enrollment got further
than before, but it does not prove correct image frames or success.

### Second source correction and non-biometric validation

The canonical source under
`unica/patches/exynos9810_device_stack/exynos9810_finalization/face/FaceunlockFix/bridge/FaceunlockFixHidl.java`
has removed the raw HIDL sendOneway method. New fail-closed
`frameworkCallback()` demands an actual in-process
`HidlToAidlCallbackConverter`. Genuine native callbacks now route through
the exact platform APIs used by its original `onTransact` method:

- Native enrollment progress -> `mAidlResponseHandler.onEnrollmentProgress(faceId, remaining)`.
- Native acquired feedback -> `mAidlResponseHandler.handleResponse(AcquisitionClient.class, client.onAcquired, null)`, preserving scheduler posting and client-class filtering.
- Native positive/negative authentication -> the converter's **public typed**
  `onAuthenticated(deviceId, faceId, userId, boxedNativeHAT)`, retaining
  original 69-byte positive-HAT validation.

No fake face templates, acquired events, successful auth or generated
authentication tokens were added. A CI rule prevents reintroducing raw
`HwBinder` callback transactions. Java/D8, source contracts and release
CI all pass. A new separate `FaceunlockFixCallbackArtVerifySmoke.java`
exercises class loading and Android method linkage *without* contacting
the native daemon, enrolling a face or reading any biometric data:
**PASS** on S9+ against the new candidate, along with `DexVerifySmoke`.

The guarded framework upgrade installed SHA256
`79a3e662649c96ad1b52ea1be973eaec02507392902ab7948681d0de169152da`.
Confirmed stable opt-out boot with Android complete, SELinux Enforcing,
zero Face HAL deaths, and no pending scheduler operations.
The subsequent gate-ON reboot was initiated; verify its final boot
and all native enrollment outcomes separately before claiming success.

### Verified after second fix

- **PASS** second reboot with the typed-callback framework installed:
  actual active SHA256 `79a3e662649c96ad1b52ea1be973eaec02507392902ab7948681d0de169152da`;
  `sys.boot_completed=1`, experimental Noble gate `1`, SELinux
  `Enforcing`, `init.svc.faceunlockfixd=running`, FaceProvider current
  operation `null`, pending `0`, HAL deaths `0`, crash buffer empty.
- `FaceunlockFixProbe` again selected the genuine V2-HIDL bridge at 11:33:57
  and `NobleCleanupFailure` safely completed stalled native enumeration
  with **failure** at 11:34:27 (not fake templates).
- Attempted to launch the official enrollment intent, but Android user
  was `RUNNING_LOCKED`, current focus was `NotificationShade`. The user
  must unlock the device with their own PIN before reopening Samsung Face
  enrollment. **No new physical enrollment run has yet tested this
  callback change**, and Keyguard unlock is unverified.

### Camera preview issue found during a live enrollment (11:37–11:38)

The user physically entered their PIN and tried enrollment on the typed
callback build. There was **no soft reboot**. The UI circle remained black
and said no face was recognized.

- Android16 accepted the real 69-byte HAT and correct framework features.
- The original Noble daemon reported native enrollment activity.
- Camera2 really opened front camera 1 and captured YUV_420_888 imageType=2.
  First native frame queued: `payloadBytes=614398`, 11:37:40.692.
- Genuine callbacks repeatedly reported `faceId=0, remaining=100`, so
  enrollment did not progress. It ended with a real timeout at 11:38:09.
- The existing FaceunlockFixCamera2FrameSource supported an optional preview
  Surface but FaceunlockFixHidl called `camera.start()` with **no** Surface.
  The original UI Surface was present in the active Android16
  `FaceEnrollClient.mPreviewSurface`, and HIDL 1.0 enrollment drops
  its NativeHandle preview parameter.

Source correction: require the actual active `FaceEnrollClient` and valid
Samsung UI `mPreviewSurface` from the framework biometric scheduler,
then pass that Surface to the existing Camera2 request. The same repeating
request now targets the real Noble ImageReader **and** genuine Samsung
preview. Fail closed if there is no valid active preview client. Authentication
continues to use the camera without an enrollment UI Surface. Diagnostic
logging is limited to the first native progress and four acquired codes,
plus whether the Surface is attached; never log raw frames/tokens.

Javac/D8, source checks, release CI and on-device isolated ART callback/
Surface method smoke PASS. Guarded `services.jar` upgrade installed
`5617a65bee8a4cccfc2172a373b4d5a4beb20f5d270f4dd46246528735b91d8a`.
Both property-off and property-on boots PASS:
`sys.boot_completed=1`, SELinux `Enforcing`, native Noble service
running with gate on, no HAL deaths, scheduler idle and no new crash.

**Still unproven**: actual camera preview visibility, successful enrollment
and genuine Keyguard authentication on this preview fix. A new physical PIN
and face capture must be run; source/ART validation alone cannot prove those.

**NOT YET PROVED:** genuine Noble Trustonic enrollment, successful raw frame
transport from system_server camera identity, native template creation,
69-byte HAT on a positive authentication, Keyguard unlock or persistence
across reboot. Do not report the full Face Unlock port as complete.

On an unexpected soft reboot, use root ADB to turn the gate OFF:

```bash
adb shell setprop persist.sys.un1ca.noble_face.experimental 0
adb reboot
```

To restore the *original backed-up* framework instead (only if a full
restoration is needed), while connected to the verified star2lte, run:

```bash
python3 scripts/internal/FaceunlockFix/live_framework_test.py --restore
adb reboot
```

The restore utility validates original hashes and leaves SELinux enforcing.
Never use mock HATs, fake successful face callbacks, or fingerprint bypasses.

### 2026-10-12 22:30: genuine preview and enrollment **SUCCEEDED**

After the user physically completed the original Samsung consent/PIN flow,
the new dual-output Camera2 preview integration delivered a genuine native
successful enrollment:

- `NobleFaceCamera: imageType=2, previewSurfaceAttached=true` at 22:30:31.
- `Real Noble front-camera repeating capture started` and real YUV frame
  payload queued, no system_server crash.
- Original Noble native `onEnrollResult` callbacks advanced Android16
  enrollment `remaining=100 -> 85 -> 70 -> 50 -> 40 -> 35 -> 30 -> 20
  -> 15 -> 10 -> 5 -> 3 -> 0`.
- Framework FaceProvider `count=1`, `Enroll: E ... 22:30:31.606 to
  22:30:43.791 ... 12188 ... S`, `HAL deaths=0`.
- A real enrolled face/template is now visible to the Android16 framework.
  No native template bytes or face images were copied or logged.

This supersedes the prior statements that enrollment was not yet proven.
However, actual Keyguard *authentication* immediately failed ~15 attempts
with `FaceunlockFixHidl: Unsupported native security mode` and framework
`Error: 2`. They were rejected BEFORE the original native engine could
perform real authentication, so no HAT or Keyguard unlock was proven.

### Keyguard Android16-to-stock security mode translation

Exact evidence:

- Android16 `FaceAuthenticationClient.semDoAuthenticate()` calls
  `SemFaceUtils.getSecurityMode(context)` and passes it directly to
  `ISehBiometricsFace.sehAuthenticate(operationId,mode,fido)`.
- `SemFaceUtils.getSecurityMode()` sets bit `4` for
  `Settings.Secure.face_open_eyes=1`, plus optional mask bit `16`.
- User setting: `face_open_eyes=1`, `face_recognize_mask` unset.
  Device `SemFace: mode=0x100` is the binary representation of integer
  `4`, not octal or literal hex `0x100`.
- The ORIGINAL Noble stock `AuthenticationClient.getSecurityMode()`
  derives native `10` for required open eyes with stock normal speed
  `2`, native `6` if eye-open detection is explicitly disabled, and
  native `2` for an unspecified setting.
- Our old `sehAuthenticate` only admitted values 0..3, so it rejected
  all the user's authentic Android16 flag=4 attempts.

The canonical `FaceunlockFixHidl.java` now reads the current original
setting, applies a *strict* mode translation:

| Android16 flags | Original eye-open setting | Stock Noble mode |
|---|---|---|
| 4 | 1 | 10 (eyes open REQUIRED) |
| 0 | 0 | 6 (explicit setting disabled) |
| 0 | -1 | 2 (not specified) |
| all other combinations, including mask 16/20 | any | reject |

No downgrade or bypass of the user's open-eyes requirement is permitted;
all positive authentication still requires the original native signed
69-byte Gatekeeper HAT.

Validation: Javac/D8, source checks, release integration CI and independent
Android ART smoke **PASS**, including nine strict conversion assertions and
the original typed callback/preview checks. Candidate SHA256:
`5ae5fc418a54745ff0029af1dc8bf0a9b0fc0c268a6076f7fe41d8e62b8c7da9`.
The candidate was installed by the existing guarded upgrade with Noble
opt-in set `0` and the original `services.jar` backup preserved.
Boot- and Keyguard-auth verification for this candidate are separate:
do not claim an actual unlock until a native signed HAT has been received
and the real user's Keyguard unlock has succeeded.

### FINAL LIVE VERIFICATION: genuine Face Unlock and reboot persistence PASS

**Build and safety:** installed `/system/framework/services.jar` SHA256
`5ae5fc418a54745ff0029af1dc8bf0a9b0fc0c268a6076f7fe41d8e62b8c7da9`;
original framework backup retained with hash
`790b977cee857e028e4dd0a43844c5d0d54701d9581ec7afd39712e70c088ad6`.
Android boots with `sys.boot_completed=1`, Noble gate `1`,
`init.svc.faceunlockfixd=running`, SELinux `Enforcing`, Face HAL deaths `0`,
and no `system_server` crash. Source/Java/D8/release CI and independent
on-device ART mode-policy regressions all PASS.

**Fresh actual Samsung enrollment on this exact build:**
- 22:41:22–22:41:34: real native front camera with actual Samsung UI preview,
  original 69-byte enrollment HAT accepted, genuine Noble progress to
  `remaining=0`; `FaceEnrollClient` logs `Enroll ... S`.
- Android16 `settings_face.xml` contains exactly one face entry afterward
  (verified count only, no ID or data exported); `face_screen_lock=1`.

**Keyguard genuine authentication:**
- Four consecutive SystemUI Keyguard attempts (22:41:40–22:42:07) produced
  original native success `BMFC fc_auth_result: 1`, Android
  `AidlResponseHandler.onAuthenticationSucceeded`, and
  `AuthSessionCoordinator.wasSuccessful=true` each time.
- Biometric scheduler showed 4 accepted, 0 rejected, 0 errors.
- Original stock mode **10** was passed to Noble's native daemon with the
  current user's `face_open_eyes=1` intact. Original signed native HAT was
  guarded before a positive callback; no synthetic HAT or fabricated result.
- Actual `KeyguardViewMediator` logged `keyguardDone`, `showing=false`,
  and completed lockscreen dismissal. The launcher took focus.

**Reboot persistence:**
- Before reboot, one face XML entry with checksum
  `da8d4a93cadcba5754adf2fe17077a949b98b079dd5aba5bfc70d01482aa20d5`.
- Rebooted with Noble gate **still ON** (no intermediate property-off boot).
  At boot completion, `settings_face.xml` retained exactly one entry and
  the exact same checksum, `face_screen_lock=1`, Enforcing, 0 HAL deaths.
- Original faced `enumerate()` still fails to issue completion callbacks
  after 30s, but the existing cleanup failure adapter ends this safely
  and does **not** erase the persistent face record when Noble remains ON.
- After reboot a first lockscreen auth attempt timed out with
  `FACE_ERROR_TIMEOUT=3 / no face detected`. A subsequent real attempt
  succeeded at 22:44:47: `fc_auth_result: 1`,
  `AidlResponseHandler.onAuthenticationSucceeded`, biometric
  `wasSuccessful=true`, and launcher focus returned.

**Conclusions:** Original Noble2C native enroll, real front camera preview
and image streaming, positive HAT-guarded genuine Keyguard recognition,
lockscreen dismissal, and single-reboot persistence are proven on this
Exynos9810 S9+ test build. No SELinux bypass or fingerprint fallback.

**Residual caveats:** The original native enumerate callback still times
out and fails closed after 30 seconds; its replacement must be investigated
before calling all cleanup lifecycle edge cases complete. Rebooting with
Noble gate OFF between registrations can cause stock vendor cleanup to
remove Android's face enrollment metadata while native files remain;
use a normal Noble-ON boot for persistence tests. The full ROM build and
three-device compatibility were NOT run after Codex's uncommitted source
reorganization; the working source lives exclusively under canonical
`unica/patches/exynos9810_device_stack/exynos9810_finalization/face/FaceunlockFix`.
Do not reset, restore old deleted paths, commit or push this unrelated
reorganization as part of this face-only validation.

### RESUMED SOURCE ENGINEERING: positive native enumeration and build staging

After the genuine live success, an additional read-only ADB preflight still
found the connected star2lte booted with Noble gate `1`, native faced running,
SELinux `Enforcing`, framework SHA256 `5ae5fc...`, FaceProvider count `1`,
zero HAL deaths and the same accepted post-reboot Keyguard authentication.
No reboot, framework replacement, property change, or enrolled-template
access was performed in this follow-up.

Original Noble `BioFaceService/FaceService.checkIntegrity()` uses a separate
native read-only `IFaceDaemon.request(11, empty, byte[10], 0)` which returns
ASCII decimal **native** template IDs one byte at a time. The ordinary native
`enumerate()` request still lacks a reliable callback on the live baseline.
New `FaceunlockFixNativeEnumeration.java` therefore strictly accepts only a positive
native returned byte count and unique native ASCII IDs `1..9`, and rejects
all empty, zero, duplicate or malformed responses. The source `FaceunlockFixHidl`
now tries this original native-read protocol on internal cleanup; if it yields
no proven IDs, it retains the existing asynchronous native `enumerate()` and
30-second fail-closed cleanup timeout, **never `onEnumerate(empty)`**. This
new fallback is NOT yet validated with a physical/native device invocation;
the *previously proven* live installed framework has not been replaced.

The regular `scripts/make_rom.sh` build flow now supports an explicit
`EXYNOS9810_FACEUNLOCKFIX_EXPERIMENTAL_BUILD=true` star2lte-only two-phase
assembly. Finalization decodes Android16 `services.jar`; the opt-in
`stage_verified_rom.py --prepare` inserts only the guarded HIDL getter smali
method hook; the ordinary Apktool build retains other ROM modifications;
`--apply` appends only the new Noble bridge `classes3.dex`, stages strictly
hashed original native runtime and vendor init conflict fixes, and adds the
needed scoped system file metadata. Any missing hook, ABI mismatch, unexpected
native payload or unsupported target fails the build. An audit-only dry run
and ZIP preservation/no-hook rejection tests PASS; full normal ROM build,
generated release ZIP, on-device use of the new fallback, and final sepolicy
neverallow remain **unverified**.

All current changes are local/uncommitted in the user's canonical reorganized
source tree. The original live candidate and verified rollback remain intact.
