#!/system/bin/sh

PATH=/system/bin:/system/xbin:/vendor/bin

TAG=UN1CA-LauncherDefaults
PREF_DIR=/data/user/0/com.sec.android.app.launcher/files/datastore
PREF=$PREF_DIR/com.sec.android.app.launcher.common.prefs.preferences_pb
MARKER=/data/system/unica_launcher_media_page_default
APPLIED=0
CHANGED=0

stop_launcher()
{
    cmd activity force-stop com.sec.android.app.launcher >/dev/null 2>&1 || \
        am force-stop com.sec.android.app.launcher >/dev/null 2>&1 || true
}

# Apply this only once. A later manual change in Home screen settings must be
# preserved instead of being overwritten on every boot.
[ -e "$MARKER" ] && exit 0

# Setup Wizard and PackageManager may finish creating the launcher data shortly
# after sys.boot_completed. Give the app data directory a bounded grace period.
ATTEMPT=0
while [ ! -d "$PREF_DIR" ] && [ "$ATTEMPT" -lt 30 ]; do
    sleep 1
    ATTEMPT=$((ATTEMPT + 1))
done
[ -d "$PREF_DIR" ] || exit 0

if [ -f "$PREF" ]; then
    # DataStore encodes this entry as:
    # key "pref_media_page_enabled" + 12 02 08 <bool>. Patch only <bool>.
    KEY_OFFSET=$(grep -aob 'pref_media_page_enabled' "$PREF" 2>/dev/null | \
        cut -d: -f1 | head -n 1)
    if [ -n "$KEY_OFFSET" ]; then
        HEADER_OFFSET=$((KEY_OFFSET + 23))
        HEADER=$(dd if="$PREF" bs=1 skip="$HEADER_OFFSET" count=3 2>/dev/null | \
            od -An -tx1 | tr -d ' \n')
        if [ "$HEADER" = "120208" ]; then
            APPLIED=1
            VALUE_OFFSET=$((KEY_OFFSET + 26))
            VALUE=$(od -An -tu1 -j "$VALUE_OFFSET" -N 1 "$PREF" 2>/dev/null | \
                tr -d ' \n')
            if [ "$VALUE" != "0" ]; then
                stop_launcher
                printf '\000' | dd of="$PREF" bs=1 seek="$VALUE_OFFSET" count=1 \
                    conv=notrunc 2>/dev/null || exit 1
                CHANGED=1
                log -t "$TAG" "Disabled existing One UI Home Media page preference"
            fi
        fi
    fi
fi

if [ "$APPLIED" -eq 0 ]; then
    # Minimal valid Preferences DataStore fallback for a clean first boot where
    # Home has not created its file yet. The package value keeps the stock
    # Google provider selectable if the user enables the page later.
    DEFAULT_B64='Ch0KF3ByZWZfbWVkaWFfcGFnZV9lbmFibGVkEgIIAApEChdwcmVmX21lZGlhX3BhZ2VfcGFja2FnZRIpKidjb20uZ29vZ2xlLmFuZHJvaWQuZ29vZ2xlcXVpY2tzZWFyY2hib3g='
    TMP="$PREF.unica"
    stop_launcher
    printf '%s' "$DEFAULT_B64" | base64 -d > "$TMP" || exit 1

    OWNER=
    if [ -f "$PREF" ]; then
        OWNER=$(stat -c '%u:%g' "$PREF" 2>/dev/null)
    else
        LAUNCHER_UID=$(cmd package list packages -U 2>/dev/null | \
            sed -n 's/^package:com.sec.android.app.launcher uid:\([0-9]*\).*$/\1/p' | \
            head -n 1)
        [ -n "$LAUNCHER_UID" ] && OWNER="$LAUNCHER_UID:$LAUNCHER_UID"
    fi
    [ -n "$OWNER" ] || { rm -f "$TMP"; exit 1; }
    chown "$OWNER" "$TMP" || { rm -f "$TMP"; exit 1; }
    chmod 0600 "$TMP"
    restorecon "$TMP" 2>/dev/null || true
    mv -f "$TMP" "$PREF" || { rm -f "$TMP"; exit 1; }
    CHANGED=1
    log -t "$TAG" "Created One UI Home defaults with Media page disabled"
fi

mkdir -p /data/system
printf '1\n' > "$MARKER"
chmod 0600 "$MARKER"
restorecon "$MARKER" 2>/dev/null || true

if [ "$CHANGED" -eq 1 ]; then
    restorecon "$PREF" 2>/dev/null || true
    sleep 1
    am start -a android.intent.action.MAIN -c android.intent.category.HOME >/dev/null 2>&1 || true
fi

exit 0
