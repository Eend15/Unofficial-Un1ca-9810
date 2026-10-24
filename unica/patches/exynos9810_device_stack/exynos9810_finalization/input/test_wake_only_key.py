from pathlib import Path
import subprocess,tempfile,unittest
from patch_wake_only_key import transform
KERNEL=Path(__file__).resolve().parents[5].parent/'exynos9810-kernel'
class WakeKeyTests(unittest.TestCase):
 def test_actual_worker_keeps_wake_intent_across_resume(self):
  text=(KERNEL/'drivers/input/touchscreen/wake_gestures.c').read_text();self.assertEqual(transform(text),text)
  worker=text[text.index('static void wake_presspwr('):text.index('static DECLARE_WORK(wake_presspwr_work')]
  trigger=text[text.index('static void wake_pwrtrigger('):text.index('/* Doubletap2wake */')]
  stub='''#include <stdbool.h>
struct work_struct {int dummy;};static struct work_struct wake_presspwr_work;
#define KEY_POWER 116
#define KEY_WAKEUP 143
#define EV_KEY 1
#define EV_SYN 0
#define WG_PWRKEY_DUR 60
#define TRIGGER_TIMEOUT 500
#define READ_ONCE(x) (x)
#define WRITE_ONCE(x,v) ((x)=(v))
static bool suspended;static bool is_suspended(void){return suspended;}
static int pwrkeyworklock,vib_strength,pressed,released,scheduled;static void *wake_dev;
static unsigned int wake_keycode=KEY_POWER;static unsigned long pwrtrigger_time[2];
static unsigned long clock_ms=1000;static unsigned long ktime_get(void){return clock_ms;}
static unsigned long ktime_to_ms(unsigned long t){return t;}
static int mutex_trylock(void *p){return 1;}static void mutex_unlock(void *p){}
static void msleep(int x){}static void vib_trigger(int x){}
static void input_event(void *d,int type,int code,int value){if(type==EV_KEY){if(value)pressed=code;else released=code;}}
static void schedule_work(void *p){scheduled++;}
'''
  main='''int main(void){suspended=true;wake_pwrtrigger();suspended=false;wake_presspwr(0);
if(scheduled!=1||pressed!=KEY_WAKEUP||released!=KEY_WAKEUP)return 1;
clock_ms+=1000;suspended=false;wake_pwrtrigger();wake_presspwr(0);
if(pressed!=KEY_POWER||released!=KEY_POWER)return 2;return 0;}
'''
  with tempfile.TemporaryDirectory() as d:
   p=Path(d)/'wake.c';p.write_text(stub+worker+trigger+main);subprocess.run(['cc','-std=gnu89',str(p),'-o',d+'/wake'],check=True);subprocess.run([d+'/wake'],check=True)
if __name__=='__main__':unittest.main()
