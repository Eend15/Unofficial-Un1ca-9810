# Exynos9810 Noble 2C Face Unlock live-test status (2026-10-11)

## Verified, not equivalent to completed Face Unlock

- Connected root-ADB S9+ (`star2lte`) booted Android16 with `sys.boot_completed=1`
  after a fresh Noble opt-in reboot; SELinux remains **Enforcing**.
- `persist.sys.un1ca.noble_face.experimental=1` and
  `init.svc.faceunlockfixd=running`. Existing vendor face HAL remains present.
- Active `/system/framework/services.jar` SHA256:
  `b9d09995fa74ef506af719fe45138f05c4c131d74608a04096145a7459d6e7d8`.
- Original framework backup SHA256:
  `790b977cee857e028e4dd0a43844c5d0d54701d9581ec7afd39712e70c088ad6`.
  Preserved at `/data/local/tmp/noble_services_original.jar` and
  `out/target/star2lte/face-audit/noble_framework_live_backup/services.original.jar`.
  Version history is in the adjacent `manifest.json`. Never overwrite these.
- With Noble disabled and the new jar, `dumpsys face` showed an empty scheduler,
  `SL: 2,2`, and no HAL deaths. With Noble enabled, it still showed
  `SL: 2,2` and no HAL deaths (previous preview showed `-1,-1`).
  However, a `FaceProvider$4` cleanup client is active (state 2) and one
  HIDL adapter operation is pending. It is NOT yet proven whether this is
  due to locked user storage, callback lifecycle or native enumeration.
- The user was still `RUNNING_LOCKED` after reboot. The Android settings
  `FACE_ENROLL` activity was observed starting and closing before enrollment
  while user 0 was locked. The user must unlock **manually with their PIN**,
  then attempt genuine enrollment. Do not bypass that step.
- Signed ordinary camera probe APK (already installed) previously logged
  successful front camera ID 1, Samsung shootingMode 22, AF 103, repeating
  capture and five real 640x480 YUV frames. It stores/transmits no face data.
- Native Noble IFaceDaemon HIDL smoke passed genuine `openHal`,
  `setActiveGroup`, native authenticator-ID query, Trustonic `preEnroll`
  and `postEnroll`. No actual enrollment/authentication has been proven.

## Genuine native security protocol finding

Read-only native calls returned `request(10001 GET_CAMERA_INFO)=0` and
`request(10002 GET_SECURITY_LEVEL)=0`. The **original Noble BioFaceService
FaceService.java:4184-4199** maps camera-info result 0 to *legacy vendor
security level 2*. It only queries request 10002 when the camera-info
result is 1. The HIDL bridge now reproduces that verified legacy contract
and returns level 2 in a live `FaceunlockFixHidlSmoke` test. This level is NOT Android
biometric strength; Android16's non-JDM face AuthService configuration is
weak (255), not strong (15).

## Source edits and builds

- `FaceunlockFixNativeBackend.java`: no Java monitor held across synchronous
  native enroll/authenticate/processFrame/cancel/enumerate/remove Binder
  transactions. Generation-aware completion prevents an old Binder start
  reply from clearing a newer operation, and avoids callback deadlocks.
- `FaceunlockFixHidl.java`: no late camera launch after a synchronous terminal
  callback; exact legacy camera/security-level decision reproduced without
  synthetic authentication or HAT.
- `build_services_trial.sh`: repeatable offline javac + D8 merge of
  original Noble AIDL Binder DEX and bridge classes into classes3.dex, then
  package the services preview. Does not touch device or ROM source work_dir.
- `FaceunlockFixSecurityProbe.java` and extended `FaceunlockFixHidlSmoke.java`: read-only
  native request and HIDL security-level verification.
- `live_framework_test.py --upgrade-callbacksafe`: guarded update with
  original SHA/manifest validation, Android ART verification, original backup
  retained and Noble opt-out while writing; never reboots automatically.
- Last source checks, Java compiler and release integration CI PASS, 0
  source blockers. Android ART smoke and genuine HIDL security/native
  preEnroll smoke PASS using the final candidate before live deployment.

## Critical remaining proof

1. User unlocks real phone with PIN; check `adb shell dumpsys user` reports
   `RUNNING_UNLOCKED`.
2. Observe whether the `FaceProvider$4` internal cleanup and pending
   HIDL operation complete. If not, diagnose real native enumerate/callbacks
   without mock completion. Do NOT run standalone `FaceunlockFixNativeBackend.connect`
   concurrently with system_server's Noble session: `init(callback)` might
   replace the daemon's active global callback.
3. From an unlocked profile, launch
   `adb shell am start -a android.settings.FACE_ENROLL`. User presents their
   face and confirms PIN; inspect actual native camera and enrollment callbacks.
4. Prove persistent real face template, genuine 69-byte HAT, Keyguard unlock
   after subsequent reboot, and conservative weak sensor policy. Never
   fabricate a token, bypass fingerprint, make SELinux permissive or claim
   success based solely on Binder smoke.
5. Only then integrate validated pieces into production ROM and consider a
   full build.

## Recovery (root ADB when accessible)

With user-approved reboot after recovery:

```sh
adb shell setprop persist.sys.un1ca.noble_face.experimental 0
python3 scripts/internal/FaceunlockFix/live_framework_test.py --restore
adb reboot
```

The native opt-in fallback and original vendor HAL remain available. For a
bootloop with no ADB, restore the original `services.jar` via rooted recovery
from the saved local/on-device copy. Do not wipe data or overwrite backups.
