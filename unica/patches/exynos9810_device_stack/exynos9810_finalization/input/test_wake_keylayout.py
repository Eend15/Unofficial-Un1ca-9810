from pathlib import Path
import os,re,subprocess,tempfile,unittest
from verify_wake_keylayout import verify
ROOT=Path(__file__).resolve().parents[5]
class WakeKeylayoutTests(unittest.TestCase):
 def test_actual_platform_writer_maps_both_keys_for_every_target(self):
  text=(ROOT/'unica/patches/exynos9810_device_stack/customize.sh').read_text()
  start=text.index('_EXYNOS9810_WRITE_EXYNOS9810_KEYLAYOUTS()\n{')
  end=text.index('\n}\n',start)+3
  writer=text[start:end]
  for target in ['starlte','star2lte','crownlte']:
   with self.subTest(target=target),tempfile.TemporaryDirectory() as d:
    script='LOG(){ :; }; _EXYNOS9810_SET_METADATA(){ :; };\n'+writer+'\n_EXYNOS9810_WRITE_EXYNOS9810_KEYLAYOUTS\n'
    subprocess.run(['bash','-c',script],env=dict(os.environ,WORK_DIR=d,TARGET_CODENAME=target),check=True)
    p=Path(d)/'system/system/usr/keylayout'
    keys={int(m[1]):m[2].split() for m in re.finditer(r'^key\s+(\d+)\s+(.+)$',(p/'wg_pwrkey.kl').read_text(),re.M)}
    verify((p/'wg_pwrkey.kl').read_text())
    self.assertEqual(keys[116],['POWER','WAKE'])
    self.assertEqual(keys[143],['WAKEUP','WAKE'])
    self.assertIn('key 703   USER',(p/'gpio_keys.kl').read_text())
    rc=Path(d)/'system/system/etc/init/unica_wake_gestures.rc'
    self.assertEqual(rc.read_text(),'on property:sys.boot_completed=1\n    write /sys/android_touch/vib_strength 0\n')
 def test_old_or_ambiguous_mapping_is_rejected(self):
  cases=[
   'key 116 POWER WAKE\n',
   'key 116 POWER WAKE\nkey 143 POWER WAKE\n',
   'key 116 POWER WAKE\nkey 143 WAKEUP\n',
   'key 116 POWER WAKE\nkey 143 WAKEUP WAKE\nkey 143 POWER WAKE\n',
  ]
  for text in cases:
   with self.subTest(mapping=text),self.assertRaises(ValueError):verify(text)
if __name__=='__main__':unittest.main()
