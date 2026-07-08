#!/sbin/sh

BLOCK=/dev/block/platform/11120000.ufs/by-name
TOLERANCE_MIB=16

detect_target()
{
    case "$1" in
        starlte|star2lte|crownlte)
            echo "$1"
            return
            ;;
    esac

    bootloader="$(getprop ro.boot.bootloader 2>/dev/null)"
    case "$bootloader" in
        *N960*|*N965*)
            echo crownlte
            ;;
        *G965*)
            echo star2lte
            ;;
        *)
            echo starlte
            ;;
    esac
}

size_mib_of()
{
    node="$1"
    sectors="$(blockdev --getsz "$node" 2>/dev/null)"
    [ -n "$sectors" ] || sectors="$(busybox blockdev --getsz "$node" 2>/dev/null)"
    if [ -z "$sectors" ]; then
        real="$(readlink -f "$node" 2>/dev/null)"
        dev="$(basename "$real" 2>/dev/null)"
        sectors="$(cat "/sys/class/block/$dev/size" 2>/dev/null)"
    fi
    [ -n "$sectors" ] || return 1
    echo $((sectors / 2048))
}

check_partition()
{
    name="$1"
    required_mib="$2"
    node="$BLOCK/$name"

    if [ ! -e "$node" ]; then
        echo "E9810: missing $name partition"
        return 1
    fi

    actual_mib="$(size_mib_of "$node")" || {
        echo "E9810: cannot read $name partition size"
        return 1
    }

    minimum_mib=$((required_mib - TOLERANCE_MIB))
    if [ "$actual_mib" -lt "$minimum_mib" ]; then
        echo "E9810: $name is too small: ${actual_mib}MiB < ${required_mib}MiB"
        return 1
    fi

    echo "E9810: $name ok: ${actual_mib}MiB"
    return 0
}

target="$(detect_target "$1")"
system_size_mib=9500
vendor_size_mib=1300
cache_size_mib=600
odm_size_mib=700

if [ "$target" = "crownlte" ]; then
    odm_size_mib=860
    cache_size_mib=520
fi

ok=0
check_partition SYSTEM "$system_size_mib" || ok=1
check_partition VENDOR "$vendor_size_mib" || ok=1
check_partition ODM "$odm_size_mib" || ok=1
check_partition CACHE "$cache_size_mib" || ok=1

exit "$ok"
