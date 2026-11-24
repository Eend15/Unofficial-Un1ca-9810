"""Real Notes payload checks for the build-time native library stager."""
from pathlib import Path
import tempfile,unittest
from stage_notes_native import libraries,stage
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

if __name__=='__main__':unittest.main()
