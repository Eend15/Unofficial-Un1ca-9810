#!/sbin/sh

SELF_DIR="$(dirname "$0")"
DISK=/dev/block/sda

find_sgdisk()
{
    for bin in "$SELF_DIR/sgdisk" /system/bin/sgdisk /sbin/sgdisk /tmp/sgdisk; do
        if [ -x "$bin" ] && "$bin" --version >/dev/null 2>&1; then
            echo "$bin"
            return 0
        fi
    done

    return 1
}

SGDISK="$(find_sgdisk)" || {
    echo "E9810: sgdisk binary not found"
    exit 1
}

case "$1" in
    crownlte)
        systemsize=9500
        vendorsize=1300
        odmsize=860
        cachesize=520
        ;;
    starlte|star2lte|"")
        systemsize=9500
        vendorsize=1300
        odmsize=700
        cachesize=600
        ;;
    *)
        echo "E9810: unsupported target $1"
        exit 1
        ;;
esac

partno()
{
    "$SGDISK" --print "$DISK" | awk -v name="$1" '$NF == name { print $1; exit }'
}

partsize()
{
    "$SGDISK" --print "$DISK" | awk -v name="$1" '$NF == name { print $4 $5; exit }' | sed 's/\.[0-9]*//g'
}

cp_debug="$(partno CP_DEBUG)"
hidden="$(partno HIDDEN)"
odm="$(partno ODM)"
omr="$(partno OMR)"
vendor="$(partno VENDOR)"

syspart="$(partno SYSTEM)"
datapart="$(partno USERDATA)"
cachepart="$(partno CACHE)"
diskcode="$("$SGDISK" --print "$DISK" | awk '$NF == "SYSTEM" { print $6; exit }')"

if [ -z "$syspart" ] || [ -z "$datapart" ] || [ -z "$cachepart" ] || [ -z "$diskcode" ]; then
    echo "E9810: required partition metadata missing"
    exit 1
fi

if [ -n "$vendor" ]; then
    vendorpart="$(partno VENDOR)"
fi
if [ -n "$odm" ]; then
    odmpart="$(partno ODM)"
fi
if [ -n "$omr" ]; then
    omrpart="$(partno OMR)"
    if [ "$omrpart" -gt "$syspart" ]; then
        omrsize="$(partsize OMR)"
    fi
fi
if [ -n "$hidden" ]; then
    hiddenpart="$(partno HIDDEN)"
    if [ "$hiddenpart" -gt "$syspart" ]; then
        hiddensize="$(partsize HIDDEN)"
    fi
fi
if [ -n "$cp_debug" ]; then
    cpdebugpart="$(partno CP_DEBUG)"
    if [ "$cpdebugpart" -gt "$syspart" ]; then
        cpdebugsize="$(partsize CP_DEBUG)"
    fi
fi

# Keep all changes in one sgdisk transaction. Separate invocations previously
# wrote an incomplete GPT after every deletion and ignored intermediate errors.
set -- --delete="$syspart"
[ -n "$vendor" ] && set -- "$@" --delete="$vendorpart"
[ -n "$odm" ] && [ "$odmpart" -gt "$syspart" ] && set -- "$@" --delete="$odmpart"
set -- "$@" --delete="$cachepart"
[ -n "$omr" ] && [ "$omrpart" -gt "$syspart" ] && set -- "$@" --delete="$omrpart"
[ -n "$hidden" ] && [ "$hiddenpart" -gt "$syspart" ] && set -- "$@" --delete="$hiddenpart"
[ -n "$cp_debug" ] && [ "$cpdebugpart" -gt "$syspart" ] && set -- "$@" --delete="$cpdebugpart"
set -- "$@" --delete="$datapart"

set -- "$@" --new=0:0:+"${systemsize}"Mib --typecode=0:"$diskcode" --change-name=0:SYSTEM
set -- "$@" --new=0:0:+"${vendorsize}"Mib --typecode=0:"$diskcode" --change-name=0:VENDOR
[ -n "$odm" ] && [ "$odmpart" -gt "$syspart" ] && set -- "$@" --new=0:0:+"${odmsize}"Mib --typecode=0:"$diskcode" --change-name=0:ODM
set -- "$@" --new=0:0:+"${cachesize}"Mib --typecode=0:"$diskcode" --change-name=0:CACHE
[ -n "$hidden" ] && [ "$hiddenpart" -gt "$syspart" ] && set -- "$@" --new=0:0:+"$hiddensize" --typecode=0:"$diskcode" --change-name=0:HIDDEN
[ -n "$omr" ] && [ "$omrpart" -gt "$syspart" ] && set -- "$@" --new=0:0:+"$omrsize" --typecode=0:"$diskcode" --change-name=0:OMR
[ -n "$cp_debug" ] && [ "$cpdebugpart" -gt "$syspart" ] && set -- "$@" --new=0:0:+"$cpdebugsize" --typecode=0:"$diskcode" --change-name=0:CP_DEBUG
set -- "$@" --new=0:0:0 --typecode=0:"$diskcode" --change-name=0:USERDATA

# --pretend executes the same geometry operations in memory without writing.
if ! "$SGDISK" --pretend "$@" "$DISK"; then
    echo "E9810: invalid repartition plan; disk unchanged"
    exit 1
fi
if ! "$SGDISK" --backup="$SELF_DIR/gpt-before-repartition.bin" "$DISK"; then
    echo "E9810: cannot back up GPT; disk unchanged"
    exit 1
fi
if ! "$SGDISK" "$@" "$DISK"; then
    echo "E9810: GPT write failed; backup: $SELF_DIR/gpt-before-repartition.bin"
    exit 1
fi

sync
exit 0
