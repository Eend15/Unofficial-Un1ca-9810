from pathlib import Path
import tempfile
import subprocess
import unittest

from patch_crown_scan import patch, OLD, NEW, MARKER, UUID
from verify_note9_rebuilt_artifacts import verify_crown_discovery

ROOT = Path(__file__).resolve().parents[5]
SIGNATURE = '.method public final a(Landroid/content/Context;ILandroid/os/ParcelUuid;LD0/c;Ljava/lang/String;LR2/a;)V'


class CrownDiscoveryTests(unittest.TestCase):
    def fixture(self):
        return 'prefix\n' + SIGNATURE + '\n    .locals 4\n' + OLD + '\n.end method\nsuffix\n'

    def test_scoped_replacement_idempotence_and_preserved_surroundings(self):
        original = self.fixture()
        result = patch(original)
        self.assertEqual(result, original.replace(OLD, NEW, 1))
        self.assertEqual(patch(result), result)
        # Address reconnect bypass precedes service filtering; explicit donor
        # filter branch is outside this replacement entirely.
        self.assertLess(NEW.index('if-eqz p4, :unica_crown_address_only'),
                        NEW.index('->setServiceUuid('))
        self.assertIn('const/4 p4, 0x1', NEW)
        self.assertIn(UUID, NEW)

    def test_unknown_or_incomplete_input_rejected(self):
        with self.assertRaises(ValueError):
            patch(self.fixture().replace(':cond_8', ':cond_88'))
        with self.assertRaises(ValueError):
            patch(patch(self.fixture()).replace(UUID, '00000000-0000-0000-0000-000000000000'))

    def test_real_scanner_assembles_and_disassembles(self):
        source = ROOT / 'out/target/crownlte/apktool/system/priv-app/AirCommand/AirCommand.apk/smali/R2/b.smali'
        jar = ROOT / 'out/tools/bin/apktool.jar'
        if not source.exists() or not jar.exists():
            self.skipTest('real decoded donor and Apktool required')
        result = patch(source.read_text())
        with tempfile.TemporaryDirectory(prefix='crown-discovery-') as td:
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
            self.assertIn(UUID, rebuilt)
            self.assertIn('->setServiceUuid(Landroid/os/ParcelUuid;)', rebuilt)
            self.assertIn('->setDeviceAddress(Ljava/lang/String;)', rebuilt)
            self.assertIn('LB4/i;->d(Landroid/bluetooth/le/ScanFilter', rebuilt)
            verify_crown_discovery(rebuilt)
            with self.assertRaises(ValueError):
                verify_crown_discovery(rebuilt.replace(UUID, 'INVALID'))


if __name__ == '__main__':
    unittest.main()
