#!/sbin/sh

set -e

ROOT=/tmp/exynos9810
WORK="$ROOT/bootlogger-work"
BB="$ROOT/kernel/floyd/tools/busybox"
MAGISKBOOT="$ROOT/kernel/floyd/tools/magiskboot"
INIT_WRAPPER="$ROOT/bootlogger-init"
BOOT=/dev/block/platform/11120000.ufs/by-name/BOOT

[ -e "$BOOT" ] || BOOT=/dev/block/sda10
[ -x "$BB" ] || { echo "E9810: bootlogger busybox missing"; exit 1; }
[ -x "$MAGISKBOOT" ] || { echo "E9810: bootlogger magiskboot missing"; exit 1; }
[ -x "$INIT_WRAPPER" ] || { echo "E9810: bootlogger init wrapper missing"; exit 1; }

rm -rf "$WORK"
mkdir -p "$WORK/ramdisk"
dd if="$BOOT" of="$WORK/old-boot.img" bs=4096
cd "$WORK"
"$MAGISKBOOT" unpack old-boot.img

cd "$WORK/ramdisk"
"$BB" cpio -idmu < "$WORK/ramdisk.cpio"
mv -f ./init ./init.real
cp -f "$INIT_WRAPPER" ./init
chmod 0755 ./init
chmod 0755 ./init.real

"$BB" find . -print | "$BB" cpio -o -H newc > "$WORK/ramdisk.cpio"
cd "$WORK"
"$MAGISKBOOT" repack -n old-boot.img

boot_size="$($BB blockdev --getsize64 "$BOOT" 2>/dev/null || echo 0)"
case "$boot_size" in
    ''|*[!0-9]*) boot_size=0 ;;
esac
[ "$boot_size" -gt 0 ] || boot_size="$(wc -c < old-boot.img)"
new_boot_size="$(wc -c < new-boot.img)"
[ "$new_boot_size" -le "$boot_size" ] || {
    echo "E9810: Logger boot image exceeds BOOT partition"
    exit 1
}

dd if=new-boot.img of="$BOOT" bs=4096 count=$(( (new_boot_size + 4095) / 4096 )) conv=fsync
sync
echo "E9810: persistent boot logger installed"
