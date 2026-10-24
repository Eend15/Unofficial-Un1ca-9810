# System UI compatibility

The module hooks Samsung's System UI by name, so each One UI version has to be checked. This page says what is checked and how to add a version.

## Status

| One UI | Android | Status |
|---|---|---|
| 9 | 17 (SDK 37) | the code has branches for it; not confirmed on a device |
| 8 | 16 (SDK 36) | the module was written against it; tested on one device only |
| 7 | 15 (SDK 35) | added in 0.1.7 from a System UI build (Android 15, version code 35): the hook targets were checked against it by name and attach; not tested on a device. The blurred shade cards and the shade media player takeover are off here (those rows do not exist in One UI 7), and the screen-recording / screen-sharing card is not available |

"Tested" means used on a real phone. Nothing here is tested on more than the author's own device.

## How a build is checked

1. Get the System UI of that One UI version (`/system_ext/priv-app/SystemUI/SystemUI.apk`, or its dex files).
2. Run `python3 scripts/check_systemui.py <SystemUI.apk>`. It lists the classes, methods and fields the module touches that the build does not have, with the source file that uses each one.
3. A missing class means a hook group will not attach on that build. Each group is installed on its own (`SystemUiHooks.install`), so one missing group does not take the others down; the diagnostics report lists them under **hooks not attached**.
4. For each miss, either find the name the build uses instead and hook that as well (the hooks are written so that a missing target is skipped, not fatal), or leave the feature off on that version.
5. The report of **Tools → Diagnostics** shows the One UI version (`one ui`), the System UI build (`system ui`) and the hooks that did not attach. Ask testers on a new version to send it.

Names are matched by name only (any class), so a hit from the script is a hint, not a proof; view ids are not in the dex and are checked with `aapt2 dump resources`, as the script prints.

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
