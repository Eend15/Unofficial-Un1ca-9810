"""Real Notes payload checks and isolated production native-installer tests."""
from pathlib import Path
import hashlib,os,re,subprocess,tempfile,unittest
from stage_notes_native import libraries,stage
from test_spen_recovery import RecoveryPatchTests
SPEN=Path(__file__).resolve().parent
APK=SPEN/'notes/SamsungNotes-4.4.45.37.apk'

class NativePayloadTests(unittest.TestCase):
    def test_real_pinned_apk_extract_and_missing_dependency_guard(self):
        with tempfile.TemporaryDirectory(prefix='notes-native-real-') as td:
            dst=Path(td)/'lib/arm64'
            self.assertEqual(stage(APK,dst),107)
            self.assertTrue((dst/'libc++_shared.so').is_file())
            stage(APK,dst,verify=True)
            (dst/'libc++_shared.so').rename(dst/'libc++_shared.so.saved')
            with self.assertRaisesRegex(ValueError,'libc'):
                stage(APK,dst,verify=True)
    def test_modified_apk_is_rejected(self):
        with tempfile.TemporaryDirectory() as td:
            p=Path(td)/'bad.apk';p.write_bytes(b'not the approved APK')
            with self.assertRaisesRegex(ValueError,'Unexpected Notes APK'):libraries(p)

class NativeRecoveryTests(unittest.TestCase):
    def setUp(self):
        self.base=RecoveryPatchTests(methodName='test_wrong_phone_is_rejected_before_writes')
        self.base.setUp();self.addCleanup(self.base.doCleanups)
        self.root=self.base.root
        self.apk=self.base.notes
        self.apk.write_bytes(b'installed-modern-notes-fixture')
        self.lib=self.apk.parent/'lib/arm64';self.lib.mkdir(parents=True)
        (self.lib/'libc++_shared.so').write_bytes(b'previous-lib')
        (self.lib/'preserved-extra.so').write_bytes(b'preserve-me')
        self.payload=self.root/'tmp/unica-note9-notes-native-v3'
        native=self.payload/'native';native.mkdir(parents=True)
        for name in ('libc++_shared.so','libSPenComposer.so'):
            (native/name).write_bytes(('new '+name).encode())
        rows=[(p.name,hashlib.sha256(p.read_bytes()).hexdigest()) for p in sorted(native.iterdir())]
        (self.payload/'native.sha256').write_text(''.join(f'{h}  native/{n}\n' for n,h in rows))
        (self.payload/'native-installed.sha256').write_text(''.join(f'{h}  {n}\n' for n,h in rows))
        text=(SPEN/'recovery/notes-native-install.sh').read_text()
        text=re.sub(r'/(?:system_root|system|vendor|data|dev/block|tmp/unica-note9-notes-native-v3)(?:/[A-Za-z0-9_.-]+)*',lambda m:str(self.root)+m.group(0),text)
        text=text.replace('/proc/mounts',str(self.base.mounts)).replace('[ -b "$candidate" ]','[ -f "$candidate" ]')
        text=text.replace('daed1eff8c8ee9dfb8afe2771e39e893a8808f3230d6d522a8aa647db09b8667',hashlib.sha256(self.apk.read_bytes()).hexdigest())
        self.script=self.root/'native-install.sh';self.script.write_text(text)
        p=self.base.bin/'mv'
        p.write_text('''#!/bin/sh
case "$*" in *arm64.unica-spen-v3-stage*) if [ "${FAIL_NATIVE_MOVE:-0}" = 1 ]; then exit 1; fi;; esac
exec /bin/mv "$@"
''');p.chmod(0o755)
    def run_patch(self,mode='install',**extra):
        return subprocess.run(['sh',str(self.script),mode],env=dict(os.environ,PATH=str(self.base.bin)+':'+os.environ['PATH'],**extra),capture_output=True,text=True)
    def test_install_repeat_restore_and_preserve_existing_files(self):
        before=self.apk.read_bytes()
        r=self.run_patch();self.assertEqual(r.returncode,0,r.stdout+r.stderr)
        self.assertEqual((self.lib/'libc++_shared.so').read_bytes(),b'new libc++_shared.so')
        self.assertEqual((self.lib/'preserved-extra.so').read_bytes(),b'preserve-me')
        self.assertEqual(self.apk.read_bytes(),before)
        r=self.run_patch();self.assertEqual(r.returncode,0,r.stdout+r.stderr)
        r=self.run_patch('restore');self.assertEqual(r.returncode,0,r.stdout+r.stderr)
        self.assertEqual((self.lib/'libc++_shared.so').read_bytes(),b'previous-lib')
        self.assertFalse((self.lib/'libSPenComposer.so').exists())
    def test_corrupt_payload_does_not_replace_original(self):
        (self.payload/'native/libc++_shared.so').write_bytes(b'corrupt')
        self.assertNotEqual(self.run_patch().returncode,0)
        self.assertEqual((self.lib/'libc++_shared.so').read_bytes(),b'previous-lib')
    def test_failed_commit_restores_original_directory(self):
        r=self.run_patch(FAIL_NATIVE_MOVE='1')
        self.assertNotEqual(r.returncode,0)
        self.assertIn('original library directory restored',r.stderr)
        self.assertEqual((self.lib/'libc++_shared.so').read_bytes(),b'previous-lib')
    def test_existing_symlink_is_rejected(self):
        (self.lib/'external.so').symlink_to(self.apk)
        r=self.run_patch();self.assertNotEqual(r.returncode,0)
        self.assertIn('symlinks',r.stderr)
if __name__=='__main__':unittest.main()
