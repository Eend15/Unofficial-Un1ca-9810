from pathlib import Path
import tempfile,unittest,zipfile,os
import verify_built as verifier
HERE=Path(__file__).resolve().parent
REPO=HERE.parents[3]
CANDIDATES=Path(os.environ.get('DYNAMIC_ISLAND_TEST_APKS',str(REPO/'out/dynamic-island-module/test-apks')))

class BuiltTest(unittest.TestCase):
    def fixture(self,root):
        paths={
            'system/system/system_ext/priv-app/SystemUI/SystemUI.apk':CANDIDATES/'SystemUI.apk',
            'system/system/priv-app/SecSettings/SecSettings.apk':CANDIDATES/'SecSettings.apk',
            'system/system/app/UnicaDynamicIsland/UnicaDynamicIsland.apk':HERE.parent/'payload/UnicaDynamicIsland.apk',
        }
        for rel,source in paths.items():
            p=root/rel;p.parent.mkdir(parents=True,exist_ok=True);p.symlink_to(source)
        return root/'system/system/app/UnicaDynamicIsland/UnicaDynamicIsland.apk'

    def test_actual_tested_apks_and_exact_source_payload(self):
        with tempfile.TemporaryDirectory(prefix='di-built-') as tmp:
            root=Path(tmp);self.fixture(root)
            verifier.verify(root,REPO/'security/aosp_platform.x509.pem')

    def test_reject_modified_payload(self):
        with tempfile.TemporaryDirectory(prefix='di-built-bad-') as tmp:
            root=Path(tmp);native=self.fixture(root);source=native.resolve();native.unlink()
            with zipfile.ZipFile(source) as old,zipfile.ZipFile(native,'w') as new:
                for info in old.infolist():new.writestr(info,old.read(info.filename))
                new.writestr('untracked-runtime-code.txt',b'not an audited payload')
            with self.assertRaisesRegex(RuntimeError,'Unexpected native APK entries'):
                verifier.verify(root,REPO/'security/aosp_platform.x509.pem')

if __name__=='__main__':unittest.main()
