from pathlib import Path
import argparse,hashlib,json,zipfile,subprocess,sys
sp=Path(__file__).resolve().parent
sys.path.insert(0,str(sp))
from stage_notes_native import libraries,APK_SHA
root=sp.parents[4]
p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);a=p.parse_args()
a.out.mkdir(parents=True,exist_ok=True)
sha=lambda data:hashlib.sha256(data).hexdigest()
libs=libraries(sp/'notes/SamsungNotes-4.4.45.37.apk')
orig=libs['libSPenRecognizer.so']
assert sha(orig)=='7dd25522867bb182893d29e3101becf2df75787b3046de137c94c463c7abb363'
assert orig[0x7aba8:0x7abac]==bytes.fromhex('ff8302d1')
from recognizer_diagnostics import patch
libs['libSPenRecognizer.so']=patch(orig)
native=(sp/'recovery/notes-native-install-v5.sh').read_text().replace('v5','v6').replace('PAYLOAD=/tmp/unica-note9-spen-v6','PAYLOAD=/tmp/unica-note9-spen-v5')
# Require the physically identified v5 state before changing the native bundle.
needle='[ "$MODE" = install ] || die \'Unknown patch mode\''
check='\nif [ ! -f "$MARK" ]; then\n    [ -f "$PARENT/.unica-spen-native-v5" ] || die \'Requires the installed v5 Notes patch; no files changed\'\n    [ "$(digest "$LIB/libSPenRecognizer.so")" = 1eb4c190ee27192f12541022f15eff160c41205fc21974c7ae070ec97c0bf8dd ] || die \'Existing recognizer differs from audited v5; no files changed\'\nfi\n'
assert native.count(needle)==1
native=native.replace(needle,needle+check)
# Restore also verifies v6 bytes and its preserved pre-v6 library directory.
needle='    mv "$LIB" "$DISABLED"'
check='    [ -d "$ORIGINAL" ] || die \'Previous native directory missing; no files changed\'\n    (cd "$LIB" && sha256sum -c "$PAYLOAD/native-installed.sha256") || die \'Installed v6 libraries changed; no files changed\'\n'
native=native.replace(needle,check+needle,1)

logger=(sp/'diagnostics/collect.sh').read_text()
wrapper='''#!/sbin/sh
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
    case "$current_hash" in LOGGERHASH|47dda0ca700c5f10bccd888178bad2805b0df50ab2f12529ea23d14d90a3dc0e) ;; *) die 'Existing collector differs';; esac
    [ "$(sha256sum "$SERVICE" | cut -d ' ' -f 1)" = SERVICEHASH ] || die 'Existing startup differs'
    /sbin/sh "$PAYLOAD/native-install.sh" install
    if [ "$current_hash" != LOGGERHASH ]; then
        [ ! -e "$BASE/collect.before-dumpstate.sh" ] || die 'Previous logger backup exists'
        cp -p "$BASE/collect.sh" "$BASE/collect.before-dumpstate.sh"
        cp "$PAYLOAD/collect.sh" "$BASE/collect.upgrade"
        chmod 0700 "$BASE/collect.upgrade"
        chown 0:0 "$BASE/collect.upgrade"
        chcon u:object_r:system_file:s0 "$BASE/collect.upgrade" || die 'Cannot label upgraded logger'
        [ "$(sha256sum "$BASE/collect.upgrade" | cut -d ' ' -f 1)" = LOGGERHASH ] || die 'Upgraded logger checksum failed'
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
'''
service='#!/system/bin/sh\n# UN1CA one-shot S Pen diagnostics; KernelSU service.d entry.\nexec /system/bin/sh /data/adb/unica-spen-v5/collect.sh\n'
wrapper=wrapper.replace('LOGGERHASH',sha(logger.encode())).replace('SERVICEHASH',sha(service.encode()))
(sp/'recovery/spen-v6-install.sh').write_text(wrapper)
(sp/'recovery/notes-native-install-v6.sh').write_text(native)
assert (sp/'diagnostics/service.sh').read_text() == service
for script in (wrapper,native,logger,service):
    subprocess.run(['sh','-n'],input=script,text=True,check=True)
result=[]
for restore in (False,True):
    file=a.out/('UN1CA-Note9-SPen-EXT4-v6-20261026'+('-restore' if restore else '')+'.zip')
    arg=', "restore"' if restore else ''
    updater=f'''ui_print("UN1CA Note9 S Pen v6 Notes crash test patch");
package_extract_dir("spen", "/tmp/unica-note9-spen-v5");
run_program("/sbin/sh", "/tmp/unica-note9-spen-v5/install.sh"{arg}) == 0 || abort("Stopped. Save recovery.log; DO NOT wipe data.");
ui_print("Reboot System. DO NOT Format Data.");
'''
    with zipfile.ZipFile(file,'x',zipfile.ZIP_DEFLATED,compresslevel=6) as z:
        z.write(root/'target/crownlte/installer/update-binary','META-INF/com/google/android/update-binary')
        z.writestr('META-INF/com/google/android/updater-script',updater)
        z.writestr('spen/install.sh',wrapper)
        z.writestr('spen/native-install.sh',native)
        z.writestr('spen/native-installed.sha256',''.join(f'{sha(data)}  {name}\n' for name,data in sorted(libs.items())))
        if not restore:
            z.writestr('spen/collect.sh',logger);z.writestr('spen/service.sh',service)
            z.writestr('spen/logger.sha256',f'{sha(logger.encode())}  collect.sh\n{sha(service.encode())}  service.sh\n')
            for name,data in sorted(libs.items()):z.writestr('spen/native/'+name,data)
            z.writestr('spen/native.sha256',''.join(f'{sha(data)}  native/{name}\n' for name,data in sorted(libs.items())))
    with zipfile.ZipFile(file) as z:assert z.testzip() is None
    result.append(file)
(a.out/'SHA256SUMS').write_text(''.join(f'{sha(x.read_bytes())}  {x.name}\n' for x in result))
(a.out/'build.json').write_text(json.dumps({'notes_apk':APK_SHA,'original_recognizer':sha(orig),'patched_recognizer':sha(libs['libSPenRecognizer.so']),'native_files':len(libs),'notes_fix':'GroupResult and ResultText diagnostic PrintResult entry guards; recognition and result access unchanged','ble_fix':False,'screen_off_ink_fix':False,'physical_acceptance':'pending','logger':'v5.1: one armed session plus native dumpstate; dated Downloads folder; no sepolicy or global logging configuration changes','artifacts':{x.name:sha(x.read_bytes()) for x in result}},indent=2))
print((a.out/'SHA256SUMS').read_text())
