from pathlib import Path
import hashlib,os,re,subprocess,unittest,zipfile
from test_spen_recovery import RecoveryPatchTests
from patch_crown_fw_v9 import patch,MARK
import build_spen_v9 as B
SPEN=Path(__file__).resolve().parent
sha=lambda b:hashlib.sha256(b).hexdigest()
SRC='''    const-string v2, "readFirmwareVersion : STICKY S-Pen detected. fwVer="
    invoke-static {v1, v3}, Lk5/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x30

    if-gt v0, v3, :cond_10
'''
class FirmwareSource(unittest.TestCase):
 def test_scoped_patch_and_idempotence(self):
  a=patch(SRC);self.assertEqual(patch(a),a);self.assertEqual(a.count(MARK),1)
  self.assertLess(a.index(':unica_legacy_fw_check'),a.index('const/16 v3, 0x30'))
  self.assertIn('goto :cond_10',a);self.assertNotIn('68:A8:',a)
 def test_unknown_or_ambiguous_source_rejected(self):
  with self.assertRaises(ValueError):patch('other')
  with self.assertRaises(ValueError):patch(SRC+SRC.split('\n',1)[1])
class ScreenWriteEngine(unittest.TestCase):
 def test_only_eight_bytes_change(self):
  apk=Path.home()/'Unofficial-Un1ca-9810/out/target/crownlte/work_dir/system/system/app/SmartCapture/SmartCapture.apk'
  if not apk.exists():self.skipTest('ROM tree missing')
  old=zipfile.ZipFile(apk).read('lib/arm64-v8a/libSPenEngine.so');new=B.patch_sc_engine(old)
  diff=[i for i,(x,y) in enumerate(zip(old,new)) if x!=y]
  self.assertEqual(len(old),len(new));self.assertTrue(diff and min(diff)>=B.SC_OFFSET and max(diff)<B.SC_OFFSET+8)
  with self.assertRaises(ValueError):B.patch_sc_engine(new)
class V9Recovery(unittest.TestCase):
 def setUp(self):
  b=RecoveryPatchTests(methodName='test_wrong_phone_is_rejected_before_writes');b.setUp();self.addCleanup(b.doCleanups);self.b=b;self.root=b.root
  b.air.write_bytes(b'v8-air')
  self.engine=b.notes.parent/'lib/arm64/libSPenEngine.so';self.engine.parent.mkdir(parents=True);self.engine.write_bytes(b'v8-engine')
  self.rec=self.engine.with_name('libSPenRecognizer.so');self.rec.write_bytes(b'accepted-v6')
  self.scapk=b.notes.parents[1]/'SmartCapture/SmartCapture.apk';self.scapk.parent.mkdir(parents=True);self.scapk.write_bytes(b'sc-apk')
  self.sclib=self.scapk.parent/'lib/arm64/libSPenEngine.so'
  self.payload=self.root/'tmp/unica-note9-spen-v9';self.payload.mkdir(parents=True)
  (self.payload/'AirCommand.apk').write_bytes(b'v9-air');(self.payload/'libSPenEngine-smartcapture.so').write_bytes(b'sc-engine')
  self.base=self.root/'data/adb/unica-spen-v5';self.base.mkdir(parents=True);(self.base/'installed').write_text('v5');(self.base/'collect.sh').write_bytes((SPEN/'diagnostics/collect.sh').read_bytes())
  service=self.root/'data/adb/service.d/90-unica-spen-v5.sh';service.parent.mkdir();service.write_bytes((SPEN/'diagnostics/service.sh').read_bytes())
  text=(SPEN/'recovery/spen-v9-install.sh').read_text()
  air_new=re.search(r'\[ "\$\(digest "\$PAYLOAD/AirCommand.apk"\)" = ([a-f0-9]{64})',text).group(1)
  sc_new=re.search(r'\[ "\$\(digest "\$PAYLOAD/libSPenEngine-smartcapture.so"\)" = ([a-f0-9]{64})',text).group(1)
  from stage_notes_native import APK_SHA
  for old,new in {B.AIR_V8:sha(b'v8-air'),air_new:sha(b'v9-air'),B.ENGINE_V8:sha(b'v8-engine'),sc_new:sha(b'sc-engine'),B.SC_APK_SHA:sha(b'sc-apk'),B.REC_SHA:sha(b'accepted-v6'),APK_SHA:sha(b.notes.read_bytes())}.items():
   self.assertIn(old,text);text=text.replace(old,new)
  text=re.sub(r'/(?:system_root|system|vendor|data|dev/block|tmp/unica-note9-spen-v9)(?:/[A-Za-z0-9_.-]+)*',lambda m:str(self.root)+m.group(0),text)
  text=text.replace('/proc/mounts',str(b.mounts)).replace('[ -b "$candidate" ]','[ -f "$candidate" ]').replace('/sbin/sh','/bin/sh')
  self.script=self.root/'v9-install.sh';self.script.write_text(text)
 def run_patch(self,mode='install',**extra):
  return subprocess.run(['sh',str(self.script),mode],env=dict(os.environ,PATH=str(self.b.bin)+':'+os.environ['PATH'],**extra),capture_output=True,text=True)
 def assert_v8(self):
  self.assertEqual(self.b.air.read_bytes(),b'v8-air');self.assertEqual(self.engine.read_bytes(),b'v8-engine');self.assertEqual(self.rec.read_bytes(),b'accepted-v6')
  self.assertFalse(self.sclib.exists());self.assertFalse((self.scapk.parent/'lib').exists());self.assertEqual(self.scapk.read_bytes(),b'sc-apk')
  self.assertEqual([p.name for p in self.b.air.parent.iterdir() if 'unica-v9' in p.name and 'original' not in p.name],[])
 def assert_v9(self,sc=True):
  self.assertEqual(self.b.air.read_bytes(),b'v9-air');self.assertEqual(self.engine.read_bytes(),b'v8-engine')
  self.assertEqual(self.sclib.exists(),sc)
  if sc:self.assertEqual(self.sclib.read_bytes(),b'sc-engine')
  self.assertEqual((self.base/'armed').read_text().strip(),'armed')
 def test_install_repeat_restore(self):
  for _ in range(2):
   r=self.run_patch();self.assertEqual(r.returncode,0,r.stdout+r.stderr);self.assert_v9()
  r=self.run_patch('restore');self.assertEqual(r.returncode,0,r.stdout+r.stderr);self.assert_v8()
 def test_wrong_phone_no_writes(self):
  self.assertNotEqual(self.run_patch(TEST_BOOTLOADER='G965FXX').returncode,0);self.assert_v8()
 def test_requires_v8_airactions(self):
  self.b.air.write_bytes(b'v6-air');self.assertNotEqual(self.run_patch().returncode,0)
  self.assertEqual(self.b.air.read_bytes(),b'v6-air');self.assertFalse(self.sclib.exists())
 def test_requires_v8_notes_engine(self):
  self.engine.write_bytes(b'v6-engine');self.assertNotEqual(self.run_patch().returncode,0);self.assertEqual(self.b.air.read_bytes(),b'v8-air');self.assertFalse(self.sclib.exists())
 def test_corrupt_payload_no_writes(self):
  (self.payload/'libSPenEngine-smartcapture.so').write_bytes(b'bad');self.assertNotEqual(self.run_patch().returncode,0);self.assert_v8()
 def test_unknown_smartcapture_skips_screen_write_only(self):
  self.scapk.write_bytes(b'other-sc');r=self.run_patch();self.assertEqual(r.returncode,0,r.stdout+r.stderr);self.assertIn('screen write part skipped',r.stdout)
  self.assert_v9(sc=False);self.assertFalse((self.scapk.parent/'lib').exists())
  r=self.run_patch('restore');self.assertEqual(r.returncode,0,r.stdout+r.stderr);self.assertEqual(self.b.air.read_bytes(),b'v8-air')
 def test_sc_commit_failure_rolls_back_all(self):
  mv=self.b.bin/'mv';mv.write_text('#!/bin/sh\ncase "$1" in *libSPenEngine.so.unica-v9-stage) exit 1;; esac\nexec /bin/mv "$@"\n');mv.chmod(0o755)
  self.assertNotEqual(self.run_patch().returncode,0);self.assert_v8()
 def test_logger_arm_failure_rolls_back_all(self):
  (self.base/'armed').mkdir();self.assertNotEqual(self.run_patch().returncode,0)
  self.assertEqual(self.b.air.read_bytes(),b'v8-air');self.assertFalse(self.sclib.exists());self.assertFalse((self.scapk.parent/'lib').exists())
 def test_restore_move_failure_reinstates_v9(self):
  self.assertEqual(self.run_patch().returncode,0)
  mv=self.b.bin/'mv';mv.write_text('#!/bin/sh\ncase "$1" in *AirCommand.apk.unica-v9-original) exit 1;; esac\nexec /bin/mv "$@"\n');mv.chmod(0o755)
  self.assertNotEqual(self.run_patch('restore').returncode,0);self.assertEqual(self.b.air.read_bytes(),b'v9-air');self.assertTrue(self.sclib.exists())
 def test_restore_refuses_changed_backup(self):
  self.assertEqual(self.run_patch().returncode,0)
  Path(str(self.b.air)+'.unica-v9-original').write_bytes(b'tampered')
  self.assertNotEqual(self.run_patch('restore').returncode,0);self.assertEqual(self.b.air.read_bytes(),b'v9-air')
if __name__=='__main__':unittest.main()
