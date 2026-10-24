import tempfile,unittest
from pathlib import Path
from patch_stop import METHOD,OLD,NEW,REL,transform,apply
class StopAttributionTests(unittest.TestCase):
    def text(self):return '.class public LFixture;\n'+METHOD+'\n    .locals 7\n'+OLD+'\n.end method\n# unrelated start filtering stays intact\n'
    def test_precise_change_and_repeat(self):
        original=self.text();patched=transform(original)
        self.assertEqual(patched,original.replace(OLD,NEW,1));self.assertEqual(transform(patched),patched)
    def test_unknown_callback_rejected(self):
        with self.assertRaises(ValueError):transform(self.text().replace('if-nez p6','if-eqz p6'))
    def test_all_targets(self):
        for target in ('starlte','star2lte','crownlte'):
            with self.subTest(target=target),tempfile.TemporaryDirectory() as d:
                p=Path(d)/'smali'/REL;p.parent.mkdir(parents=True);p.write_text(self.text());apply(Path(d));apply(Path(d));self.assertIn(NEW,p.read_text())
if __name__=='__main__':unittest.main()
