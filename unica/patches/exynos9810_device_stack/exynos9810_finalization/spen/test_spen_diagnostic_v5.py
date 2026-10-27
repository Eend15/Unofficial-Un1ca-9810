from pathlib import Path
import hashlib,os,re,subprocess,sys,unittest,zipfile
SPEN=Path(__file__).resolve().parent
sys.path.insert(0,str(SPEN))
from test_spen_recovery import RecoveryPatchTests
sha=lambda b:hashlib.sha256(b).hexdigest()
class V5Recovery(unittest.TestCase):
 def setUp(self):
  self.b=RecoveryPatchTests(methodName='test_wrong_phone_is_rejected_before_writes');self.b.setUp();self.addCleanup(self.b.doCleanups)
  self.root=self.b.root
  self.b.notes.write_bytes(b'modern-apk')
  self.lib=self.b.notes.parent/'lib/arm64';self.lib.mkdir(parents=True)
  (self.lib/'libSPenRecognizer.so').write_bytes(b'existing-v4-or-original')
  (self.lib/'libExtra.so').write_bytes(b'keep-extra')
  self.base=self.root/'data/adb/unica-spen-v5'
  daemon=self.root/'data/adb/ksud';daemon.parent.mkdir(parents=True);daemon.write_text('fixture');daemon.chmod(0o700)
  self.payload=self.root/'tmp/unica-note9-spen-v5';self.payload.mkdir(parents=True)
  native=self.payload/'native';native.mkdir()
  for name in ['libc++_shared.so','libSPenRecognizer.so']:(native/name).write_bytes(('v5-'+name).encode())
  (self.payload/'native.sha256').write_text(''.join(sha(f.read_bytes())+'  native/'+f.name+'\n' for f in native.iterdir()))
  (self.payload/'native-installed.sha256').write_text(''.join(sha(f.read_bytes())+'  '+f.name+'\n' for f in native.iterdir()))
  for name,src in [('collect.sh','diagnostics/collect.sh'),('service.sh','diagnostics/service.sh')]:
   (self.payload/name).write_bytes((SPEN/src).read_bytes())
  (self.payload/'logger.sha256').write_text(''.join(sha((self.payload/n).read_bytes())+'  '+n+'\n' for n in ['collect.sh','service.sh']))
  def redirect(text):
   text=re.sub(r'/(?:system_root|system|vendor|data|dev/block|tmp/unica-note9-spen-v5)(?:/[A-Za-z0-9_.-]+)*',lambda m:str(self.root)+m.group(0),text)
   text=text.replace('/proc/mounts',str(self.b.mounts)).replace('[ -b "$candidate" ]','[ -f "$candidate" ]')
   return text.replace('/sbin/sh','/bin/sh').replace('daed1eff8c8ee9dfb8afe2771e39e893a8808f3230d6d522a8aa647db09b8667',sha(self.b.notes.read_bytes()))
  (self.payload/'native-install.sh').write_text(redirect((SPEN/'recovery/notes-native-install-v5.sh').read_text()))
  self.script=self.root/'v5-install.sh';self.script.write_text(redirect((SPEN/'recovery/spen-v5-install.sh').read_text()))
 def run_patch(self,mode='install',**env):
  return subprocess.run(['sh',str(self.script),mode],env=dict(os.environ,PATH=str(self.b.bin)+':'+os.environ['PATH'],**env),text=True,capture_output=True)
 def test_install_repeat_restore_preserves_all_previous_files(self):
  r=self.run_patch();self.assertEqual(r.returncode,0,r.stdout+r.stderr)
  self.assertEqual((self.lib/'libSPenRecognizer.so').read_bytes(),b'v5-libSPenRecognizer.so')
  self.assertEqual((self.lib/'libExtra.so').read_bytes(),b'keep-extra')
  self.assertTrue((self.base/'armed').exists())
  r=self.run_patch();self.assertEqual(r.returncode,0,r.stdout+r.stderr)
  r=self.run_patch('restore');self.assertEqual(r.returncode,0,r.stdout+r.stderr)
  self.assertEqual((self.lib/'libSPenRecognizer.so').read_bytes(),b'existing-v4-or-original')
  self.assertFalse((self.root/'data/adb/service.d/90-unica-spen-v5.sh').exists())
  self.assertEqual(self.b.notes.read_bytes(),b'modern-apk')
 def test_corrupt_logger_rejected_before_any_install(self):
  (self.payload/'collect.sh').write_text('bad')
  self.assertNotEqual(self.run_patch().returncode,0)
  self.assertFalse(self.base.exists())
  self.assertEqual((self.lib/'libSPenRecognizer.so').read_bytes(),b'existing-v4-or-original')
 def test_wrong_phone_rejected_without_writes(self):
  self.assertNotEqual(self.run_patch(TEST_BOOTLOADER='G965FTEST').returncode,0)
  self.assertFalse(self.base.exists())
 def test_corrupt_native_preserves_original_and_no_startup(self):
  (self.payload/'native/libSPenRecognizer.so').write_text('bad')
  self.assertNotEqual(self.run_patch().returncode,0)
  self.assertEqual((self.lib/'libSPenRecognizer.so').read_bytes(),b'existing-v4-or-original')
  self.assertFalse((self.root/'data/adb/service.d/90-unica-spen-v5.sh').exists())
 def test_service_commit_failure_restores_native(self):
  mv=self.b.bin/'mv';mv.write_text('#!/bin/sh\ncase "$1" in *service.staged) exit 1;; esac\nexec /bin/mv "$@"\n');mv.chmod(0o755)
  r=self.run_patch();self.assertNotEqual(r.returncode,0)
  self.assertEqual((self.lib/'libSPenRecognizer.so').read_bytes(),b'existing-v4-or-original')
 def test_actual_erofs_rejects(self):
  h=bytearray(4096);h[1024:1028]=bytes.fromhex('e2e1f5e0');self.b.block.write_bytes(h)
  r=self.run_patch();self.assertNotEqual(r.returncode,0)
  self.assertEqual((self.lib/'libSPenRecognizer.so').read_bytes(),b'existing-v4-or-original')
 def test_symlink_rejected(self):
  self.base.symlink_to(self.b.notes.parent,target_is_directory=True)
  self.assertNotEqual(self.run_patch().returncode,0)
 def _exercise_logger(self):
  r=self.run_patch();self.assertEqual(r.returncode,0,r.stdout+r.stderr)
  logger=(self.base/'collect.sh').read_text()
  logger=re.sub(r'/(?:data|system|sys/class/sec/sec_epen)(?:/[A-Za-z0-9_.-]+)*',lambda m:str(self.root)+m.group(0),logger)
  logger=logger.replace('sleep 15','sleep 0').replace('"$i" -lt 32','"$i" -lt 2')
  logger=logger.replace('chown 1023:1023','true')
  script=self.root/'logger.sh';script.write_text(logger)
  for name,body in {'id':'echo 0','getprop':'case "$1" in ro.bootloader) echo N960FTEST;; sys.boot_completed) echo 1;; sys.user.0.ce_available) echo true;; esac','dumpsys':'echo fixture-probe','logcat':'echo "Spen fixture-event"; echo "unrelated fixture"','dmesg':'echo wacom-test','settings':'echo 1','getenforce':'echo Enforcing'}.items():
   f=self.b.bin/name;f.write_text('#!/bin/sh\n'+body+'\n');f.chmod(0o755)
  (self.root/'data/media/0/Download').mkdir()
  report=self.root/'data/user_de/0/com.android.shell/files/bugreports/fixture.zip'
  report.parent.mkdir(parents=True)
  with zipfile.ZipFile(report,'w') as z:z.writestr('bugreport.txt','DUMP OF SERVICE fixture')
  command=self.b.bin/'bugreportz'
  command.write_text('#!/bin/sh\necho "BEGIN:'+str(report)+'"\necho "OK:'+str(report)+'"\n');command.chmod(0o755)
  if getattr(self,'dumpstate_failure',False):
   command.write_text('#!/bin/sh\necho FAIL:fixture-error\nexit 1\n')
  elif getattr(self,'dumpstate_fallback',False):
   command.write_text('#!/bin/sh\necho FAIL:fixture-error\nexit 1\n')
   fallback=self.b.bin/'dumpstate'
   fallback.write_text('#!/bin/sh\necho "Build fingerprint: fixture"\necho "DUMP OF SERVICE fixture"\n');fallback.chmod(0o755)
  df=self.b.bin/'df';df.write_text('#!/bin/sh\necho "Filesystem 1K-blocks Used Available Use% Mounted on"\necho "fixture 4000000 0 4000000 0% /"\n');df.chmod(0o755)
  chown=self.b.bin/'chown';chown.write_text('#!/bin/sh\nexit 0\n');chown.chmod(0o755)
  env=dict(os.environ,PATH=str(self.b.bin)+':'+os.environ['PATH'])
  r=subprocess.run(['sh',str(script)],env=env,capture_output=True,text=True,timeout=20)
  self.assertEqual(r.returncode,0,r.stderr)
  archives=list((self.root/'data/media/0/Download').glob('UN1CA-SPen-Logs-*/*.tar.gz'))
  self.assertEqual(len(archives),1)
  status=(archives[0].parent/'dumpstate-status.txt').read_text()
  if getattr(self,'dumpstate_failure',False):
   self.assertIn('FAILED',status)
   self.assertFalse((archives[0].parent/'dumpstate.zip').exists())
  elif getattr(self,'dumpstate_fallback',False):
   self.assertIn('SUCCESS',status)
   self.assertTrue((archives[0].parent/'dumpstate.log').exists())
  else:
   self.assertEqual((archives[0].parent/'dumpstate.zip').read_bytes(),report.read_bytes())
   self.assertIn('SUCCESS',status)
  self.assertFalse((self.base/'armed').exists())
  self.assertFalse((self.base/'session-lock').exists())
  before=list(self.base.iterdir())
  r=subprocess.run(['sh',str(script)],env=env,capture_output=True,text=True,timeout=10)
  self.assertEqual(r.returncode,0)
  self.assertEqual(list(self.base.iterdir()),before)
 def test_logger_native_dumpstate_zip_and_dated_folder(self):
  self._exercise_logger()
 def test_logger_dumpstate_failure_is_explicit(self):
  self.dumpstate_failure=True
  self._exercise_logger()
 def test_logger_dumpstate_text_fallback(self):
  self.dumpstate_fallback=True
  self._exercise_logger()
 def test_upgrade_previous_v5_collector_preserves_backup(self):
  r=self.run_patch();self.assertEqual(r.returncode,0,r.stdout+r.stderr)
  old=b'known previous v5 logger fixture'
  (self.base/'collect.sh').write_bytes(old)
  script=self.script.read_text().replace('47dda0ca700c5f10bccd888178bad2805b0df50ab2f12529ea23d14d90a3dc0e',sha(old))
  self.script.write_text(script)
  r=self.run_patch();self.assertEqual(r.returncode,0,r.stdout+r.stderr)
  self.assertEqual((self.base/'collect.before-dumpstate.sh').read_bytes(),old)
  self.assertEqual((self.base/'collect.sh').read_bytes(),(self.payload/'collect.sh').read_bytes())
if __name__=='__main__':unittest.main(verbosity=2)
