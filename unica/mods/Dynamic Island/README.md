# Dynamic Island — built into UN1CA

Dynamic Island **0.1.13**, release commit
`db3cc0530b59f0fcc3833c44ed157ea0e68d17d4`, MIT licensed by sampple-korea.
`UPSTREAM.json` pins the source. `source/upstream` preserves the original project;
`source/java` contains the native UN1CA adaptation, merging the v0.1.13 Java/resources while retaining native lifecycle and scheduler guards.

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

The base static adapters are in the numbered SystemUI patch; source/extend_call_sites.py adds the v0.1.13 adapters transactionally through source/apply.py. Their
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

Live S9+ acceptance (2026-10-27): Android boots with Enforcing SELinux and
read-only system, native runtime/window, settings activity and master switch.
The switch was tested off/on and restored to enabled; one island window returned.
ART loaded 752 companion classes; nine upstream tests covering AOSP chips,
recording waveform, charging transitions and long-press hit testing passed.
All four extended SystemUI classes linked on ART with nine required adapters;
the compiled APK retains every original defined class. Charging, heads-up and
shade live-card hook groups attach. Stock One UI 7 shade rows do not support
upstream's newer card-theme/media-takeover path; that optional path stays off.
S9 and Note9 physical acceptance is pending; source compatibility is verified.
Real-message reply delivery and every third-party media/app scenario are not
claimed fully tested. Framework optimization hooks without static callsites are
reported unsupported rather than falsely counted as installed.

This source module does not retroactively modify already exported ROM ZIPs and
does not flash any device. The prior Note9 S Pen test ZIP predates this module.

Duplicate-instance protection: the window lease is process-wide, including
independent payload class loaders. The lease contains only a UUID string in
process properties; no view/class-loader references are stored there. Failed
removal retains ownership. Window attach/detach are serialized and runtime
initialization is idempotent. Disabling disposes the window immediately and
cancels fallback/reveal timers; late status-bar callbacks cannot recreate it.
SingleWindowOwnerTest checks independent gates, independent class loaders,
foreign release, clean handover and 32 simultaneous competing gates. The
installed APK's same cross-loader behavior is also tested on Android ART.
This covers the built-in integration; unrelated overlay applications do not
participate in its lease.

## v0.1.13 native compatibility

The hidden CompositionSamplingListener signature is compiled from upstream tools/framework-stubs as compile-only input, never shipped as an android.* class. Method-hook extras are per invocation, enabling the upstream long-press scope cleanup fix. Original release sources remain unmodified under source/upstream; UN1CA adaptations are under source/java. New framework hooks still require matching static SystemUI callsites; absent callsites remain explicitly unsupported and are not reported as installed. Physical S9/Note9 acceptance and all third-party app combinations remain pending.
