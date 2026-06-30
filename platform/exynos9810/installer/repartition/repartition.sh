#!/sbin/sh

SELF_DIR="$(dirname "$0")"
SGDISK="$SELF_DIR/sgdisk"
[ -x "$SGDISK" ] || SGDISK=/tmp/sgdisk
DISK=/dev/block/sda

if [ ! -x "$SGDISK" ]; then
    echo "E9810: sgdisk binary not found"
    exit 1
fi

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
    "$SGDISK" --print "$DISK" | awk -v name="$1" '$0 ~ name { print $1; exit }'
}

partsize()
{
    "$SGDISK" --print "$DISK" | awk -v name="$1" '$0 ~ name { print $4 $5; exit }' | sed 's/\.[0-9]*//g'
}

delete_part()
{
    [ -n "$1" ] && "$SGDISK" --delete="$1" "$DISK"
}

cp_debug="$(partno CP_DEBUG)"
hidden="$(partno HIDDEN)"
odm="$(partno ODM)"
omr="$(partno OMR)"
vendor="$(partno VENDOR)"

syspart="$(partno SYSTEM)"
datapart="$(partno USERDATA)"
cachepart="$(partno CACHE)"
diskcode="$("$SGDISK" --print "$DISK" | awk '/SYSTEM/ { print $6; exit }')"

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

delete_part "$syspart"
[ -n "$vendor" ] && delete_part "$vendorpart"
[ -n "$odm" ] && [ "$odmpart" -gt "$syspart" ] && delete_part "$odmpart"
delete_part "$cachepart"
[ -n "$omr" ] && [ "$omrpart" -gt "$syspart" ] && delete_part "$omrpart"
[ -n "$hidden" ] && [ "$hiddenpart" -gt "$syspart" ] && delete_part "$hiddenpart"
[ -n "$cp_debug" ] && [ "$cpdebugpart" -gt "$syspart" ] && delete_part "$cpdebugpart"
delete_part "$datapart"

"$SGDISK" --new=0:0:+"${systemsize}"Mib --typecode=0:"$diskcode" --change-name=0:SYSTEM "$DISK"
"$SGDISK" --new=0:0:+"${vendorsize}"Mib --typecode=0:"$diskcode" --change-name=0:VENDOR "$DISK"
[ -n "$odm" ] && [ "$odmpart" -gt "$syspart" ] && "$SGDISK" --new=0:0:+"${odmsize}"Mib --typecode=0:"$diskcode" --change-name=0:ODM "$DISK"
"$SGDISK" --new=0:0:+"${cachesize}"Mib --typecode=0:"$diskcode" --change-name=0:CACHE "$DISK"
[ -n "$hidden" ] && [ "$hiddenpart" -gt "$syspart" ] && "$SGDISK" --new=0:0:+"$hiddensize" --typecode=0:"$diskcode" --change-name=0:HIDDEN "$DISK"
[ -n "$omr" ] && [ "$omrpart" -gt "$syspart" ] && "$SGDISK" --new=0:0:+"$omrsize" --typecode=0:"$diskcode" --change-name=0:OMR "$DISK"
[ -n "$cp_debug" ] && [ "$cpdebugpart" -gt "$syspart" ] && "$SGDISK" --new=0:0:+"$cpdebugsize" --typecode=0:"$diskcode" --change-name=0:CP_DEBUG "$DISK"
"$SGDISK" --new=0:0:0 --typecode=0:"$diskcode" --change-name=0:USERDATA "$DISK"

sync
exit 0
