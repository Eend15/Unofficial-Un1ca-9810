from pathlib import Path
import subprocess,tempfile,unittest
from patch_touch_command_queue import transform,OLD,NEW
KERNEL=Path(__file__).resolve().parents[5].parent/'exynos9810-kernel'
STUB=r'''
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#define SEC_CMD_STR_LEN 256
#define SEC_CMD_PARAM_NUM 8
#define SEC_CMD_STATUS_FAIL 3
#define SECLOG "test"
#define ARRAY_SIZE(a) (sizeof(a)/sizeof((a)[0]))
#define pr_err(...) ((void)0)
#define pr_info(...) ((void)0)
#define pr_debug(...) ((void)0)
#define pr_cont(...) ((void)0)
#define mutex_lock(a) ((void)0)
#define mutex_unlock(a) ((void)0)
struct command {char cmd[256];};
struct fifo {struct command commands[2];int cursor;};
struct sec_cmd_data {int cmd_param[8],cmd_state,cmd_lock,fifo_lock;bool cmd_is_running;char cmd[256],cmd_result[512];struct fifo cmd_queue;void *cmd_list_head;};
struct sec_cmd {const char *cmd_name;void (*cmd_func)(struct sec_cmd_data *);};
static int applied;
static void sec_cmd_set_cmd_exit(struct sec_cmd_data *d){d->cmd_is_running=false;}
static void sec_cmd_set_default_result(struct sec_cmd_data *d){snprintf(d->cmd_result,512,"%s:",d->cmd);}
static void sec_cmd_set_cmd_result(struct sec_cmd_data *d,const char *s,int n){strncat(d->cmd_result,s,n);}
static int kfifo_len(struct fifo *f){return (2-f->cursor)*sizeof(struct command);}
static int kfifo_out(struct fifo *f,void *out,int n){memcpy(out,&f->commands[f->cursor++],n);return n;}
static int kstrtoint(const char *s,int base,int *out){char *end;long v=strtol(s,&end,base);if(!*s||*end)return -1;*out=v;return 0;}
static void handler(struct sec_cmd_data *d){applied=d->cmd_param[0];sec_cmd_set_cmd_exit(d);}
static struct sec_cmd commands[]={{"set_pressure_user_level",handler},{"aot_enable",handler},{"not_support_cmd",handler}};
#define list_for_each_entry(p,h,m) for(p=commands;p<commands+3;p++)
'''
MAIN=r'''
int main(void){struct sec_cmd_data d={0};
 strcpy(d.cmd_queue.commands[0].cmd,"set_pressure_user_level,3dpress");
 strcpy(d.cmd_queue.commands[1].cmd,"aot_enable,1");
 d.cmd_is_running=true;sec_cmd_store_function(&d);
 if(d.cmd_is_running)return 10;
 if(strcmp(d.cmd_result,"set_pressure_user_level,3dpress:NG"))return 11;
 d.cmd_is_running=true;sec_cmd_store_function(&d);
 if(d.cmd_is_running||applied!=1)return 12;
 puts("PASS real queued parser rejects malformed pressure input then accepts AOT");return 0;}
'''
class QueueTests(unittest.TestCase):
 def test_actual_parser_and_regression(self):
  text=(KERNEL/'drivers/input/sec_cmd.c').read_text();original=text.replace(NEW,OLD);fixed=transform(original);self.assertEqual(transform(fixed),fixed)
  with tempfile.TemporaryDirectory() as d:
   for name,source,expected in [('old',original,10),('fixed',fixed,0)]:
    start=source.index('static void sec_cmd_store_function(struct sec_cmd_data *data)\n{');end=source.index('\nstatic ssize_t sec_cmd_store(',start)
    p=Path(d)/(name+'.c');p.write_text(STUB+source[start:end]+MAIN);exe=Path(d)/name
    subprocess.run(['cc','-std=gnu11',str(p),'-o',str(exe)],check=True);result=subprocess.run([str(exe)],capture_output=True,text=True);self.assertEqual(result.returncode,expected,result.stderr);print(result.stdout.strip())
if __name__=='__main__':unittest.main()
