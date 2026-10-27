#!/sbin/sh
set -eu
PAYLOAD=/tmp/unica-note9-spen-v5
BASE=/data/adb/unica-spen-v5
SERVICE=/data/adb/service.d/90-unica-spen-v5.sh
MODE=${1:-install}
die() { echo "S Pen v5: ERROR: $*" >&2; exit 1; }
case "$(getprop ro.bootloader)" in N960F*|N960N*) ;; *) die 'Only Note9 supported';; esac
[ -d /data/adb ] || die 'Mount/decrypt Data in TWRP; KernelSU data is required for the logger'
for path in /data/adb /data/adb/service.d "$BASE" "$SERVICE"; do [ ! -L "$path" ] || die 'Unexpected logger path symlink'; done
if [ "$MODE" = restore ]; then
    [ -f "$BASE/installed" ] || die 'No installed v5 diagnostic patch'
    [ ! -d "$BASE/session-lock" ] || die 'Logger is running; restore from TWRP after reboot'
    # Native restore preflight must pass before changing logger startup.
    /sbin/sh "$PAYLOAD/native-install.sh" restore
    if [ -f "$SERVICE" ]; then mv "$SERVICE" "$BASE/service.disabled"; fi
    if [ -f "$BASE/armed" ]; then mv "$BASE/armed" "$BASE/armed.disabled"; fi
    mv "$BASE/installed" "$BASE/installed.disabled"
    sync
    echo 'v5 disabled, previous native libraries restored. Collected logs retained.'
    exit 0
fi
[ "$MODE" = install ] || die 'Unknown mode'
[ -x /data/adb/ksud ] || [ -x /data/adb/ksu/bin/ksud ] || die 'KernelSU daemon missing; automatic diagnostic logger cannot run'
(cd "$PAYLOAD" && sha256sum -c logger.sha256) || die 'Logger payload verification failed'
if [ -f "$BASE/installed" ]; then
    [ ! -d "$BASE/session-lock" ] || die 'Session in progress; no changes'
    current_hash=$(sha256sum "$BASE/collect.sh" | cut -d ' ' -f 1)
    case "$current_hash" in ad630c0a858b6e62b234a0c452f56178e40ee4423f3576a561eed1a369a80b04|47dda0ca700c5f10bccd888178bad2805b0df50ab2f12529ea23d14d90a3dc0e) ;; *) die 'Existing collector differs';; esac
    [ "$(sha256sum "$SERVICE" | cut -d ' ' -f 1)" = 8cf1905c68078853951c24a65a860a62ba08bbe4ef537699cd48fdfd88309b5d ] || die 'Existing startup differs'
    /sbin/sh "$PAYLOAD/native-install.sh" install
    if [ "$current_hash" != ad630c0a858b6e62b234a0c452f56178e40ee4423f3576a561eed1a369a80b04 ]; then
        [ ! -e "$BASE/collect.before-dumpstate.sh" ] || die 'Previous logger backup exists'
        cp -p "$BASE/collect.sh" "$BASE/collect.before-dumpstate.sh"
        cp "$PAYLOAD/collect.sh" "$BASE/collect.upgrade"
        chmod 0700 "$BASE/collect.upgrade"
        chown 0:0 "$BASE/collect.upgrade"
        chcon u:object_r:system_file:s0 "$BASE/collect.upgrade" || die 'Cannot label upgraded logger'
        [ "$(sha256sum "$BASE/collect.upgrade" | cut -d ' ' -f 1)" = ad630c0a858b6e62b234a0c452f56178e40ee4423f3576a561eed1a369a80b04 ] || die 'Upgraded logger checksum failed'
        mv "$BASE/collect.upgrade" "$BASE/collect.sh"
    fi
    echo armed > "$BASE/armed"
    echo 'v5 verified; one new session armed for next boot.'
    exit 0
fi
[ ! -e "$BASE" ] && [ ! -e "$SERVICE" ] || die 'Existing v5 path without valid installation marker; preserve and inspect'
mkdir -p /data/adb/service.d
mkdir "$BASE"
chmod 0700 "$BASE"
cp "$PAYLOAD/collect.sh" "$BASE/collect.sh"
cp "$PAYLOAD/service.sh" "$BASE/service.staged"
chmod 0700 "$BASE/collect.sh" "$BASE/service.staged"
chown -R 0:0 "$BASE"
chcon -R u:object_r:system_file:s0 "$BASE" || die 'Cannot label diagnostic scripts'
NATIVE_COMMITTED=0
rollback() {
    code=$?
    if [ "$code" -ne 0 ] && [ "$NATIVE_COMMITTED" = 1 ]; then
        /sbin/sh "$PAYLOAD/native-install.sh" restore || echo 'Native rollback needs inspection; save recovery.log'
        if [ -f "$SERVICE" ]; then mv "$SERVICE" "$BASE/service.failed" || true; fi
    fi
}
trap rollback EXIT
/sbin/sh "$PAYLOAD/native-install.sh" install
NATIVE_COMMITTED=1
mv "$BASE/service.staged" "$SERVICE"
echo 'UN1CA S Pen v5 diagnostics, one-session, local-only' > "$BASE/installed"
echo armed > "$BASE/armed"
sync
trap - EXIT
echo 'Notes test fix and one-shot S Pen logger installed. Reboot, unlock and test now.'
echo 'DO NOT Format Data or clear Notes storage. Bluetooth and rendering fixes remain under investigation.'
