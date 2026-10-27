from pathlib import Path
import hashlib,os,re,subprocess,unittest
from patch_crown_standard_scan import patch,ANCHOR,INSERT
from test_spen_recovery import RecoveryPatchTests
SPEN=Path(__file__).resolve().parent
sha=lambda b:hashlib.sha256(b).hexdigest()
class ScanSource(unittest.TestCase):
 VENDOR='\n\n    const/16 p4, 0x1\n\n    invoke-virtual {p1, p4, p4}, Landroid/bluetooth/le/ScanSettings$Builder;->semSetCustomScanParams(II)Landroid/bluetooth/le/ScanSettings$Builder;\n'
 def test_idempotent_scoped_branch(self):
  text=ANCHOR+self.VENDOR+'\n    :cond_b\n    return-void'
  fixed=patch(text)
  self.assertEqual(patch(fixed),fixed)
  self.assertIn('equalsIgnoreCase',fixed)
  self.assertIn('if-eqz p3, :unica_vendor_scan',fixed)
  self.assertEqual(fixed.replace(INSERT,''),text)
 def test_goto_target_must_follow_vendor_block(self):
  # A fresh decode of a compiled APK renumbers labels; :cond_b is then elsewhere.
  with self.assertRaises(ValueError):patch(ANCHOR+'\n    :cond_b\n'+self.VENDOR+'\n    :cond_c\n    return-void')
  with self.assertRaises(ValueError):patch(ANCHOR+self.VENDOR+'\n    :cond_a\n    nop\n    :cond_b\n    return-void')
 def test_unknown_source_rejected(self):
  with self.assertRaises(ValueError):patch('different scanner')
class ScanRecovery(unittest.TestCase):
 def setUp(self):
  b=RecoveryPatchTests(methodName='test_wrong_phone_is_rejected_before_writes');b.setUp();self.addCleanup(b.doCleanups);self.b=b
  self.root=b.root;self.payload=self.root/'tmp/unica-note9-spen-scan-v6';self.payload.mkdir(parents=True)
  (self.payload/'AirCommand.apk').write_bytes(b'candidate-apk')
  base=self.root/'data/adb/unica-spen-v5';base.mkdir(parents=True)
  (base/'installed').write_text('v5');(base/'collect.sh').write_bytes((SPEN/'diagnostics/collect.sh').read_bytes())
  service=self.root/'data/adb/service.d/90-unica-spen-v5.sh';service.parent.mkdir();service.write_bytes((SPEN/'diagnostics/service.sh').read_bytes())
  s=(SPEN/'recovery/crown-scan-v6.sh').read_text()
  s=re.sub(r'/(?:system_root|system|vendor|data|dev/block|tmp/unica-note9-spen-scan-v6)(?:/[A-Za-z0-9_.-]+)*',lambda m:str(self.root)+m.group(0),s)
  s=s.replace('/proc/mounts',str(b.mounts)).replace('[ -b "$candidate" ]','[ -f "$candidate" ]').replace('/sbin/sh','/bin/sh')
  s=s.replace('7aa47e01f336bd3dea586c97a49e4c60ffb5b9bacdd178425bc2221349744c1d',sha(b'old-air-fixture'))
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
  Path(str(self.b.air)+'.unica-scan-v6-original').write_bytes(b'changed')
  self.assertNotEqual(self.run_patch('restore').returncode,0)
  self.assertEqual(self.b.air.read_bytes(),b'candidate-apk')
if __name__=='__main__':unittest.main()
