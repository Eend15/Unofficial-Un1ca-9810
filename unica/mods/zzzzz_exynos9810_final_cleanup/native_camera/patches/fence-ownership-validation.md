# Exynos9810 acquire-fence ownership

Follow-up to the native Super Slow-Mo transport fix: successful short recordings
did not exclude a cumulative descriptor leak. On 2026-10-10 the S9+ provider
PID 7908 reached 32,767 open descriptors. `HandleImporter` failed to duplicate
fence FD 31697 at 12:32:09, immediately followed by camera errorCode 4.
The leaked descriptors were `anon_inode:sync_file`, not image buffer handles.

AOSP CameraDeviceSession imports acquire fences. On a rejected request it
closes them itself; a successful request transfers responsibility to the HAL.
See [AOSP CameraDeviceSession](https://android.googlesource.com/platform/hardware/interfaces/+/master/camera/device/3.2/default/CameraDeviceSession.cpp).

## Adapter

Only camera.exynos9810.so's imported ExynosCamera::processCaptureRequest symbol
is redirected. The original function and all other symbols remain unchanged.
The adapter waits for input/output acquire fences, passes a copied request with
already satisfied acquire fences (-1) to the legacy HAL, and closes the imported
descriptors only when the HAL accepts the request. Rejections and wait failures
retain ownership in HIDL. Release fences and native buffers are untouched.

No periodic camera restart, descriptor-limit increase or recording FPS reduction
is used. The adapter applies to the camera entry for all modes, so preview,
video, slow motion and Super Slow-Mo cannot accumulate the same acquire fences.

## Rebuild and validation

`build_camera_fence_adapter.sh SYSTEM_LIB32 SYSTEM_LIB64 OUTPUT_DIR` compiles
both architectures with clang-18/lld against the ROM's libc/libdl ABI. Prebuilt
adapters are under native_camera/fence; customize.sh checks both hashes and
installs them after target HAL restoration. Update these hashes after rebuilding.
Ubuntu build hosts need patchelf; both CI setup workflows install it.

`test_camera_acquire_fence.c` tests actual descriptor ownership for accepted,
rejected, timed-out, duplicate and input-buffer fences. Compile with clang-18
and run on the host. `verify_camera_targets.py` exercises the actual build
helpers twice for all three targets, including dependency and payload checks.

Initial live validation on S9+ used provider PID 18535: after buffer allocation,
564 descriptors and 2 sync-fences remained stable between 12:37 and 12:39,
without restarting the provider. Two Super Slow-Mo files were saved:
20261010_123729.mp4 and 20261010_123928.mp4. Extended checks continue below.
S9 and Note9 hardware were unavailable; both target staging checks pass.

Extended live regression (2026-10-10, CEST): the same provider PID 18535
ran from approximately 12:36:15 through 12:44:41 without a restart.
Ordinary 240 fps slow motion recorded from 12:41:14 to 12:43:55 and saved
20261010_124114.mp4; the scanner and onVideoSaved both completed.
A subsequent Super Slow-Mo burst saved 20261010_124425.mp4 at 12:44:33.
Descriptor counts were 506 with zero sync-fences in ordinary slow motion,
and 582 with two sync-fences after returning to Super Slow-Mo. These are
mode-dependent buffer allocations, with no observed growing sync-fence count.
No CameraDeviceError or HandleImporter dup failure appeared in these checks.
This is an approximately eight-minute regression, not a multi-hour endurance
claim. Both other targets passed source staging, not hardware recording tests.

All-target integration follow-up: required target camera files now fail the
build if absent instead of silently retaining donor HALs. Dedicated
.github/workflows/camera-exynos9810.yml validates all three target stacks,
photo patch tests and native fence ownership on relevant changes.
Local validation passed all three target staging checks, photo patch tests,
fence ownership tests, shell syntax and git diff whitespace checks.
Additional S9+ photo saves completed at 12:47:16 and 12:47:22, with media
registration IDs 757 and 758. Provider PID 18535 remained unchanged and
returned to six descriptors with zero sync-fences after camera closure.
This does not establish every camera mode or image quality on S9/Note9;
physical per-target testing remains necessary. No full ROM build was run.
