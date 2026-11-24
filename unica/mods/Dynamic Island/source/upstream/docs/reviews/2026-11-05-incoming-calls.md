# Incoming call banner and Samsung mini-window follow-up

Reference: https://github.com/sampple-korea/dynamicisland/issues/39 and the follow-up reports that callers are visible only after tapping the pill, or disappear after a few seconds.

The existing fix sends Samsung InCallUI's package-targeted `ACTION_HIDE_MINI_MODE_CALL_VIEW` broadcast. It does not create a persistent incoming-call announcement. `AutoOpenCards` is optional and does not cover call cards. The inspected One UI 9 `SamsungOngoingCallController` also explicitly filters for `CallType.Ongoing`, so an incoming notification cannot depend on that controller to create its card.

## Changes

- Read incoming `Notification.CallStyle` state directly from the notification, including caller Person/name/photo and answer/decline intents. For older native call notifications, require native ringing state and no running chronometer. Ongoing and screening call styles stay on their existing paths.
- Feed both notification snapshots and early heads-up pin decisions into this source. Announce the caller and answer/decline controls automatically, independently of ordinary notification auto-open settings.
- Keep the incoming banner expanded while its source is ringing. Answer, rejection and notification removal end that presentation. Explicit user dismissal is respected; notification reposts do not reopen the same call repeatedly.
- Support classic and iMotion presentation. A reply editor or open Quick Panel defers the announcement. The existing charging popup priority is retained, with the ringing banner resumed after that interruption.
- Suppress a stock SystemUI heads-up only while the matching incoming card is displayed. Deduplicate matching native/OA/VoIP copies by exact notification identity, preserving unrelated calls.
- Keep answer/decline glyph design unchanged. Prefer the supplied PendingIntents; Telecom fallback is restricted to native calls in the current user.
- Extend the existing bounded Samsung mini-window hide burst from 1 second to 5 seconds, covering a receiver/window created after the first burst. Notification removal still cancels pending attempts, and unchanged snapshots do not restart the burst.

## Verification and limits

`IncomingCallSourceTest`, `IncomingCallBannerTest`, `IncomingCallControllerTest` and `SamsungCallPopupTakeoverTest` cover caller/actions, early pin decisions, automatic opening with ordinary auto-open disabled, classic/iMotion timers, answer transition, dismissal, charging interruption, reply/Quick Panel deferral, exact deduplication, late Samsung receiver creation and cancellation.

These are production-code tests under Robolectric. No physical phone was attached. The Samsung mini-window still uses the previously selected close-after-creation API, so it cannot guarantee that the native window never paints a frame. This patch adds no InCallUI hook or LSPosed scope and does not claim device-level confirmation of zero flicker.

Final validation: all 435 release unit tests passed (no failures, errors or skips), release lint reported no errors and release APK assembly passed.
