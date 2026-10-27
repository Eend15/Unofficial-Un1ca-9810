
AIR=$SYSTEM/priv-app/AirCommand/AirCommand.apk
ENGINE=$SYSTEM/app/Notes33/lib/arm64/libSPenEngine.so
APK=$SYSTEM/app/Notes33/Notes33.apk
REC=$SYSTEM/app/Notes33/lib/arm64/libSPenRecognizer.so
SCAPK=$SYSTEM/app/SmartCapture/SmartCapture.apk
SCLIBDIR=$SYSTEM/app/SmartCapture/lib
SCARCH=$SCLIBDIR/arm64
SCLIB=$SCARCH/libSPenEngine.so
BASE=/data/adb/unica-spen-v5
SERVICE=/data/adb/service.d/90-unica-spen-v5.sh
[ "$(digest "$APK")" = NOTES_SHA ] || die 'Different Notes APK; no changes'
[ "$(digest "$REC")" = REC_SHA ] || die 'Install the accepted Notes v6 crash fix first'
[ "$(digest "$ENGINE")" = ENGINE_V8 ] || die 'Install the accepted v8 S Pen test first (Notes renderer differs)'
for path in "$AIR" "$ENGINE" "$APK" "$REC" "$SCAPK" "$SCLIBDIR" "$SCARCH" "$SCLIB" "$BASE" "$SERVICE" "$BASE/collect.sh" "$BASE/armed"; do [ ! -L "$path" ] || die 'Unexpected symlink'; done
for suffix in original stage disabled failed; do [ ! -L "$AIR.unica-v9-$suffix" ] || die 'Unexpected backup symlink'; done
[ ! -L "$SCLIB.unica-v9-stage" ] || die 'Unexpected backup symlink'
AO=$AIR.unica-v9-original; AS=$AIR.unica-v9-stage; AD=$AIR.unica-v9-disabled; AF=$AIR.unica-v9-failed
SS=$SCLIB.unica-v9-stage
if [ "$MODE" = restore ]; then
    [ "$(digest "$AIR")" = AIR_NEW ] || die 'Installed v9 AirCommand differs; no changes'
    [ "$(digest "$AO")" = AIR_V8 ] || die 'v8 AirCommand backup missing or changed'
    [ ! -e "$AD" ] || die 'Disabled copy already exists; preserve and inspect'
    if [ -e "$SCLIB" ]; then [ "$(digest "$SCLIB")" = SC_NEW ] || die 'Screen write engine differs; no changes'; fi
    restore_rollback() {
        rc=$?
        if [ "$rc" -ne 0 ] && [ -f "$AD" ]; then
            if [ -f "$AIR" ] && [ ! -e "$AO" ]; then mv "$AIR" "$AO" || true; fi
            if [ ! -e "$AIR" ]; then mv "$AD" "$AIR" || true; fi
            echo 'Restore failed; reinstated v9 AirCommand where possible. Preserve recovery.log.' >&2
        fi
    }
    trap restore_rollback EXIT
    mv "$AIR" "$AD"
    mv "$AO" "$AIR"
    [ "$(digest "$AIR")" = AIR_V8 ] || die 'Restored AirCommand failed verification'
    rm -f "$AD"
    if [ -e "$SCLIB" ]; then rm -f "$SCLIB"; rmdir "$SCARCH" 2>/dev/null || true; rmdir "$SCLIBDIR" 2>/dev/null || true; fi
    [ ! -e "$SCLIB" ] || die 'Screen write engine could not be removed'
    sync; trap - EXIT
    echo 'v8 AirCommand restored and screen write engine override removed; Notes v6/v8 fixes and personal data retained.'
    exit 0
fi
[ "$MODE" = install ] || die 'Unknown mode'
[ -f "$BASE/installed" ] && [ ! -d "$BASE/session-lock" ] || die 'Known one-shot logger required; install from TWRP'
[ "$(digest "$BASE/collect.sh")" = LOGGER_SHA ] && [ "$(digest "$SERVICE")" = SERVICE_SHA ] || die 'Logger differs; no changes'
# Screen write engine is optional: only for the exact audited SmartCapture build.
SC=0
if [ -f "$SCAPK" ] && [ "$(digest "$SCAPK")" = SC_APK_SHA ]; then
    if [ ! -e "$SCLIB" ]; then SC=1
    elif [ "$(digest "$SCLIB")" = SC_NEW ]; then SC=2
    else echo 'Note: SmartCapture already has a different native engine override; screen write part skipped.'
    fi
else
    echo 'Note: SmartCapture differs from the audited build; screen write part skipped.'
fi
if [ "$(digest "$AIR")" = AIR_NEW ]; then
    [ "$(digest "$AO")" = AIR_V8 ] || die 'v9 AirCommand backup differs'
fi
if [ "$(digest "$AIR")" = AIR_NEW ] && [ "$SC" != 1 ]; then
    echo armed > "$BASE/armed"; echo 'v9 already installed and verified; existing logger rearmed.'; exit 0
fi
if [ "$(digest "$AIR")" != AIR_NEW ]; then
    [ "$(digest "$AIR")" = AIR_V8 ] || die 'Requires the v8 S Pen test AirCommand; no changes'
    for file in "$AO" "$AS" "$AD" "$AF"; do [ ! -e "$file" ] || die 'Existing v9 backup/staging; preserve and inspect'; done
fi
[ ! -e "$SS" ] || die 'Existing screen write staging file; preserve and inspect'
[ "$(digest "$PAYLOAD/AirCommand.apk")" = AIR_NEW ] && [ "$(digest "$PAYLOAD/libSPenEngine-smartcapture.so")" = SC_NEW ] || die 'Payload checksum mismatch'
need=$(du -sk "$PAYLOAD" | awk '{print $1+32768}')
free=$(df -k "$MOUNT" | tail -1 | awk '{print $4}')
[ "$free" -ge "$need" ] || die 'Insufficient System space'
AB=0; SB=0; MADE_LIB=0; MADE_ARCH=0
rollback() {
    rc=$?
    if [ "$rc" -ne 0 ]; then
        if [ "$AB" = 1 ]; then
            if [ -e "$AIR" ]; then mv "$AIR" "$AF" || true; fi
            if mv "$AO" "$AIR"; then rm -f "$AF" || true; else echo 'AirCommand rollback needs manual inspection' >&2; fi
        fi
        rm -f "$AS" "$SS" || true
        if [ "$SB" = 1 ]; then rm -f "$SCLIB" || true; fi
        if [ "$MADE_ARCH" = 1 ]; then rmdir "$SCARCH" 2>/dev/null || true; fi
        if [ "$MADE_LIB" = 1 ]; then rmdir "$SCLIBDIR" 2>/dev/null || true; fi
        sync
        echo 'v9 transaction failed; previous files restored where possible. Save recovery.log.' >&2
    fi
}
trap rollback EXIT
if [ "$(digest "$AIR")" != AIR_NEW ]; then
    cp -p "$PAYLOAD/AirCommand.apk" "$AS"
    chmod 0644 "$AS"; chown 0:0 "$AS"; chcon u:object_r:system_file:s0 "$AS" || die 'Cannot set file label'
    [ "$(digest "$AS")" = AIR_NEW ] || die 'Staged checksum mismatch'
fi
if [ "$SC" = 1 ]; then
    if [ ! -d "$SCLIBDIR" ]; then mkdir "$SCLIBDIR"; MADE_LIB=1; fi
    if [ ! -d "$SCARCH" ]; then mkdir "$SCARCH"; MADE_ARCH=1; fi
    for dir in "$SCLIBDIR" "$SCARCH"; do chmod 0755 "$dir"; chown 0:0 "$dir"; chcon u:object_r:system_file:s0 "$dir" || die 'Cannot set directory label'; done
    cp -p "$PAYLOAD/libSPenEngine-smartcapture.so" "$SS"
    chmod 0644 "$SS"; chown 0:0 "$SS"; chcon u:object_r:system_file:s0 "$SS" || die 'Cannot set file label'
    [ "$(digest "$SS")" = SC_NEW ] || die 'Staged screen write engine mismatch'
fi
if [ -e "$AS" ]; then
    mv "$AIR" "$AO"; AB=1
    mv "$AS" "$AIR"
    [ "$(digest "$AIR")" = AIR_NEW ] || die 'Final AirCommand checksum mismatch'
fi
if [ "$SC" = 1 ]; then
    mv "$SS" "$SCLIB"; SB=1
    [ "$(digest "$SCLIB")" = SC_NEW ] || die 'Final screen write engine checksum mismatch'
fi
echo armed > "$BASE/armed"
sync; trap - EXIT
echo 'v9 TEST installed: Note9 pen legacy firmware accepted by Air Actions; screen write uses normal rendering.'
echo 'Reboot System, unlock and test. DO NOT wipe data.'
