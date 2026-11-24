# Dynamic Island — built into UN1CA

Dynamic Island **0.1.17**, release commit
`5efc58640a5e15960ab1e1828ea666bc59fa8df0`, MIT licensed by sampple-korea.
`UPSTREAM.json` pins the source. `source/upstream` preserves the original project;
`source/java` contains the native UN1CA adaptation, merging the v0.1.17 Java/resources while retaining native lifecycle and scheduler guards.

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

The base static adapters are in the numbered SystemUI patch; source/extend_call_sites.py adds the v0.1.17 adapters transactionally through source/apply.py. Their
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
participate in its lease. The lease is per process, so the native runtime passes
the real process name: SystemUI side processes (`:screenshot`, `:edgelighting`)
never start an island (`:edgelighting` only gets the Now Brief pop-up bridge).

## v0.1.14 native compatibility

The hidden CompositionSamplingListener signature is compiled from upstream tools/framework-stubs as compile-only input, never shipped as an android.* class. Method-hook extras are per invocation, enabling the upstream long-press scope cleanup fix. Original release sources remain unmodified under source/upstream; UN1CA adaptations are under source/java. New framework hooks still require matching static SystemUI callsites; absent callsites remain explicitly unsupported and are not reported as installed. Physical S9/Note9 acceptance and all third-party app combinations remain pending.

## v0.1.17 source update (2026-11-24)

Pinned stable upstream v0.1.17 (`5efc58640a5e15960ab1e1828ea666bc59fa8df0`):
incoming call banner, iMotion swipe gestures, flashlight beam, Bluetooth and
timer cards, Now Brief pop-up bridge and stock pop-up style. Merged 3-way into
`source/java`; conflicts kept the native-runtime guards (`IslandPlacement`,
`Entry`, `MediaSource` pause-timer cancellation). `XposedBridge` gained
`invokeOriginalMethod` (renamed call-site original). New static call-sites:
task-stack listeners, face/fingerprint/biometric unlock, app and multitasking
handles, heads-up decisions, `NotificationContentView` attach/detach and the
edge-lighting service/scheduler. UN1CA defaults follow the Appearance tab's
Recommended choices: iMotion animation, frosted material and the flashlight beam.
Live S9+ check: no missing call-sites, no SystemUI crash, island windows shown.

## v0.1.16 source update (2026-11-11)

Pinned stable upstream v0.1.16 (`439f68116d910004505cea2dba65e58e3b1d1b0f`).
Upstream improvements:
- Blur processing performance increased by up to 950%.
- Clock time rendering performance increased up to 2,100%, with up to 93% memory reduction via caching and buffer reuse.
- High refresh rate requested during island animation, automatically released when stopped.
- BatteryBar rate estimation from battery charge counter on supported devices.
- Single popup per earphone group (prevents duplicate Galaxy Buds3 Pro popups).
- Samsung call popup takeover: request closing Samsung mini call window without killing call; round Lottie call action icons.
- Notification card frosted glass corner clip calculations and shader precision adjustments for bright backgrounds.
- Behavior toggles: always visible island, swipe up hides, swipe down opens.
- Dedicated Performance settings page with fine-grained animation and rendering toggles.
The native master switch, lifecycle cleanup, scheduler coalescing (DeadlineGate) and cross-classloader single-window lease (SingleWindowOwner) are retained.

## v0.1.15 source update (2026-11-04)

Pinned stable upstream v0.1.15 (`b04f41d21a6121421280613e5b26f1dd54d0af9b`).
Includes upstream localization catalog and embedded runtime resources (`EmbeddedResources`),
live preview, blur governor, shade watch, hotspot and unlock notice sources,
and `GuardedHandler` protection. The native master switch, lifecycle cleanup,
scheduler coalescing and cross-classloader single-window lease are retained.
Both the AGSL shader and localization/rule catalogs are generated into Java/resources
by `rebuild.py`, matching upstream's Gradle tasks.

Native adapters additionally wrap `KeyguardUpdateMonitor`'s started-sleep,
finished-sleep, started-wake and `dispatchStartedWakingUp` methods; original
bodies remain intact. Shade hooks remain capability-gated on the supplied
SystemUI version.

The integration matrix uses available decoded target trees, falling back to the
shared S22 base for routing tests when a target has no decoded output. This is
source compatibility, not physical acceptance on S9/Note9. The earlier live
acceptance above applies to v0.1.13, not this update. No live installation or
complete ROM rebuild is performed by the companion rebuild.
