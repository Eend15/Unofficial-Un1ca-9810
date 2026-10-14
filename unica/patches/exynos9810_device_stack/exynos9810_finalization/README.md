# Exynos9810 finalization

All device-specific final fixes and payloads live here, grouped by function.
The module loader includes this directory and ../exynos9810_boot_restore in
the late mods phase only for Exynos9810. build_order preserves weather -> boot
restore -> finalization -> Infinity wallpaper. No implementation or launcher
remains under unica/mods for these two device-specific modules.
