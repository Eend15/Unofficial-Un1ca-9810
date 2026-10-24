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

## Runtime behaviour

- The module code runs inside System UI. Settings are read there through `XSharedPreferences` on a background thread every few seconds (`ModuleSettings`); every getter falls back to its default when the file is unreadable.
- Each hook group is installed on its own (`SystemUiHooks.install`), so one that cannot attach does not take the others down. Hook bodies run through `SafeHook`, and each island source is collected inside its own try/catch.
- `CrashGuard` counts unstable System UI starts and module-involved crashes in device-protected storage and keeps the module off after repeated failures. The state resets when the module version or the system build fingerprint changes, and an "off" verdict expires after 12 hours.
- `Diagnostics` keeps a report (stages, facts, errors) and publishes it to the global setting `dynamicisland_report`, which the settings app reads.
- The island window is created when the status bar view attaches, or by a 15 second fallback timer.

## Rules

Delivery, ride, route and device-connection cards, the code words of the verification-code detector and the words of the text-progress detector come from rule files in LiveBridge's dictionary format. The module ships two rule files of its own, `builtin-ko.json` (built from recorded Korean notifications) and `builtin-en.json` (written for English-language apps; no LiveBridge file is copied or bundled), merged with each other and with the user's own file. Stage names are filed per language (`ko`, `en`); a phone shows its own language and falls back to English. Patterns that could backtrack without end are refused when a file is read, and notification text is capped before matching. Extra fields: `ttl_min`, `final_ttl_min`, `cooldown_min`, and a signal's `percent_group`.

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

## README pictures

`ScreenshotsTest` draws the island on a mock phone (`app/build/screenshots`) and the settings render tests write the settings pages (`app/build/render`) when `./gradlew testReleaseUnitTest` runs; `python3 scripts/readme_images.py` (needs Pillow) turns them into `docs/screenshots/` and the strip `docs/banner.png` / `docs/banner_ko.png` at the top of the README. `docs/icon.png` is the app icon rendered from the launcher layers, and `docs/social.png` (1280 x 640, from `scripts/social.html`) is the social preview to upload in the repository settings, and `docs/hero.png` / `docs/hero_ko.png` are the title pictures, made from `scripts/hero.html` / `scripts/hero_ko.html` (open in a browser at 1800 x 600 and save a screenshot; the Korean one uses the Pretendard font, SIL OFL). Run both again after a change of the look and commit the pictures.

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

The unit tests include headless Robolectric renders of cards and settings pages, written as PNGs to `app/build/render/`. With network access the Robolectric jar is downloaded; offline, pass the folder that holds `android-all-instrumented-15-robolectric-13954326-i7.jar` with `-ProbolectricDir=<folder>`.

## Known limitations

- Tapping a shade card does not remove the notification.
- After dragging the stack sideways, the tap position of `IslandView.onTap` can be off by the drag.
- The call card green differs slightly between sources (0xFF30D158 / 0xFF34C759).
- A verification code made only of lowercase letters and digits is not detected.
- Nothing has been verified on a real device, only in the headless test and render environment.
