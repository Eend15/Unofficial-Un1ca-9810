# Exynos9810 aperture: native scrollable Camera item

The lower aperture control is a real item in Samsung Camera's existing
QuickSettingMainList RecyclerView. ApertureAdapterItems inserts exactly one
marked Camera model immediately after MOTION_PHOTO_MENU. All later models move
one position; the native adapter, ViewHolder, item decoration and layout manager
provide item size, scrolling, clipping and bar visibility. There is no separate
fixed lower button, reserved end slot, custom scrolling container or overlay.

The native holder's StrokedTextView displays AUTO / F1.5 / F2.4. AUTO is white
at 11 dp; manual values use SecNumFixedSemiBold (weight 600) and Camera's native
quick_setting_indicator_ev_text_size dimension (11.699982 dp in 16.0.00.74).
The original 40 dp image background supplies touch press feedback without a
permanent circle/focus halo. The stock 46 dp native row item remains the full
hit area. An upper indicator is managed separately in the native header area.

## Native model and recycling

The runtime clones the native Motion Photo model, gives the clone a private
marker and distinct stable ID, and inserts it immediately after the original.
The clone never dispatches Motion Photo actions. Only this model is intercepted
by the full/payload binders; normal rows use Samsung's original binder. Recycled
custom holders restore native click/key listeners, label layout and image state
before normal binding. The orientation hook uses Camera's rotation animation.
Repeated list refreshes remove duplicate marked models and preserve all genuine
models and their order. Only the main rear camera is eligible: Camera2 must
report both physical apertures 1.5 and 2.4. Fixed front/telephoto lenses never
receive a fabricated control. Each target retains its own camera HAL/vendor.

## Hardware and AUTO

Manual requests use the active Samsung Maker's setPublicSetting with
CaptureRequest.LENS_APERTURE and restartPreviewRepeating. AUTO restores the
exact native default queried before the first manual override for each Maker
(0.0 on the connected S9+), including a null default if supplied by another
native template. AE/ISO/shutter settings are not rewritten. Manual labels use
actual native LensInfo feedback. There are capture/recording guards, one pending
request and a 1.5 second recovery timeout. Native callback ownership is preserved;
engine/maker/view references are weak. No permanent service or polling is used.

## Source and verification

Shared camera finalization invokes patch_aperture.py. It validates the donor's
view, callback, engine, adapter and holder methods before changing decoded files.
Java and compiled smali hashes must match. runtime-classes.json selects exactly
the current D8 classes; obsolete generated classes are removed only from this
module's decoded build namespace. Historical source/artifact backups remain.
Normal builds use checked-in smali and require no personal SDK or Downloads
file. rebuild_runtime.py regenerates the runtime with explicit SDK/tool paths.

Run python3 test_aperture.py for controller behavior and all three target / both
filesystem patch fixtures, including repeat application. verify_aperture.py
rejects cached APKs lacking the current adapter runtime. Host fixtures do not
prove physical acceptance on S9 or Note9.

Live S9+ evidence: the hierarchy places the aperture directly under
quick_setting_main_list after Motion Photo. A swipe moved aperture from x=711
to x=363 together with its neighbor, retaining spacing. AUTO/F1.5/F2.4 requests
and lens feedback passed; the lower item was absent when the bar closed.
Mechanical iris movement and automatic bright/dark thresholds require physical
observation. Full S9/Note9 hardware acceptance is pending.
