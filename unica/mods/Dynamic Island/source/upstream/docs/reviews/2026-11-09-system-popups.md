# Samsung popup follow-up

Base: `9fa218e` (0.1.17-dev2). Reviewed the two November 9 recordings against the
available One UI 9 SystemUI APK and the earlier InCallUI inspection. This is a
code/automated-test result, not physical-device confirmation.

## Evidence and changes

- In the 10.44-second recording, the native incoming-call window appears around
  5.5 seconds, followed by a compact incoming-call pill. In the 8.28-second
  recording, horizontal dragging pages activity content instead of dismissing a
  notification popup. The screenshot also shows an Edge Lighting brief bubble
  over a separate island notification card.
- The existing notification takeover uses the island's window, foreground-app
  rules, fullscreen suppression, popup lifetime and activity pager. Those are
  appropriate for the existing island option but are not a stock popup engine.
- Added an optional fourth notification presentation: **System pop-ups with
  island styling**. It styles the actual native heads-up child in place. The
  original view, notification wrappers, dimensions, app icons, PendingIntent
  listeners, remote input, parent SwipeHelper, row animations and HeadsUpManager
  lifetime remain in charge. Expanded native reply views receive the same
  material; their drafts, selection, disabled states and click handlers survive.
  Classic and Frosted materials follow the existing appearance selection.
- In this mode the island's ordinary/OTP popup scans, banner removal/retries and
  pin-decision overrides are bypassed. The foreground and fullscreen island
  preferences do not decide whether the native popup appears. A notification
  the stock system declines is not fabricated by scanning the notification list.
- Samsung's brief popup is a different renderer in `com.android.systemui:edgelighting`.
  The module now installs only a small bridge in that process, inside the existing
  SystemUI scope. At `EdgeLightingScheduler.-$$Nest$mstartNotiEffect` (older builds:
  `startNotiEffect`), Samsung has already accepted/scheduled the alert. The bridge
  uses the real `SystemUIConditionListenerService.turnToHeadsUp` operation used by
  the brief popup's expand button. It waits for native pinning before discarding
  the brief effect; a failed bind replays the original native draw within 600 ms.
  Removed/replaced notifications and service destruction cancel pending work.
- Screen-off/AOD, turnover lighting, locked or other-user profiles, sanitized
  content and app-locked content retain their native brief rendering. Unsupported
  APIs also retain the native presentation. Ordinary detailed heads-up decisions
  are not overridden to force a notification through these policies.
- The in-app restart command now includes the separate Edge Lighting process.
- The legacy Samsung call feed marked ringing calls as ordinary CALL items. It
  now carries incoming-call identity and the persistent announcement flag too;
  the dedicated notification source wins when both exist. Explicit answer and
  decline actions can identify older incoming notifications before the native
  ringing callback arrives. Caller controls stay expanded while ringing and the
  fallback banner can be swiped away without rejecting the call. Samsung's
  app-owned mini-window is hidden only after the replacement is displayed.
- Native heads-up rows take precedence over the fallback incoming banner. Live
  activity shade-card replacement also yields while a native popup owns its row.
- Sports team-letter placeholders and call app-icon shape preservation were
  already in dev2 and are included/checked. Added coverage for a blank team logo
  without a replacement letter, preserving the missing team's score slot.
- Connection notices and music output labels now share Bluetooth device-class
  classification. Car audio gets a car, speakers get a speaker, identified
  headsets get headphones, and an unknown/handsfree device gets Bluetooth rather
  than an assumed earbud icon. Display names are not used to guess device type.

## Verification

Production-code tests cover native view identity/clicks, both swipe directions,
reply drafts/selection, expanded remote input, enabled states, native alpha,
settings restoration, rebinding and visible material painting. Hook callback
tests use test-only Xposed parameter transport; native hook installation is not
simulated or claimed. The brief bridge tests cover an actual handoff callback,
sanitization deferral, delayed binding, failure fallback and stale cancellation.
Existing incoming-call, icon-shape, sports and iMotion tests are retained.

Device follow-up must still check Samsung firmware hook attachment, the two
processes using the new APK, real call/Edge window timing, foreground-chat and
fullscreen delivery, native swipe dismissal and native reply focus. InCallUI's
previously selected close-after-creation broadcast can still allow an initial
frame of its app-owned mini-window; no new InCallUI scope or zero-flash guarantee
is introduced. Brief popups are presented as native detailed heads-up cards,
using that native presenter and its lifetime rather than a cloned brief-window
timer or island pager.

Final automated validation: 472 release unit tests passed (0 failures/errors/skips),
release lint completed without errors, release APK assembly passed, translation
validation passed and all four translation-tool tests passed. The signed local
artifact is `DynamicIsland-0.1.17-popup-test1.apk` (version code 121). APK inspection
confirmed both new production popup implementations and no packaged test Xposed
transport classes; APK signature verification passed.
