# Embedded Exynos9810 audio stack

This directory contains the target-matched vendor audio payload used by the
Exynos9810 devices. The build copies only the selected target directory and
never reads a developer's Downloads directory.

Expected layout:

    starlte/vendor/...
    star2lte/vendor/...
    crownlte/vendor/...

The S9 and S9+ use the 'ver900' SoundBooster library. Note9 uses the
device-matched 'ver950' library. Mixer XML, audio firmware and HAL files are
kept per target because they are not interchangeable.

The files are intentionally kept under source control as binary prebuilts
and are copied into the final vendor image by the final Exynos9810 cleanup
module.
