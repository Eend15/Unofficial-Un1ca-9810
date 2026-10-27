"""Build combined Note9 EXT4 v8 test from a verified platform-signed candidate."""
from pathlib import Path
import argparse,hashlib,json,subprocess,zipfile
from build_notes_ink_v7 import patch as patch_engine,ORIGINAL as ENGINE_OLD
from stage_notes_native import APK_SHA
from verify_note9_rebuilt_artifacts import verify_aircommand_methods,verify_platform_signatures,_disassemble_required,_method
SPEN=Path(__file__).resolve().parent;ROOT=SPEN.parents[4]
AIR_OLD='cd834bce7310af7d40eca542979d6381d03d102e726366dfea86adc92e43ccea'
REC_SHA='54fe104681d7d20ad8115f4fd10528aa6f344a6f5f5f6006eb088046050daad9'
sha=lambda b:hashlib.sha256(b).hexdigest()
def verify_candidate(apk):
 verify_aircommand_methods(apk);verify_platform_signatures((apk,),ROOT/'security/aosp_platform.x509.pem')
 c=_disassemble_required(apk,('L2/p','L2/m','D2/d','U2/j'))
 guard=_method(c['L2/p'],'unicaTryKnownCrownGatt()Z')
 for token in ('ro.bootloader','N960F','N960N','checkBluetoothAddress','getRemoteDevice','unicaDirectEpoch:J','LL2/p;->g()Z','LL2/p;->h(LS2/c;)V','LL2/p;->c()V'):
  assert token in guard, 'Direct GATT guard missing: '+token
 assert 'LL2/p;->unicaTryKnownCrownGatt()Z' in c['L2/m']
 assert '->connectGatt(' in c['D2/d']
 assert not any(t in guard for t in ('new-instance','createBond','removeBond','setValue','ScanResult;','68:A8:','LS2/e;-><init>'))
 return c

def main():
 p=argparse.ArgumentParser();p.add_argument('--aircommand',type=Path,required=True);p.add_argument('--out',type=Path,required=True);a=p.parse_args();a.out.mkdir(parents=True,exist_ok=True)
 verify_candidate(a.aircommand)
 with zipfile.ZipFile(SPEN/'notes/SamsungNotes-4.4.45.37.apk') as z:engine=patch_engine(z.read('lib/arm64-v8a/libSPenEngine.so'))
 prefix=(SPEN/'recovery/notes-native-install-v5.sh').read_text().split('APK=$SYSTEM/app/Notes33/Notes33.apk')[0].replace('/tmp/unica-note9-spen-v5','/tmp/unica-note9-spen-v8')
 script=prefix+(SPEN/'recovery/spen-v8-template.sh').read_text()
 hashes={'AIR_OLD':AIR_OLD,'AIR_NEW':sha(a.aircommand.read_bytes()),'ENGINE_OLD':ENGINE_OLD,'ENGINE_NEW':sha(engine),'NOTES_SHA':APK_SHA,'REC_SHA':REC_SHA,'LOGGER_SHA':sha((SPEN/'diagnostics/collect.sh').read_bytes()),'SERVICE_SHA':sha((SPEN/'diagnostics/service.sh').read_bytes())}
 for k,v in hashes.items():script=script.replace(k,v)
 (SPEN/'recovery/spen-v8-install.sh').write_text(script);subprocess.run(['sh','-n'],input=script,text=True,check=True)
 files=[]
 for restore in (False,True):
  f=a.out/('UN1CA-Note9-SPen-EXT4-TEST-v8-20261027'+('-restore' if restore else '')+'.zip')
  updater='ui_print("UN1CA Note9 S Pen combined TEST v8");\npackage_extract_dir("spen", "/tmp/unica-note9-spen-v8");\nrun_program("/sbin/sh", "/tmp/unica-note9-spen-v8/install.sh"'+(', "restore"' if restore else '')+') == 0 || abort("Stopped. Save recovery.log. DO NOT wipe.");\n'
  with zipfile.ZipFile(f,'x',zipfile.ZIP_DEFLATED) as z:
   z.write(ROOT/'target/crownlte/installer/update-binary','META-INF/com/google/android/update-binary');z.writestr('META-INF/com/google/android/updater-script',updater);z.writestr('spen/install.sh',script)
   if not restore:z.write(a.aircommand,'spen/AirCommand.apk');z.writestr('spen/libSPenEngine.so',engine)
  with zipfile.ZipFile(f) as z:assert z.testzip() is None
  files.append(f)
 (a.out/'SHA256SUMS').write_text(''.join(sha(f.read_bytes())+'  '+f.name+'\n' for f in files))
 (a.out/'build.json').write_text(json.dumps({'hashes':hashes,'changes':['once-per-connection-epoch saved-address Crown GATT via existing driver','existing app-local Notes normal renderer fallback'],'physical_acceptance':'pending','preserves_notes_v6':True,'global_bluetooth_or_display_changes':False},indent=2))
 print((a.out/'SHA256SUMS').read_text())
if __name__=='__main__':main()
