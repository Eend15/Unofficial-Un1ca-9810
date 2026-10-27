
AIR=$SYSTEM/priv-app/AirCommand/AirCommand.apk
ENGINE=$SYSTEM/app/Notes33/lib/arm64/libSPenEngine.so
APK=$SYSTEM/app/Notes33/Notes33.apk
REC=$SYSTEM/app/Notes33/lib/arm64/libSPenRecognizer.so
BASE=/data/adb/unica-spen-v5
SERVICE=/data/adb/service.d/90-unica-spen-v5.sh
[ "$(digest "$APK")" = NOTES_SHA ] || die 'Different Notes APK; no changes'
[ "$(digest "$REC")" = REC_SHA ] || die 'Install the accepted Notes v6 crash fix first'
for path in "$AIR" "$ENGINE" "$APK" "$REC" "$BASE" "$SERVICE" "$BASE/collect.sh" "$BASE/armed"; do [ ! -L "$path" ] || die 'Unexpected symlink'; done
for file in "$AIR" "$ENGINE"; do
    for suffix in original stage disabled failed; do [ ! -L "$file.unica-v8-$suffix" ] || die 'Unexpected backup symlink'; done
done
AO=$AIR.unica-v8-original; EO=$ENGINE.unica-v8-original
AS=$AIR.unica-v8-stage; ES=$ENGINE.unica-v8-stage
AD=$AIR.unica-v8-disabled; ED=$ENGINE.unica-v8-disabled
AF=$AIR.unica-v8-failed; EF=$ENGINE.unica-v8-failed
if [ "$MODE" = restore ]; then
    [ "$(digest "$AIR")" = AIR_NEW ] && [ "$(digest "$ENGINE")" = ENGINE_NEW ] || die 'Installed v8 files differ; no changes'
    [ "$(digest "$AO")" = AIR_OLD ] && [ "$(digest "$EO")" = ENGINE_OLD ] || die 'Original backups missing or changed'
    [ ! -e "$AD" ] && [ ! -e "$ED" ] || die 'Disabled copies already exist; preserve and inspect'
    restore_rollback() {
        rc=$?
        if [ "$rc" -ne 0 ]; then
            if [ -f "$AD" ]; then
                if [ -f "$AIR" ] && [ ! -e "$AO" ]; then mv "$AIR" "$AO" || true; fi
                if [ ! -e "$AIR" ]; then mv "$AD" "$AIR" || true; fi
            fi
            if [ -f "$ED" ]; then
                if [ -f "$ENGINE" ] && [ ! -e "$EO" ]; then mv "$ENGINE" "$EO" || true; fi
                if [ ! -e "$ENGINE" ]; then mv "$ED" "$ENGINE" || true; fi
            fi
            echo 'Restore failed; reinstated v8 pair where possible. Preserve recovery.log.' >&2
        fi
    }
    trap restore_rollback EXIT
    mv "$AIR" "$AD"; mv "$ENGINE" "$ED"
    mv "$AO" "$AIR"; mv "$EO" "$ENGINE"
    [ "$(digest "$AIR")" = AIR_OLD ] && [ "$(digest "$ENGINE")" = ENGINE_OLD ] || die 'Restored files failed verification'
    sync; trap - EXIT
    echo 'Pre-v8 AirCommand and Notes engine restored; accepted v6 recognition fix and personal data retained.'
    exit 0
fi
[ "$MODE" = install ] || die 'Unknown mode'
[ -f "$BASE/installed" ] && [ ! -d "$BASE/session-lock" ] || die 'Known one-shot logger required; install from TWRP'
[ "$(digest "$BASE/collect.sh")" = LOGGER_SHA ] && [ "$(digest "$SERVICE")" = SERVICE_SHA ] || die 'Logger differs; no changes'
if [ "$(digest "$AIR")" = AIR_NEW ] && [ "$(digest "$ENGINE")" = ENGINE_NEW ]; then
    [ "$(digest "$AO")" = AIR_OLD ] && [ "$(digest "$EO")" = ENGINE_OLD ] || die 'v8 original backups differ'
    echo armed > "$BASE/armed"; echo 'v8 pair verified; existing logger rearmed.'; exit 0
fi
[ "$(digest "$AIR")" = AIR_OLD ] && [ "$(digest "$ENGINE")" = ENGINE_OLD ] || die 'Requires the audited v6 state, with no v7 trial installed'
for file in "$AO" "$EO" "$AS" "$ES" "$AD" "$ED" "$AF" "$EF"; do [ ! -e "$file" ] || die 'Existing v8 backup/staging; preserve and inspect'; done
[ "$(digest "$PAYLOAD/AirCommand.apk")" = AIR_NEW ] && [ "$(digest "$PAYLOAD/libSPenEngine.so")" = ENGINE_NEW ] || die 'Payload checksum mismatch'
need=$(du -sk "$PAYLOAD" | awk '{print $1+32768}')
free=$(df -k "$MOUNT" | tail -1 | awk '{print $4}')
[ "$free" -ge "$need" ] || die 'Insufficient System space'
cp -p "$PAYLOAD/AirCommand.apk" "$AS"; cp -p "$PAYLOAD/libSPenEngine.so" "$ES"
for file in "$AS" "$ES"; do chmod 0644 "$file"; chown 0:0 "$file"; chcon u:object_r:system_file:s0 "$file" || die 'Cannot set file label'; done
[ "$(digest "$AS")" = AIR_NEW ] && [ "$(digest "$ES")" = ENGINE_NEW ] || die 'Staged checksum mismatch'
AB=0; EB=0
rollback() {
    rc=$?
    if [ "$rc" -ne 0 ]; then
        if [ "$AB" = 1 ]; then
            if [ -e "$AIR" ]; then mv "$AIR" "$AF" || true; fi
            mv "$AO" "$AIR" || echo 'AirCommand rollback needs manual inspection' >&2
        fi
        if [ "$EB" = 1 ]; then
            if [ -e "$ENGINE" ]; then mv "$ENGINE" "$EF" || true; fi
            mv "$EO" "$ENGINE" || echo 'Notes engine rollback needs manual inspection' >&2
        fi
        sync
        echo 'v8 transaction failed; previous files restored where possible. Save recovery.log.' >&2
    fi
}
trap rollback EXIT
mv "$AIR" "$AO"; AB=1
mv "$ENGINE" "$EO"; EB=1
mv "$AS" "$AIR"; mv "$ES" "$ENGINE"
[ "$(digest "$AIR")" = AIR_NEW ] && [ "$(digest "$ENGINE")" = ENGINE_NEW ] || die 'Final checksum mismatch'
echo armed > "$BASE/armed"
sync; trap - EXIT
echo 'v8 TEST installed: saved-address direct GATT plus Notes normal rendering.'
echo 'No connection or ink success is assumed. Reboot System, unlock and test. DO NOT wipe data.'
