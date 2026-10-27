from pathlib import Path
import hashlib,json,os,re,subprocess,unittest
from test_spen_recovery import RecoveryPatchTests
from patch_crown_direct_gatt_v8 import patch,FIELD,METHOD,HOOK,INSERT
SPEN=Path(__file__).resolve().parent
sha=lambda b:hashlib.sha256(b).hexdigest()
class DirectSource(unittest.TestCase):
 def test_scoped_patch_and_idempotence(self):
  c='.field public A:J';r=HOOK
  a,b=patch(c,r);self.assertEqual(patch(a,b),(a,b));self.assertEqual(a.replace('\n\n'+FIELD,'').replace(METHOD,''),c);self.assertEqual(b.replace(INSERT,HOOK),r)
  self.assertIn('unicaDirectEpoch',a);self.assertNotIn('68:A8:',a)
 def test_partial_or_unknown_source_rejected(self):
  with self.assertRaises(ValueError):patch('other','other')
  with self.assertRaises(ValueError):patch(FIELD,HOOK)
class CombinedRecovery(unittest.TestCase):
 def setUp(self):
  b=RecoveryPatchTests(methodName='test_wrong_phone_is_rejected_before_writes');b.setUp();self.addCleanup(b.doCleanups);self.b=b;self.root=b.root
  self.engine=b.notes.parent/'lib/arm64/libSPenEngine.so';self.engine.parent.mkdir(parents=True);self.engine.write_bytes(b'old-engine')
  self.rec=self.engine.with_name('libSPenRecognizer.so');self.rec.write_bytes(b'accepted-v6')
  self.payload=self.root/'tmp/unica-note9-spen-v8';self.payload.mkdir(parents=True)
  (self.payload/'AirCommand.apk').write_bytes(b'new-air');(self.payload/'libSPenEngine.so').write_bytes(b'new-engine')
  self.base=self.root/'data/adb/unica-spen-v5';self.base.mkdir(parents=True);(self.base/'installed').write_text('v5');(self.base/'collect.sh').write_bytes((SPEN/'diagnostics/collect.sh').read_bytes())
  service=self.root/'data/adb/service.d/90-unica-spen-v5.sh';service.parent.mkdir();service.write_bytes((SPEN/'diagnostics/service.sh').read_bytes())
  text=(SPEN/'recovery/spen-v8-install.sh').read_text()
  # Production build hashes are recorded adjacent to the immutable candidates.
  import sys;sys.path.insert(0,str(SPEN));from build_spen_v8 import AIR_OLD,REC_SHA
  from build_notes_ink_v7 import ORIGINAL,patch as ink
  import zipfile
  with zipfile.ZipFile(SPEN/'notes/SamsungNotes-4.4.45.37.apk') as z:engine_new=sha(ink(z.read('lib/arm64-v8a/libSPenEngine.so')))
  # Read candidate expected AIR_NEW from the install guard (not a fixture assumption).
  candidate=re.search(r'\[ "\$\(digest "\$AIR"\)" = ([a-f0-9]{64})',text).group(1)
  from stage_notes_native import APK_SHA
  for old,new in {AIR_OLD:sha(b'old-air-fixture'),candidate:sha(b'new-air'),ORIGINAL:sha(b'old-engine'),engine_new:sha(b'new-engine'),REC_SHA:sha(b'accepted-v6'),APK_SHA:sha(b.notes.read_bytes())}.items():text=text.replace(old,new)
  text=re.sub(r'/(?:system_root|system|vendor|data|dev/block|tmp/unica-note9-spen-v8)(?:/[A-Za-z0-9_.-]+)*',lambda m:str(self.root)+m.group(0),text)
  text=text.replace('/proc/mounts',str(b.mounts)).replace('[ -b "$candidate" ]','[ -f "$candidate" ]').replace('/sbin/sh','/bin/sh')
  self.script=self.root/'v8-install.sh';self.script.write_text(text)
 def run_patch(self,mode='install',**extra):
  return subprocess.run(['sh',str(self.script),mode],env=dict(os.environ,PATH=str(self.b.bin)+':'+os.environ['PATH'],**extra),capture_output=True,text=True)
 def assert_old(self):
  self.assertEqual(self.b.air.read_bytes(),b'old-air-fixture');self.assertEqual(self.engine.read_bytes(),b'old-engine');self.assertEqual(self.rec.read_bytes(),b'accepted-v6');self.assertEqual(self.b.notes.read_bytes(),self.b.old_notes)
 def assert_new(self):
  self.assertEqual(self.b.air.read_bytes(),b'new-air');self.assertEqual(self.engine.read_bytes(),b'new-engine')
 def test_install_repeat_restore(self):
  for _ in range(2):
   r=self.run_patch();self.assertEqual(r.returncode,0,r.stdout+r.stderr);self.assert_new()
  r=self.run_patch('restore');self.assertEqual(r.returncode,0,r.stdout+r.stderr);self.assert_old()
 def test_wrong_phone_no_writes(self):
  self.assertNotEqual(self.run_patch(TEST_BOOTLOADER='G965FXX').returncode,0);self.assert_old()
 def test_corrupt_engine_payload_no_writes(self):
  (self.payload/'libSPenEngine.so').write_bytes(b'bad');self.assertNotEqual(self.run_patch().returncode,0);self.assert_old()
 def test_recognizer_must_be_accepted_v6(self):
  self.rec.write_bytes(b'old-v5');self.assertNotEqual(self.run_patch().returncode,0);self.assertEqual(self.b.air.read_bytes(),b'old-air-fixture');self.assertEqual(self.engine.read_bytes(),b'old-engine')
 def test_second_commit_failure_rolls_back_both(self):
  mv=self.b.bin/'mv';mv.write_text('#!/bin/sh\ncase "$1" in *libSPenEngine.so.unica-v8-stage) exit 1;; esac\nexec /bin/mv "$@"\n');mv.chmod(0o755)
  self.assertNotEqual(self.run_patch().returncode,0);self.assert_old()
 def test_logger_arm_failure_rolls_back_both(self):
  (self.base/'armed').mkdir();self.assertNotEqual(self.run_patch().returncode,0);self.assert_old()
 def test_restore_second_move_failure_reinstates_candidate_pair(self):
  self.assertEqual(self.run_patch().returncode,0)
  mv=self.b.bin/'mv';mv.write_text('#!/bin/sh\ncase "$1" in *libSPenEngine.so.unica-v8-original) exit 1;; esac\nexec /bin/mv "$@"\n');mv.chmod(0o755)
  self.assertNotEqual(self.run_patch('restore').returncode,0);self.assert_new()
 def test_changed_backup_restore_rejected_before_writes(self):
  self.assertEqual(self.run_patch().returncode,0);Path(str(self.engine)+'.unica-v8-original').write_bytes(b'changed');self.assertNotEqual(self.run_patch('restore').returncode,0);self.assert_new()
 def test_existing_stage_symlink_rejected(self):
  Path(str(self.engine)+'.unica-v8-stage').symlink_to(self.rec);self.assertNotEqual(self.run_patch().returncode,0);self.assert_old()
if __name__=='__main__':unittest.main()
