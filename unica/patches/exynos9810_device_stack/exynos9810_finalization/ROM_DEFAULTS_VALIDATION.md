# October 14 source changes

- Infinity module sets framework default_wallpaper_component to native InfinityWallpaper. The catalog has exactly one default: Blue video_001.mp4. Existing per-user selections are retained. Module applies to starlte/star2lte/crownlte.
- Settings Extra menu now includes the existing BixbyKeyPreferenceController, with Bixby/Gemini/Camera/Flashlight actions. Finalization maps its persist property to system_prop after donor overlays. Settings APK compiled and signed successfully; live package update was rejected because installed Settings uses a different certificate. Do not bypass that check.
- KernelSU one-shot installer completes ksud bootstrap before crowning the actual manager UID. Android 16 appId fallback added; first credential unlock also triggers installation/registration. It respects deliberate manager removal. Live kernel reported manager UID 10259 after running updated script. The manager UI and persistence across reboot remain unverified because device is PIN locked.

Complete staged SELinux compilation and shell syntax checks passed. These source edits are not yet in a newly built/flashed ROM ZIP. Do not claim all three devices have been tested.

## Final S9+ package, October 14

- Captured live working services.jar and framework.jar are staged exactly.
- Native face files are now embedded in canonical source; three-target isolated
  runtime/policy staging passed. Only S9+ physical unlock is verified.
- Framework resource APK rebuilt with native Blue default component.
- KernelSU initialization waits for PackageManager UID publication. Starting its
  init service from an empty manager registration recovered automatically, and
  manager first-open screenshot displayed Working Built-in Legacy 3.4.0-legacy.
- EROFS archive now carries the exact live Oct14 S9+ kernel via a roundtrip-verified
  BSDIFF delta and the matching EROFS DTB. Installer preserves its enforcing
  ramdisk. Other device kernel payloads remain unchanged.
- Existing work_dir preserved; --package-staged validates compiled artifacts
  without replacing the verified live face framework. New ZIP still requires
  actual clean-flash boot/enrollment/default-wallpaper acceptance testing.
