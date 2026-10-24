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
    cmd package wait-for-handler --timeout 30000 >/dev/null 2>&1 || return 1
    # Ask PackageManager for the installed UID and verify its actual signing
    # lineage against the official release certificate before granting access.
    # This also supports official signed manager upgrades, not look-alike APKs.
    UID_VAL="$(CLASSPATH=/system/etc/unica/ksunext/KernelSUManagerVerifier.jar \
        app_process /system/bin com.un1ca.kernelsu.KernelSUManagerVerifier 2>/dev/null)" || return 1
    [ -n "$UID_VAL" ] && [ "$UID_VAL" -ge 10000 ] && [ "$UID_VAL" -lt 100000 ] 2>/dev/null || return 1
    [ -x /system/bin/ksu_crown ] || return 1
    # Package updates must not stop a working manager or repeat ksud's boot
    # hooks. The event service repairs only a genuinely missing registration.
    # Boot-completed and CE unlock may both start us. A verified registration
    # is already sufficient; do not force-stop a manager the user just opened.
    if /system/bin/ksu_crown --check "$UID_VAL"; then
        return 0
    fi
    # The built-in kernel injects ksud's ordered init actions at post-fs-data,
    # nonencrypted/decrypt and boot-completed. Manager registration can run
    # again at CE unlock: replaying those hooks here runs module startup twice
    # and attempts early mount work after Android has already booted.
    log -t "$TAG" "Registering verified manager UID $UID_VAL"
    /system/bin/ksu_crown "$UID_VAL" || return 1
    am force-stop "$PACKAGE" 2>/dev/null
    return 0
}

if [ "${1:-}" = "--repair" ]; then
    # Never reinstall an absent/uninstalled manager from the guardian.
    is_data_app || exit 0
    crown_manager --repair
    exit $?
fi

setup_adb_dir

if is_data_app; then
    log -t "$TAG" "Manager already installed in /data/app"
    crown_manager || exit 1
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
        crown_manager || exit 1
        mkdir -p "$(dirname "$STAMP")" && touch "$STAMP"
        exit 0
    fi
    sleep 5
done

log -p e -t "$TAG" "Failed to install manager in /data/app"
exit 1
