#!/system/bin/sh

PATH=/system/bin:/system/xbin:/vendor/bin
PAYLOAD=/system/etc/unica/ksunext/KernelSUNext.apk
PACKAGE=com.rifsxd.ksunext
TAG=UN1CA-KernelSUNext

is_data_app()
{
    ACTIVE="$(pm path "$PACKAGE" 2>/dev/null | head -n 1)"
    case "$ACTIVE" in
        package:/data/app/*/base.apk) return 0 ;;
    esac
    return 1
}

if is_data_app; then
    log -t "$TAG" "Manager already installed in /data/app"
    exit 0
fi

for ATTEMPT in 1 2 3 4 5 6; do
    if pm install -r -g --user 0 "$PAYLOAD" >/dev/null 2>&1 && is_data_app; then
        log -t "$TAG" "Installed official manager in /data/app"
        exit 0
    fi
    sleep 5
done

log -p e -t "$TAG" "Failed to install manager in /data/app"
exit 1
