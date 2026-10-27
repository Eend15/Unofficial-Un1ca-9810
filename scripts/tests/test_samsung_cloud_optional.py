from pathlib import Path
import importlib.util,subprocess,tempfile,unittest
ROOT=Path(__file__).resolve().parents[2]
FINAL=ROOT/'unica/patches/exynos9810_device_stack/exynos9810_finalization'
spec=importlib.util.spec_from_file_location('samsung_cloud_policy',FINAL/'optional_apps/samsung_cloud_policy.py')
cloud=importlib.util.module_from_spec(spec);spec.loader.exec_module(cloud)

class SamsungCloudOptionalTests(unittest.TestCase):
    def setUp(self):
        self.tmp=tempfile.TemporaryDirectory(prefix='unica-cloud-');self.addCleanup(self.tmp.cleanup)
        self.work=Path(self.tmp.name);self.system=self.work/'system/system'
        self.put('priv-app/SCPMAgent/SCPMAgent.apk',b'anchor fixture; no signature test claimed')
        self.put('etc/permissions/privapp-permissions-com.samsung.android.scloud.xml',
                 '<permissions><privapp-permissions package="com.samsung.android.scloud"/></permissions>')
        self.put('etc/sysconfig/package-shareduid-allowlist.xml','''<config>
<allow-package-shareduid package="com.samsung.android.scloud" shareduid="android.uid.samsungcloud"/>
<allow-package-shareduid package="com.samsung.android.scpm" shareduid="android.uid.samsungcloud"/>
</config>''')
        self.put('etc/sysconfig/unica_exynos9810_scloud_components.xml','''<config><component-override package="com.samsung.android.scpm"><component class=".app.ScpmReceiver" enabled="false"/></component-override></config>''')
        self.put('etc/removable_preload.txt','[OtherApp]\npackage=keep.this\n')
    def put(self,rel,data):
        p=self.system/rel;p.parent.mkdir(parents=True,exist_ok=True)
        p.write_bytes(data if isinstance(data,bytes) else data.encode());return p
    def test_real_finalizer_check_for_three_targets_and_two_filesystems(self):
        s=(FINAL/'customize.sh').read_text();start=s.index('_EXYNOS9810_FINAL_VERIFY_SAMSUNG_CLOUD_ABSENT()\n{');end=s.index('\n_EXYNOS9810_FINAL_STAGE_SCPM_ANCHOR()',start)
        script=s[start:end]+'''\nLOG(){ :; }; WORK_DIR="$1"; MODPATH="$2"; TARGET_CODENAME="$3"; TARGET_OS_FILE_SYSTEM_TYPE="$4"
_EXYNOS9810_FINAL_VERIFY_SAMSUNG_CLOUD_ABSENT
'''
        for target in ('starlte','star2lte','crownlte'):
            for fs in ('ext4','erofs'):
                with self.subTest(target=target,fs=fs):
                    subprocess.run(['bash','-c',script,'test',str(self.work),str(FINAL),target,fs],check=True,capture_output=True)
        self.assertEqual((self.system/'priv-app/SCPMAgent/SCPMAgent.apk').read_bytes(),b'anchor fixture; no signature test claimed')
    def test_all_known_cloud_locations_are_rejected(self):
        for rel in ('system/system/priv-app/SamsungCloudClient/a.apk','system/system/app/SamsungCloud/a.apk','product/app/SamsungCloudClient/a.apk','system/system/app/Other/SamsungCloudClient.apk'):
            p=self.work/rel;p.parent.mkdir(parents=True,exist_ok=True);p.write_bytes(b'app fixture')
            with self.assertRaises(ValueError):cloud.verify(self.work,'starlte')
            p.unlink()
            # Keep no known Cloud directory for the next independent case.
            if p.parent.name in ('SamsungCloud','SamsungCloudClient'):p.parent.rmdir()
    def test_missing_anchor_apk_fails_even_when_directory_exists(self):
        (self.system/'priv-app/SCPMAgent/SCPMAgent.apk').unlink()
        with self.assertRaisesRegex(ValueError,'anchor APK'):cloud.verify(self.work,'star2lte')
    def test_missing_cloud_permission_contract_is_rejected(self):
        self.put('etc/permissions/privapp-permissions-com.samsung.android.scloud.xml','<permissions/>')
        with self.assertRaisesRegex(ValueError,'permission metadata'):cloud.verify(self.work,'crownlte')
    def test_shared_uid_entry_is_required(self):
        self.put('etc/sysconfig/package-shareduid-allowlist.xml','<config/>')
        with self.assertRaisesRegex(ValueError,'shared-UID'):cloud.verify(self.work,'crownlte')
    def test_preload_or_cloud_disable_blocks_release(self):
        p=self.put('etc/removable_preload.txt','[SamsungCloud]\npackage=com.samsung.android.scloud\n')
        with self.assertRaisesRegex(ValueError,'preload trigger'):cloud.verify(self.work,'starlte')
        p.write_text('')
        self.put('etc/sysconfig/cloud-block.xml','<config><component-override package="com.samsung.android.scloud"><component class=".Receiver" enabled="false"/></component-override></config>')
        with self.assertRaisesRegex(ValueError,'component is disabled'):cloud.verify(self.work,'starlte')
    def test_no_catchall_cloud_removal(self):
        self.put('app/VisualCloudCore/VisualCloudCore.apk',b'unrelated app fixture')
        cloud.verify(self.work,'crownlte')

if __name__=='__main__':unittest.main(verbosity=2)
