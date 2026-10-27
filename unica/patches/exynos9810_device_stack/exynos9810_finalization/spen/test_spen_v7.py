from pathlib import Path
import hashlib,os,re,subprocess,unittest,zipfile
from test_spen_recovery import RecoveryPatchTests
from patch_crown_software_scan_v7 import patch as scan_patch
from build_notes_ink_v7 import patch as ink_patch,OFFSET,NEW
SPEN=Path(__file__).resolve().parent
sha=lambda b:hashlib.sha256(b).hexdigest()
class ScanRecoveryV7(unittest.TestCase):
 def setUp(self):
  b=RecoveryPatchTests(methodName='test_wrong_phone_is_rejected_before_writes');b.setUp();self.addCleanup(b.doCleanups);self.b=b
  self.root=b.root;self.payload=self.root/'tmp/unica-note9-spen-scan-v6';self.payload.mkdir(parents=True)
  (self.payload/'AirCommand.apk').write_bytes(b'candidate-apk')
  base=self.root/'data/adb/unica-spen-v5';base.mkdir(parents=True)
  (base/'installed').write_text('v5');(base/'collect.sh').write_bytes((SPEN/'diagnostics/collect.sh').read_bytes())
  service=self.root/'data/adb/service.d/90-unica-spen-v5.sh';service.parent.mkdir();service.write_bytes((SPEN/'diagnostics/service.sh').read_bytes())
  s=(SPEN/'recovery/crown-scan-v7.sh').read_text()
  s=s.replace('/tmp/unica-note9-spen-scan-v7','/tmp/unica-note9-spen-scan-v6')
  s=re.sub(r'/(?:system_root|system|vendor|data|dev/block|tmp/unica-note9-spen-scan-v6)(?:/[A-Za-z0-9_.-]+)*',lambda m:str(self.root)+m.group(0),s)
  s=s.replace('/tmp/unica-note9-spen-scan-v7','/tmp/unica-note9-spen-scan-v6')
  s=s.replace('/proc/mounts',str(b.mounts)).replace('[ -b "$candidate" ]','[ -f "$candidate" ]').replace('/sbin/sh','/bin/sh')
  s=s.replace('cd834bce7310af7d40eca542979d6381d03d102e726366dfea86adc92e43ccea',sha(b'old-air-fixture'))
  # The candidate hash is injected by its builder; replace every exact occurrence.
  candidate=re.search(r'\[ "\$\(digest "\$AIR"\)" = ([a-f0-9]{64})',s).group(1)
  s=s.replace(candidate,sha(b'candidate-apk'))
  self.script=self.root/'scan-install.sh';self.script.write_text(s)
 def run_patch(self,mode='install',**extra):
  return subprocess.run(['sh',str(self.script),mode],env=dict(os.environ,PATH=str(self.b.bin)+':'+os.environ['PATH'],**extra),capture_output=True,text=True)
 def test_install_repeat_restore_preserves_notes_and_air_backup(self):
  r=self.run_patch();self.assertEqual(r.returncode,0,r.stdout+r.stderr)
  self.assertEqual(self.b.air.read_bytes(),b'candidate-apk')
  r=self.run_patch();self.assertEqual(r.returncode,0,r.stdout+r.stderr)
  r=self.run_patch('restore');self.assertEqual(r.returncode,0,r.stdout+r.stderr)
  self.assertEqual(self.b.air.read_bytes(),b'old-air-fixture')
  self.assertEqual(self.b.notes.read_bytes(),self.b.old_notes)
 def test_failed_candidate_commit_restores_old_file(self):
  mv=self.b.bin/'mv';mv.write_text('#!/bin/sh\ncase "$1" in *-stage) [ "${FAIL_STAGE_RENAME:-0}" != 1 ] || exit 1;; esac\nexec /bin/mv "$@"\n');mv.chmod(0o755)
  r=self.run_patch(FAIL_STAGE_RENAME='1');self.assertNotEqual(r.returncode,0)
  self.assertEqual(self.b.air.read_bytes(),b'old-air-fixture')
 def test_wrong_device_rejected(self):
  self.assertNotEqual(self.run_patch(TEST_BOOTLOADER='G965FXX').returncode,0)
  self.assertEqual(self.b.air.read_bytes(),b'old-air-fixture')
 def test_corrupt_payload_rejected(self):
  (self.payload/'AirCommand.apk').write_bytes(b'corrupt')
  self.assertNotEqual(self.run_patch().returncode,0)
  self.assertEqual(self.b.air.read_bytes(),b'old-air-fixture')
 def test_changed_aircommand_rejected(self):
  self.b.air.write_bytes(b'unknown');self.assertNotEqual(self.run_patch().returncode,0)
  self.assertEqual(self.b.air.read_bytes(),b'unknown')
 def test_changed_restore_backup_rejected(self):
  self.assertEqual(self.run_patch().returncode,0)
  Path(str(self.b.air)+'.unica-scan-v7-original').write_bytes(b'changed')
  self.assertNotEqual(self.run_patch('restore').returncode,0)
  self.assertEqual(self.b.air.read_bytes(),b'candidate-apk')
class InkRecoveryV7(unittest.TestCase):
 def setUp(self):
  b=RecoveryPatchTests(methodName='test_wrong_phone_is_rejected_before_writes');b.setUp();self.addCleanup(b.doCleanups);self.b=b
  self.root=b.root;self.payload=self.root/'tmp/unica-note9-spen-scan-v6';self.payload.mkdir(parents=True)
  (self.payload/'AirCommand.apk').write_bytes(b'candidate-apk')
  base=self.root/'data/adb/unica-spen-v5';base.mkdir(parents=True)
  (base/'installed').write_text('v5');(base/'collect.sh').write_bytes((SPEN/'diagnostics/collect.sh').read_bytes())
  service=self.root/'data/adb/service.d/90-unica-spen-v5.sh';service.parent.mkdir();service.write_bytes((SPEN/'diagnostics/service.sh').read_bytes())
  s=(SPEN/'recovery/notes-ink-v7.sh').read_text()
  s=s.replace('/tmp/unica-note9-spen-ink-v7','/tmp/unica-note9-spen-scan-v6').replace('$SYSTEM/app/Notes33/lib/arm64/libSPenEngine.so','$SYSTEM/priv-app/AirCommand/AirCommand.apk').replace('$PAYLOAD/libSPenEngine.so','$PAYLOAD/AirCommand.apk')
  recog=b.notes.parent/'lib/arm64/libSPenRecognizer.so';recog.parent.mkdir(parents=True);recog.write_bytes(b'accepted-v6-recognizer')
  s=s.replace('daed1eff8c8ee9dfb8afe2771e39e893a8808f3230d6d522a8aa647db09b8667',sha(b.notes.read_bytes())).replace('54fe104681d7d20ad8115f4fd10528aa6f344a6f5f5f6006eb088046050daad9',sha(recog.read_bytes()))
  s=re.sub(r'/(?:system_root|system|vendor|data|dev/block|tmp/unica-note9-spen-scan-v6)(?:/[A-Za-z0-9_.-]+)*',lambda m:str(self.root)+m.group(0),s)
  s=s.replace('/proc/mounts',str(b.mounts)).replace('[ -b "$candidate" ]','[ -f "$candidate" ]').replace('/sbin/sh','/bin/sh')
  s=s.replace('79a8024586ce58ceeca613ddfce159e92274c597c5a863dd0aaf3e8e32e1b505',sha(b'old-air-fixture'))
  # The candidate hash is injected by its builder; replace every exact occurrence.
  candidate=re.search(r'\[ "\$\(digest "\$AIR"\)" = ([a-f0-9]{64})',s).group(1)
  s=s.replace(candidate,sha(b'candidate-apk'))
  self.script=self.root/'scan-install.sh';self.script.write_text(s)
 def run_patch(self,mode='install',**extra):
  return subprocess.run(['sh',str(self.script),mode],env=dict(os.environ,PATH=str(self.b.bin)+':'+os.environ['PATH'],**extra),capture_output=True,text=True)
 def test_install_repeat_restore_preserves_notes_and_air_backup(self):
  r=self.run_patch();self.assertEqual(r.returncode,0,r.stdout+r.stderr)
  self.assertEqual(self.b.air.read_bytes(),b'candidate-apk')
  r=self.run_patch();self.assertEqual(r.returncode,0,r.stdout+r.stderr)
  r=self.run_patch('restore');self.assertEqual(r.returncode,0,r.stdout+r.stderr)
  self.assertEqual(self.b.air.read_bytes(),b'old-air-fixture')
  self.assertEqual(self.b.notes.read_bytes(),self.b.old_notes)
 def test_failed_candidate_commit_restores_old_file(self):
  mv=self.b.bin/'mv';mv.write_text('#!/bin/sh\ncase "$1" in *-stage) [ "${FAIL_STAGE_RENAME:-0}" != 1 ] || exit 1;; esac\nexec /bin/mv "$@"\n');mv.chmod(0o755)
  r=self.run_patch(FAIL_STAGE_RENAME='1');self.assertNotEqual(r.returncode,0)
  self.assertEqual(self.b.air.read_bytes(),b'old-air-fixture')
 def test_wrong_device_rejected(self):
  self.assertNotEqual(self.run_patch(TEST_BOOTLOADER='G965FXX').returncode,0)
  self.assertEqual(self.b.air.read_bytes(),b'old-air-fixture')
 def test_corrupt_payload_rejected(self):
  (self.payload/'AirCommand.apk').write_bytes(b'corrupt')
  self.assertNotEqual(self.run_patch().returncode,0)
  self.assertEqual(self.b.air.read_bytes(),b'old-air-fixture')
 def test_changed_aircommand_rejected(self):
  self.b.air.write_bytes(b'unknown');self.assertNotEqual(self.run_patch().returncode,0)
  self.assertEqual(self.b.air.read_bytes(),b'unknown')
 def test_changed_restore_backup_rejected(self):
  self.assertEqual(self.run_patch().returncode,0)
  Path(str(self.b.air)+'.unica-ink-v7-original').write_bytes(b'changed')
  self.assertNotEqual(self.run_patch('restore').returncode,0)
  self.assertEqual(self.b.air.read_bytes(),b'candidate-apk')

class NativeInkPayload(unittest.TestCase):
 def test_real_engine_changes_only_capability_entry(self):
  with zipfile.ZipFile(SPEN/'notes/SamsungNotes-4.4.45.37.apk') as z:b=z.read('lib/arm64-v8a/libSPenEngine.so')
  fixed=ink_patch(b);self.assertEqual(len(fixed),len(b));self.assertEqual(fixed[:OFFSET],b[:OFFSET]);self.assertEqual(fixed[OFFSET+8:],b[OFFSET+8:]);self.assertEqual(fixed[OFFSET:OFFSET+8],NEW)
  with self.assertRaises(ValueError):ink_patch(fixed)
  with self.assertRaises(ValueError):ink_patch(b[:-1])
 def test_unknown_scanner_rejected(self):
  with self.assertRaises(ValueError):scan_patch('unexpected','unexpected')
if __name__=='__main__':unittest.main()
