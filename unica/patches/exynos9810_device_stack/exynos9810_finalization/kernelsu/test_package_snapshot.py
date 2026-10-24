"""Run the actual kernel tracker against completed/partial PackageManager files.

Userspace stubs replace kernel allocation/file APIs; the parser, manager
invalidation and prune decisions come directly from throne_tracker.c.
"""
from pathlib import Path
import subprocess
import tempfile
import unittest

KERNEL = Path(__file__).resolve().parents[5].parent / 'exynos9810-kernel'

STUBS = r'''
#define _GNU_SOURCE
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stddef.h>
#include <sys/types.h>
#include <fcntl.h>
typedef uint32_t u32;
struct cred { int unused; };
struct list_head { struct list_head *next, *prev; };
struct uid_data { struct list_head list; u32 uid; char package[256]; };
struct file { FILE *stream; };
#define KSU_MAX_PACKAGE_NAME 256
#define PER_USER_RANGE 100000
#define GFP_KERNEL 0
#define IS_ERR(p) (!(p))
#define pr_info(...) ((void)0)
#define pr_err(...) ((void)0)
#define INIT_LIST_HEAD(h) ((h)->next=(h),(h)->prev=(h))
#define list_empty(h) ((h)->next==(h))
#define entry(p,t,m) ((t*)((char*)(p)-offsetof(t,m)))
#define list_for_each_entry(p,h,m) for(p=entry((h)->next,typeof(*p),m); &p->m!=(h); p=entry(p->m.next,typeof(*p),m))
#define list_for_each_entry_safe(p,n,h,m) for(p=entry((h)->next,typeof(*p),m),n=entry(p->m.next,typeof(*p),m); &p->m!=(h); p=n,n=entry(n->m.next,typeof(*n),m))
static void list_add_tail(struct list_head *n, struct list_head *h) {n->prev=h->prev;n->next=h;h->prev->next=n;h->prev=n;}
static void list_del(struct list_head *n) {n->prev->next=n->next;n->next->prev=n->prev;}
static const struct cred *ksu_cred;
static const struct cred *override_creds(const struct cred *c) {return c;}
static void revert_creds(const struct cred *c) {(void)c;}
static void *kzalloc(size_t n,int flags) {(void)flags;return calloc(1,n);}
static void kfree(void *p) {free(p);}
static char *filename;
#define SYSTEM_PACKAGES_LIST_PATH filename
static struct file *filp_open(const char *path,int flags,int mode) {
    (void)flags;(void)mode;FILE *s=fopen(path,"rb");if(!s)return NULL;
    struct file *f=calloc(1,sizeof(*f));f->stream=s;return f;
}
static int read_calls;
static ssize_t kernel_read(struct file *f,void *buf,size_t count,loff_t *pos) {
    ++read_calls;
    fseek(f->stream,*pos,SEEK_SET);size_t n=fread(buf,1,count,f->stream);*pos+=n;return n;
}
static void filp_close(struct file *f,int flags) {(void)flags;fclose(f->stream);free(f);}
static void strscpy(char *d,const char *s,size_t n) {snprintf(d,n,"%s",s);}
static int kstrtou32(const char *s,int base,u32 *out) {char *end;unsigned long n=strtoul(s,&end,base);if(!*s||*end)return -1;*out=n;return 0;}
static int manager=10001,prunes=0,grant=1;
static int ksu_get_manager_appid(void) {return manager;}
static bool ksu_is_manager_appid_valid(void) {return manager!=-1;}
static void ksu_invalidate_manager_uid(void) {manager=-1;}
static void ksu_set_manager_appid(u32 uid) {manager=uid;}
static void search_manager(const char *s,int n,struct list_head *h) {(void)s;(void)n;(void)h;}
static void ksu_prune_allowlist(bool (*valid)(uid_t,char*,void*),void *data) {
    ++prunes;if(!valid(10002,"com.example.allowed",data))grant=0;
}
'''


class PackageSnapshotTests(unittest.TestCase):
    def test_real_parser_preserves_grants_on_partial_snapshots(self):
        text = (KERNEL / 'KernelSU-Next/kernel/manager/throne_tracker.c').read_text()
        start = text.index('static bool is_uid_exist(')
        end = text.index('\nvoid __init ksu_throne_tracker_init', start)
        code = STUBS + text[start:end] + r'''
int main(int argc,char **argv) {
    if(argc!=2)return 2;filename=argv[1];track_throne(false);
    printf("%d %d %d %d\n",manager,prunes,grant,read_calls);return 0;
}
'''
        with tempfile.TemporaryDirectory() as td:
            work = Path(td)
            source = work / 'tracker.c'
            source.write_text(code)
            binary = work / 'tracker'
            subprocess.run(['cc', '-std=gnu11', '-Werror=implicit-function-declaration',
                            str(source), '-o', str(binary)], check=True, capture_output=True)
            manager = 'com.rifsxd.ksunext 10001 0 /data/user/0/manager default 0\n'
            app = 'com.example.allowed 10002 0 /data/user/0/app default 0\n'
            cases = [
                ('created-empty', '', '10001 0 1'),
                ('partial-first-line', manager[:-1], '10001 0 1'),
                ('partial-last-line', manager + app[:-1], '10001 0 1'),
                ('invalid-uid', manager + 'com.example.allowed invalid other\n', '10001 0 1'),
                ('complete', manager + app, '10001 1 1'),
                ('real-app-uninstall', manager, '10001 1 0'),
                ('real-manager-uninstall', app, '-1 1 1'),
                ('long-metadata', manager.rstrip('\n') + ' ' + 'x' * 9000 + '\n' + app, '10001 1 1'),
                ('chunk-boundary', manager + 'com.example.filler 10003 0 ' + 'x' * 4020 + '\n' + app, '10001 1 1'),
                ('large-list', manager + app + 'com.example.filler 10003 0 /data/user/0/filler default 0\n' * 5000, '10001 1 1'),
            ]
            for name, contents, expected in cases:
                with self.subTest(snapshot=name):
                    data = work / 'packages.list'
                    data.write_text(contents)
                    run = subprocess.run([str(binary), str(data)], check=True, text=True, capture_output=True)
                    fields = run.stdout.split()
                    self.assertEqual(' '.join(fields[:3]), expected)
                    self.assertLessEqual(int(fields[3]), (len(contents.encode()) + 4095) // 4096 + 1)
                    if name == 'large-list':
                        print(f'Package snapshot: {len(contents.encode())} bytes, {fields[3]} kernel_read calls')


if __name__ == '__main__':
    unittest.main()
