#!/system/bin/sh
# UN1CA Note9 diagnostic session v5. Local only, one armed run, read-only probes.
umask 077
BASE=/data/adb/unica-spen-v5
[ "$(id -u)" = 0 ] || exit 1
case "$(getprop ro.bootloader)" in N960F*|N960N*) ;; *) exit 1;; esac
[ -f "$BASE/armed" ] || exit 0
mkdir "$BASE/session-lock" 2>/dev/null || exit 0
RUN=
cleanup() { rmdir "$BASE/session-lock" 2>/dev/null; }
trap cleanup EXIT
# Wait at most five minutes for Android and credential-encrypted media.
i=0
while [ "$i" -lt 150 ]; do
    if [ "$(getprop sys.boot_completed)" = 1 ] && [ "$(getprop sys.user.0.ce_available)" = true ]; then break; fi
    sleep 2; i=$((i+1))
done
[ "$(getprop sys.boot_completed)" = 1 ] || exit 1
[ "$(getprop sys.user.0.ce_available)" = true ] || exit 1
STAMP=$(date +%Y%m%d-%H%M%S)
RUN=$BASE/session-$STAMP
[ ! -e "$RUN" ] || exit 1
mkdir "$RUN" || exit 1
mv "$BASE/armed" "$RUN/armed-used" || exit 1
exec >> "$RUN/collector.txt" 2>&1
echo "UN1CA S Pen v5 session started $(date); collection lasts about 8 minutes"
echo 'Read-only diagnostics; no BLE charge/reset commands, permission grants or policy changes.'
bounded() { timeout 15 "$@"; code=$?; [ "$code" = 0 ] || echo "probe exit=$code command=$1"; return 0; }
FILTER='AirCmd|Wacom|wacom|sec_epen|BleSpen|BleScan|bt_stack|bt_btif|bt_btm|bt_gatt|BluetoothLeScanner|BluetoothGatt|ScanManager|GattService|Spen|SPen|ScreenOffMemo|screenoffmemo|spe_log|libSPen|Scudo|Fatal signal|FATAL EXCEPTION|tombstoned|avc: denied|BufferQueue|BLASTBufferQueue|gralloc|GraphicBuffer|EGL|OpenGLRenderer|SurfaceFlinger'
snapshot() {
    tag=$1
    {
      date; uname -a; getenforce
      for key in ro.unica.version ro.bootloader ro.build.fingerprint ro.build.version.sdk ro.smps.enable persist.bluetooth.btsnooplogmode persist.bluetooth.btsnoopdefaultmode; do echo "$key=$(getprop "$key")"; done
      for f in /system/app/Notes33/Notes33.apk /system/app/Notes33/lib/arm64/libSPenRecognizer.so /system/app/Notes33/lib/arm64/libc++_shared.so /system/priv-app/AirCommand/AirCommand.apk; do sha256sum "$f"; done
      bounded dumpsys package com.samsung.android.app.notes
      bounded dumpsys package com.samsung.android.service.aircommand
    } > "$RUN/$tag-packages.txt" 2>&1
    bounded dumpsys bluetooth_manager > "$RUN/$tag-bluetooth.txt" 2>&1
    bounded dumpsys activity service com.android.bluetooth/.gatt.GattService > "$RUN/$tag-gatt-service.txt" 2>&1
    bounded cmd appops get com.samsung.android.service.aircommand > "$RUN/$tag-aircommand-appops.txt" 2>&1
    {
      for key in location_denylist_name location_denylist_mac location_denylist_advertising_data; do
        echo "--- bluetooth/$key"; bounded device_config get bluetooth "$key"
      done
      bounded cmd location is-location-enabled --user 0
    } > "$RUN/$tag-scan-policy.txt" 2>&1
    bounded dumpsys gfxinfo com.samsung.android.app.notes framestats > "$RUN/$tag-notes-frames.txt" 2>&1
    bounded dumpsys SurfaceFlinger --list > "$RUN/$tag-surfaces.txt" 2>&1
    bounded dumpsys power > "$RUN/$tag-power.txt" 2>&1
    bounded dumpsys input > "$RUN/$tag-input-devices.txt" 2>&1
    bounded settings get system air_cmd_with_pen_button > "$RUN/$tag-pen-button.txt" 2>&1
}
snapshot start
i=0
while [ "$i" -lt 32 ]; do
    [ ! -f "$BASE/stop" ] || break
    # Snapshots overlap intentionally, preserving context around process restarts.
    bounded logcat -b main,system,crash -v threadtime -t 3000 | grep -E "$FILTER" | tail -n 1800 > "$RUN/logcat-$i.txt"
    bounded dmesg | grep -Ei 'wacom|sec_input.*epen|ble_charge|avc: denied.*(epen|aircommand|notes)|mali.*(error|fault)|gpu.*fault' | tail -n 1500 > "$RUN/kernel-$i.txt"
    {
      date
      for node in epen_firm_version epen_insert epen_wcharging_mode pen_out_count abnormal_reset_count i2c_fail_count; do
        path=/sys/class/sec/sec_epen/$node
        echo "--- $node"; if [ -r "$path" ]; then timeout 2 cat "$path"; else echo 'unavailable'; fi
      done
    } >> "$RUN/wacom-state.txt" 2>&1
    size=$(du -sk "$RUN" | awk '{print $1}')
    [ "${size:-0}" -lt 32768 ] || { echo '32MiB collection cap reached'; break; }
    sleep 15; i=$((i+1))
done
snapshot end
mkdir "$RUN/notes-tombstones"
count=0
for t in $(ls -t /data/tombstones/tombstone_* 2>/dev/null); do
    case "$t" in *.pb) continue;; esac
    if head -n 20 "$t" | grep -q '^Cmdline: com.samsung.android.app.notes$'; then
        bytes=$(wc -c < "$t")
        if [ "$bytes" -lt 2097152 ]; then cp "$t" "$RUN/notes-tombstones/"; count=$((count+1)); fi
        [ "$count" -lt 4 ] || break
    fi
done
# Existing HCI trace only: never enable global snoop settings or copy key databases.
for hci in /data/misc/bluetooth/logs/btsnoop_hci.log /data/misc/bluedroid/btsnoop_hci.log; do
    if [ -f "$hci" ]; then
        bytes=$(wc -c < "$hci")
        if [ "$bytes" -lt 20971520 ]; then cp "$hci" "$RUN/btsnoop_hci.log"; else echo 'Existing HCI file exceeds 20MiB; not copied'; fi
        break
    fi
done
# Native Android dumpstate: bugreportz returns OK:<completed ZIP path> only
# after dumpstate finishes. A partial or failed report is never called complete.
echo 'Starting full Android dumpstate/bugreport; this may take several minutes.'
free=$(df -k "$BASE" | tail -n 1 | awk '{print $4}')
report_ok=0
report_rc=127
if [ "${free:-0}" -ge 1048576 ]; then
    if command -v bugreportz >/dev/null 2>&1; then
        timeout 600 bugreportz -p > "$RUN/bugreportz-progress.txt" 2> "$RUN/bugreportz-stderr.txt"
        report_rc=$?
        report=$(sed -n 's/^OK://p' "$RUN/bugreportz-progress.txt" | tail -n 1 | tr -d '\r')
        case "$report" in
            /data/user_de/0/com.android.shell/files/bugreports/*.zip|/data/bugreports/*.zip|/bugreports/*.zip)
                if [ "$report_rc" = 0 ] && [ -f "$report" ] && [ ! -L "$report" ] && [ -s "$report" ]; then
                    if cp "$report" "$RUN/dumpstate.zip.partial"; then
                        source_hash=$(sha256sum "$report" | cut -d ' ' -f 1)
                        copy_hash=$(sha256sum "$RUN/dumpstate.zip.partial" | cut -d ' ' -f 1)
                        if [ "$source_hash" = "$copy_hash" ]; then
                            mv "$RUN/dumpstate.zip.partial" "$RUN/dumpstate.zip"
                            echo 'SUCCESS: native Android dumpstate ZIP, completed by bugreportz and copy hash verified.' > "$RUN/dumpstate-status.txt"
                            report_ok=1
                        fi
                    fi
                fi;;
        esac
    fi
    if [ "$report_ok" = 0 ] && [ "$report_rc" != 124 ] && [ "$report_rc" != 137 ] && command -v dumpstate >/dev/null 2>&1; then
        timeout 600 dumpstate > "$RUN/dumpstate.log.partial" 2> "$RUN/dumpstate-stderr.txt"
        report_rc=$?
        if [ "$report_rc" = 0 ] && grep -Eq '^Build fingerprint:|^------ SYSTEM LOG|^DUMP OF SERVICE' "$RUN/dumpstate.log.partial"; then
            mv "$RUN/dumpstate.log.partial" "$RUN/dumpstate.log"
            echo 'SUCCESS: native Android dumpstate text fallback completed.' > "$RUN/dumpstate-status.txt"
            report_ok=1
        fi
    fi
else
    echo 'Less than 1GiB free: full dumpstate skipped to avoid exhausting Data.' > "$RUN/dumpstate-status.txt"
fi
if [ "$report_ok" = 0 ]; then
    echo 'FAILED: full dumpstate did not complete. Keep progress/stderr/partial files; collect a manual SysDump.' >> "$RUN/dumpstate-status.txt"
fi
echo "finished $(date); dumpstate_success=$report_ok" > "$RUN/COMPLETE.txt"
EXPORT=/data/media/0/Download
if [ -d "$EXPORT" ] && [ ! -L "$EXPORT" ]; then
    folder=$EXPORT/UN1CA-SPen-Logs-$STAMP
    size=$(du -sk "$RUN" | awk '{print $1}')
    free=$(df -k "$EXPORT" | tail -n 1 | awk '{print $4}')
    need=$((size*2+65536))
    if [ "${free:-0}" -lt "$need" ] || [ -e "$folder" ] || ! mkdir "$folder"; then
        echo 'Export stopped: insufficient space or existing destination. Private session retained.'
        exit 1
    fi
    if ! cp -pR "$RUN/." "$folder/"; then echo 'Folder copy failed; private session retained.'; exit 1; fi
    archive=$folder/UN1CA-SPen-v5-$STAMP.tar.gz
    if tar -czf "$archive.partial" -C "$BASE" "session-$STAMP"; then
        mv "$archive.partial" "$archive"
        (cd "$folder" && sha256sum "UN1CA-SPen-v5-$STAMP.tar.gz") > "$archive.sha256"
        find "$folder" -type d -exec chmod 0755 {} \;
        find "$folder" -type f -exec chmod 0644 {} \;
        chown -R 1023:1023 "$folder"
        echo "Exported: $archive"
    else echo 'Archive export failed; private session remains in /data/adb/unica-spen-v5'; fi
else echo 'Downloads unavailable; private session remains in /data/adb/unica-spen-v5'; fi
echo 'Logger finished; it will not record on the next boot unless rearmed.'
