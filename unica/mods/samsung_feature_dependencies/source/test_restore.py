import tempfile,unittest
from pathlib import Path
from restore import FILES,OVERRIDE,restore
class RestoreTests(unittest.TestCase):
    def donor(self,p):
        for rel in FILES:
            f=p/rel;f.parent.mkdir(parents=True,exist_ok=True);f.write_bytes(b'original signed payload fixture')
        (p/FILES[2]).write_text('<permissions><privapp-permissions package="com.samsung.android.scloud"><permission name="android.permission.MANAGE_USERS"/></privapp-permissions></permissions>')
    def test_exact_payload_and_scoped_override(self):
        with tempfile.TemporaryDirectory() as d:
            root=Path(d);donor=root/'donor';work=root/'work';self.donor(donor)
            p=work/'system/system'/OVERRIDE;p.parent.mkdir(parents=True);p.write_text('<config><component-override package="com.samsung.android.scpm"><component class=".app.ScpmReceiver" enabled="false"/><component class=".Other" enabled="false"/></component-override></config>')
            restore(donor,work);first=p.read_bytes();restore(donor,work);self.assertEqual(first,p.read_bytes());self.assertIn('.Other',p.read_text());self.assertNotIn('.app.ScpmReceiver',p.read_text())
            for rel in FILES:self.assertEqual((donor/rel).read_bytes(),(work/'system/system'/rel).read_bytes())
    def test_missing_donor_does_not_stage_partial_payload(self):
        with tempfile.TemporaryDirectory() as d:
            root=Path(d);self.donor(root/'donor');(root/'donor'/FILES[1]).unlink()
            with self.assertRaises(ValueError):restore(root/'donor',root/'work')
            self.assertFalse((root/'work').exists())
    def test_absent_entitlement_rejected(self):
        with tempfile.TemporaryDirectory() as d:
            root=Path(d);self.donor(root/'donor');(root/'donor'/FILES[2]).write_text('<permissions/>')
            with self.assertRaises(AssertionError):restore(root/'donor',root/'work')
            self.assertFalse((root/'work').exists())
if __name__=='__main__':unittest.main()
