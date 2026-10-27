import contextlib
import importlib.util
import io
from pathlib import Path
import shutil
import tempfile
import unittest
import xml.etree.ElementTree as ET

SCRIPT = Path(__file__).resolve().parents[1] / 'translations.py'


class TranslationChecks(unittest.TestCase):
    def setUp(self):
        spec = importlib.util.spec_from_file_location('translation_checks', SCRIPT)
        self.module = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(self.module)

    def test_indexed_arguments_can_move_but_not_change_type(self):
        formats = self.module.formats
        self.assertEqual(formats('%1$s / %2$d'), formats('%2$d / %1$s'))
        self.assertNotEqual(formats('%1$s'), formats('%1$d'))
        self.assertEqual(formats('%1$d%%'), formats('%%%1$d'))
        self.assertEqual(formats('%d apps'), formats('%1$d apps'))

    def test_new_language_template_registration_and_failure_detection(self):
        module = self.module
        original = module.RES
        with tempfile.TemporaryDirectory() as temporary:
            module.ROOT = Path(temporary)
            module.RES = module.ROOT / 'app/src/main/res'
            for path in original.glob('values*/strings.xml'):
                target = module.RES / path.relative_to(original)
                target.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(path, target)
            target = module.RES / 'xml/locales_config.xml'
            target.parent.mkdir(parents=True)
            shutil.copyfile(original / 'xml/locales_config.xml', target)
            with contextlib.redirect_stdout(io.StringIO()), contextlib.redirect_stderr(io.StringIO()):
                self.assertEqual(0, module.init('de'))
                with self.assertRaises(ValueError):
                    module.init('de')
                tree = ET.parse(target)
                ET.SubElement(tree.getroot(), 'locale', {module.ANDROID + 'name': 'de'})
                tree.write(target)
                self.assertEqual(0, module.check())
                file = module.RES / 'values-de/strings.xml'
                file.write_text(file.read_text().replace('Reply to %1$s', 'Reply to %1$d'))
                self.assertEqual(1, module.check())
                tree = ET.parse(file)
                node = next(n for n in tree.getroot() if n.get('name') == 'island_reply_to')
                tree.getroot().remove(node)
                tree.write(file, encoding='utf-8')
                self.assertEqual(1, module.check())


if __name__ == '__main__':
    unittest.main()
