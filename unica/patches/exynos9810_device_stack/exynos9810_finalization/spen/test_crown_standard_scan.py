from pathlib import Path
import unittest
from patch_crown_standard_scan import patch,ANCHOR,INSERT
class ScanSource(unittest.TestCase):
 VENDOR='\n\n    const/16 p4, 0x1\n\n    invoke-virtual {p1, p4, p4}, Landroid/bluetooth/le/ScanSettings$Builder;->semSetCustomScanParams(II)Landroid/bluetooth/le/ScanSettings$Builder;\n'
 def test_idempotent_scoped_branch(self):
  text=ANCHOR+self.VENDOR+'\n    :cond_b\n    return-void'
  fixed=patch(text)
  self.assertEqual(patch(fixed),fixed)
  self.assertIn('equalsIgnoreCase',fixed)
  self.assertIn('if-eqz p3, :unica_vendor_scan',fixed)
  self.assertEqual(fixed.replace(INSERT,''),text)
 def test_goto_target_must_follow_vendor_block(self):
  # A fresh decode of a compiled APK renumbers labels; :cond_b is then elsewhere.
  with self.assertRaises(ValueError):patch(ANCHOR+'\n    :cond_b\n'+self.VENDOR+'\n    :cond_c\n    return-void')
  with self.assertRaises(ValueError):patch(ANCHOR+self.VENDOR+'\n    :cond_a\n    nop\n    :cond_b\n    return-void')
 def test_unknown_source_rejected(self):
  with self.assertRaises(ValueError):patch('different scanner')
if __name__=='__main__':unittest.main()
