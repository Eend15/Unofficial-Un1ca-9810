# Additional notification and settings regressions

Reviewed against `3406ee0`, after the previous 25 findings. The two subsequent reports contain 20 and 11 findings. Fixes and regression coverage are listed below; numbering restarts for each report.

## Report of 20 findings

| # | Fix | Regression coverage |
| --- | --- | --- |
| 1 | Preserve letters in accepted OTP tokens; group only numeric display values. | `AdditionalSourceRegressionTest`: alphanumeric and separated numeric codes, non-code words. |
| 2 | Bound editor and runtime stages to 0–9, including imported signal stages. | `AdditionalRulesRegressionTest`: maximum integer import. |
| 3 | Sort signals by highest stage for standalone and merged rules. | `AdditionalRulesRegressionTest`: overlapping download/completion signals. |
| 4 | Expire old first-seen records before evaluating a new post; keep the actual expiry as the cooldown origin. | `AdditionalSourceRegressionTest`: fresh post after idle expiry and after a late refresh of the old notification. |
| 5 | Retain waiting candidates beyond the visible three-card cap; reselect at expiry without notification traffic. | `AdditionalSourceRegressionTest`: short final-stage TTLs and a waiting running order. |
| 6 | Treat parsed status labels as valid import content. | `AdditionalRulesRegressionTest`: labels-only export/import. |
| 7 | Preserve explicit maximum-stage overrides when resetting colour; derive implicit maxima from signals. | `AdditionalRulesRegressionTest`, `UserRulesTest`: colour reset and full undo. |
| 8 | Find and remove label IDs without case sensitivity. | `AdditionalRulesRegressionTest`: imported `FOOD`, reset as `food`. |
| 9 | Enforce the existing 40-rule limit when creating, importing or saving; display localized feedback. | `AdditionalRulesRegressionTest`: the 40th rule executes, the 41st cannot be created. |
| 10 | Match merged regular expressions independently, preserving captures and backreferences. | `AdditionalRulesRegressionTest`: `(a)` merged with `(x)\1`, single and multiple matches. |
| 11 | Use the configured context radius for percentage and capacity text. | `AdditionalSourceRegressionTest`: context at 100 characters, wide and narrow windows. |
| 12 | Retry audio capture on its worker looper while playback remains active. | `AudioRecoveryTest`: temporary failure recovers without pause/play; inactivity cancels retries. |
| 13 | Release partially initialized capture objects and release even when disabling fails. | `AudioRecoveryTest`: failed configuration releases its object before retry. |
| 14 | Read call state from status fields, excluding caller names. | `CallSourceTest`: misleading names and genuine dialing status. |
| 15 | Synchronize/clamp torch strength when the active camera changes without an aggregate on/off transition. | `AdditionalSourceRegressionTest`: five-level camera to two-level camera. |
| 16 | Use the stopped chronometer's reported text instead of a repost timestamp. | `ChronometerRegressionTest`: repeated posting of a paused stopwatch. |
| 17 | Anchor wall-clock chronometers to elapsed realtime; preserve native elapsed bases and anchors across card rebuilds. | `ChronometerRegressionTest`: forward/backward wall-clock correction and running/countdown clocks. |
| 18 | Check session playback type before applying local headphone metadata; react to audio-info callbacks. | `MediaTimingTest`: remote playback and local-to-remote transition. |
| 19 | Bind delayed banner dismissal to the exact current card and posting; observe new pin decisions before list snapshots arrive. | `HeadsUpDelayedPostingTest`: replacement posting, declined replacement and positive retry control. |
| 20 | Mark an OTP copied and shorten its popup only after a successful clipboard write. | `AdditionalSourceRegressionTest`: unavailable clipboard and successful copy. |

## Report of 11 findings

| # | Fix | Regression coverage |
| --- | --- | --- |
| 1 | Seed the aggregate torch toggle state during initial camera callbacks. | `AdditionalElevenSourceTest`: initially on, then first off. |
| 2 | Keep the sign of real current measurements; do not replace net discharge with a positive estimate. | `AdditionalElevenSourceTest`, `ChargingSourceTest`: negative current and power, zero-current estimation. |
| 3 | Offer a content intent as Stop only when the status explicitly says tapping stops recording; otherwise retain normal app opening. | `RecorderNotificationSourceTest`: open-only intent and existing tap-to-stop case. |
| 4 | Select end/decline/answer/speaker actions by meaning instead of position. | `CallCardBuilderTest`: mute before hangup and reordered ringing controls. |
| 5 | Prefer the app's speaker action; reserve Samsung's broadcast fallback for Samsung packages and use communication-device APIs elsewhere. | `CallCardBuilderTest`: Google Dialer speaker action executes without a Samsung broadcast. |
| 6 | Remove detached RemoteViews from caches before attempting replacement inflation. | `RemoteCardsRecoveryTest`: reapply and apply both fail, then a valid update attaches again. |
| 7 | Keep cover history and palette per session, including its user, and scope delayed art invalidation to that session. | `MediaTimingTest`: two sessions of the same app with matching track names and different/missing art. |
| 8 | Match the Bluetooth route address first; use a display name only when it uniquely identifies a connected device. | `AdditionalElevenSourceTest`: duplicate names, exact/missing/unknown addresses and disconnection. |
| 9 | Open the free-form editor only for free-form inputs; validate each result against its input contract before sending. Choice-only actions use the app's own UI. | `ReplyInputConstraintsTest`: arbitrary vs allowed choice, ordinary text and data-only input. |
| 10 | Forward indeterminate progress to the live card and include it in change detection. | `AdditionalElevenSourceTest`: loading state toggles without numeric progress. |
| 11 | Keep ordinary app filtering while delivering OTP and promoted live activities according to the documented exceptions. | `AppFilterScopeTest`: controller snapshot, direct heads-up OTP, blocked ordinary message and promoted activity. |

## Validation limits

The regression suite runs the production Java classes with Robolectric or Android service doubles. The clock-correction test injects the wall-clock reading while advancing Android's elapsed clock independently. No physical device was attached; OEM audio routing, live Bluetooth identity, notification pin timing and rendering still require device confirmation.

Previously chosen policies remain: different notification keys represent separate orders with a visible cap of three; closing Quick Panel restarts the full popup duration. No release version was bumped by this patch.

Final checks: 426 release unit tests passed, no failures/errors/skips; release lint reported no errors; release APK assembly passed. Translation validation and all four translation-tool tests passed (729 source strings).
