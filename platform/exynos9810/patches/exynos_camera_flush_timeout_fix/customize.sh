# The Exynos9810 ExynosCamera HAL (ported from a much newer donor SoC's
# camera stack) aborts the whole camera provider daemon whenever
# ExynosCamera::flush() has to wait for the pipeline to leave its RUN
# state: it polls every 100ms for only ~31 iterations (~3.1s) before
# hard-asserting via __android_log_assert(), which calls abort() and
# kills vendor.samsung.hardware.camera.provider@4.0-service outright.
#
# On this porting combination the pipeline can take longer than 3.1s to
# settle (e.g. after a shooting-mode switch, a flash toggle, or a
# front/back camera switch), so flush() would reliably crash the shared
# camera provider daemon for the whole device, not just the app.
#
# This changes the loop's iteration count from 0x1e (30) to 0xfa (250),
# i.e. from a ~3.1s to a ~25.1s timeout, giving the pipeline enough time
# to settle instead of aborting. Verified against a live device: the
# original crash reliably reproduced on shooting-mode switch/flash
# toggle/camera switch; after this patch the same sequence, repeated,
# no longer crashes the provider daemon.
#
# Corresponds to android::ExynosCamera::m_transitState(), the `case 3`
# (EXYNOS_CAMERA_STATE_RUN) branch waiting to reach state 5.
HEX_PATCH "$WORK_DIR/vendor/lib/libexynoscamera3.so" \
    "3a4d06f5296b6ff01e0478447f447d44" "3a4d06f5296b6ff0fa0478447f447d44"
