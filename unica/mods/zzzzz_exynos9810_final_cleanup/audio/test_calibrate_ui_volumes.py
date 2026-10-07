import tempfile
import unittest
from pathlib import Path
import xml.etree.ElementTree as ET

from calibrate_ui_volumes import SPEAKER, UI_TYPES, calibrate

BASELINE = Path(__file__).resolve().parents[4] / (
    "unica/patches/exynos9810_device_stack/embedded/"
    "exynos9810_legacy_port/vendor/etc/situation_audio_policy_volumes_sec.xml"
)


class SpeakerUICalibrationTest(unittest.TestCase):
    def test_only_selected_speaker_routes_change_and_rebuild_is_idempotent(self):
        with tempfile.TemporaryDirectory() as directory:
            output = Path(directory) / "table.xml"
            output.write_bytes(BASELINE.read_bytes())
            original = ET.parse(output)
            calibrate(BASELINE, output)
            first = output.read_bytes()
            calibrate(BASELINE, output)
            self.assertEqual(first, output.read_bytes())
            result = ET.parse(output)
            for before, after in zip(original.findall("./situations/situation"), result.findall("./situations/situation")):
                self.assertEqual(before.attrib, after.attrib)
                for old, new in zip(before.findall("volume"), after.findall("volume")):
                    self.assertEqual(old.attrib, new.attrib)
                    if before.get("type") in UI_TYPES and old.get("device") == SPEAKER:
                        old_values = [int(v) for v in old.text.split(",")]
                        new_values = [int(v) for v in new.text.split(",")]
                        self.assertEqual(len(new_values), 16)
                        self.assertEqual(new_values, sorted(new_values))
                        for previous, current in zip(old_values, new_values):
                            if previous:
                                self.assertGreater(current, 0)
                                self.assertLess(current, previous)
                            else:
                                self.assertEqual(current, 0)
                    else:
                        self.assertEqual(old.text, new.text)

    def test_missing_keyboard_curve_fails_without_writing(self):
        with tempfile.TemporaryDirectory() as directory:
            output = Path(directory) / "table.xml"
            tree = ET.parse(BASELINE)
            tree.find("./situations/situation[@type='stv_keyboard']").set("type", "unexpected_keyboard")
            tree.write(output)
            before = output.read_bytes()
            with self.assertRaises(ValueError):
                calibrate(BASELINE, output)
            self.assertEqual(before, output.read_bytes())


if __name__ == "__main__":
    unittest.main()
