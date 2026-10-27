from pathlib import Path
import hashlib,importlib.util,subprocess,tempfile,unittest
ROOT=Path(__file__).resolve().parents[2]
FINAL=ROOT/'unica/patches/exynos9810_device_stack/exynos9810_finalization'
spec=importlib.util.spec_from_file_location('performance_policy',FINAL/'performance/performance_policy.py')
policy=importlib.util.module_from_spec(spec);spec.loader.exec_module(policy)

class PerformancePolicyTests(unittest.TestCase):
    def setUp(self):
        self.tmp=tempfile.TemporaryDirectory(prefix='unica-performance-');self.addCleanup(self.tmp.cleanup)
        self.work=Path(self.tmp.name)
        for rel in policy.PROP_FILES:
            p=self.work/rel;p.parent.mkdir(parents=True,exist_ok=True)
            p.write_text('# donor\nkeep.me=yes\nro.config.dha_cached_max=999\npm.dexopt.first-boot.concurrency=4\n')
    def test_all_targets_both_filesystems_real_finalizer_is_idempotent(self):
        source=(FINAL/'customize.sh').read_text()
        functions=[]
        for name,next_name in [('_EXYNOS9810_FINAL_RAM_TWEAKS','_EXYNOS9810_FINAL_ENSURE_DISPLAY_PROPS'),('_EXYNOS9810_FINAL_VERIFY_RAM_PROFILE','_EXYNOS9810_FINAL_SET_FLOATING_FEATURE_BOTH')]:
            start=source.index(name+'()\n{');end=source.index('\n'+next_name+'()',start)
            functions.append(source[start:end])
        for target in policy.TARGETS:
            for fs in ('ext4','erofs'):
                with self.subTest(target=target,fs=fs):
                    obsolete=self.work/'vendor/bin/ram_tweaks.sh';obsolete.parent.mkdir(exist_ok=True);obsolete.write_text('old reclaim loop')
                    script='\n'.join(functions)+'''\nLOG() { :; }; LOGE() { echo "$*" >&2; }
WORK_DIR="$1"; MODPATH="$2"; TARGET_CODENAME="$3"; TARGET_OS_FILE_SYSTEM_TYPE="$4"
_EXYNOS9810_FINAL_RAM_TWEAKS && _EXYNOS9810_FINAL_VERIFY_RAM_PROFILE
'''
                    args=['bash','-c',script,'test',str(self.work),str(FINAL),target,fs]
                    subprocess.run(args,check=True,capture_output=True)
                    before={p:p.read_bytes() for _,p in policy.existing_props(self.work)}
                    subprocess.run(args,check=True,capture_output=True)
                    self.assertEqual(before,{p:p.read_bytes() for _,p in policy.existing_props(self.work)})
                    policy.verify(self.work,target)
                    self.assertFalse(obsolete.exists())
    def test_s9_uses_stock_cache_bounds_and_bounded_compiler_parallelism(self):
        values=policy.apply(self.work,'starlte')
        self.assertEqual([values[k] for k in ['ro.config.dha_cached_min','ro.config.dha_cached_max','ro.config.dha_empty_max']],['6','19','24'])
        self.assertEqual(values['pm.dexopt.first-boot.concurrency'],'1')
        self.assertEqual(values['dalvik.vm.boot-dex2oat-threads'],'2')
        self.assertEqual(values['ro.config.dha_pwhitelist_enable'],'1')
        self.assertNotIn('ro.config.low_ram',values)
        self.assertFalse(any('heapgrowthlimit' in k or 'lmk_minfree' in k for k in values))
    def test_six_gb_targets_keep_same_accepted_cache_budget(self):
        self.assertEqual(policy.expected('star2lte'),policy.expected('crownlte'))
        self.assertEqual(policy.expected('star2lte')['ro.config.dha_cached_max'],'24')
    def test_art_defaults_do_not_force_all_apps_or_disable_jit(self):
        for target in policy.TARGETS:
            p=policy.expected(target)
            self.assertEqual(p['dalvik.vm.systemuicompilerfilter'],'speed')
            self.assertEqual(p['pm.dexopt.first-boot'],'verify')
            self.assertEqual(p['pm.dexopt.bg-dexopt'],'speed-profile')
            self.assertEqual(p['pm.dexopt.disable_bg_dexopt'],'false')
            self.assertNotIn('dalvik.vm.usejit',p)
    def test_unknown_target_rejected_before_writes(self):
        before={p:p.read_bytes() for _,p in policy.existing_props(self.work)}
        with self.assertRaises(ValueError):policy.apply(self.work,'unknown')
        self.assertEqual(before,{p:p.read_bytes() for _,p in policy.existing_props(self.work)})
    def test_duplicate_or_stale_value_blocks_packaging(self):
        policy.apply(self.work,'crownlte');policy.verify(self.work,'crownlte')
        p=self.work/'vendor/build.prop';p.write_text(p.read_text()+'dalvik.vm.systemuicompilerfilter=verify\n')
        with self.assertRaisesRegex(ValueError,'duplicated'):policy.verify(self.work,'crownlte')
        policy.apply(self.work,'crownlte')
        with self.assertRaisesRegex(ValueError,'missing, stale'):policy.verify(self.work,'starlte')
    def test_retired_reclaim_or_low_ram_feature_cut_is_rejected(self):
        policy.apply(self.work,'starlte')
        p=self.work/'system/system/build.prop';base=p.read_text()
        for extra in ['ro.config.low_ram=true\n','ro.sys.fw.use_trim_settings=true\n']:
            p.write_text(base+extra)
            with self.assertRaises(ValueError):policy.verify(self.work,'starlte')
        p.write_text(base)
        p=self.work/'vendor/etc/init/ram_tweaks.rc';p.parent.mkdir(parents=True);p.write_text('old')
        with self.assertRaisesRegex(ValueError,'reclaim script'):policy.verify(self.work,'starlte')
    def test_legacy_surfaceflinger_backpressure_flag_is_removed_and_rejected(self):
        p=self.work/'vendor/build.prop'
        p.write_text(p.read_text()+'debug.sf.disable_backpressure=1\n')
        policy.apply(self.work,'star2lte')
        self.assertNotIn('debug.sf.disable_backpressure=',p.read_text())
        policy.verify(self.work,'star2lte')
        p.write_text(p.read_text()+'debug.sf.disable_backpressure=1\n')
        with self.assertRaisesRegex(ValueError,'Retired reclaim override'):policy.verify(self.work,'star2lte')
    def test_canonical_policy_does_not_rewrite_files_on_resumed_builds(self):
        policy.apply(self.work,'starlte')
        before={p:p.stat().st_mtime_ns for _,p in policy.existing_props(self.work)}
        policy.apply(self.work,'starlte')
        self.assertEqual(before,{p:p.stat().st_mtime_ns for _,p in policy.existing_props(self.work)})
    def test_actual_display_finalizer_removes_unverified_flag(self):
        source=(FINAL/'customize.sh').read_text()
        def functions(start,end):
            return source[source.index(start+'()\n{'):source.index('\n'+end+'()',source.index(start+'()\n{'))]
        script='\n'.join([
            functions('_EXYNOS9810_FINAL_SET_PROP','_EXYNOS9810_FINAL_ENSURE_TARGET_IDENTITY'),
            functions('_EXYNOS9810_FINAL_ENSURE_DISPLAY_PROPS','_EXYNOS9810_FINAL_PATCH_EXTERNAL_DISPLAY'),
            'LOG() { :; }',
            'WORK_DIR="$1"',
            '_EXYNOS9810_FINAL_ENSURE_DISPLAY_PROPS',
        ])
        system=self.work/'system/system/build.prop'
        vendor=self.work/'vendor/build.prop'
        for fs in ('ext4','erofs'):
            with self.subTest(filesystem=fs):
                vendor.write_text('unmanaged=preserved\ndebug.sf.disable_backpressure=1\n')
                args=['bash','-c',script,'test',str(self.work)]
                subprocess.run(args,check=True,capture_output=True)
                self.assertNotIn('debug.sf.disable_backpressure=',vendor.read_text())
                self.assertIn('ro.surface_flinger.max_frame_buffer_acquired_buffers=3',vendor.read_text())
                self.assertIn('debug.sf.latch_unsignaled=0',vendor.read_text())
                self.assertIn('unmanaged=preserved',vendor.read_text())
                before=(system.read_bytes(),vendor.read_bytes())
                subprocess.run(args,check=True,capture_output=True)
                self.assertEqual(before,(system.read_bytes(),vendor.read_bytes()))
    def test_property_symlink_is_rejected(self):
        p=self.work/'vendor/build.prop';p.unlink();p.symlink_to(self.work/'system/system/build.prop')
        with self.assertRaisesRegex(ValueError,'symlink'):policy.apply(self.work,'starlte')
    def test_unmanaged_preferences_preserved_and_no_external_dependencies(self):
        policy.apply(self.work,'starlte')
        self.assertTrue(all('keep.me=yes' in p.read_text() for _,p in policy.existing_props(self.work)))
        text=(FINAL/'performance/performance_policy.py').read_text()
        self.assertNotIn('/home/admin1',text)
        checker=(ROOT/'scripts/internal/verify_exynos9810_release_defaults.py').read_text()
        self.assertIn('verify_performance(work, target)',checker)
        make=(ROOT/'scripts/make_rom.sh').read_text()
        self.assertGreaterEqual(make.count('verify_exynos9810_release_defaults.py'),2)
    def test_actual_release_entry_rejects_drift_before_packaging_artifacts(self):
        policy.apply(self.work,'starlte')
        p=self.work/'system/system/build.prop'
        p.write_text(p.read_text().replace('dalvik.vm.systemuicompilerfilter=speed',
                                           'dalvik.vm.systemuicompilerfilter=verify'))
        run=subprocess.run(['python3',str(ROOT/'scripts/internal/verify_exynos9810_release_defaults.py'),
                            '--work-dir',str(self.work),'--target','starlte'],capture_output=True,text=True)
        self.assertNotEqual(run.returncode,0)
        self.assertIn('dalvik.vm.systemuicompilerfilter',run.stderr)
        self.assertIn('missing, stale or duplicated',run.stderr)
        self.assertNotIn('FileNotFoundError',run.stderr)

if __name__=='__main__':unittest.main(verbosity=2)
