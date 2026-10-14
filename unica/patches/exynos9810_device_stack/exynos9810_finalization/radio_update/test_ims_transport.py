import tempfile
import unittest
from pathlib import Path
from patch_ims_transport import patch

class ImsTransportTest(unittest.TestCase):
    def test_only_factory_changes_and_is_idempotent(self):
        before = ".class public LFactory;\n.method public constructor <init>()V\n    return-void\n.end method\n"
        method = ".method public static getIpcDispatcher(I)Lcom/sec/internal/ims/core/iil/IpcDispatcher;\n    .locals 2\n    const-string v0, \"ro.vendor.api_level\"\n    return-object v0\n.end method"
        after = "\n.method public anotherMethod()V\n    return-void\n.end method\n"
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp)/'Factory.smali'
            path.write_text(before+method+after)
            patch(path)
            result = path.read_text()
            self.assertTrue(result.startswith(before))
            self.assertTrue(result.endswith(after))
            self.assertIn('IpcDispatcherHidl;-><init>(I)V', result)
            self.assertNotIn('const-string v0, "ro.vendor.api_level"', result)
            patch(path)
            self.assertEqual(result, path.read_text())

    def test_unexpected_factory_is_rejected_without_writing(self):
        with tempfile.TemporaryDirectory() as tmp:
            path=Path(tmp)/'Factory.smali'
            original='.class public LUnknown;\n'
            path.write_text(original)
            with self.assertRaises(ValueError):
                patch(path)
            self.assertEqual(original,path.read_text())

if __name__=='__main__':
    unittest.main()
