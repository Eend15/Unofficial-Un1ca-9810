"""Exercise real finalizer staging on isolated copies of all three binaries."""
from pathlib import Path
import hashlib
import os
import subprocess
import tempfile
import unittest

from patch_external_display import patch, PATCHED_SHA256, OFFSET

ROOT = Path(__file__).resolve().parents[5]
FINAL = Path(__file__).resolve().parents[1] / 'customize.sh'


class ExternalDisplayTests(unittest.TestCase):
    def test_real_target_binaries_and_finalizer(self):
        text = FINAL.read_text()
        name = '_EXYNOS9810_FINAL_PATCH_EXTERNAL_DISPLAY'
        start = text.index(name + '()\n{\n')
        end = text.index('\n}\n', start) + 3
        function = text[start:end]
        for target in ('starlte', 'star2lte', 'crownlte'):
            with self.subTest(target=target), tempfile.TemporaryDirectory() as td:
                work = Path(td)
                binary = work / 'system/system/bin/surfaceflinger'
                binary.parent.mkdir(parents=True)
                original = (ROOT / 'out/target' / target / 'work_dir/system/system/bin/surfaceflinger').read_bytes()
                binary.write_bytes(original)
                env = os.environ.copy()
                env.update(TARGET_CODENAME=target, WORK_DIR=str(work), MODPATH=str(FINAL.parent))
                script = function + '''
LOG() { :; }
_EXYNOS9810_FINAL_SET_METADATA() { printf '%s\\n' "$*" > "$WORK_DIR/metadata"; }
_EXYNOS9810_FINAL_PATCH_EXTERNAL_DISPLAY || exit 1
_EXYNOS9810_FINAL_PATCH_EXTERNAL_DISPLAY || exit 1
'''
                result = subprocess.run(['bash', '-c', script], env=env, text=True, capture_output=True)
                self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
                output = binary.read_bytes()
                self.assertEqual(hashlib.sha256(output).hexdigest(), PATCHED_SHA256)
                self.assertEqual((work / 'metadata').read_text().strip(),
                                 'system system/bin/surfaceflinger 0 2000 755 u:object_r:surfaceflinger_exec:s0')
                self.assertEqual(len(output), len(original))
                self.assertEqual(output[:OFFSET], original[:OFFSET])
                self.assertEqual(output[OFFSET + 4:], original[OFFSET + 4:])
                self.assertEqual(patch(output, verify_only=True), output)
                damaged = bytearray(output)
                damaged[-1] ^= 1
                with self.assertRaises(ValueError):
                    patch(bytes(damaged))
                with self.assertRaises(ValueError):
                    patch(original, verify_only=True)


if __name__ == '__main__':
    unittest.main()
