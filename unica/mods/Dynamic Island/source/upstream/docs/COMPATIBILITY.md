# System UI compatibility

The module hooks Samsung's System UI by name, so each One UI version has to be checked. This page says what is checked and how to add a version.

## Status

| One UI | Android | Status |
|---|---|---|
| 9 | 17 (SDK 37) | **used on real phones** (a Galaxy S916U on One UI 9.0 sent a Diagnostics report: every hook group attached; the one target the build lacks, `SecQSPanelResourcePicker#getMediaPlayerExpandHeight`, is skipped on purpose) |
| 8 | 16 (SDK 36) | **used on real phones** by the author and by testers, the version the module was first written against |
| 7 | 15 (SDK 35) | added in 0.1.7 from a System UI build (Android 15, version code 35): the hook targets were checked against it by name and attach; **not tested on a device**. The blurred shade cards and the shade media player takeover are off here (those rows do not exist in One UI 7), and the screen-recording / screen-sharing card is not available |
| Nothing OS (Android 16, AOSP-style) | 16 | first, lowest-priority support, checked against a Nothing OS build by name; **not confirmed on a device** (see below) |

## What "tested" means here

- **Tested** means used on a real phone. Every release is tried that way first: changes go out as test builds (GitHub pre-releases), the author and testers use them on their phones, and a stable release only contains what was reported to work. The notes of a test build say when something was only checked in the test and render environment.
- **Not tested** means only the automated tests (unit tests and headless Robolectric renders of cards and settings pages, no real System UI, no blur) and the name check below. The same words are used in the README and in `DEVELOPMENT.md`.
- There is no per-feature matrix: "used on real phones" says the version runs and the features that were tried worked, not that every card was tried on every phone. A bug found on a phone becomes an issue on GitHub and, if it is fixed, a line in the notes of the next release.

## How a build is checked

1. Get the System UI of that One UI version (`/system_ext/priv-app/SystemUI/SystemUI.apk`, or its dex files).
2. Run `python3 scripts/check_systemui.py <SystemUI.apk>`. It lists the classes, methods and fields the module touches that the build does not have, with the source file that uses each one.
3. A missing class means a hook group will not attach on that build. Each group is installed on its own (`SystemUiHooks.install`), so one missing group does not take the others down; the diagnostics report lists them under **hooks not attached**.
4. For each miss, either find the name the build uses instead and hook that as well (the hooks are written so that a missing target is skipped, not fatal), or leave the feature off on that version.
5. The report of **Tools → Diagnostics** shows the One UI version (`one ui`), the System UI build (`system ui`) and the hooks that did not attach. Ask testers on a new version to send it.

Names are matched by name only (any class), so a hit from the script is a hint, not a proof; view ids are not in the dex and are checked with `aapt2 dump resources`, as the script prints.

## Status bar battery charging effect

Checked against the supplied Android 17 System UI v17 (37) APK and the video in issue #15. The effect is the status bar battery expanding into a coloured charging chip. It is separate from `power.feature.charginganimation`, which controls charging overlays/Now Bar presentations. The battery effect is handled at its own presentation entry points below.

- **Compose (One UI 9):** `SamsungHomeStatusBarInteractor$shouldHideStatusBarForChargingVI$2` produces `Pair(current, previous)` for a presentation-only `runningFold`. Both its `Function3.invoke` bridge and `invokeSuspend(Object)` body are hooked, so the bridge is covered even if ART inlines the small body. When **Show Samsung battery charging effect** is off (the default), its result is `Pair(false, false)`. The downstream filter accepts only false-to-true transitions, so it never starts the charging VI or hides the normal status icons/battery. `ChargingVIKt.ChargingVI` reads the resulting `HomeStatusBarViewModelImpl.shouldHideStatusBarForChargingVI` flow. Upstream `isBatteryCharging` and the battery repository remain unchanged. The hook runs on the produced result rather than a potentially inlined constructor.
- **View-based scheduler:** `SystemStatusAnimationSchedulerImpl.onStatusEvent(StatusEvent)` rejects only `BatteryEvent` while the option is off, before it changes the scheduler, creates a chip or hides icons. Other events, including camera/microphone privacy events, continue normally.

The option is independent of island charging alerts. Charging sounds, warnings, the ordinary battery percentage/charging indicator and other power UI are not intercepted. Changes affect subsequent charging transitions after preferences reload; reconnect the charger to test a new transition. Unsupported builds retain their original behaviour. Diagnostics report `stock charging animation` with attached Compose/event hook counts; both targets exist in the supplied APK. The maintainer confirmed that the corrected test APK suppresses the battery effect on their phone. Other devices and firmware still need device testing, including wired/wireless charging and normal battery/status/privacy icon visibility.

## One UI 7 specifics

What differs from One UI 8 and how the module handles it (found by comparing the symbols with `scripts/check_systemui.py`):

- **Hiding the stock capsule.** One UI 7 has no status bar binder; the module makes `OngoingActivityController.shouldVisible` answer "no" and stops the chip animation controller from showing the capsule (`animateChipShow`, `showView`, `nudgeAnimation`). Chosen at start-up by whether the binder class exists (diagnostics: `chip style`).
- **One UI 8.0 (Android 16, no status bar binder).** Handled by the same path: besides `shouldVisible` the capsule parent is kept hidden by `updateParentViewVisibility`, which this build calls from many places, and the clock nudge is `clockViewNudgeAnimation`. Checked against System UI v16 (36) by symbol only.
- **Calls.** There is no Samsung call controller; the AOSP `OngoingCallController` is used, as on Android 16. Its call info has no package, app name or icon, so the package comes from the notification key and the label from the package manager.
- **Heads-up.** `HeadsUpManagerImpl` is called `HeadsUpManagerPhone` (written as `new|old` alternatives, see below).
- **Shade.** The blurred notification cards (`isBlurBackground`) do not exist, so the card theme and the media player takeover are not installed and the stock rows stay (diagnostics: `shade rows`).
- **Not available.** The launcher exit animation (`IOnGoingChipListener`) and the screen-record / cast chip model are missing; the module skips them.

## Nothing OS / AOSP-style System UI (lowest priority)

Android 16 System UI without any Samsung class (checked against a Nothing OS build, not run on a device). Chosen at start-up when `OngoingActivityController` is absent and `OngoingActivityChipsViewModel` exists (diagnostics: `stock chips`).

- **Stock chips.** The status bar chips for calls, screen recording, screen sharing and casting duplicated the island. `OngoingActivityChipsViewModel.rankChips` / `pickMostImportantChip` get their bundle with those chips swapped for an empty one, so neither the view nor the Compose chip row sees them. The call chip goes only once the island has the call controller.
- **Island cards.** The swapped-out models are handed to the screen-record / cast source (same field names as the bundle; the timer comes from `startTimeMs`). No stop button yet: the stock stop action needs the chip view.
- **Live notifications.** Promoted ongoing notifications (`isPromotedOngoing`, or the `requestPromotedOngoing` extra) become island cards (`PromotedSource`: title, text, chronometer or short critical text, progress, actions), their stock chips are removed from the bundle too, and the notification row in the shade is hidden like the progress ones. Calls and media keep their own sources.
- **Blur** is not touched: it is used wherever `SemBlurInfo` exists and only switched off when Samsung's own feature flag says so.
- **Everything else Samsung-specific** (capsule, flashlight level, ongoing-activity reader) is skipped by the same feature checks as on One UI 7.

## How the settings reach System UI

`ModuleSettings` reads the shared preference file through `XSharedPreferences`. When that file is empty or unreadable from System UI (the framework did not apply module scope or file mode), it asks the module app's read-only `SettingsProvider` (`content://dev.android.dynamicisland.settings`, call `all`) instead, every 4 seconds like the file. The diagnostics line `settings source` says which one is in use and how many keys arrived; a switch that has no effect while it says `0 keys` or is missing means neither route works.

## Name alternatives

Any class, method or field name in a `Refl` call may be written `"new|old"`: the first that exists on the running build is used, and a name that was found only under an older alternative appears in the report as `older names used`. Put the newest System UI's name first.

## Voice-recording waveform

The optional `concurrent_recording_input` feature is experimental and off by default. It captures short PCM buffers through SystemUI's existing audio privileges with `VOICE_RECOGNITION` and `setPrivacySensitive(false)`, then retains only an in-memory level history. It neither stores audio nor changes the recorder app's routing, audio focus, manifest or LSPosed scope. Capture runs only for a positively identified, active Samsung Voice Recorder session visible in the overlay and belonging to the current Android user. Screen-off/mute, hidden or paused content, policy silencing and previously audible recordings becoming silenced stop capture. Device policy still controls whether concurrent input works; the guard is not a guarantee against all recording interference. Disable the option if it affects recording. Low-performance mode disables it. The maintainer confirmed concurrent input and improved motion on their phone.

Input reads occur approximately every 40ms; visible non-silent history is interpolated on display frames using `elapsedRealtime` consistently. A stale-input timeout stops the frame loop. Waveform history spans roughly three seconds.

## Live-notification long press (#16)

The supplied Galaxy M34 One UI 8.5 logs contain repeated `ExpandableNotificationRow.isActionButtonLongClick` null dereferences on 0.1.12-dev10 and 0.1.13-dev1. The same method in the inspected One UI 9 APK unconditionally calls `mPrivateLayout.mExpandedChild.findViewById(...)` for ongoing activities. `CardRowState` deliberately removes that expanded child when installing its single replacement card.

Before this synchronous hit test, installed replacement rows temporarily provide their visible card as the expanded-content reference; afterward the reference returns to null, including when the original method throws. Normal rows and an existing stock expanded child are untouched. Samsung's own ongoing-action, snooze and bubble hit tests and long-press menu logic still run. No view is attached twice. If the hit-test method exists but its guard cannot attach, shade-card replacement is not installed. The fix is included in 0.1.13 and covered by reproduction, cleanup, nesting and native-button tests; confirmation on the reporting device is still pending.
