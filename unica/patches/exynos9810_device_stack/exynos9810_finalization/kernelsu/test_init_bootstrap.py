from pathlib import Path
import re
import unittest
from patch_init_bootstrap import patch, BLOCK

ROOT = Path(__file__).resolve().parents[5]


class InitBootstrapTests(unittest.TestCase):
    def test_real_target_init_order_and_repeat_application(self):
        for target in ("starlte", "star2lte", "crownlte"):
            with self.subTest(target=target):
                source = ROOT / f"out/target/{target}/work_dir/system/system/etc/init/hw/init.rc"
                if not source.is_file():
                    source = ROOT / 'out/fw/SM-S901B_EUX/system/system/etc/init/hw/init.rc'
                original = source.read_text()
                result = patch(original)
                self.assertEqual(result.count("UN1CA_KSUNEXT_EARLY_DAEMON"), 1)
                self.assertEqual(patch(result), result)
                self.assertEqual(result.replace(BLOCK, "", 1), original.replace(BLOCK, "", 1))
                action = re.search(r"^on post-fs-data\n(?:(?!^(?:on |service |import )).)*",
                                   result, re.M | re.S).group()
                self.assertLess(action.index("checkpoint prepareCheckpoint"),
                                action.index("copy /system/bin/ksud /data/adb/ksud"))
                # KernelSu appends its separate action to this main RC; the
                # preparation must complete in the existing main action first.
                injected = result + "\non post-fs-data\n    exec u:r:ksu:s0 root -- /data/adb/ksud post-fs-data\n"
                self.assertLess(injected.index(BLOCK), injected.index("exec u:r:ksu:s0 root -- /data/adb/ksud"))

    def test_changed_or_ambiguous_donor_is_rejected(self):
        for text in ("on boot\n", "on post-fs-data\n    mkdir /data\n",
                     "on post-fs-data\n    checkpoint prepareCheckpoint\non post-fs-data\n    checkpoint prepareCheckpoint\n"):
            with self.assertRaises(ValueError):
                patch(text)

    def test_late_import_does_not_copy_after_the_kernel_hook(self):
        rc = Path(__file__).with_name("unica_ksunext_installer.rc").read_text()
        self.assertNotIn("copy /system/bin/ksud", rc)
        finalizer = (ROOT / "unica/patches/exynos9810_device_stack/exynos9810_finalization/customize.sh").read_text()
        self.assertIn('"$MODPATH/kernelsu/patch_init_bootstrap.py"', finalizer)


if __name__ == "__main__":
    unittest.main()
