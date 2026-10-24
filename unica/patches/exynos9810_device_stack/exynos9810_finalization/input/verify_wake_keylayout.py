"""Verify the Android half of the DS-ACK wake-only input contract."""
from pathlib import Path
import re,sys
def verify(text):
 keys={}
 for line in text.splitlines():
  line=line.split('#',1)[0].strip()
  if not line:continue
  m=re.fullmatch(r'key\s+(\d+)\s+(.+)',line)
  if not m:raise ValueError('Unexpected wake keylayout entry: '+line)
  code=int(m[1])
  if code in keys:raise ValueError('Duplicate wake key scancode '+str(code))
  keys[code]=m[2].split()
 for code,name in [(116,'POWER'),(143,'WAKEUP')]:
  if code not in keys or keys[code][0]!=name or 'WAKE' not in keys[code][1:]:
   raise ValueError('Wake keylayout must map '+str(code)+' to '+name+' with WAKE')
 return keys
if __name__=='__main__':
 p=Path(sys.argv[1])/'system/system/usr/keylayout/wg_pwrkey.kl'
 verify(p.read_text())
 rc=Path(sys.argv[1])/'system/system/etc/init/unica_wake_gestures.rc'
 expected='on property:sys.boot_completed=1\n    write /sys/android_touch/vib_strength 0\n'
 if rc.read_text()!=expected:raise ValueError('Wake-gesture-only quiet boot default missing or changed')
 print('PASS dedicated wake keys and wake-gesture-only quiet boot default')
