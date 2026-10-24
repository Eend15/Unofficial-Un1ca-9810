"""Exercise real KernelSU loader/read adapter and SELinux reset on Linux 4.9 APIs."""
from pathlib import Path
import os,re,subprocess,tempfile,unittest
ROOT=Path(os.environ.get("UN1CA_KERNEL_SOURCE", str(Path(__file__).resolve().parents[5].parent / "exynos9810-kernel")))
def function(text,signature):
 start=text.index(signature);brace=text.index('{',start);depth=1;i=brace+1
 while depth:
  if text[i]=='{':depth+=1
  elif text[i]=='}':depth-=1
  i+=1
 return text[start:i]
def compile_run(code,includes=()):
 with tempfile.TemporaryDirectory() as d:
  p=Path(d);(p/'test.c').write_text(code)
  c=subprocess.run(['cc','-std=gnu11','-Werror=incompatible-pointer-types','-Werror=int-conversion',*includes,str(p/'test.c'),'-o',str(p/'test')],capture_output=True,text=True)
  if c.returncode:return c,None
  return c,subprocess.run([str(p/'test')],capture_output=True,text=True)
COMMON=r'''
#include <assert.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <sys/types.h>
typedef uint32_t u32;
#define KERNEL_VERSION(a,b,c) (((a)<<16)|((b)<<8)|(c))
#define LINUX_VERSION_CODE KERNEL_VERSION(4,9,337)
#define pr_info(...) ((void)0)
#define pr_err(...) ((void)0)
'''
class Runtime49Tests(unittest.TestCase):
 def loader_code(self,source):
  compat=function((ROOT/'KernelSU-Next/kernel/compat/kernel_compat.c').read_text(),'ssize_t ksu_kernel_read_compat(')
  loader=function(source,'void ksu_load_allow_list()')
  return COMMON+r'''
#include "KernelSU-Next/uapi/app_profile.h"
#define FILE_MAGIC 0x7f4b5355
#define KERNEL_SU_ALLOWLIST "fixture"
#define O_RDONLY 0
#define IS_ERR(p) (!(p))
#define PTR_ERR(p) (-2)
struct file {unsigned char *data;size_t size;};
static struct file fixture;
static struct file *filp_open(const char *s,int f,int m){return &fixture;}
static int kernel_read(struct file *f,loff_t off,char *buf,unsigned long count){
 if(off<0||(size_t)off>=f->size)return 0;
 size_t n=f->size-(size_t)off;if(n>count)n=count;
 memcpy(buf,f->data+off,n);return (int)n;
}
static int loaded;
static void filp_close(struct file *f,int n){}
static void migrate_profile(u32 version,struct app_profile *p){assert(version==4);assert(p->version==4);}
static void ksu_set_app_profile(struct app_profile *p){assert(p->curr_uid==10264);assert(p->allow_su);assert(!strcmp(p->key,"com.un1ca.ksuaudit"));loaded++;}
static void ksu_show_allow_list(void){}
static void ksu_persistent_allow_list(void){assert(0);}
'''+compat+'\n'+loader+r'''
int main(void){
 unsigned char data[8+sizeof(struct app_profile)]={0};
 u32 magic=FILE_MAGIC,version=4;struct app_profile p={.version=4,.curr_uid=10264,.allow_su=true};
 strcpy(p.key,"com.un1ca.ksuaudit");memcpy(data,&magic,4);memcpy(data+4,&version,4);memcpy(data+8,&p,sizeof(p));
 fixture.data=data;fixture.size=sizeof(data);ksu_load_allow_list();assert(loaded==1);
 loaded=0;data[0]=0;ksu_load_allow_list();assert(loaded==0);
 data[0]=(unsigned char)magic;version=99;memcpy(data+4,&version,4);ksu_load_allow_list();assert(loaded==0);
 version=4;memcpy(data+4,&version,4);fixture.size=sizeof(data)-1;ksu_load_allow_list();assert(loaded==0);
 puts("PASS actual loader restores a complete grant through the Linux 4.9 read ABI and rejects invalid fixtures");return 0;
}
'''
 def test_actual_loader_uses_legacy_read_adapter(self):
  rel='KernelSU-Next/kernel/policy/allowlist.c'
  c,run=compile_run(self.loader_code((ROOT/rel).read_text()),['-I'+str(ROOT)])
  self.assertEqual(c.returncode,0,c.stderr);self.assertEqual(run.returncode,0,run.stderr);print(run.stdout.strip())
  old,_=compile_run(self.loader_code((ROOT/rel).read_text().replace("ksu_kernel_read_compat(", "kernel_read(")),['-I'+str(ROOT)])
  self.assertNotEqual(old.returncode,0,'Negative control must expose incompatible Linux 4.9 kernel_read arguments')
 def test_all_read_callers_use_the_adapter(self):
  for rel in ['manager/apk_sign.c','manager/throne_tracker.c','policy/allowlist.c','runtime/ksud_integration.c']:
   t=(ROOT/'KernelSU-Next/kernel'/rel).read_text();t=re.sub(r'/\*[\s\S]*?\*/|//[^\n]*','',t)
   self.assertIsNone(re.search(r'(?<![\w])kernel_read\s*\(',t),rel)
 def reset_code(self,source):
  helper=function((ROOT/'security/selinux/ss/services.c').read_text(),'u32 security_ksu_next_policy_seqno(void)')
  reset=function(source,'static void reset_avc_cache()')
  return COMMON+r'''
static u32 latest_granting=1,latest_notif=1;
static int locked,policy_rwlock;
#define write_lock_irqsave(p,f) do{assert(!locked);locked=1;(f)=0;}while(0)
#define write_unlock_irqrestore(p,f) do{assert(locked);locked=0;}while(0)
typedef int atomic_t;
#define ATOMIC_INIT(n) (n)
static int atomic_inc_return(atomic_t *p){return ++*p;}
static int avc_ss_reset(u32 n){assert(!locked);if(n>latest_notif)latest_notif=n;return 0;}
static void selnl_notify_policyload(u32 n){assert(!locked);}
static void selinux_status_update_policyload(u32 n){assert(!locked);}
static void selinux_xfrm_notify_policyload(void){assert(!locked);}
'''+helper+'\n'+reset+r'''
int main(void){for(int i=0;i<100;i++){reset_avc_cache();if(latest_granting<latest_notif)return 23;}assert(!locked);puts("PASS security-server decisions stay current with AVC notifications; callbacks run unlocked");return 0;}
'''
 def test_security_server_and_avc_sequences_stay_aligned(self):
  rel='KernelSU-Next/kernel/selinux/rules.c'
  c,run=compile_run(self.reset_code((ROOT/rel).read_text()))
  self.assertEqual(c.returncode,0,c.stderr);self.assertEqual(run.returncode,0,run.stderr);print(run.stdout.strip())
  c,old=compile_run(self.reset_code((ROOT/rel).read_text().replace("u32 seqno = security_ksu_next_policy_seqno();", "static atomic_t ksu_policy_seqno = ATOMIC_INIT(1); u32 seqno = (u32)atomic_inc_return(&ksu_policy_seqno);")))
  self.assertEqual(c.returncode,0,c.stderr);self.assertEqual(old.returncode,23,'Negative control must reproduce stale decision sequence')
if __name__=='__main__':unittest.main()
