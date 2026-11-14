"""Exercise real finalizer staging on isolated copies of all three binaries."""
from pathlib import Path
import hashlib
import os
import subprocess
import tempfile
import unittest

from patch_external_display import patch, PATCHED_SHA256, OFFSET_HOOK, OFFSET_TRAMPOLINE

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
                clean_stock = bytearray(original)
                if hashlib.sha256(original).hexdigest() == '2f2b358c7c84bae33b7042397c4d6d1b770e8e0015079ec28eca7404ab2cd630':
                    clean_stock[0x45264c:0x45264c + 4] = bytes.fromhex("80020036")
                self.assertEqual(len(output), len(original))
                self.assertEqual(output[:OFFSET_HOOK], clean_stock[:OFFSET_HOOK])
                self.assertEqual(output[OFFSET_HOOK + 4:OFFSET_TRAMPOLINE], clean_stock[OFFSET_HOOK + 4:OFFSET_TRAMPOLINE])
                self.assertEqual(output[OFFSET_TRAMPOLINE + 12:], clean_stock[OFFSET_TRAMPOLINE + 12:])
                self.assertEqual(patch(output, verify_only=True), output)
                damaged = bytearray(output)
                damaged[-1] ^= 1
                with self.assertRaises(ValueError):
                    patch(bytes(damaged))
                with self.assertRaises(ValueError):
                    patch(original, verify_only=True)


if __name__ == '__main__':
    unittest.main()
