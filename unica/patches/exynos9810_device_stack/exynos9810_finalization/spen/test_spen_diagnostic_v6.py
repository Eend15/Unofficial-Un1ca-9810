from pathlib import Path
import hashlib,re,unittest,zipfile
from test_spen_diagnostic_v5 import V5Recovery
from recognizer_diagnostics import patch,ENTRIES,RET
SPEN=Path(__file__).resolve().parent
sha=lambda b:hashlib.sha256(b).hexdigest()
class V6Recovery(V5Recovery):
 def setUp(self):
  super().setUp()
  (self.lib.parent/'.unica-spen-native-v5').write_text('previous v5')
  def redirect(text):
   text=re.sub(r'/(?:system_root|system|vendor|data|dev/block|tmp/unica-note9-spen-v5)(?:/[A-Za-z0-9_.-]+)*',lambda m:str(self.root)+m.group(0),text)
   text=text.replace('/proc/mounts',str(self.b.mounts)).replace('[ -b "$candidate" ]','[ -f "$candidate" ]')
   return text.replace('/sbin/sh','/bin/sh').replace('daed1eff8c8ee9dfb8afe2771e39e893a8808f3230d6d522a8aa647db09b8667',sha(self.b.notes.read_bytes())).replace('1eb4c190ee27192f12541022f15eff160c41205fc21974c7ae070ec97c0bf8dd',sha(b'existing-v4-or-original'))
  (self.payload/'native-install.sh').write_text(redirect((SPEN/'recovery/notes-native-install-v6.sh').read_text()))
  self.script.write_text(redirect((SPEN/'recovery/spen-v6-install.sh').read_text()))
 def test_missing_v5_marker_is_rejected(self):
  (self.lib.parent/'.unica-spen-native-v5').unlink()
  self.assertNotEqual(self.run_patch().returncode,0)
  self.assertEqual((self.lib/'libSPenRecognizer.so').read_bytes(),b'existing-v4-or-original')
 def test_unknown_recognizer_rejected(self):
  (self.lib/'libSPenRecognizer.so').write_bytes(b'unknown')
  self.assertNotEqual(self.run_patch().returncode,0)
  self.assertEqual((self.lib/'libSPenRecognizer.so').read_bytes(),b'unknown')
class NativePatch(unittest.TestCase):
 def test_only_two_diagnostic_entries_change(self):
  with zipfile.ZipFile(SPEN/'notes/SamsungNotes-4.4.45.37.apk') as z: original=z.read('lib/arm64-v8a/libSPenRecognizer.so')
  fixed=patch(original)
  expected=set(i for offset,_ in ENTRIES for i in range(offset,offset+4))
  self.assertEqual(len(original),len(fixed))
  self.assertTrue(all(a==b for i,(a,b) in enumerate(zip(original,fixed)) if i not in expected))
  for offset,_ in ENTRIES:self.assertEqual(fixed[offset:offset+4],RET)
  with self.assertRaises(ValueError):patch(fixed)
  with self.assertRaises(ValueError):patch(original[:-1])
if __name__=='__main__':unittest.main()
