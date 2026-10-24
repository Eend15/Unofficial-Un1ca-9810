from pathlib import Path
import subprocess,tempfile,unittest
from patch_services_once import NEW,OLD,transform
class ServiceGuardTests(unittest.TestCase):
 def command(self,root):
  source=root/'rc.c';source.write_text('#include <stdio.h>\n#define KERNEL_SU_DOMAIN "ksu"\n#define KSUD_PATH "'+str(root/'daemon')+'"\nconst char *rc='+NEW+';\nint main(){puts(rc);}\n')
  subprocess.run(['cc',str(source),'-o',str(root/'rc')],check=True)
  rc=subprocess.check_output([str(root/'rc')],text=True).strip();command=rc.split(' -c "',1)[1][:-1]
  return command.replace('/dev/.ksu_services_once',str(root/'once'))
 def test_two_boot_paths_and_concurrent_triggers(self):
  self.assertEqual(transform(OLD+'\n'+OLD),NEW+'\n'+NEW);self.assertEqual(transform(NEW+'\n'+NEW),NEW+'\n'+NEW)
  with tempfile.TemporaryDirectory() as d:
   p=Path(d);helper=p/'daemon';helper.write_text('#!/bin/sh\necho boot >> '+str(p/'calls')+'\n');helper.chmod(0o755);cmd=self.command(p)
   children=[subprocess.Popen(['sh','-c',cmd]) for _ in range(32)]
   self.assertTrue(all(c.wait()==0 for c in children));self.assertEqual((p/'calls').read_text().splitlines(),['boot'])
 def test_failed_stage_releases_claim_for_retry(self):
  with tempfile.TemporaryDirectory() as d:
   p=Path(d);helper=p/'daemon';helper.write_text('#!/bin/sh\nexit 1\n');helper.chmod(0o755);cmd=self.command(p)
   self.assertEqual(subprocess.run(['sh','-c',cmd]).returncode,1);self.assertFalse((p/'once').exists());helper.write_text('#!/bin/sh\nexit 0\n');self.assertEqual(subprocess.run(['sh','-c',cmd]).returncode,0)
 def test_unknown_kernel_rejected(self):
  with self.assertRaises(ValueError):transform(OLD)
if __name__=='__main__':unittest.main()
