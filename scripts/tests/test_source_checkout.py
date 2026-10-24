#!/usr/bin/env python3
import importlib.util,json,tempfile,unittest
from pathlib import Path
SOURCE=Path(__file__).resolve().parents[1]/'internal/verify_source_checkout.py'
spec=importlib.util.spec_from_file_location('checkout',SOURCE);module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module)
class CheckoutTests(unittest.TestCase):
    def fixture(self,path):
        (path/'scripts/internal').mkdir(parents=True)
        (path/'scripts/internal/source-inputs.json').write_text(json.dumps({'files':['payload.bin'],'submodules':{}}))
    def test_complete_input(self):
        with tempfile.TemporaryDirectory() as d:
            p=Path(d);self.fixture(p);(p/'payload.bin').write_bytes(b'actual payload');module.verify(p,submodules=False)
    def test_missing_input(self):
        with tempfile.TemporaryDirectory() as d:
            p=Path(d);self.fixture(p)
            with self.assertRaisesRegex(RuntimeError,'Missing source input'):module.verify(p,submodules=False)
    def test_lfs_pointer_rejected(self):
        with tempfile.TemporaryDirectory() as d:
            p=Path(d);self.fixture(p);(p/'payload.bin').write_bytes(b'version https://git-lfs.github.com/spec/v1\noid sha256:abc\nsize 123\n')
            with self.assertRaisesRegex(RuntimeError,'Unhydrated Git LFS'):module.verify(p,submodules=False)
if __name__=='__main__':unittest.main()
