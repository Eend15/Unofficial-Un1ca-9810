# Exynos9810 Boot Diagnostics

The late-Android recorder is a second-stage init service. It does not replace
the normal Android init flow, mount partitions, or change boot state. The
separate PID1 logger may still be installed by the kernel installer to retain
the earliest hand-off markers in kernel/sec_debug output.

The current investigation builds enable the repository-owned second-stage
logger by default. To request it explicitly:

```sh
EXYNOS9810_ENABLE_SYSTEM_BOOT_DEBUG=true \
EXYNOS9810_ENABLE_VENDOR_BOOT_TRACE=true \
    ./scripts/build_logged.sh star2lte out/logs/star2lte-debug.log \
    out/logs/star2lte-debug.status --force --build-rom-zip
```

`EXYNOS9810_ENABLE_VENDOR_BOOT_TRACE` adds harmless init phase markers to the
vendor init path. The detailed recorder starts from system init at
`post-fs-data`, when `/data` is available, without changing partitions.

Each diagnostic boot records phase markers, fstab files and device-tree fstab
metadata, AVB/verity and block-device state, keymaster/keystore/gatekeeper
services and binary hashes, init/VINTF files, SELinux, mounts, memory/PSI,
processes, dmesg, pstore, dumpsys output and live logcat. Private keystore
blobs are never copied; only their existence, labels and hashes are recorded.

The durable result is written under `/data/bootloop-logs/late_boot_*`; cache or
metadata is used only when data is not writable yet. A state monitor samples
every five seconds and full snapshots run through 600 seconds, so a reboot
after the splash leaves the last `system_server`, watchdog, power-control and
kernel state available after the next recovery boot.

Set `EXYNOS9810_ENABLE_SYSTEM_BOOT_DEBUG=false` for a release build after the
bootloop investigation is complete.
