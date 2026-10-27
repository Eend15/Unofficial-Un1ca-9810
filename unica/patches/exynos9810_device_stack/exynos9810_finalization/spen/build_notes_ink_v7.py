"""Note9 Notes-only normal-renderer trial. Does not change recognition or ink data.
Return false from the pinned JNI FBR capability method so the Java SDK follows
its existing non-FBR path. No stack frame is entered by this replacement.
Physical continuous-stroke latency validation remains required.
"""
from pathlib import Path
import hashlib,zipfile,argparse,subprocess,json
ORIGINAL='79a8024586ce58ceeca613ddfce159e92274c597c5a863dd0aaf3e8e32e1b505'
OFFSET=0xc2a5c
OLD=bytes.fromhex('fd7bbfa9fd030091')
NEW=bytes.fromhex('00008052c0035fd6') # mov w0,0; ret (JNI jboolean false)
def patch(data):
 if hashlib.sha256(data).hexdigest()!=ORIGINAL or data[OFFSET:OFFSET+8]!=OLD:
  raise ValueError('Unsupported engine; no offset patch applied')
 return data[:OFFSET]+NEW+data[OFFSET+8:]
def main():
 sp=Path(__file__).resolve().parent;r=sp.parents[4]
 p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);a=p.parse_args();a.out.mkdir(parents=True,exist_ok=True)
 sha=lambda b:hashlib.sha256(b).hexdigest()
 with zipfile.ZipFile(sp/'notes/SamsungNotes-4.4.45.37.apk') as z: original=z.read('lib/arm64-v8a/libSPenEngine.so')
 data=patch(original);new=sha(data)
 s=(sp/'recovery/crown-scan-v6.sh').read_text()
 s=s.replace('/tmp/unica-note9-spen-scan-v6','/tmp/unica-note9-spen-ink-v7').replace('$SYSTEM/priv-app/AirCommand/AirCommand.apk','$SYSTEM/app/Notes33/lib/arm64/libSPenEngine.so').replace('unica-scan-v6','unica-ink-v7')
 s=s.replace('7aa47e01f336bd3dea586c97a49e4c60ffb5b9bacdd178425bc2221349744c1d',ORIGINAL)
 s=s.replace('cd834bce7310af7d40eca542979d6381d03d102e726366dfea86adc92e43ccea',new)
 s=s.replace('$PAYLOAD/AirCommand.apk','$PAYLOAD/libSPenEngine.so')
 needle='AIR=$SYSTEM/app/Notes33/lib/arm64/libSPenEngine.so'
 s=s.replace(needle,needle+"""
[ "$(digest "$SYSTEM/app/Notes33/Notes33.apk")" = daed1eff8c8ee9dfb8afe2771e39e893a8808f3230d6d522a8aa647db09b8667 ] || die 'Different Notes APK; no changes'
[ "$(digest "$SYSTEM/app/Notes33/lib/arm64/libSPenRecognizer.so")" = 54fe104681d7d20ad8115f4fd10528aa6f344a6f5f5f6006eb088046050daad9 ] || die 'Install accepted SPen v6 Notes crash fix first'
""")
 s=s.replace('Previous AirCommand restored. No Notes or Bluetooth data erased.','Previous Notes render engine restored. Personal notes retained.').replace('AirCommand differs from the tested v5 ROM','Notes engine differs from the audited original').replace('Scanner candidate verified','Ink renderer candidate verified').replace('Crown standard-scan compatibility candidate installed. Pairing is not yet verified.','Notes normal-renderer TEST installed. Continuous-stroke ink remains device-unverified.')
 (sp/'recovery/notes-ink-v7.sh').write_text(s);subprocess.run(['sh','-n'],input=s,text=True,check=True)
 results=[]
 for restore in (False,True):
  f=a.out/('UN1CA-Note9-Notes-INK-TEST-v7-20261027'+('-restore' if restore else '')+'.zip')
  script='ui_print("Note9 Notes normal-renderer INK TEST v7");\npackage_extract_dir("spen", "/tmp/unica-note9-spen-ink-v7");\nrun_program("/sbin/sh", "/tmp/unica-note9-spen-ink-v7/install.sh"'+(', "restore"' if restore else '')+') == 0 || abort("Stopped. Save recovery.log. DO NOT wipe.");\n'
  with zipfile.ZipFile(f,'x',zipfile.ZIP_DEFLATED) as z:
   z.write(r/'target/crownlte/installer/update-binary','META-INF/com/google/android/update-binary');z.writestr('META-INF/com/google/android/updater-script',script);z.writestr('spen/install.sh',s)
   if not restore:z.writestr('spen/libSPenEngine.so',data)
  with zipfile.ZipFile(f) as z:assert z.testzip() is None
  results.append(f)
 (a.out/'SHA256SUMS').write_text(''.join(sha(f.read_bytes())+'  '+f.name+'\n' for f in results))
 (a.out/'build.json').write_text(json.dumps({'old_engine':ORIGINAL,'new_engine':new,'offset':hex(OFFSET),'change':'JNI FbrDrawPadGlue.isSupported returns false; retain existing normal drawing path; no APK/recognizer/data change','physical_acceptance':'pending'},indent=2))
 print((a.out/'SHA256SUMS').read_text())
if __name__=='__main__':main()
