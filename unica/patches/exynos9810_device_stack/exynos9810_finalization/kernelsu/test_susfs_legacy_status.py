from pathlib import Path
import os,re,subprocess,tempfile,unittest
ROOT=Path(os.environ.get("UN1CA_KERNEL_SOURCE", str(Path(__file__).resolve().parents[5].parent / "exynos9810-kernel")))
SOURCE=ROOT/"KernelSU-Next/kernel/feature/susfs_legacy_status.c"
STUBS=r'''
#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <stdint.h>
#define __user
#define SUSFS_VERSION "v1.5.5"
#define SUSFS_VARIANT "NON-GKI"
static unsigned int uid;
struct kuid {unsigned int val;};
static struct kuid current_uid(void){return (struct kuid){uid};}
static size_t copy_to_user(void *dst,const void *src,size_t n){if(!dst)return n;memcpy(dst,src,n);return 0;}
'''
MAIN=r'''
struct status {char buffer[8192];int error;unsigned int sentinel;};
int main(void){struct status s;int e;
 memset(&s,0x5a,sizeof(s));uid=10000;e=ksu_susfs_legacy_status(0x555e1,&s);assert(e==-EPERM);assert((unsigned char)s.buffer[0]==0x5a);assert(s.sentinel==0x5a5a5a5a);
 uid=0;e=ksu_susfs_legacy_status(0x555e1,&s);assert(e==0);assert(!strcmp(s.buffer,"v1.5.5"));int x;memcpy(&x,s.buffer+16,4);assert(x==0);assert(s.sentinel==0x5a5a5a5a);
 e=ksu_susfs_legacy_status(0x555e3,&s);assert(e==0);assert(!strcmp(s.buffer,"NON-GKI"));
 e=ksu_susfs_legacy_status(0x555e2,&s);assert(e==0);assert(s.error==0);assert(s.sentinel==0x5a5a5a5a);
 int count=0;char *p;for(p=s.buffer;*p;p++)if(*p=='\n')count++;assert(count==EXPECTED_FEATURES);
 memset(&s,0x5a,sizeof(s));e=ksu_susfs_legacy_status(0x55550,&s);assert(e==-EOPNOTSUPP);assert((unsigned char)s.buffer[0]==0x5a);
 assert(ksu_susfs_legacy_status(0x555e1,0)==-EFAULT);
 puts("PASS root-only read-only legacy status bridge, real version, compiled features and ABI bounds");return 0;}
'''
class StatusBridgeTests(unittest.TestCase):
 def test_legacy_and_manager_query_abi_without_mutations(self):
  src=re.sub(r'^#include[^\n]*\n','',SOURCE.read_text(),flags=re.M)
  flags=re.findall(r'^#ifdef (CONFIG_KSU_SUSFS_\w+)$',SOURCE.read_text(),re.M)
  self.assertEqual(len(flags),15)
  for enabled in [flags,[]]:
   with self.subTest(features=len(enabled)),tempfile.TemporaryDirectory() as td:
    p=Path(td);(p/'test.c').write_text(STUBS+'\n'+''.join('#define '+f+' 1\n' for f in enabled)+src+MAIN)
    c=subprocess.run(['cc','-std=gnu89','-Werror','-Wno-declaration-after-statement','-DEXPECTED_FEATURES='+str(len(enabled)),str(p/'test.c'),'-o',str(p/'test')],capture_output=True,text=True)
    self.assertEqual(c.returncode,0,c.stderr)
    run=subprocess.run([str(p/'test')],capture_output=True,text=True);self.assertEqual(run.returncode,0,run.stderr);print(run.stdout.strip())
if __name__=='__main__':unittest.main()
