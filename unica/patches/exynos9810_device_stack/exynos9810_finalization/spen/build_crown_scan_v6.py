from pathlib import Path
import hashlib,zipfile,json,subprocess
import argparse
sp=Path(__file__).resolve().parent;r=sp.parents[4]
p=argparse.ArgumentParser();p.add_argument('--aircommand',type=Path,required=True);p.add_argument('--out',type=Path,required=True);args=p.parse_args()
sha=lambda b:hashlib.sha256(b).hexdigest()
prefix=(sp/'recovery/notes-native-install-v5.sh').read_text().split('APK=$SYSTEM/app/Notes33/Notes33.apk')[0].replace('PAYLOAD=/tmp/unica-note9-spen-v5','PAYLOAD=/tmp/unica-note9-spen-scan-v6')
from verify_note9_rebuilt_artifacts import verify_aircommand_methods,verify_platform_signatures,_disassemble_required,_method
apk=args.aircommand
verify_aircommand_methods(apk);verify_platform_signatures((apk,),r/'security/aosp_platform.x509.pem')
compiled=_method(_disassemble_required(apk,('R2/b',))['R2/b'],'a(Landroid/content/Context;ILandroid/os/ParcelUuid;LD0/c;Ljava/lang/String;LR2/a;)V')
assert 'equalsIgnoreCase' in compiled and 'const/4 p4, 0x2' in compiled and 'semSetCustomScanParams' in compiled, 'Crown scoped standard scanner absent'

old='7aa47e01f336bd3dea586c97a49e4c60ffb5b9bacdd178425bc2221349744c1d';new=sha(apk.read_bytes())
s=prefix+r'''
AIR=$SYSTEM/priv-app/AirCommand/AirCommand.apk
OLD=$AIR.unica-scan-v6-original
STAGE=$AIR.unica-scan-v6-stage
DISABLED=$AIR.unica-scan-v6-disabled
BASE=/data/adb/unica-spen-v5
for path in "$AIR" "$OLD" "$STAGE" "$DISABLED" "$BASE" "$BASE/collect.sh" "$BASE/armed"; do
    [ ! -L "$path" ] || die 'Unexpected symlink; no files changed'
done
if [ "$MODE" = restore ]; then
    [ "$(digest "$AIR")" = NEWHASH ] || die 'Installed scanner differs; no files changed'
    [ "$(digest "$OLD")" = OLDHASH ] || die 'Original scanner backup differs; no files changed'
    [ ! -e "$DISABLED" ] || die 'Disabled scanner copy exists; preserve and inspect'
    mv "$AIR" "$DISABLED"
    if ! mv "$OLD" "$AIR"; then mv "$DISABLED" "$AIR"; die 'Restore failed; candidate retained'; fi
    sync
    echo 'Previous AirCommand restored. No Notes or Bluetooth data erased.'
    exit 0
fi
[ "$MODE" = install ] || die 'Unknown mode'
[ -f "$BASE/installed" ] && [ ! -d "$BASE/session-lock" ] || die 'Install Notes v6 logger first in TWRP'
[ "$(digest "$BASE/collect.sh")" = LOGGERHASH ] || die 'Diagnostic collector differs; no files changed'
[ "$(digest /data/adb/service.d/90-unica-spen-v5.sh)" = SERVICEHASH ] || die 'Diagnostic startup differs; no files changed'
if [ "$(digest "$AIR")" = NEWHASH ]; then
    [ "$(digest "$OLD")" = OLDHASH ] || die 'Scanner backup differs'
    echo armed > "$BASE/armed"
    echo 'Scanner candidate verified; existing one-shot logger rearmed.'; exit 0
fi
[ "$(digest "$AIR")" = OLDHASH ] || die 'AirCommand differs from the tested v5 ROM; no files changed'
[ ! -e "$OLD" ] && [ ! -e "$STAGE" ] && [ ! -e "$DISABLED" ] || die 'Previous staging/backup exists'
[ "$(digest "$PAYLOAD/AirCommand.apk")" = NEWHASH ] || die 'Candidate checksum mismatch'
need=$(du -sk "$PAYLOAD/AirCommand.apk" | awk '{print $1+16384}')
free=$(df -k "$MOUNT" | tail -1 | awk '{print $4}')
[ "$free" -ge "$need" ] || die 'Insufficient System space'
cp -p "$PAYLOAD/AirCommand.apk" "$STAGE"
chmod 0644 "$STAGE"; chown 0:0 "$STAGE"
chcon u:object_r:system_file:s0 "$STAGE" || die 'Cannot label staged APK'
[ "$(digest "$STAGE")" = NEWHASH ] || die 'Staged candidate checksum mismatch'
mv "$AIR" "$OLD"
if ! mv "$STAGE" "$AIR"; then mv "$OLD" "$AIR"; die 'Commit failed; previous APK restored'; fi
if [ "$(digest "$AIR")" != NEWHASH ]; then
    mv "$AIR" "$STAGE"; mv "$OLD" "$AIR"; die 'Final checksum failed; previous APK restored'
fi
if ! echo armed > "$BASE/armed"; then
    mv "$AIR" "$STAGE"; mv "$OLD" "$AIR"; die 'Cannot arm diagnostics; previous APK restored'
fi
sync
echo 'Crown standard-scan compatibility candidate installed. Pairing is not yet verified.'
echo 'Reboot System. DO NOT Format Data, reset Bluetooth or erase Notes data.'
'''
s=s.replace('NEWHASH',new).replace('OLDHASH',old).replace('LOGGERHASH',sha((sp/'diagnostics/collect.sh').read_bytes())).replace('SERVICEHASH',sha((sp/'diagnostics/service.sh').read_bytes()))
(sp/'recovery/crown-scan-v6.sh').write_text(s);subprocess.run(['sh','-n'],input=s,text=True,check=True)
out=args.out;out.mkdir(parents=True,exist_ok=True)
for restore in (False,True):
 f=out/('UN1CA-Note9-AirActions-scan-TEST-v6-20261026'+('-restore' if restore else '')+'.zip')
 script='ui_print("Note9 Crown scan compatibility TEST v6");\npackage_extract_dir("spen", "/tmp/unica-note9-spen-scan-v6");\nrun_program("/sbin/sh", "/tmp/unica-note9-spen-scan-v6/install.sh"'+(', "restore"' if restore else '')+') == 0 || abort("Stopped. Save recovery.log. DO NOT wipe.");\n'
 with zipfile.ZipFile(f,'x',zipfile.ZIP_DEFLATED) as z:
  z.write(r/'target/crownlte/installer/update-binary','META-INF/com/google/android/update-binary');z.writestr('META-INF/com/google/android/updater-script',script);z.writestr('spen/install.sh',s)
  if not restore:z.write(apk,'spen/AirCommand.apk')
 with zipfile.ZipFile(f) as z:assert z.testzip() is None
(out/'SHA256SUMS').write_text(''.join(sha(f.read_bytes())+'  '+f.name+'\n' for f in sorted(out.glob('*.zip'))))
(out/'build.json').write_text(json.dumps({'previous_aircommand':old,'candidate_aircommand':new,'physically_verified':False,'changes':'Crown UUID only: standard low-latency scan, preserve vendor path for other UUIDs and all filters/GATT/charging','notes_or_settings_data_changes':False},indent=2))
print((out/'SHA256SUMS').read_text())
