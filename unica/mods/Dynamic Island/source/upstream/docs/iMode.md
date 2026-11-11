# iMotion

iMotion is an optional presentation under **Appearance → Animation → iMotion**. It is off by default.
The existing modern and legacy stack presentations remain available. Changing the selection is live;
installing a different module APK still requires restarting SystemUI to load its new code.

The transition is based on the [reference in issue #11](https://github.com/sampple-korea/dynamicisland/issues/11),
reviewed as 339 decoded frames. The reference is a roughly 24 fps recording, so its exact spring
constants and display refresh timing cannot be recovered from the video.

## Behavior

- Tap the long capsule or the circular bubble to unfold that activity from its current position and size.
- One activity is expanded at a time. The other activities trade places in a long capsule and a bubble.
- When changing activities, the previous card folds toward its own compact destination while the next
  card expands. Their surfaces overlap; the transition does not wait for an empty intermediate state.
- Position, width, height and compact/bubble content change together. Text, artwork, waveform and
  controls blur in motion; the surface outline remains separate from foreground blur.
- Existing card bodies, controls and the selected classic/frosted material are reused. Low performance
  mode retains its existing policy of disabling foreground blur.
- Rapid reversals reuse the same card and preserve its current geometry, velocity and content handoff.
- Swipe left or right on the compact row or expanded card to move through **all** activities, including
  minimized sources. Sources are deduplicated by stable key; there is no four-item selection limit.
- Expanded-card swipes preview the neighbouring page under the finger. Release distance and velocity
  select a commit or return; both surfaces inherit release velocity and preserve their gap. A swipe
  does not restart the tap animation from the status row. Native controls can retain their own drag.
- Compact-row swipes track the finger inside one capsule and one bubble. Slot outlines remain
  separate while old/new contents move and blur within them; hidden activities do not paint overlapping
  bubble outlines. A short drag or system cancellation returns to the current activity. A new tap
  during settling unfolds from the currently painted slot bounds.
- Expanded-page swipes use the same progress and release velocity for the status row and the moving
  panels. The row previews its new contents during the drag instead of rearranging independent
  capsules after release. Unchanged slots retain their content without crossfading or unnecessary
  blur. Both the single remaining header and a header with overflow activities use this handoff.
- The slot bodies also follow the finger with a bounded lateral pull and small deformation. Independent
  springs return their position and shape after release without discarding the current geometry.
- New compact surfaces grow and fade into their destination. Removed sources shrink and fade at
  their last position; returning sources reverse the existing motion instead of being seeded again.
- Swipe upward on the compact row to temporarily hide the entire presentation. A short slow drag does
  nothing; a quick flick hides it after a short move, and it leaves faster the faster it was thrown.
  Pull down near the camera hole to restore the compact row. This preserves every source and priority,
  blocks automatic popup reveals while hidden, and keeps the hidden state across sleep and source
  updates. The invisible restore hotspot is disabled on the lock/sleep/shade paths that suppress
  normal input.
- Swipe upward on an expanded card to fold it back into the compact row (the island stays). The card
  follows the finger; on release it folds when the swipe went far enough, counting where the finger
  was heading, otherwise it springs back, and a quick flick folds it at once. The fold carries the
  speed of the swipe.
- With more activities than fit in the row, the bubble shows a remaining count. With more than three
  total activities, the open card also shows its position in the activity list.
- Native custom notification layouts retain their buttons and sliders. A horizontal swipe can switch
  activities; a child control that requests ownership of its drag retains it.
- Priority/list refreshes preserve the selected activity. If that source ends, the next available source
  can take over; a withdrawn automatic popup closes instead.
- Shade, lock, sleep, auto-collapse, popup dismissal and reply ownership use the existing host lifecycle.
- The quick-panel gate gathers both compact slots into the camera-hole anchor before fading. Merged
  silhouettes omit their internal outlines; the secondary slot no longer becomes a dot at its old position.

## Implementation

`IMode` owns presentation state only. It does not reorder the controller's sources or dismiss ordinary
notifications. `Director` selects this presentation from the saved preference and releases its surfaces
when switching back to the normal stack. Incoming/outgoing cards retain the existing `BodyFactory`,
native blur slots, material renderer and RemoteViews layer.

The compact row uses response 0.34 s and damping ratio 0.90. Card width, height and position have separate
responses: width settles nearly monotonically and height has a small rebound. Corners morph continuously
from capsule to panel. Foreground crossfades are reversible; iMotion's returning compact content resolves
within about 280 ms. Activity planes remain stable (timer above media above generic app content), and
moving custom RemoteViews are drawn within the card's foreground blur before native interaction resumes.
Frosted iMotion surfaces also interpolate their perimeter exponent from the compact circle (2.0) to
the full G2 panel (2.4). Shader coverage, curved lighting, content clipping and overlay outlines use
that same geometry. Other material callers retain their original full-panel G2 perimeter. The last
small native frame no longer remains a squircle before the compact node takes over.
Icon opacity is composited per occurrence on the canvas. Mutating a shared Android VectorDrawable's
alpha can retroactively fade its other display-list occurrences, leaving the leading icon missing
after the pill's text has already resolved. A native vector regression covers this handoff.
Compositor luma sampling remains registered over a stable potential row even while there are no
activities, throughout card motion and during temporary hiding. It no longer follows changing content
widths or waits until the presentation is compact. Invisible contrast state settles immediately instead
of leaving a paused outline spring to resume during the next appearance. Visible changes retain a fade.
The pill contrast outline is painted in the island overlay on the same exterior contour during both
compact and native-card rendering. It fades continuously into the material's own rim as the card opens,
then returns while the card is still folding. This also applies to frosted surfaces, whose intrinsic
edge lighting previously replaced the pill outline until the native slot was released. Nearer surfaces
occlude departing outlines. Explicit outline visibility preferences remain respected.
Compact width follows its content/cutout and the user's size limits. No screen-percentage width is forced.
The compact halo travels with unfolding/folding surfaces; album colour follows the surface's opening
instead of waiting for the foreground crossfade or card removal. Existing music-session fades are retained.
At most three card surfaces are retained during rapid switching; compact metadata remains available
for every source. Finished surfaces release their native blur slot, material and foreground display lists.

`IModeTest` exercises bubble origins, concurrent transitions, reversals, source withdrawal, popup
ownership, more than four activities, custom RemoteViews gestures, shade/sleep cleanup, live mode
changes, 60/120 Hz stepping and native hardware foreground recording. The settings test selects all
three styles through the actual settings UI and checks search routing and the unchanged default.
Opt-in native captures show both three-activity and eight-activity cases. OEM compositor/device
validation is still needed before treating the motion as a final match on a physical phone.
