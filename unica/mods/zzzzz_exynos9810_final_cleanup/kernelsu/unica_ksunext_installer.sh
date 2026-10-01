#!/system/bin/sh

PATH=/system/bin:/system/xbin:/vendor/bin
PAYLOAD=/system/etc/unica/ksunext/KernelSUNext.apk
PACKAGE=com.rifsxd.ksunext
TAG=UN1CA-KernelSUNext

# This service runs on every boot (sys.boot_completed), so "is it installed
# right now" is not enough to decide whether to install: after the user
# deliberately uninstalls the manager, the next boot would silently put it
# back. Record that the one-time install already happened and never redo it.
STAMP=/data/adb/.unica_ksunext_installed

is_data_app()
{
    ACTIVE="$(pm path "$PACKAGE" 2>/dev/null | head -n 1)"
    case "$ACTIVE" in
        package:/data/app/*base.apk|package:/data/app/*/*/base.apk) return 0 ;;
    esac
    return 1
}

setup_adb_dir()
{
    mkdir -p /data/adb
    chmod 0700 /data/adb
    chown 0:0 /data/adb

    if [ -f /system/bin/ksud ]; then
        cp -f /system/bin/ksud /data/adb/ksud
        chmod 0755 /data/adb/ksud
        chown 0:0 /data/adb/ksud
    fi
}

crown_manager()
{
    local UID_VAL=""
    if [ -d "/data/data/$PACKAGE" ]; then
        UID_VAL="$(stat -c %u "/data/data/$PACKAGE" 2>/dev/null)"
    fi
    if [ -z "$UID_VAL" ] || [ "$UID_VAL" -le 0 ] 2>/dev/null; then
        UID_VAL="$(dumpsys package "$PACKAGE" 2>/dev/null | awk -F= '/userId=/{print $2; exit}')"
    fi
    if [ -z "$UID_VAL" ] || [ "$UID_VAL" -le 0 ] 2>/dev/null; then
        UID_VAL="$(awk -v pkg="$PACKAGE" '$1 == pkg {print $2; exit}' /data/system/packages.list 2>/dev/null)"
    fi

    if [ -n "$UID_VAL" ] && [ "$UID_VAL" -gt 0 ] 2>/dev/null; then
        log -t "$TAG" "Crowning manager UID $UID_VAL"
        if [ -x /system/bin/ksu_crown ]; then
            /system/bin/ksu_crown "$UID_VAL"
        am force-stop "$PACKAGE" 2>/dev/null
        fi
    fi

    if [ -x /data/adb/ksud ]; then
        /data/adb/ksud post-fs-data 2>/dev/null
        /data/adb/ksud services 2>/dev/null
        /data/adb/ksud boot-completed 2>/dev/null
        /data/adb/ksud install 2>/dev/null
    fi
}

setup_adb_dir

if is_data_app; then
    log -t "$TAG" "Manager already installed in /data/app"
    crown_manager
    [ -f "$STAMP" ] || { mkdir -p "$(dirname "$STAMP")" && touch "$STAMP"; }
    exit 0
fi

if [ -f "$STAMP" ]; then
    log -t "$TAG" "Manager was installed before and is now absent; respecting user uninstall"
    exit 0
fi

for ATTEMPT in 1 2 3 4 5 6; do
    if pm install -r -g --user 0 "$PAYLOAD" >/dev/null 2>&1 && is_data_app; then
        log -t "$TAG" "Installed official manager in /data/app"
        crown_manager
        mkdir -p "$(dirname "$STAMP")" && touch "$STAMP"
        exit 0
    fi
    sleep 5
done

log -p e -t "$TAG" "Failed to install manager in /data/app"
exit 1
