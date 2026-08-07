# Exynos9810 early boot logger

This tool creates a diagnostic BOOT image from a pulled, known-good BOOT image.
It replaces only `/init` in the ramdisk. The original binary is retained as
`/init.real`, and the wrapper starts it after collecting early kernel and mount
information. The output uses gzip for the ramdisk so it stays below the fixed
Exynos9810 BOOT partition size.

The logger tries these locations, in order:

- `/cache/UN1CA-early-boot.log`
- `/metadata/UN1CA-early-boot.log`
- `/data/local/tmp/UN1CA-early-boot.log`
- `/mnt/logger/UN1CA-early-boot.log`
- `/external_sd/UN1CA-early-boot.log`

It also attempts to mount `/dev/block/mmcblk1p1` through `/dev/block/mmcblk1p4`
at `/mnt/logger` using vfat, exfat, ext4, and f2fs.

Build and create a test image:

```sh
./build_logger.sh /tmp/early-init-logger
python3 make_logger_boot.py current_boot.img /tmp/early-init-logger boot-early-logger.img
```

From TWRP, flash `boot-early-logger.img` to the BOOT partition, boot once,
then restore the previous BOOT image. The logger normally writes
`/cache/UN1CA-early-boot.log`; it also tries the external SD card.
