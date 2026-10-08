# Samsung Photo processing on Exynos9810

The shipped APK remains One UI 8 Samsung Camera 16.0.00.74.
SHA256: 6d870aa5f82934b592db6841b9d59efc17b2575a7439b8872e02db3dfe0e99d2.
The installed S9+ APK matched this source payload during review on 2026-10-08.

## Source changes

Normal AutoBeautyPhotoMaker retains Samsung identification rather than setting
samsungcamera=false. The earlier bypass disabled Samsung UniHAL scenarios; it
did not bypass the hardware ISP entirely. The synthetic shutter callback used
for the bypass is removed to avoid duplicate Samsung shutter notifications.
The dedicated QrPhotoMaker keeps its direct callback route.

The current APK also makes AutoBeautyPhotoMaker's QR repeating executor a no-op
to avoid the unprovisioned MAIN_PREVIEW_CALLBACK stream. This is a functionality
limitation: automatic QR detection in normal Photo is disabled, not fully repaired.
The separate scanner route remains, but requires its own device test.

restore_photo_processing.py validates expected layouts, applies these changes
idempotently, and refuses unknown shutter/QR implementations rather than
silently accepting a partial patch.

## Three-target source verification

Run native_camera/patches/verify_camera_targets.py. It executes the actual camera
restore helper in isolated workdirs for starlte, star2lte and crownlte, verifies
target-matched 32/64-bit HALs, runs each target's LLS safeguard twice, and checks
the common APK against its build checksum. All three passed on 2026-10-08.
Metadata is stubbed for this isolated check; this is not a full ROM build or
hardware validation of S9 and Note9. Unit tests, shell syntax and whitespace
checks also pass.

## Independent artifact checks

The supplied 20261008_181606.mp4 is 2560x1440 H.264 at approximately 60 fps,
38.398 Mbps video plus 256 kbps AAC. Duration is only 2.949 seconds; this does not
prove sustained recording stability.

20261008_181855.mp4 is 1920x1080 with com.android.capture.fps=240.000000,
played at approximately 30 fps. That metadata supports a 240 fps capture setting,
but does not independently prove 240 distinct sensor frames per second.

The image script reproduces a central-region chroma metric of 4.78 for the old
photo and 1.37 for the new photo. Their region luminance means differ substantially
(65.50 versus 150.76). Scene texture and exposure affect this metric, so this is
not a controlled noise measurement or proof of stock quality or absence of artifacts.
Capture completion/PictureProcessor logs establish lifecycle completion, not
which denoising algorithms ran or a universal error-free processing guarantee.

## Unresolved stability and quality limitations

The live provider PID 8727 had 25338 sync_file descriptors with RLIMIT_NOFILE=32768.
Opening preview increased the count to 25630, then 25841; after Camera was closed
26267 remained. This supports an ongoing fence leak. The exact allocation/ownership
bug has not yet been localized to HandleImporter versus the vendor HAL. Restarting
the provider clears its resources but is recovery, not a leak fix. No automatic
restart workaround or limit increase has been added.

The low-light single-frame HAL safeguard remains because removing it previously
exhausted FLITE buffers. Full LLS/LLHDR compatibility, continuous recording stability,
and stock image-quality parity remain unverified.
