from pathlib import Path
import importlib.util,subprocess,tempfile,unittest
ROOT=Path(__file__).resolve().parents[2]
FINAL=ROOT/'unica/patches/exynos9810_device_stack/exynos9810_finalization'
spec=importlib.util.spec_from_file_location('optional_preload_policy',FINAL/'optional_apps/optional_preload_policy.py')
preload=importlib.util.module_from_spec(spec);spec.loader.exec_module(preload)

class OptionalPreloadTests(unittest.TestCase):
    def setUp(self):
        self.tmp=tempfile.TemporaryDirectory(prefix='unica-preload-');self.addCleanup(self.tmp.cleanup)
        self.work=Path(self.tmp.name);self.etc=self.work/'system/system/etc';self.etc.mkdir(parents=True)
    def test_package_identity_and_aliases_removed_without_touching_other_sections(self):
        before="[Drive]\nname='com.google.android.apps.docs'\napplication-label='Use SmartSwitch files'\n\n"
        text=before+"[Localized label]\nname='com.sec.android.easyMover'\napplication-label='Smart Switch'\n[AgentAlias]\nname='com.sec.android.easyMover.Agent'\n[SmartSwitchAssistant]\nname='com.samsung.android.smartswitchassistant'\n[SamsungCloud]\nname='com.samsung.android.scloud'\n"
        self.assertEqual(preload.filter_catalog(text),before)
    def test_crlf_and_header_comment_are_supported(self):
        text="# header\r\n[SmartSwitch]\r\nname='com.sec.android.easyMover'\r\n[Keep]\r\nname='keep.app'\r\n"
        self.assertEqual(preload.filter_catalog(text),"# header\r\n[Keep]\r\nname='keep.app'\r\n")
    def test_apply_is_idempotent_across_catalog_locations(self):
        for directory in preload.CATALOG_DIRS:
            p=self.work/directory;p.mkdir(parents=True,exist_ok=True)
            (p/'removable_preload.txt').write_text("[Renamed]\nname='com.sec.android.easyMover'\n[Keep]\nname='keep.app'\n")
            (p/'userdata_apks_count_list.txt').write_text('/data/app/SmartSwitch/SmartSwitch.apk\n/data/app/EasyMoverAgent/EasyMoverAgent.apk\n/data/app/Keep/Keep.apk\n')
        preload.apply(self.work,'starlte');preload.verify(self.work,'starlte')
        before={p:p.read_bytes() for p in preload.catalogs(self.work)}
        preload.apply(self.work,'starlte');self.assertEqual(before,{p:p.read_bytes() for p in preload.catalogs(self.work)})
        self.assertTrue(all(b'Keep' in b or b'keep.app' in b for b in before.values()))
    def test_late_preload_or_apk_reintroduction_is_rejected(self):
        (self.etc/'removable_preload.txt').write_text("[Other label]\nname='com.sec.android.easyMover.Agent'\n")
        with self.assertRaises(ValueError):preload.verify(self.work,'star2lte')
        preload.apply(self.work,'star2lte')
        p=self.work/'system/system/app/SmartSwitchStub/SmartSwitchStub.apk';p.parent.mkdir(parents=True);p.write_bytes(b'app fixture')
        with self.assertRaisesRegex(ValueError,'directory remains'):preload.verify(self.work,'star2lte')
    def test_unknown_target_does_not_modify_catalog(self):
        p=self.etc/'userdata_apks_count_list.txt';p.write_text('/data/app/SmartSwitch/SmartSwitch.apk\n');before=p.read_bytes()
        with self.assertRaises(ValueError):preload.apply(self.work,'other')
        self.assertEqual(p.read_bytes(),before)
    def test_real_final_debloat_for_six_target_filesystem_combinations(self):
        text=(FINAL/'customize.sh').read_text();start=text.index('_EXYNOS9810_FINAL_DEBLOAT()\n{');end=text.index('\n_EXYNOS9810_FINAL_VERIFY_SAMSUNG_CLOUD_ABSENT()',start)
        # Production shell removal only touches fixture paths in this test.
        script=text[start:end]+'''
LOG(){ :; }
WORK_DIR="$1"; MODPATH="$2"; TARGET_CODENAME="$3"; TARGET_OS_FILE_SYSTEM_TYPE="$4"
_EXYNOS9810_FINAL_DELETE_FOUND_DIR(){ case "$1" in "$WORK_DIR"/*) rm -rf -- "$1";; *) return 1;; esac; }
_EXYNOS9810_FINAL_DELETE_SYSTEM_ENTRY(){ rm -rf -- "$WORK_DIR/system/$1"; }
_EXYNOS9810_FINAL_DEBLOAT
'''
        (self.work/'product').mkdir()
        keep=self.work/'system/system/app/SamsungAccount/SamsungAccount.apk';keep.parent.mkdir(parents=True);keep.write_bytes(b'account fixture')
        for target in preload.TARGETS:
            for fs in ('ext4','erofs'):
                with self.subTest(target=target,fs=fs):
                    app=self.work/'system/system/preload/SmartSwitch/SmartSwitch.apk';app.parent.mkdir(parents=True,exist_ok=True);app.write_bytes(b'preload fixture')
                    (self.etc/'removable_preload.txt').write_text("[Different label]\nname='com.sec.android.easyMover'\n[Keep]\nname='keep.app'\n")
                    subprocess.run(['bash','-c',script,'test',str(self.work),str(FINAL),target,fs],check=True,capture_output=True)
                    self.assertFalse(app.exists());self.assertEqual(keep.read_bytes(),b'account fixture')
                    preload.verify(self.work,target)
    def test_package_is_not_globally_disabled(self):
        source=(FINAL/'optional_apps/optional_preload_policy.py').read_text()
        self.assertNotIn('pm disable',source)
        self.assertNotIn('backup_enabled',source)
        self.assertNotIn('backup_auto_restore',source)

if __name__=='__main__':unittest.main(verbosity=2)
