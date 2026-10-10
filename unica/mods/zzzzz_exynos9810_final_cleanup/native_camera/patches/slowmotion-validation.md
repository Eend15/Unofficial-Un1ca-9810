# Exynos9810 native slow-motion transport

The One UI 8 Super Slow-Mo maker used `SINGLE_FRC` and sent `[960, 960]`
as the ordinary AE target range. The legacy driver rejected `VIDIOC_S_PARM`
with EINVAL when this range reached FLITE. The 2L3 kernel has separate
`EX_DUALFPS_960` sensor modes: the transport is 60 fps, with a sensor-DRAM
burst selected through Samsung's FRS controls.

## Implementation

- `SuperSlowMotionPresenter.isFrcSupported()` selects the native `SINGLE`
  path instead of frame-rate conversion.
- `SuperSlowMotionVideoMaker.setPublicSetting()` translates only
  `CONTROL_AE_TARGET_FPS_RANGE` to `[60, 60]`. Session recording min/max FPS
  remain 960. All other keys use the inherited setter.
- No changes to the ordinary Slow Motion maker, recording resolutions,
  encoder settings or third-party Camera2 clients.
- Remove the experimental S9+ HAL overrides of the global preview frame
  rate, Samsung-client predicate and SSM request handling. Restore the
  original request error and partial-metadata callbacks. The already present
  photo, portrait and flush recovery changes are retained.

The common prebuilt APK contains the adaptation. Its exact SHA-256 is checked
by `customize.sh` before installation for all three targets. The repeatable
smali patch is `restore_native_slowmotion.py`; apply it to the decoded current
One UI 8 APK, rebuild, align and sign with the ROM platform key, then update
the payload hash. The script refuses unknown override implementations.

## Device validation, 2026-10-10

Tested on the USB-connected S9+ running Android 16:

- Preview: `SSM_SHOT_MODE(2)`, AE `[60,60]`, FLITE denominator 60.
- Recording session still supplies Samsung recording min/max FPS 960.
- Two manual bursts complete hardware FRS start, state 2 -> 3 -> 4,
  FRS stop, video save and preview restart.
- Saved files on external storage:
  `20261010_121756.mp4` and `20261010_121848.mp4`.
- First file: H.264, 1280x720, 412 frames, 13.733333 seconds at 30-fps
  playback. Playback FPS is not the burst capture FPS.
- No `onCameraDeviceError` or missing-timestamp failure during these tests.
  Intentional unused-stream buffer errors still occur; their original HAL
  accounting is retained rather than suppressed.
- Ordinary Slow Motion retains AE `[240,240]` and FLITE denominator 240.
  `20261010_122022.mp4` saves 6,086 encoded video frames from about 25 seconds
  of capture, with about 203 seconds of slowed playback.
- `verify_camera_targets.py` passes for starlte, star2lte and crownlte;
  shell syntax validation passes. S9 and Note9 hardware were not available
  for an actual sensor-burst test.

No kernel replacement, global FPS cap or callback suppression is needed.
