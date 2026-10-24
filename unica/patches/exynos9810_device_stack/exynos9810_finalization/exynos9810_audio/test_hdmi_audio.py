from pathlib import Path
import hashlib
import os
import subprocess
import tempfile
import unittest

from patch_hdmi_audio import patch, PATCHED_SHA256, STOCK_SHA256, OFFSET

ROOT = Path(__file__).resolve().parents[5]
FINAL = Path(__file__).resolve().parents[1] / 'customize.sh'
PAYLOAD = Path(__file__).resolve().parent


class HdmiAudioTests(unittest.TestCase):
    def test_all_targets_exact_change_and_rejection(self):
        for target in ('starlte', 'star2lte', 'crownlte'):
            with self.subTest(target=target):
                original = (PAYLOAD / target / 'lib/hw/audio.primary.exynos9810.so').read_bytes()
                self.assertEqual(hashlib.sha256(original).hexdigest(), STOCK_SHA256)
                result = patch(original)
                self.assertEqual(hashlib.sha256(result).hexdigest(), PATCHED_SHA256)
                self.assertEqual([i for i, (a, b) in enumerate(zip(original, result)) if a != b],
                                 [OFFSET + 3])
                self.assertEqual(len(result), len(original))
                self.assertEqual(patch(result), result)
                self.assertEqual(patch(result, verify_only=True), result)
                with self.assertRaises(ValueError):
                    patch(original, verify_only=True)
                corrupt = bytearray(result)
                corrupt[-1] ^= 1
                with self.assertRaises(ValueError):
                    patch(bytes(corrupt))

    def test_actual_finalizer_keeps_target_tuning_and_metadata(self):
        text = FINAL.read_text()
        name = '_EXYNOS9810_FINAL_RESTORE_TARGET_AUDIO_STACK'
        start = text.index(name + '()\n{\n')
        end = text.index('\n}\n', start) + 3
        function = text[start:end]
        for target in ('starlte', 'star2lte', 'crownlte'):
            with self.subTest(target=target), tempfile.TemporaryDirectory() as td:
                work = Path(td)
                env = os.environ.copy()
                env.update(TARGET_CODENAME=target, WORK_DIR=str(work),
                           EXYNOS9810_EMBEDDED_AUDIO_DIR=str(PAYLOAD), MODPATH=str(FINAL.parent))
                script = function + '''
LOG() { :; }
LOGE() { echo "$*" >&2; }
_EXYNOS9810_FINAL_SET_METADATA() { printf '%s\\n' "$*" >> "$WORK_DIR/metadata"; }
_EXYNOS9810_FINAL_RESTORE_TARGET_AUDIO_STACK || exit 1
_EXYNOS9810_FINAL_RESTORE_TARGET_AUDIO_STACK || exit 1
'''
                result = subprocess.run(['bash', '-c', script], env=env, text=True, capture_output=True)
                self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
                binary = work / 'vendor/lib/hw/audio.primary.exynos9810.so'
                self.assertEqual(hashlib.sha256(binary.read_bytes()).hexdigest(), PATCHED_SHA256)
                self.assertIn('vendor vendor/lib/hw/audio.primary.exynos9810.so 0 0 644 u:object_r:vendor_file:s0',
                              (work / 'metadata').read_text())
                for relative in ('etc/mixer_paths.xml', 'etc/mixer_gains.xml',
                                 'firmware/SoundBoosterParam.bin'):
                    self.assertEqual((work / 'vendor' / relative).read_bytes(),
                                     (PAYLOAD / target / relative).read_bytes())


if __name__ == '__main__':
    unittest.main()
