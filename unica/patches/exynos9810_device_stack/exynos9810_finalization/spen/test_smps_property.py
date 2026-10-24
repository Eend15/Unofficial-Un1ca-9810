from pathlib import Path
import subprocess
import tempfile
import unittest
from patch_smps_property import transform

ROOT = Path(__file__).resolve().parents[5]
PATCH = Path(__file__).with_name('patch_smps_property.py')


class SmpsTests(unittest.TestCase):
    def test_valid_property_before_later_identity_properties_is_unchanged(self):
        system = 'ro.smps.enable=true\nro.product.device=crownlte\nro.unica.version=1.5\n'
        vendor = 'ro.vendor.test=2\n'
        self.assertEqual(transform(system, vendor), (system, vendor))

    def test_duplicates_removed_without_altering_other_properties(self):
        system = 'ro.test=1\nro.smps.enable=false\nro.smps.enable=true\n'
        vendor = 'ro.vendor.test=2\nro.smps.enable=true\n'
        expected = ('ro.test=1\nro.smps.enable=true\n', 'ro.vendor.test=2\n')
        self.assertEqual(transform(system, vendor), expected)
        self.assertEqual(transform(*expected), expected)

    def test_real_note9_properties_cli_and_fail_closed_verification(self):
        source = ROOT / 'out/target/crownlte/work_dir'
        with tempfile.TemporaryDirectory() as td:
            work = Path(td)
            for rel in ('system/system/build.prop', 'vendor/build.prop'):
                target = work / rel
                target.parent.mkdir(parents=True, exist_ok=True)
                target.write_bytes((source / rel).read_bytes())
            system = work / 'system/system/build.prop'
            system.write_text(system.read_text() + '\nro.smps.enable=false\n')
            expected = transform(system.read_text(), (work / 'vendor/build.prop').read_text())
            check = subprocess.run(['python3', str(PATCH), str(work), '--verify'], capture_output=True)
            self.assertNotEqual(check.returncode, 0)
            for _ in range(2):
                subprocess.run(['python3', str(PATCH), str(work)], check=True)
            subprocess.run(['python3', str(PATCH), str(work), '--verify'], check=True)
            self.assertEqual((system.read_text(), (work / 'vendor/build.prop').read_text()), expected)


if __name__ == '__main__':
    unittest.main()
