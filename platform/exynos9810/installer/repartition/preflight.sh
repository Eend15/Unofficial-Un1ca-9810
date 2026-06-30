#!/sbin/sh

BLOCK=/dev/block/platform/11120000.ufs/by-name
TOLERANCE=$((16 * 1024 * 1024))

mib()
{
    echo $(($1 * 1024 * 1024))
}

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

size_of()
{
    node="$1"
    size="$(blockdev --getsize64 "$node" 2>/dev/null)"
    [ -n "$size" ] || size="$(busybox blockdev --getsize64 "$node" 2>/dev/null)"
    if [ -z "$size" ]; then
        real="$(readlink -f "$node" 2>/dev/null)"
        dev="$(basename "$real" 2>/dev/null)"
        sectors="$(cat "/sys/class/block/$dev/size" 2>/dev/null)"
        [ -n "$sectors" ] && size=$((sectors * 512))
    fi
    echo "$size"
}

check_partition()
{
    name="$1"
    required="$2"
    node="$BLOCK/$name"

    if [ ! -e "$node" ]; then
        echo "E9810: missing $name partition"
        return 1
    fi

    actual="$(size_of "$node")"
    if [ -z "$actual" ]; then
        echo "E9810: cannot read $name partition size"
        return 1
    fi

    minimum=$((required - TOLERANCE))
    if [ "$actual" -lt "$minimum" ]; then
        echo "E9810: $name is too small: $actual < $required"
        return 1
    fi

    echo "E9810: $name ok: $actual"
    return 0
}

target="$(detect_target "$1")"
system_size="$(mib 9500)"
vendor_size="$(mib 1300)"
cache_size="$(mib 600)"
odm_size="$(mib 700)"

if [ "$target" = "crownlte" ]; then
    odm_size="$(mib 860)"
    cache_size="$(mib 520)"
fi

ok=0
check_partition SYSTEM "$system_size" || ok=1
check_partition VENDOR "$vendor_size" || ok=1
check_partition ODM "$odm_size" || ok=1
check_partition CACHE "$cache_size" || ok=1

exit "$ok"
