from pathlib import Path
import hashlib,json,zipfile,subprocess
import argparse
args=argparse.ArgumentParser()
args.add_argument('--out',type=Path,required=True)
a=args.parse_args()
root=Path(__file__).resolve().parents[5]
sp=root/'unica/patches/exynos9810_device_stack/exynos9810_finalization/spen'
out=a.out
out.mkdir(exist_ok=True)
original=zipfile.ZipFile(sp/'notes/SamsungNotes-4.4.45.37.apk').read('lib/arm64-v8a/libSPenRecognizer.so')
sha=lambda b:hashlib.sha256(b).hexdigest()
assert sha(original)=='7dd25522867bb182893d29e3101becf2df75787b3046de137c94c463c7abb363'
assert original[0x7aba8:0x7abac]==bytes.fromhex('ff8302d1')
patched=original[:0x7aba8]+bytes.fromhex('c0035fd6')+original[0x7abac:]
assert len(patched)==len(original)
assert patched[:0x7aba8]==original[:0x7aba8] and patched[0x7abac:]==original[0x7abac:]
prefix=(sp/'recovery/notes-native-install.sh').read_text().split('PARENT=$SYSTEM/app/Notes33/lib')[0]
prefix=prefix.replace('/tmp/unica-note9-notes-native-v3','/tmp/unica-note9-notes-v4')
body=r'''
LIB=$SYSTEM/app/Notes33/lib/arm64/libSPenRecognizer.so
OLD=$LIB.unica-v4-original
STAGE=$LIB.unica-v4-stage
DISABLED=$LIB.unica-v4-disabled
EXPECTED_OLD=OLDHASH
EXPECTED_NEW=NEWHASH
[ "$(digest "$APK")" = daed1eff8c8ee9dfb8afe2771e39e893a8808f3230d6d522a8aa647db09b8667 ] || die 'Notes APK differs from supported 4.4.45.37'
for path in "$LIB" "$OLD" "$STAGE" "$DISABLED"; do [ ! -L "$path" ] || die 'Unexpected symlink'; done
if [ "$MODE" = restore ]; then
    [ "$(digest "$LIB")" = "$EXPECTED_NEW" ] || die 'Installed library differs; no files changed'
    [ "$(digest "$OLD")" = "$EXPECTED_OLD" ] || die 'Original backup missing or changed'
    [ ! -e "$DISABLED" ] || die 'Disabled copy already exists'
    mv "$LIB" "$DISABLED"
    if ! mv "$OLD" "$LIB"; then mv "$DISABLED" "$LIB"; die 'Restore failed; patched library retained'; fi
    sync
    echo 'v4 restored to previous native library. Reboot System. No data wipe.'
    exit 0
fi
[ "$MODE" = install ] || die 'Unknown mode'
if [ "$(digest "$LIB")" = "$EXPECTED_NEW" ]; then
    [ "$(digest "$OLD")" = "$EXPECTED_OLD" ] || die 'Patched library has no valid backup'
    echo 'v4 already installed and backup verified'; exit 0
fi
[ "$(digest "$LIB")" = "$EXPECTED_OLD" ] || die 'Requires v3 native libraries; current recognizer differs'
[ ! -e "$OLD" ] && [ ! -e "$STAGE" ] && [ ! -e "$DISABLED" ] || die 'Previous staging or backup exists'
[ "$(digest "$PAYLOAD/libSPenRecognizer.so")" = "$EXPECTED_NEW" ] || die 'Payload checksum mismatch'
cp -p "$PAYLOAD/libSPenRecognizer.so" "$STAGE"
chmod 0644 "$STAGE"
chown 0:0 "$STAGE"
chcon u:object_r:system_file:s0 "$STAGE" || die 'Cannot set SELinux file label'
[ "$(digest "$STAGE")" = "$EXPECTED_NEW" ] || die 'Staged checksum mismatch'
mv "$LIB" "$OLD"
if ! mv "$STAGE" "$LIB"; then mv "$OLD" "$LIB"; die 'Commit failed; original restored'; fi
if [ "$(digest "$LIB")" != "$EXPECTED_NEW" ]; then
    mv "$LIB" "$STAGE"; mv "$OLD" "$LIB"; die 'Verification failed; original restored'
fi
sync
echo 'v4 installed: bypass only recursive diagnostic PrintResult, recognition unchanged.'
echo 'Reboot System. DO NOT Format Data or clear Samsung Notes data.'
'''.replace('OLDHASH',sha(original)).replace('NEWHASH',sha(patched))
installer=prefix+body
(sp/'recovery/notes-recognizer-install-v4.sh').write_text(installer)
subprocess.run(['sh','-n',str(sp/'recovery/notes-recognizer-install-v4.sh')],check=True)
artifacts=[]
for restore in (False,True):
    path=out/('UN1CA-Note9-Notes-EXT4-v4-20261026'+('-restore' if restore else '')+'.zip')
    arg=', "restore"' if restore else ''
    script='ui_print("Note9 Notes recognizer diagnostic crash fix v4");\npackage_extract_dir("spen", "/tmp/unica-note9-notes-v4");\nrun_program("/sbin/sh", "/tmp/unica-note9-notes-v4/install.sh"'+arg+') == 0 || abort("Stopped. Save recovery.log. Do not wipe data.");\n'
    with zipfile.ZipFile(path,'x',zipfile.ZIP_DEFLATED) as z:
        z.write(root/'target/crownlte/installer/update-binary','META-INF/com/google/android/update-binary')
        z.writestr('META-INF/com/google/android/updater-script',script)
        z.writestr('spen/install.sh',installer)
        if not restore:z.writestr('spen/libSPenRecognizer.so',patched)
    with zipfile.ZipFile(path) as z:
        assert z.testzip() is None
        if not restore: assert sha(z.read('spen/libSPenRecognizer.so'))==sha(patched)
    artifacts.append(path)
(out/'SHA256SUMS').write_text(''.join(sha(p.read_bytes())+'  '+p.name+'\n' for p in artifacts))
(out/'FOR-TESTER.txt').write_text('Note9 EXT4 v4 test patch\nRequires the previous v3 Notes native-library patch and Samsung Notes 4.4.45.37.\nBack up important notes. Boot TWRP, install the v4 ZIP, then reboot System. DO NOT Format Data or clear Notes data.\nTest: leave Notes on its main list for one minute, open/create several notes, draw and use handwriting recognition, save and reopen. Collect fresh logs immediately if it crashes.\nThis targets the native recognizer diagnostic logging crash only. Air Actions and delayed screen-off memo ink are not fixed by this patch.\nTo undo v4: flash the matching v4-restore ZIP BEFORE attempting any earlier restore ZIP.\nDevice validation remains pending.\n')
(out/'build.json').write_text(json.dumps({'original_sha256':sha(original),'patched_sha256':sha(patched),'offset':hex(0x7aba8),'function':'HWR::Document::GroupResult::PrintResult(int,int,bool)','change':'Replace entry instruction with ARM64 RET; omit diagnostic result logging only','physical_acceptance':'pending','air_actions_fix':False,'screen_off_ink_fix':False},indent=2))
print((out/'SHA256SUMS').read_text())
