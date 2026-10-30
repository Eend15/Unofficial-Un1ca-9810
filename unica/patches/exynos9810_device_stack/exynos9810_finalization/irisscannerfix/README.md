# irisscannerfix — Galaxy S9 / S9+ / Note9 iris scanner on One UI 8

Brings the stock Android 10 iris scanner back on Android 16 / One UI 8 for
`starlte`, `star2lte` and `crownlte`: registration in Settings, a One UI 8
iris page next to Face recognition, and lock screen unlock with Samsung's own
preview window. Face and fingerprint unlock are untouched.

Applied by `_EXYNOS9810_FINAL_ADD_IRIS_SCANNER` in the finalization
`customize.sh`. All inputs come from the target's stock Android 10 firmware
(`out/fw/<model>`); the native iris files are byte-identical on all three
targets, SecIrisService differs only in resources.

## What runs where

| Part | Source | Change |
| --- | --- | --- |
| `irisd`, `libIrisService.so` | stock | `native/*.patch.json`, applied by `apply_byte_patch.py` (stock SHA-256 → verified SHA-256) |
| `iris.default.so`, `libIrisTlc.so`, `libIrisLibrary_preview.so`, `libIrisSensorListener.so`, `semcamera.jar`, permission XMLs | stock | none |
| `libiris_a10_shim.so` | `native/iris_shim.c` (prebuilt) | preloaded into irisd by `irisd.rc` |
| `irisd.rc` | `native/irisd.rc` | service, `LD_PRELOAD`, CPU floor while the IR camera runs |
| SELinux | `sepolicy/patch_sepolicy.py` | system_ext mapping for the iris service types; irisd `vendor_file` dir read; init cpufreq write |
| SecIrisService | stock APK, raw resources | `secirisservice/patch_sec_iris_service.py` + `Un1caIrisGrace` |
| IrisSettings | `irissettings/` | resource-only package with Samsung's iris strings in 88 languages |
| SecSettings | ROM | `settings/patch_secsettings_iris.py`: "Irises" entry in Screen lock and biometrics, `IrisSettingsFragment` page |
| SystemUI | ROM | `systemui/patch_systemui_iris.py`: lock screen iris unlock, no privacy dot for the iris service |

The iris TEE trustlets (`…0047.tlbin`, `…001a.tlbin`) come with the device
vendor; the build stops if they are missing.

## Android 16 fixes in the iris stack

* **irisd**: `Parcel` grew from 0x68 to 0x70 bytes, so 18 binder calls get a
  larger stack frame; `libkeystore_binder.so` (gone) is dropped from DT_NEEDED.
* **libIrisService**: One UI 8 libgui ABI — IGraphicBufferConsumer vtable
  slots, BufferItem size/fields, the consumer's RefBase offset; the
  ProxyConsumerListener constructor import is renamed so the shim can translate
  the old ConsumerListener vtable. The shim also supplies the removed
  two-argument `Surface` constructor.
* **SecIrisService**: keyguard component resolved by name; Android 16 Surface
  parcel; camera characteristics read before `openCamera` (callback race);
  `KeyStoreAuthorization` instead of the removed `android.security.KeyStore`;
  CPU boost through `sys.un1ca.iris_boost` (HyperHAL refuses the package);
  registration may use 60 s of IR instead of 9 s (unlock keeps 9 s); the
  engine's auto-exposure is capped (23 ms / gain 20) so a scan does not wash out
  while the eyes are still being positioned.

## Settings and lock screen

* `IrisSettingsFragment` is hosted by SecSettings' `SubSettings`, like the face
  page, so it has the same One UI 8 cards, switches and animations. Cards:
  remove/register, iris unlock / screen-on scan / stay on lock screen, tips.
  The PIN entered for Screen lock and biometrics is reused (gatekeeper handle).
* `Un1caIrisKeyguard` scans on swipe (or at screen on), in short fresh attempts
  (3 × 3.5 s): the iris engine rarely recovers once its exposure has drifted.
  A TEE-verified match is reported as `BiometricSourceType.IRIS`, a weak
  biometric, so Android's strong-auth rules still require the PIN after
  reboot, idle timeout and lockout. "Stay on Lock screen" uses Samsung's own
  biometric-unlocked state and opens on the next swipe.

Settings keys (`Settings.Secure`): `un1ca_iris_unlock`,
`un1ca_iris_unlock_screen_on`, `un1ca_iris_stay_on_lockscreen`.

## Maintenance

* `tools/regen_smali.sh` recompiles the Java helpers (against `*/stubs`, which
  are compile-only) and refreshes the checked-in smali; it reproduces the
  shipped smali byte for byte.
* `tools/make_byte_patch.py` records a stock → patched binary pair; the
  `tools/analysis_*.py` patchers document how the native patches were derived
  (they need llvm-objdump/nm and are not used by the build).
* `tools/gen_iris_strings.py` regenerates `irissettings/res` from a decoded
  Android 10 SecSettings.
* Tests: `python3 -m unittest tests/test_irisscannerfix.py` (firmware-backed
  checks run when `out/fw` is extracted).

Verified live on S9+ (star2lte); S9 and Note9 share every native file and the
SecIrisService code, but have not been tested on hardware.
