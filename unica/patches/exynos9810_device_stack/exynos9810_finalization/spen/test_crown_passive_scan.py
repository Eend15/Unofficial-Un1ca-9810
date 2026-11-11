from pathlib import Path
import subprocess
import tempfile
import unittest

from patch_crown_passive_scan_v10 import patch, ANCHOR, INSERT, MARKER, SIGNATURE
import patch_crown_scan
from verify_note9_rebuilt_artifacts import verify_crown_discovery

ROOT = Path(__file__).resolve().parents[5]


class CrownPassiveScanTests(unittest.TestCase):
    def fixture(self):
        return patch_crown_scan.patch(
            'prefix\n' + SIGNATURE + '\n    .locals 4\n' + patch_crown_scan.OLD + '\n.end method\nsuffix\n')

    def test_inserted_once_after_service_uuid_and_idempotent(self):
        original = self.fixture()
        result = patch(original)
        self.assertEqual(result, original.replace(ANCHOR, ANCHOR + INSERT, 1))
        self.assertEqual(patch(result), result)
        self.assertEqual(result.count(MARKER), 1)
        self.assertLess(result.index('->setServiceUuid('), result.index('->semEnablePassiveScan()'))

    def test_requires_service_filter_and_rejects_partial(self):
        bare = 'prefix\n' + SIGNATURE + '\n    .locals 4\n' + patch_crown_scan.OLD + '\n.end method\n'
        with self.assertRaises(ValueError):
            patch(bare)
        with self.assertRaises(ValueError):
            patch(patch(self.fixture()).replace('->semEnablePassiveScan()', '->build()'))

    def test_real_scanner_assembles_and_disassembles(self):
        source = ROOT / 'out/target/crownlte/apktool/system/priv-app/AirCommand/AirCommand.apk/smali/R2/b.smali'
        jar = ROOT / 'out/tools/bin/apktool.jar'
        if not source.exists() or not jar.exists():
            self.skipTest('real decoded donor and Apktool required')
        result = patch(patch_crown_scan.patch(source.read_text()))
        with tempfile.TemporaryDirectory(prefix='crown-passive-') as td:
            directory = Path(td)
            (directory / 'scanner.smali').write_text(result)
            dex = directory / 'classes.dex'
            assembled = subprocess.run(['java', '-cp', str(jar),
                            'com.android.tools.smali.smali.Main', 'assemble',
                            '--api', '34', '-o', str(dex), str(directory / 'scanner.smali')],
                           text=True, capture_output=True)
            self.assertEqual(assembled.returncode, 0, assembled.stdout + assembled.stderr)
            output = directory / 'decoded'
            subprocess.run(['java', '-cp', str(jar),
                            'com.android.tools.smali.baksmali.Main', 'disassemble',
                            '-o', str(output), str(dex)], check=True, capture_output=True)
            rebuilt = (output / 'R2/b.smali').read_text()
            verify_crown_discovery(rebuilt)
            with self.assertRaises(ValueError):
                verify_crown_discovery(rebuilt.replace('->semEnablePassiveScan()', '->build()'))


if __name__ == '__main__':
    unittest.main()
