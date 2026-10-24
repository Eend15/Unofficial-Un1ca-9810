"""Compare real ELF dependencies and preserve all target sensor executable code."""
from pathlib import Path
import hashlib
import struct
import os
import subprocess
import tempfile
import unittest
from patch_note9_sensorhub import patch, restore_transport_dependency, PATCHED_SHA256

ROOT = Path(__file__).resolve().parents[4]
MODULE = Path(__file__).resolve().parents[1]
TARGETS = ROOT / 'unica/patches/exynos9810_device_stack/embedded/exynos9810_legacy_port/device_port/device'


class Note9SensorTests(unittest.TestCase):
    def test_real_module_selects_board_matched_hub_for_each_target(self):
        text = (MODULE / 'customize.sh').read_text()
        start = text.index('for LIB in sensors.sensorhub.so sensors.grip.so; do')
        end = text.index('\ndone', start) + len('\ndone')
        script = '''set -eu
ADD_TO_WORK_DIR() {
    mkdir -p "$WORK_DIR/$2/lib64"
    cp "$1/$2/$3" "$WORK_DIR/$2/$3"
}
''' + text[start:end]
        for target in ('starlte', 'star2lte', 'crownlte'):
            with self.subTest(target=target), tempfile.TemporaryDirectory() as td:
                env = os.environ.copy()
                env.update(TARGET_CODENAME=target, SRC_DIR=str(ROOT),
                           MODPATH=str(MODULE), WORK_DIR=td)
                result = subprocess.run(['bash', '-c', script], env=env, text=True, capture_output=True)
                self.assertEqual(result.returncode, 0, result.stderr + result.stdout)
                hub = (Path(td) / 'vendor/lib64/sensors.sensorhub.so').read_bytes()
                if target == 'crownlte':
                    self.assertEqual(hashlib.sha256(hub).hexdigest(), PATCHED_SHA256)
                else:
                    self.assertEqual(hub, (MODULE / 'payload/vendor/lib64/sensors.sensorhub.so').read_bytes())
                self.assertEqual((Path(td) / 'vendor/lib64/sensors.grip.so').read_bytes(),
                                 (MODULE / 'payload/vendor/lib64/sensors.grip.so').read_bytes())

    def test_dependency_repair_is_exactly_the_working_s9_repair(self):
        stock = (TARGETS / 'star2lte/vendor/lib64/sensors.sensorhub.so').read_bytes()
        fixed = restore_transport_dependency(stock)
        tested = (MODULE / 'payload/vendor/lib64/sensors.sensorhub.so').read_bytes()
        # The embedded donor additionally appends its non-ELF provenance tag.
        self.assertEqual(fixed[:len(tested)], tested)
        self.assertEqual(fixed[len(tested):], b'duhansysl@DuhanROM-V4.3')

    def test_note9_preserves_board_identity_and_every_executable_section(self):
        stock = (TARGETS / 'crownlte/vendor/lib64/sensors.sensorhub.so').read_bytes()
        fixed = patch(stock)
        self.assertEqual(len(stock), len(fixed))
        self.assertIn(b'AK09918C Magnetic field Sensor', fixed)
        self.assertNotIn(b'AK09916C Magnetic field Sensor', fixed)
        self.assertEqual(hashlib.sha256(fixed).hexdigest(), PATCHED_SHA256)
        self.assertEqual(patch(fixed), fixed)
        offset = struct.unpack_from('<Q', stock, 40)[0]
        size, count = struct.unpack_from('<HH', stock, 58)
        for index in range(count):
            section = struct.unpack_from('<IIQQQQIIQQ', stock, offset + size * index)
            if section[2] & 4:  # SHF_EXECINSTR
                begin, length = section[4:6]
                self.assertEqual(stock[begin:begin + length], fixed[begin:begin + length])
        with self.assertRaises(ValueError):
            patch(stock, verify_only=True)
        with self.assertRaises(ValueError):
            patch(fixed[:-1])


if __name__ == '__main__':
    unittest.main()
