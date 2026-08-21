# Exynos9810 late-boot logger

The ROM includes a second-stage init logger when
`EXYNOS9810_ENABLE_SYSTEM_BOOT_DEBUG` is enabled. It is enabled by default for
the current diagnostic builds.

The logger starts at `post-fs-data`, after `/data` is available, and records
the state that is useful for a reboot that happens after the Samsung splash:

- continuous all-buffer `logcat`;
- `system_server`, zygote, SurfaceFlinger, audio, camera, radio and bootanimation state;
- `sys.powerctl`, boot-reason and service-property transitions;
- fstab, AVB, dm/verity, mounts, init services, VINTF and keymaster metadata;
- ANR, tombstone, DropBox and pstore artifacts;
- memory, PSI, cgroup, process and kernel-warning snapshots through 600 seconds.

The durable copy is written below `/data/bootloop-logs/late_boot_*`. A cache
copy is kept for the earliest second-stage events. The PID1 boot logger remains
separate and continues to record the first-stage hand-off.

To disable the diagnostic logger for a release build, set
`EXYNOS9810_ENABLE_SYSTEM_BOOT_DEBUG=false`.
