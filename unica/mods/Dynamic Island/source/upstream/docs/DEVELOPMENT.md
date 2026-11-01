# Development Notes

Build, test and compatibility details for contributors. The user-facing overview is in the [English README](../README.md) and the [Korean README](../README.ko.md).

## Target

- App package: `dev.android.dynamicisland`; scope: `com.android.systemui`.
- Samsung One UI 7 / 8 / 9 (Android 15 / 16 / 17); minSdk 35, compileSdk / targetSdk 36. Xposed API 93 (legacy API, `XSharedPreferences` for settings).
- Everything hooks private System UI classes by name (see `xposed/hooks/SystemUiHooks`). When a System UI update renames something, the log line `SystemUI hooks installed ... N hook(s) did not attach: [...]` and the in-app diagnostics list exactly which hooks to update.

## Source layout

```
xposed/            entry point, reflection helpers (Refl), SafeHook, CrashGuard, Diagnostics
xposed/hooks/      System UI hooks (stock chip hiding, controller capture, shade cards, shade music player, heads-up)
island/            IslandController: collects items from the sources and drives the island
island/model/      IslandItem and its enums (plain data)
island/source/     data sources: notifications (OaSource), media, calls, battery/sound events, privacy, cast, progress, rules, peeks
island/detect/     text heuristics: one-time codes, VoIP calls, text progress, icon contrast
island/rules/      rule files (LiveBridge dictionary format): parser, merge, safe patterns, rule store
island/view/       IslandView (pill, bubble, cards, touch) and IslandHost
island/view/card/  expanded card bodies; island/view/media/ music glow and album-art tones
island/window/     overlay window, blur, exit animation, status-bar icon fading
island/graphics/   springs, easing, liquid bridge, glyphs, fonts, colours
settings/          preferences, the settings activity (One UI style hub) and the app filter
```

`island/detect` has no Android service or view dependencies.

### System typography

`Fonts` resolves Samsung's device-provided `sec` family for canvas text. `Typeface.DEFAULT`
can remain Roboto even when native One UI views use `sec`; no font files are bundled.
Android falls back to its default family when `sec` is unavailable. Samsung flip-font
selection still takes priority, preserving its regular/bold behaviour.

The refresh key includes the resolved family, flip-font mode and native regular/bold
handles. A live font change remeasures compact content and open card geometry without
changing which popup cards are open. Diagnostics reports the selected source as
`island font`. See Samsung's [Typeface family and flip-font handling](https://github.com/488315/samsung_framework/blob/30cd25b68f67be792ab78fb46fb9f63af0964522/framework/sources/android/graphics/Typeface.java#L536)
and the native [media capsule font family](https://github.com/488315/samsung_framework/blob/30cd25b68f67be792ab78fb46fb9f63af0964522/SystemUI-Jadx/resources/res/layout/sec_media_capsule.xml).

## Runtime behaviour

Settings include [ranked offline search](SETTINGS-SEARCH.md), with translated names, related terms, Korean initials and bounded typo matching. Results navigate to existing controls without executing their actions.

The expanded island defaults to Classic, with the existing fill, native blur, rim and media glow. Appearance → Card material can opt into the [frosted material](FROSTED-MATERIAL.md). Existing explicit selections are preserved. Foreground icons/buttons are shared unchanged by both materials.

- The module code runs inside System UI. Settings are read there through `XSharedPreferences` on a background thread every few seconds (`ModuleSettings`); every getter falls back to its default when the file is unreadable.
- Settings show a transient message after a saved value changes, with next-event timing for charging, connections and card timeouts. A fresh diagnostics ping checks the SystemUI connection only; it does not prove the value was applied. If no response arrives, the message offers the existing confirmed restart action. No individual preference is marked as always requiring a restart.
- Each hook group is installed on its own (`SystemUiHooks.install`), so one that cannot attach does not take the others down. Hook bodies run through `SafeHook`, and each island source is collected inside its own try/catch.
- `CrashGuard` counts unstable System UI starts and module-involved crashes in device-protected storage and keeps the module off after repeated failures. The state resets when the module version or the system build fingerprint changes, and an "off" verdict expires after 12 hours.
- `Diagnostics` keeps a report (stages, facts, errors) and publishes it to the global setting `dynamicisland_report`, which the settings app reads.
- The island window is created when the status bar view attaches, or by a 15 second fallback timer.

## Rules

Delivery, ride, route and device-connection cards, the code words of the verification-code detector and the words of the text-progress detector come from rule files in LiveBridge's dictionary format. The module ships two rule files of its own, `builtin-ko.json` (built from recorded Korean notifications) and `builtin-en.json` (written for English-language apps; no LiveBridge file is copied or bundled), merged with each other and with the user's own file. Stage names and module-owned UI text come from the English-first Android string resources, with generated classloader catalogs for SystemUI. English, Korean, Japanese, Simplified Chinese, Russian and Turkish are registered in `res/xml/locales_config.xml`; unknown locales fall back to English. See [TRANSLATING.md](TRANSLATING.md). User labels override shipped translations; legacy English-only user edits remain visible in newly translated languages unless explicitly overridden. Patterns that could backtrack without end are refused when a file is read, and notification text is capped before matching. Extra fields: `ttl_min`, `final_ttl_min`, `cooldown_min`, and a signal's `percent_group`.

## Rule manager

The settings app edits the user's own rule file through `UserRules` (apps, patterns, stage names and extra stages added to a rule of the same id, or to a rule of the user's own) and keeps the ids of switched-off rules in `rules_disabled`; `RuleStore.build` merges the file on top of the module's rules and drops the switched-off ones. `RulesScreen` holds the pages: the list, one rule, the tester (`RuleSource.hits` plus the code and text-progress detectors) and import / export.

## App filter

`ModuleSettings.appAllowed(package)` applies to the notification snapshot (progress, rules, verification codes) and to the heads-up takeover. Live notifications, media, calls and system events are not filtered.

## Build and release

```bash
./gradlew assembleRelease
KEYSTORE_PASSWORD=... scripts/sign.sh   # -> release/DynamicIsland-<versionName>.apk
```

`scripts/sign.sh` takes the keystore password from `KEYSTORE_PASSWORD` and creates a self-signed key in `release-keys/` on first run (git-ignored); keep it, updates must use the same key. To release: bump `versionCode` / `versionName` in `app/build.gradle` and `CrashGuard.BUILD`, run the tests, sign.

## Optional device data

`ChargingSource` and `HeadsetSource` join the existing source collector. Their preferences default to false and settings reload starts/stops their listeners on the main thread. The charging card keeps `EVENT` priority. Statistics are subordinate to it; disabling measurement clears its checkpoint and stops charge-counter reads. Live polling runs every 5 seconds while interactive (15 seconds in low-performance mode), and stops while the screen is off. Battery/screen events close measurement intervals without a wake lock.

`ChargingSession` uses elapsed time, including deep sleep, and signed charge-counter/percentage changes. Each change is distributed across the screen-state durations accumulated since that value last changed, rather than assigned entirely to the last instant. These state splits are estimates, not separate hardware measurements. Unsupported charge counters stay unknown. A checkpoint can retain measured totals across a short SystemUI restart only after boot, plug, age and counter/level checks; the unobserved gap is excluded. An unverified restart starts a new measurement; these totals are not a complete charging-history log.

`SourcePeekRequests` is prepared behind `ENABLE_SOURCE_PEEKS = false`; there is no settings entry or preference key. If enabled later, the controller requires the ordinary auto-open option, a free/peekable view and one successful request at a time. Event identity and expiry prevent repeated or stale announcements. Existing heads-up/OTP handling remains separate.

Camera text clearance defaults to zero additional dp and uses the existing live calibration broadcast, preference reload and calibration reset. Rendering limits the extra clearance to the available pill width.

## README pictures

Run `./gradlew testReleaseUnitTest -Prender --tests '*settings.Settings*Test' --tests '*ScreenshotsTest'` to generate README pictures. `ScreenshotsTest` draws the island on a mock phone (`app/build/screenshots`), while the settings captures write all six locales to `app/build/render`. Then `python3 scripts/readme_images.py` (needs Pillow) turns them into `docs/screenshots/` and the strip `docs/banner.png` / `docs/banner_ko.png` at the top of the README. For settings alone, omit `--tests '*ScreenshotsTest'` and pass `--settings-only` to the Python script. `docs/icon.png` is the app icon rendered from the launcher layers, and `docs/social.png` (1280 x 640, from `scripts/social.html`) is the social preview to upload in the repository settings, and `docs/hero.png` / `docs/hero_ko.png` are the title pictures, made from `scripts/hero.html` / `scripts/hero_ko.html` (open in a browser at 1800 x 600 and save a screenshot; the Korean one uses the Pretendard font, SIL OFL). Refresh and commit the pictures after a change of the look.

## README translations

`README.md` is the source; `README.ko.md`, `README.ja.md`, `README.zh.md` (Simplified Chinese) and `README.ru.md` follow it section by section and use the same pictures (`docs/hero.png`, `docs/banner.png`, ...; only Korean has its own title pictures). When `README.md` changes, change the translations too. Each file links to the others in the line under the badges.

## Releases

`.github/workflows/release.yml` builds, tests, signs and publishes the APK as a GitHub release when a tag `v<versionName>` is pushed (the tag must match `versionName` in `app/build.gradle`) or when it is started by hand. The signing key stays in repository secrets, so every release has the same signature and installs as an update over the last one; keep a backup of the keystore, a lost key cannot be replaced.

One-time setup (Settings → Secrets and variables → Actions → New repository secret):

| Secret | Value |
|---|---|
| `KEYSTORE_BASE64` | `base64 -w0 release-keys/dynamicisland.jks` |
| `KEYSTORE_PASSWORD` | the keystore password (the key uses the same one) |
| `KEYSTORE_ALIAS` | optional, defaults to `dynamicisland` |

To release: raise `versionCode` / `versionName` in `app/build.gradle` and `CrashGuard.BUILD`, commit, then `git tag v<version> && git push origin v<version>`. The workflow can also be started by hand (Actions → Release → Run workflow, branch `main`): it then creates the tag `v<versionName>` itself. The release text is `docs/release-notes/<versionName>.md` (English and Korean) when that file exists, otherwise it is generated from the commits; running the workflow again for an existing version updates the assets and the text. `ci.yml` runs the tests on every push and pull request.

## Tests

```bash
./gradlew testReleaseUnitTest
```

The default suite runs behavior, lifecycle, pixel and layout regressions. It checks every settings page once and compares the Android resources with the System UI catalog in all six languages. It does not export PNGs or repeat the entire settings layout for every language.

```bash
./gradlew testReleaseUnitTest -Prender        # also run visual captures and export PNGs
./gradlew testReleaseUnitTest -Prender --tests '*SettingsCaptureTest' --tests '*SettingsRenderTest'
```

Capture-only tests use the JUnit `RenderCapture` category and are excluded from regular CI. These images are review aids, without automatic screenshot baselines. Use `RenderCapture.write` for optional image exports. The default suite is intentionally small: startup, representative card processing, settings persistence, localization and basic drawing/lifecycle checks. Repetitive per-variant, frame-rate and low-level helper tests have been removed. Add focused tests when they offer useful coverage beyond these checks; avoid retaining one-off design proposals or repeating every previously fixed bug scenario.

With network access the Robolectric jar is downloaded; offline, pass the folder that holds `android-all-instrumented-15-robolectric-13954326-i7.jar` with `-ProbolectricDir=<folder>`.

## Testing status

- Automated: `./gradlew testReleaseUnitTest` (unit tests and headless renders; no real System UI and no blur). It runs on every push (`ci.yml`) and before every release.
- On phones: One UI 8 and 9 have been used on real phones; One UI 7 and Nothing OS have not (details and what the words mean in [COMPATIBILITY.md](COMPATIBILITY.md)).

## Release process

1. Work in small steps; every change gets its own commit and the version in `app/build.gradle` / `CrashGuard.BUILD` goes up with a test build.
2. A test build is published as a GitHub **pre-release** (`v<version>-devN` or `-dev`), with notes in `docs/release-notes/` in English and Korean. Testers install it, and what they report is fixed in the next test build.
3. When the test builds have been tried on real phones, the stable release (`v<version>`) collects the working changes into one set of notes. What was not confirmed on a phone is left out of the notes.
4. Releases come fast while the project is young, so a stable release is only cut after the test builds before it have been used for a while; regressions are checked on a phone before it, not after.

## Maintenance

The module hooks private System UI classes by name, so each One UI update can break a hook. The way to keep up is in [COMPATIBILITY.md](COMPATIBILITY.md): run `scripts/check_systemui.py` on the new System UI, read the diagnostics report of a tester on that version (`hooks not attached`, `older names used`), and add the new name next to the old one (`"new|old"`). A missing target skips its hook group, it does not stop the module.

## 0.1.12 validation

The stable release consolidates the 0.1.12 development series. Its local release candidate passes 355 Android unit/render tests, the six-language catalog check and two translation-tool tests. Device feedback confirmed the voice-recorder duplicate-player fix and the revised shade/expand/collapse motion. The final compact-focus timing adjustment is covered by regression tests; device coverage is not exhaustive. GPU display-list/effect lifecycle checks do not replace observing the final Gaussian appearance on a phone.

## 0.1.13 validation

This stable release consolidates the 0.1.13 development series and subsequent card, recording and compatibility fixes. The default suite contains 102 focused tests; the six language catalogs each contain 515 strings. The opt-in `AllCardsOverviewRenderTest` captures all nine card body implementations in 36 examples. Voice-waveform capture and smoother movement were tried on the maintainer's device; the concurrent microphone feature remains experimental and off by default. Issue #16 was traced to Samsung's unconditional expanded-child hit-test dereference, reproduced and fixed in a focused test; the reporting phone has not yet confirmed the fix. See the [release notes](release-notes/0.1.13.md) for evidence and installation details.

## Known limitations

The 0.1.14-dev24 flashlight option preserves the classic slider by default. System events → Flashlight controls can select an expanding beam; all six locales and the settings search catalog include the choice. The lamp is the power touch target, and the curved brightness thumb grows with its distance from the lens. Its minimum distance is 40 design dp, and the optical reach follows the actual thumb position: light remains visible at the maximum control and fades softly beyond it, while a low level contracts near the lens. The last 15% of continuous travel adds a steep, smooth bloom in width, scattering and brightness only toward the far end. A longitudinal envelope leaves the emitting aperture narrow and opens the added bloom through the last 60% of the beam, keeping the curve continuous and all light inside the card; hardware brightness still maps to the supported camera steps. The production RuntimeShader combines a white core, transmitted light, an early-opening diffuse plume, a broad scattering envelope, soft surrounding haze, lens bloom, distance attenuation, soft longitudinal/lateral falloff, unequal forward-directed scattering shoulders with different angular spread and reach, and a subtle separated RGB fringe focused differently on each side within the visible envelope. These are an optical illustration, not a measured simulation of the phone's LED/lens. All light and controls are clipped inside the card, and brightness maps to the camera's real supported steps. The shader/state is retained across card updates and stops requesting frames after its short power/brightness transitions settle. Only the curved thumb follows a small resisted vertical drag (bounded to 7 design dp), with responsive following during drag and a slightly softer, lightly damped return on release or cancellation. Its spring survives card replacement; vertical movement does not alter the optical field or hardware brightness. The classic slider keeps its existing motion. A view-only native Skia capture evaluates this same shader; it does not represent a phone GPU capture.

The beam-style power button changes supported hardware strength over a 240 ms eased transition. A selected level is stored separately from intermediate levels: powering down from level 4 traverses 3 → 2 → 1 → off, and powering back up traverses 1 → 2 → 3 → 4. Transient strength writes use `CameraManager.turnOnTorchWithStrengthLevel` without invoking Samsung's preference-saving `setFlashlightLevel(..., true)` path. Direct slider choices retain that existing save path. Camera mode callbacks still determine the actual on/off state; reversal restarts from the last applied level, and a slider change, camera replacement, external off/unavailability or backend error stops queued writes. Single-level cameras retain binary hardware power with the visual fade. Classic controls retain their direct power action. The saved-level path follows Samsung's separation between transient strength changes and [`Flashlight_brightness_level` persistence](https://github.com/488315/samsung_framework/blob/30cd25b68f67be792ab78fb46fb9f63af0964522/SystemUI-Jadx/sources/com/android/systemui/statusbar/policy/FlashlightControllerImpl.java); the current One UI 9 device still requires installation confirmation.

When the beam card's own power target switches off, the curved thumb parks next to the lens, blends into it during the last part of docking, and returns to the remembered brightness position on power-up. The lamp uses one rounded silhouette so its dimmed handle/head do not overlap with doubled alpha. Its controls remain for five seconds from the confirmed off callback while that expanded card is open, so it can switch back on. An earlier automatic-collapse timeout waits for this deadline; manual dismissal still closes immediately. Turning it back on cancels the pending expiry. Lower brightness contracts near the lens, while high brightness broadens the plume, increases its reach and raises scattering strength. Collapsing removes the off card; external power-off does not create a persistent off pill. Actual camera callbacks determine the on/off appearance. The single-level camera keeps power control without a fake brightness slider. Backend failures are contained. Optical layout and gesture tuning incorporate maintainer device feedback from local builds. The official pre-release uses the repository signing workflow; power-ramp timing and saved-brightness behaviour still need confirmation with that package.

The 0.1.14-dev13 WhatsApp timer trial (#23) gates both Samsung's system-call-chip copy and the fallback notification call source with one per-notification clock. For WhatsApp and WhatsApp Business, `isOngoing`, a hang-up action and the system chip's `callStartTime` alone no longer start a timer. An explicit app count-up chronometer or a duration in the notification status is required; explicit dialing/ringing, incoming/screening metadata and answer actions take precedence. If the app retains a timestamp observed during the waiting phase, the timer starts at the observed connection rather than including ringing time. Already connected calls retain their explicit app clock. Removal or a new waiting phase clears the old call state, and the clock cache retains only numeric state for live keys, not contact text. Ordinary phone/dialer timers keep their prior behavior. The native-chip and fallback paths are tested together, including the stale timestamp and contact-name false positives. The reporting WhatsApp payload has not been captured: this is a candidate fix, and a build that receives no explicit clock/duration will keep its WhatsApp timer hidden until connection evidence arrives. Device confirmation is required.

The 0.1.14-dev12 quick-panel change targets the **compact pill disappearing when the system quick panel opens**, not a redesign of the expanded activity list. Its broad shade-open/close callback used to restore and reinstall every followed notification card. Only real overlay-card coverage changes now trigger that handoff. Once the compact pill is frozen out of sight, further panel-drag fractions do not schedule frames/window updates; closing the panel wakes the existing return spring. `QuickPanelGateTest` drives the real signal and animation for 50 cycles, retains the same shade card with zero extra height requests, and checks that an actual expanded-card handoff still restores the shade copy. This removes confirmed unnecessary work; it does not establish the cause of issue #22's reported 30–60-minute slowdown or demonstrate a device memory leak. Phone confirmation/logs are still needed.

Open bugs are tracked as issues; the ones that are planned carry the `planned` label.

- The status bar icons can come back a moment late after the shade is closed again; the cause is not known and has not been confirmed to be this module.
- Tapping a shade card does not remove the notification.
- After dragging the stack sideways, the tap position of `IslandView.onTap` can be off by the drag.
- The call card green differs slightly between sources (0xFF30D158 / 0xFF34C759).
- A verification code made only of lowercase letters and digits is not detected.
- One UI 7 and Nothing OS are not confirmed on a real device (see [COMPATIBILITY.md](COMPATIBILITY.md)).

## Icons

The island's pictograms (`GlyphIcon`) play Lottie animations. The animations live in `tools/lottie/json`; `tools/lottie/embed.py` packs them into `LottieData.java`, because a System UI process cannot read this module's resources. `LottiePlayer` is a small player that handles what these files use (shape and pre-composition layers, mattes, trim, merge and round-corner modifiers, bezier-eased keyframes) and paints every shape in the colour the island asks for. `tools/lottie/mk.py` draws the icons that are not from the ColorOS pack; run `python3 tools/lottie/mk.py <dir>` and copy the result into `json/` to change them. `LottieFilmTest` writes a strip of frames per icon to `app/build/render/lottie` with `-Prender`. The canvas drawings in `GlyphIcon` remain as the fallback if an animation fails to parse.

## 0.1.14 validation

The stable release consolidates the 0.1.14 development series and the optional iMotion presentation.
The default suite contains 155 Android tests and two translation-tool tests; all six catalogs contain
587 translated strings. The release candidate also passes release lint and APK assembly. iMotion
covers more than four sources, reversible transitions, native custom notification gestures, coordinated
header/page swipes, quick-panel gathering and the final circular frosted mask. Five translated feature
recommendations rotate without replacement and route to existing settings without changing preferences.
Maintainer feedback on local builds informed motion tuning; OEM/device coverage remains limited.
See [0.1.14 release notes](release-notes/0.1.14.md), [iMotion](iMode.md) and
[release recommendations](release-recommendations.md). Classic material and the existing animation
remain the defaults.
