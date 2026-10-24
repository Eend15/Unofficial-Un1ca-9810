# Dynamic Island — built into UN1CA

Dynamic Island **0.1.10**, release commit
`32e55b6e220bc872dcab415fd7f5326c3576fbf8`, MIT licensed by sampple-korea.
`UPSTREAM.json` pins the source. `source/upstream` preserves the original project;
`source/java` contains the native UN1CA adaptation, including every v0.1.10 change.

Enabled for Exynos9810 **starlte, star2lte and crownlte**, Android 16 / One UI 8.
Works with EXT4 and EROFS ROM builds; EXT4 is needed only for convenient live
filesystem updates. Other targets are skipped. Module order 40 runs after the
generic Settings module and Exynos9810 finalization (order 30).

The master switch and settings button live in **UN1CA → UI settings**. There is
no launcher icon or KernelSU/LSPosed/Zygisk dependency. The module does not install
root modules, change SELinux, remove user data, or replace whole Settings/SystemUI
APKs. It patches their decoded source before the standard APK rebuild/sign stage.
The only packaged APK is the independently rebuildable companion.

## Build integration

`customize.sh` verifies the source fingerprint and payload checksum, decodes both
APKs, applies the audited static SystemUI callsite patch and adds the controller
and XML entries. Repeated application is idempotent; incompatible source fails
before modification. Existing unrelated methods/resources remain intact.

`scripts/make_rom.sh` runs `source/verify_built.py` after rebuilding and before
packaging, including staged/cached packaging. It requires all original Settings
and SystemUI classes, every native callsite, the UI-only controls, matching
companion payload, compatible DEX headers and the ROM platform signatures. Old
workdirs without this integration must be rebuilt through the supported stages.
It does not silently certify an old ZIP. Add a normal module `disable` file only
when intentionally excluding the feature from a build.

## Rebuild the companion from source

Requires Python 3, Java 17+, Android SDK platform 36 and build tools providing
`aapt2`, `d8`, and `zipalign`; repository build tools must already be prepared.
No build downloads are performed automatically. Supply your actual SDK paths:

```bash
python3 "unica/mods/Dynamic Island/source/rebuild.py" \
  --android-jar "$ANDROID_HOME/platforms/android-36/android.jar" \
  --build-tools "$ANDROID_HOME/build-tools/36.0.0" \
  --output "$PWD/out/dynamic-island/rebuild" --update-payload
```

`--update-payload` refreshes the APK, `SHA256SUMS`, and source fingerprint together.
Normal ROM builds use that source-matched payload and re-sign it with the selected
ROM platform key. Editing Java/resources without rebuilding deliberately fails
the fingerprint guard. D8 uses API 34 to emit supported 112-byte DEX 039 headers;
the manifest still requires Android 16. Do not restore malformed DEX 041 output.

The generated static adapters are source in the numbered SystemUI patch. Their
bootstrap Java is also in `source/Bootstrap.java`; `source/weave-report.json`
records the audited method/constructor coverage. Changes to hook sites require
updating the patch and coverage together and repeating the ART checks.

## Verification and limits

```bash
python3 "unica/mods/Dynamic Island/source/test_integration.py"
python3 "unica/mods/Dynamic Island/source/verify_source.py"
bash scripts/internal/check_patch_layout.sh
```

The matrix test uses existing decoded trees as read-only inputs and applies the
patches only to temporary fixtures. It checks all three targets, repeat application,
UI placement, unsupported targets and incompatible source without partial edits.

Live S9+ acceptance: Android boots with Enforcing SELinux, native runtime/window,
no root modules, hidden launcher, settings app and switch. The v0.1.10 ART checks
loaded all 34 affected classes, validated dispatch/controller and six constructor
sites; 11 upstream switch-gate/AOSP-chip/dark-text tests passed on real Android.
S9 and Note9 physical acceptance is pending; source compatibility is verified.
Real-message reply delivery and every third-party media/app scenario are not
claimed fully tested. Framework optimization hooks without static callsites are
reported unsupported rather than falsely counted as installed.

This source module does not retroactively modify already exported ROM ZIPs and
does not flash any device. The prior Note9 S Pen test ZIP predates this module.

Duplicate-instance protection: process-wide hook initialization is claimed once,
controller startup is idempotent on the main thread, and only one island window
can hold ownership. A failure after adding a window now removes it before retrying;
if removal fails, ownership remains held to prevent an overlapping replacement.
`source/SingleWindowOwnerTest.java` checks repeated claims, incorrect releases,
clean reattachment and 32 concurrent attempts. This governs this integration;
unrelated overlay applications are outside its ownership.
