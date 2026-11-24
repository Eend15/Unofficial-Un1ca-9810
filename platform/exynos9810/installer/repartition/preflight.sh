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
        # Unknown is not "too small": never repartition (and wipe) on a
        # size we could not read.
        echo "E9810: cannot read $name partition size"
        return 2
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

# Exit codes: 0 = layout ready, 1 = a partition is missing or too small
# (repartition needed), 2 = a size could not be read (do not repartition).
ok=0
for spec in "SYSTEM $system_size_mib" "VENDOR $vendor_size_mib" "ODM $odm_size_mib" "CACHE $cache_size_mib"; do
    # shellcheck disable=SC2086
    check_partition $spec
    rc=$?
    if [ "$rc" -eq 2 ]; then
        ok=2
    elif [ "$rc" -ne 0 ] && [ "$ok" -eq 0 ]; then
        ok=1
    fi
done

exit "$ok"
