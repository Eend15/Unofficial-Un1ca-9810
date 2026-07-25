#!/sbin/sh

set -e

PAYLOAD=/tmp/exynos9810/ds_ack/floyd
KERNEL_NAME_FILE=/tmp/exynos9810/kernel_name

ui_print()
{
    echo "$1"
}

detect_device()
{
    cmdline="$(cat /proc/cmdline 2>/dev/null)"
    bootloader="$(getprop ro.boot.bootloader 2>/dev/null || true)"
    model="$(getprop ro.boot.em.model 2>/dev/null || true)"

    case "$cmdline $bootloader $model" in
        *G960F*) echo G960F ;;
        *G965F*) echo G965F ;;
        *N960F*) echo N960F ;;
        *G960N*) echo G960N ;;
        *G965N*) echo G965N ;;
        *N960N*) echo N960N ;;
        *) return 1 ;;
    esac
}

install_pair()
{
    device="$1"

    cd "$PAYLOAD"
    case "$device" in
        G960F)
            cp G960F-kernel kernel
            cp G960F-dtb extra
            ;;
        G965F)
            ./tools/bsdiff G960F-kernel kernel G965F-kernel
            ./tools/bsdiff G960F-dtb extra G965F-dtb
            ;;
        N960F)
            ./tools/bsdiff G960F-kernel kernel N960F-kernel
            ./tools/bsdiff G960F-dtb extra N960F-dtb
            ;;
        G960N)
            ./tools/bsdiff G960F-kernel kernel G960N-kernel
            ./tools/bsdiff G960F-dtb extra G960N-dtb
            ;;
        G965N)
            ./tools/bsdiff G960F-kernel kernel G965N-kernel
            ./tools/bsdiff G960F-dtb extra G965N-dtb
            ;;
        N960N)
            ./tools/bsdiff G960F-kernel kernel N960N-kernel
            ./tools/bsdiff G960F-dtb extra N960N-dtb
            ;;
        *)
            return 1
            ;;
    esac
}

if [ ! -d "$PAYLOAD" ]; then
    ui_print "E9810: Kernel payload missing"
    exit 1
fi

chmod 755 "$PAYLOAD"/tools/* || true
kernel_name="Exynos9810 kernel payload"
[ -f "$KERNEL_NAME_FILE" ] && kernel_name="$(cat "$KERNEL_NAME_FILE")"

device="$(detect_device)" || {
    ui_print "E9810: Unsupported Exynos9810 bootloader/model"
    exit 1
}

bb="$PAYLOAD/tools/busybox"
boot="$("$bb" find /dev/block/platform -iname boot | head -n 1)"
if [ -z "$boot" ] || [ ! -e "$boot" ]; then
    ui_print "E9810: BOOT block device not found"
    exit 1
fi

ui_print "$kernel_name installer"
ui_print "Detected $device"

install_pair "$device"

rm -rf /tmp/floydKernel
mkdir -p /tmp/floydKernel
cd /tmp/floydKernel
cp "$PAYLOAD/tools/magiskboot" imgtool
chmod 755 imgtool

dd if="$boot" of=old-boot.img bs=4096
./imgtool unpack old-boot.img
rm -f kernel extra
cp "$PAYLOAD/kernel" kernel
cp "$PAYLOAD/extra" extra
./imgtool repack -n old-boot.img
dd if=new-boot.img of="$boot" bs=4096

sync
ui_print "$kernel_name installed"
