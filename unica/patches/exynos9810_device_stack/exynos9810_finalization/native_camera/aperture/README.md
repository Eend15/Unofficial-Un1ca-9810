# Exynos9810 physical aperture: native quick bar and active indicator

The Android 16 donor Camera retains a passive Pro aperture indicator but lacks
the old manual selection. This patch restores a hardware-backed F1.5/F2.4
button in the expandable quick-control bar, including ordinary Photo mode.
The shared bar/top indicator cycles AUTO → F1.5 → F2.4 → AUTO. AUTO is white; manual selections are yellow using Samsung's selected color. The manual f-number remains based on actual LensInfo feedback, not the requested value. The top indicator is prepared at presenter start and also remains visible in AUTO.
Samsung's own SecNumFixedSemiBold text appearance and selected color are used.
Both controls also use Camera's original default_ripple_effect drawable, centered
at quick_setting_button_image_size (40 dp) like the native icon buttons. The
same default_enable_alpha/default_disable_alpha resource values control content
opacity, and pressed state is cleared on disable/hide. No separate animation
timer or custom bounce is added; Android drives the stock drawable animation.
The experimental clickable Pro indicator is migrated back to stock behavior.

## Hardware route

Use the active engine/MakerHolder/Maker, not the spoofed S22 model name. Show
the control only for a rear-facing camera whose Camera2 characteristics report
both 1.5 and 2.4. Each target retains its own HAL/vendor/kernel camera setup.
Fixed-aperture front/telephoto cameras are not given fake aperture settings.

Requests use Samsung Maker.setPublicSetting(CaptureRequest.LENS_APERTURE, value)
and restartPreviewRepeating, which updates the existing preview/picture request
builders. No kernel actuator node, vendor binary, image or EXIF value is edited.
The label changes only from the native LensInfo callback; Samsung's original
listeners remain intact. Callback ownership is preserved during quick-bar
close and Camera presenter stop. Requests are blocked during capture/recording
and duplicate pending taps are suppressed, with a 1.5-second recovery timeout.
References to views/engine/Maker are weak. There is no permanent service or
scheduled polling. The pinned indicator follows real lens results and is
cleared on camera/lifecycle changes.

## Source/build integration

Shared camera finalization calls patch_aperture.py after Photo processing repair.
It validates donor methods before writing, patches quick-bar show/hide/animation
and stop paths plus the native LensInfo forwarding, then copies checked-in
runtime smali. Late show hooks save the View receiver before Samsung reuses p0.
Both apktool locals and baksmali registers are supported. Source/runtime hashes
are checked before applying. Patching is idempotent.

ApertureControl.java contains shared hardware/request helpers and the initial
controller regression coverage. QuickApertureControl.java implements the active
bar and indicator. smali/ is their compiled D8/baksmali output. Normal ROM builds
need no private SDK, live APK or Downloads file. rebuild_runtime.py regenerates
the runtime with explicitly supplied SDK/buildtools/apktool paths.

Run python3 test_aperture.py for the Java request controller and six target/fs
source-patch fixtures. Host tests are not physical acceptance on all models.

## Evidence and limits

On the connected G965F S9+, Camera 16.0.00.74, the Photo quick bar showed a
clickable F1.5 slot. A tap returned F2.4 from LensInfo and the vendor converter
logged ANDROID_LENS_APERTURE(240) for camera 0. Initial Pro trials completed
four successive 1.5/2.4 switches; the fixed front lens stayed passive at F1.7.
Final bar/indicator/font/lifecycle checks are recorded in the live audit.
HAL feedback proves the software request/result path; visual iris movement
requires physical observation. S9/Note9 acceptance is not inferred from S9+.
No shutter was triggered during the initial UI tests.

## AUTO mode (2026-10-27)

Before the first manual override for each Maker instance, capture its native
getPublicSetting(LENS_APERTURE) value. AUTO restores that exact value through
the same Maker public-setting API and restarts repeating preview; it does not
simulate automatic exposure, overwrite AE/ISO/shutter controls, or run a lux
polling loop. The connected S9+ reports a native default of 0.0. Other devices
use their own queried native default, including an absent/null template value.
A failed restart attempts to restore the preceding setting before reporting
failure. Capture/recording guards and single-pending-request suppression remain.
The source tests cover the three-state cycle, preservation of exact native
baseline values, real feedback labels and all target/filesystem fixtures.
Physical S9/Note9 acceptance and bright/dark threshold behavior remain separate.

### Indicator typography refinement

AUTO uses 11 dp. Manual F1.5/F2.4 uses Camera's own
quick_setting_indicator_ev_text_size dimension (11.699982 dp in Camera
16.0.00.74), with an 11.7 dp fallback. Both the top indicator and quick bar
retain SecNumFixedSemiBold (sec-num-fixed, weight 600), native colors and ripple
feedback. The reference photos inform the proportions; a photographed screen
cannot establish an exact font/pixel match without its original APK/resources.
