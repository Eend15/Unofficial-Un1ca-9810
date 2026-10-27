#!/usr/bin/env python3
from pathlib import Path
import argparse,hashlib,json,zipfile
SPEN=Path(__file__).resolve().parent
ROOT=SPEN.parents[4]
def sha(p):
    with p.open('rb') as f:return hashlib.file_digest(f,'sha256').hexdigest()
def main():
    p=argparse.ArgumentParser(description='Build native-library-only Notes TWRP fix for current Note9 test ROM')
    p.add_argument('--out',required=True,type=Path);a=p.parse_args()
    from stage_notes_native import libraries,APK_SHA
    libs=libraries(SPEN/'notes/SamsungNotes-4.4.45.37.apk')
    assert len(libs)==107
    updater=ROOT/'target/crownlte/installer/update-binary'
    assert updater.read_bytes()[:4]==b'\x7fELF'
    a.out.mkdir(parents=True,exist_ok=True)
    results=[]
    for restore in (False,True):
        path=a.out/('UN1CA-Note9-Notes-native-EXT4-v3-20261025'+('-restore.zip' if restore else '.zip'))
        arg=', "restore"' if restore else ''
        script=f'''ui_print("UN1CA Note9 Samsung Notes native library fix v3");
package_extract_dir("spen", "/tmp/unica-note9-notes-native-v3");
run_program("/sbin/sh", "/tmp/unica-note9-notes-native-v3/install.sh"{arg}) == 0 ||
    abort("Notes native fix stopped. Copy recovery log; do not wipe data.");
ui_print("Reboot System. DO NOT Format Data.");
'''
        with zipfile.ZipFile(path,'x',compression=zipfile.ZIP_DEFLATED,compresslevel=6) as z:
            z.write(updater,'META-INF/com/google/android/update-binary')
            z.writestr('META-INF/com/google/android/updater-script',script)
            z.write(SPEN/'recovery/notes-native-install.sh','spen/install.sh')
            if not restore:
                for name,data in sorted(libs.items()): z.writestr('spen/native/'+name,data)
                z.writestr('spen/native.sha256',''.join(f'{hashlib.sha256(data).hexdigest()}  native/{name}\n' for name,data in sorted(libs.items())))
                z.writestr('spen/native-installed.sha256',''.join(f'{hashlib.sha256(data).hexdigest()}  {name}\n' for name,data in sorted(libs.items())))
        with zipfile.ZipFile(path) as z:assert z.testzip() is None
        results.append(path)
    (a.out/'SHA256SUMS').write_text(''.join(f'{sha(x)}  {x.name}\n' for x in results))
    (a.out/'build.json').write_text(json.dumps({'notes_apk_sha256':APK_SHA,'arm64_libraries':len(libs),
      'native_uncompressed_bytes':sum(map(len,libs.values())), 'changes':['app-local Notes ARM64 libraries'],
      'changes_bluetooth_or_aircommand':False,'formats_data':False,'physical_acceptance':'pending',
      'artifacts':{x.name:sha(x) for x in results}},indent=2)+'\n')
    print((a.out/'SHA256SUMS').read_text())
if __name__=='__main__':main()
