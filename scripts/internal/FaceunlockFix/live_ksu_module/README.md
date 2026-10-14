# Temporary FaceunlockFix KernelSU module (experimental live test)

This is **not** a complete ROM, nor a flashable ZIP. It overlays only
`/system/framework/services.jar` on the next boot, preserving the ROM's
original file below the KernelSU mount. No Noble Camera Probe APK is present.

**Recovery/rollback**: from rooted Android or TWRP, create the file
`/data/adb/modules/faceunlockfix_speed/disable` and reboot. If Android
bootloops, use TWRP's root shell to create that `disable` marker or rename
the `faceunlockfix_speed` module directory before reboot; *do not wipe data*.

Only stage a candidate that passes full `check_all.sh`, defined-class
retention, Android ART getter/callback tests, and on-device SHA-256 matching.
Never stage the quarantined Oct 13 bootloop SHA `8f9549e3...`.

The **optional, source-only** `post-fs-data.sh` (not part of the currently
staged test module) creates a marker on the first trial boot;
if the phone cold-reboots and reaches KernelSU's early script a second time,
it writes `disable` so a subsequent boot loads the unmodified system JAR.
This is best-effort protection, **not** a guaranteed watchdog: failed
`system_server` may not cause a full reboot, and manual TWRP rollback remains
the required fallback. Remove this script/marker only after successful testing.

This mechanism is explicitly a boot-time framework update; it cannot hot-swap
already-loaded `system_server` classes. A reboot and genuine manual Keyguard
face unlocks are necessary to measure an end-user latency gain.
