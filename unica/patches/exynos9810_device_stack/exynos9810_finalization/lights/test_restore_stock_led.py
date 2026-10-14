from pathlib import Path
import tempfile
import unittest
from restore_stock_led import restore

class StockLedTests(unittest.TestCase):
    def test_defaults_only_and_idempotent(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            values = root / 'res/values'
            values.mkdir(parents=True)
            colour = values / 'colors.xml'
            timing = values / 'integers.xml'
            colour.write_text('<resources><color name="config_defaultNotificationColor">#ffffffff</color><color name="other">#ff123456</color></resources>')
            timing.write_text('<resources><integer name="config_defaultNotificationLedOff">2000</integer><integer name="config_defaultNotificationLedOn">500</integer></resources>')
            restore(root)
            self.assertIn('#ff0000ff', colour.read_text())
            self.assertIn('#ff123456', colour.read_text())
            self.assertIn('>5000<', timing.read_text())
            self.assertIn('>500<', timing.read_text())
            before = (colour.read_bytes(), timing.read_bytes())
            restore(root)
            self.assertEqual(before, (colour.read_bytes(), timing.read_bytes()))

    def test_missing_resource_rejects_without_partial_write(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            values = root / 'res/values'
            values.mkdir(parents=True)
            colour = values / 'colors.xml'
            colour.write_text('<resources><color name="config_defaultNotificationColor">#ffffffff</color></resources>')
            (values / 'integers.xml').write_text('<resources/>')
            before = colour.read_bytes()
            with self.assertRaises(ValueError):
                restore(root)
            self.assertEqual(colour.read_bytes(), before)

if __name__ == '__main__':
    unittest.main()
