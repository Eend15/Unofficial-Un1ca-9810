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

    def test_region_tag_resource_directory(self):
        self.assertEqual('values', self.module.resource_dir('en'))
        self.assertEqual('values-ko', self.module.resource_dir('ko'))
        self.assertEqual('values-es-rMX', self.module.resource_dir('es-MX'))

    def test_an_unfinished_language_can_be_registered_but_not_wrong(self):
        module = self.module
        original = module.RES
        with tempfile.TemporaryDirectory() as temporary:
            module.ROOT = Path(temporary)
            module.RES = module.ROOT / 'app/src/main/res'
            module.PARTIAL = module.ROOT / 'scripts/partial-languages.txt'
            module.PARTIAL.parent.mkdir(parents=True)
            # the repository's own unfinished language is left out: this test builds its own
            for path in original.glob('values*/strings.xml'):
                if path.parent.name == 'values-pt-rBR':
                    continue
                target = module.RES / path.relative_to(original)
                target.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(path, target)
            config = module.RES / 'xml/locales_config.xml'
            config.parent.mkdir(parents=True)
            tree = ET.parse(original / 'xml/locales_config.xml')
            for locale in list(tree.getroot()):
                if locale.get(module.ANDROID + 'name') == 'pt-BR':
                    tree.getroot().remove(locale)
            tree.write(config, encoding='utf-8')
            quiet = (contextlib.redirect_stdout(io.StringIO()), contextlib.redirect_stderr(io.StringIO()))
            with quiet[0], quiet[1]:
                self.assertEqual(0, module.init('es-MX'))
                self.assertTrue((module.RES / 'values-es-rMX/strings.xml').exists())
                tree = ET.parse(config)
                ET.SubElement(tree.getroot(), 'locale', {module.ANDROID + 'name': 'es-MX'})
                tree.write(config)
                file = module.RES / 'values-es-rMX/strings.xml'

                def strings():
                    tree = ET.parse(file)
                    return tree, [n for n in tree.getroot() if n.tag == 'string']

                # a complete language that loses strings is an error ...
                tree, nodes = strings()
                for node in nodes[5:]:
                    tree.getroot().remove(node)
                tree.write(file, encoding='utf-8')
                self.assertEqual(1, module.check())
                # ... unless it is declared unfinished: English fills the rest
                module.PARTIAL.write_text('# unfinished\nes-MX  # in progress\n')
                self.assertEqual({'es-MX'}, module.partial_languages())
                self.assertEqual(0, module.check())
                # real mistakes stay errors for an unfinished language
                tree, nodes = strings()
                bad = next(n for n in nodes if n.get('name') == 'island_reply_to') if any(n.get('name') == 'island_reply_to' for n in nodes) else None
                if bad is None:
                    bad = ET.SubElement(tree.getroot(), 'string', {'name': 'island_reply_to'})
                bad.text = 'Responder a %1$d'
                tree.write(file, encoding='utf-8')
                self.assertEqual(1, module.check())
                bad.text = 'Responder a %1$s'
                ET.SubElement(tree.getroot(), 'string', {'name': 'no_such_key'}).text = 'x'
                tree.write(file, encoding='utf-8')
                self.assertEqual(1, module.check())
                tree, nodes = strings()
                tree.getroot().remove(next(n for n in nodes if n.get('name') == 'no_such_key'))
                next(n for n in nodes if n.get('name') == 'island_reply_to').text = '  '
                tree.write(file, encoding='utf-8')
                self.assertEqual(1, module.check())
                # a partial entry for a language that is not registered, or for English, is a mistake
                next(n for n in nodes if n.get('name') == 'island_reply_to').text = 'Responder a %1$s'
                tree.write(file, encoding='utf-8')
                self.assertEqual(0, module.check())
                module.PARTIAL.write_text('es-MX\nxx\n')
                self.assertEqual(1, module.check())
                module.PARTIAL.write_text('es-MX\nen\n')
                self.assertEqual(1, module.check())


if __name__ == '__main__':
    unittest.main()
