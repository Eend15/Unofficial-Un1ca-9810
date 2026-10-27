"""Build Note9 EXT4 v9 test on top of the physically accepted v8 state.

v8 result: screen-off memo ink live, Notes/Quick notes OK. Air Actions now
connects GATT but AirCommand rejects the Note9 pen firmware (fw 23 <= 0x30,
"STICKY S-Pen"). Screen write (SmartCapture) bundles its own SPen engine and
still uses FBR, so ink shows on pen lift there.
"""
from pathlib import Path
import argparse,hashlib,json,subprocess,zipfile
from stage_notes_native import APK_SHA
from verify_note9_rebuilt_artifacts import verify_aircommand_methods,verify_platform_signatures,_disassemble_required,_method
SPEN=Path(__file__).resolve().parent;ROOT=SPEN.parents[4]
AIR_V8='c055b9c6bdfa8bd769778684633143d576747ec4b7d9694ba1bddcc0b363c805'
ENGINE_V8='b1d5af5cea7dd61a35736d24922ab2ace26574055b65e63393103ee00cd6153e'
REC_SHA='54fe104681d7d20ad8115f4fd10528aa6f344a6f5f5f6006eb088046050daad9'
from smartcapture_engine import APK_SHA as SC_APK_SHA,OFFSET as SC_OFFSET,patch as patch_sc_engine
VERSION='v9-20261027'
sha=lambda b:hashlib.sha256(b).hexdigest()
def verify_candidate(apk):
 verify_aircommand_methods(apk);verify_platform_signatures((apk,),ROOT/'security/aosp_platform.x509.pem')
 c=_disassemble_required(apk,('L2/p','L2/m','G2/e'))
 guard=_method(c['L2/p'],'unicaTryKnownCrownGatt()Z')
 for token in ('ro.bootloader','N960F','N960N','getRemoteDevice','unicaDirectEpoch:J'):
  assert token in guard,'v8 direct GATT path missing: '+token
 assert 'LL2/p;->unicaTryKnownCrownGatt()Z' in c['L2/m']
 g=c['G2/e']
 for token in ('v9 Note9 built-in pen legacy firmware accepted','STICKY S-Pen detected','N960F','N960N','0x30'):
  assert token in g,'Legacy firmware guard missing: '+token
 assert not any(t in g for t in ('68:A8:','createBond','removeBond'))
 return c
def main():
 p=argparse.ArgumentParser();p.add_argument('--aircommand',type=Path,required=True);p.add_argument('--smartcapture',type=Path,required=True);p.add_argument('--out',type=Path,required=True);a=p.parse_args();a.out.mkdir(parents=True,exist_ok=True)
 if sha(a.aircommand.read_bytes())==AIR_V8:raise ValueError('Candidate is the unchanged v8 APK')
 verify_candidate(a.aircommand)
 if sha(a.smartcapture.read_bytes())!=SC_APK_SHA:raise ValueError('SmartCapture APK differs from audited ROM build')
 with zipfile.ZipFile(a.smartcapture) as z:sc=patch_sc_engine(z.read('lib/arm64-v8a/libSPenEngine.so'))
 assert sum(x!=y for x,y in zip(sc,zipfile.ZipFile(a.smartcapture).read('lib/arm64-v8a/libSPenEngine.so')))<=8
 prefix=(SPEN/'recovery/notes-native-install-v5.sh').read_text().split('APK=$SYSTEM/app/Notes33/Notes33.apk')[0].replace('/tmp/unica-note9-spen-v5','/tmp/unica-note9-spen-v9')
 script=prefix+(SPEN/'recovery/spen-v9-template.sh').read_text()
 hashes={'AIR_V8':AIR_V8,'AIR_NEW':sha(a.aircommand.read_bytes()),'ENGINE_V8':ENGINE_V8,'SC_APK_SHA':SC_APK_SHA,'SC_NEW':sha(sc),'NOTES_SHA':APK_SHA,'REC_SHA':REC_SHA,'LOGGER_SHA':sha((SPEN/'diagnostics/collect.sh').read_bytes()),'SERVICE_SHA':sha((SPEN/'diagnostics/service.sh').read_bytes())}
 for k,v in hashes.items():script=script.replace(k,v)
 (SPEN/'recovery/spen-v9-install.sh').write_text(script);subprocess.run(['sh','-n'],input=script,text=True,check=True)
 files=[]
 for restore in (False,True):
  f=a.out/('UN1CA-Note9-SPen-EXT4-TEST-'+VERSION+('-restore' if restore else '')+'.zip')
  if f.exists():f.unlink()
  updater='ui_print("UN1CA Note9 S Pen TEST v9'+(' RESTORE' if restore else '')+'");\npackage_extract_dir("spen", "/tmp/unica-note9-spen-v9");\nrun_program("/sbin/sh", "/tmp/unica-note9-spen-v9/install.sh"'+(', "restore"' if restore else '')+') == 0 || abort("Stopped. Save recovery.log. DO NOT wipe.");\n'
  with zipfile.ZipFile(f,'x',zipfile.ZIP_DEFLATED) as z:
   z.write(ROOT/'target/crownlte/installer/update-binary','META-INF/com/google/android/update-binary');z.writestr('META-INF/com/google/android/updater-script',updater);z.writestr('spen/install.sh',script)
   if not restore:z.write(a.aircommand,'spen/AirCommand.apk');z.writestr('spen/libSPenEngine-smartcapture.so',sc)
  with zipfile.ZipFile(f) as z:assert z.testzip() is None
  files.append(f)
 (a.out/'SHA256SUMS').write_text(''.join(sha(f.read_bytes())+'  '+f.name+'\n' for f in files))
 (a.out/'build.json').write_text(json.dumps({'hashes':hashes,'changes':['AirCommand: accept Note9 EJ-PN960 legacy firmware (<=0x30) in BuiltInSpenDriver.readFirmwareVersion on N960F/N960N only; v8 direct GATT retained','SmartCapture screen write: app-local libSPenEngine override with FbrDrawPadGlue.isSupported=false (same fallback accepted for Notes in v8)'],'requires':'v8 installed','physical_acceptance':'pending','global_bluetooth_or_display_changes':False},indent=2))
 print((a.out/'SHA256SUMS').read_text())
if __name__=='__main__':main()
