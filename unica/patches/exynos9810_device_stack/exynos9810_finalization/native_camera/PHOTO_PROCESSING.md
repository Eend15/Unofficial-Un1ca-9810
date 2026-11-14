# Photo Mode Processing & QR Detection Architecture

## Samsung Photo Identification
The Exynos 9810 legacy HAL relies on One UI Camera's standard `AutoBeautyPhotoMaker`
and `PhotoMakerBase` pipelines to initialize Samsung scene processing (`[SEC Preview Scene]`
and `[SEC Still Scene]`). Bypassing `AutoBeautyPhotoMaker` is avoided so full post-processing,
scene optimization, and physical dual-aperture switching operate normally.

## Shutter Callback Normalization
The legacy camera HAL already emits `SHUTTER_RECEIVED` via Camera2 `onCaptureStarted`
when a capture request begins. Redundant synthetic shutter callbacks in `PhotoMakerBase`
and `sendCaptureAvailable` were eliminated to prevent duplicate shutter callbacks from triggering
app error `-10`.

## Photo Mode Preview-Surface QR Detection
In standard photo mode, Samsung's repeating `REPEATING_KEY_QR_CODE_DETECTION` was designed
to request frames over `MAIN_PREVIEW_CALLBACK` (`YUV_420_888 ImageReader`). Under the
custom UniHAL stream manager configuration for Exynos 9810, binding an auxiliary preview
callback stream alongside preview and capture can cause frame buffer starvation and freeze
the preview.

To enable smooth, non-blocking QR code detection in Photo mode:
1. `REPEATING_KEY_QR_CODE_DETECTION` returns `0` to keep the repeating request lightweight
   and prevent UniHAL preview stalling.
2. In `AutoBeautyPhotoMaker.onPreviewResult`, preview frame capture results periodically
   feed frames to `SaivQRCodeNode`.
3. `SaivQRCodeNode` implements `PixelCopy.OnPixelCopyFinishedListener` and `Runnable`.
   It reads the live `mainPreviewSurface` via non-blocking hardware `PixelCopy.request()`,
   throttled by the built-in interval timer (1500 ms).
4. Frame recognition is processed asynchronously on `BackgroundPreviewNodeBase`'s thread pool
   using `QRBarcodeDecoder.process(Bitmap)`.
5. Upon QR detection, recognized bounds and payload are passed directly to `SaivQRCodeNodeCallback`
   (`onQRCodeDetected`), smoothly driving the One UI QR popup and focus rectangle.

`restore_photo_processing.py` applies these smali patches idempotently and validates
the structure via `test_restore_photo_processing.py`.
