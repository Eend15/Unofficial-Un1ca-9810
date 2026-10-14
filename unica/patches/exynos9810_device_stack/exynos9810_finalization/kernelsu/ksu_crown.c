#define _GNU_SOURCE
#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <sys/inotify.h>
#include <sys/syscall.h>
#include <sys/wait.h>
#include <time.h>
#define MAGIC1 0xDEADBEEFU
#define MAGIC2 0xCAFEBABEU
#define CHANGE_MANAGER_UID 10006
#define GET_MANAGER_APPID _IOC(_IOC_READ, 'K', 10, 0)
static int manager_uid(uint32_t *uid) {
    int fd = -1;
    // The legacy hook runs before normal reboot rejects the magic values.
    // Its errno is not a reliable result: verify the actual driver descriptor.
    syscall(SYS_reboot, MAGIC1, MAGIC2, 0, &fd);
    if (fd < 0) return -1;
    int rc = ioctl(fd, GET_MANAGER_APPID, uid);
    close(fd);
    return rc;
}
static void repair(void) {
    pid_t pid = fork();
    if (!pid) {
        execl("/system/bin/sh", "sh", "/system/bin/unica_ksunext_installer.sh", "--repair", (char*)0);
        _exit(127);
    }
    if (pid > 0) while (waitpid(pid, NULL, 0) < 0 && errno == EINTR) { }
}
static void settle_repair(void) {
    // Kernel throne updates run asynchronously after PackageManager writes.
    for (int i=0; i<3; i++) {
        struct timespec wait = {i == 2 ? 2 : 0, i == 2 ? 0 : 500000000L};
        nanosleep(&wait, NULL);
        repair();
    }
}
static int watch_packages(void) {
    int fd = inotify_init1(IN_CLOEXEC);
    if (fd < 0 || inotify_add_watch(fd, "/data/system", IN_CLOSE_WRITE | IN_MOVED_TO) < 0) return 1;
    repair();
    char buf[8192] __attribute__((aligned(__alignof__(struct inotify_event))));
    for (;;) {
        ssize_t n = read(fd, buf, sizeof(buf));
        if (n < 0 && errno == EINTR) continue;
        if (n <= 0) return 1;
        int changed=0;
        for (char *p=buf; p < buf+n;) {
            struct inotify_event *e=(struct inotify_event*)p;
            if (e->len && !strcmp(e->name,"packages.list")) changed=1;
            p += sizeof(*e)+e->len;
        }
        if (changed) settle_repair();
    }
}
int main(int argc, char **argv) {
    if (getuid() != 0) return 2;
    if (argc == 2 && !strcmp(argv[1],"--watch")) return watch_packages();
    uint32_t actual=UINT32_MAX;
    if (argc == 2 && !strcmp(argv[1],"--status")) {
        if (manager_uid(&actual)) return 1;
        printf("%u\n",actual); return 0;
    }
    int check = argc == 3 && !strcmp(argv[1],"--check");
    if (argc != (check ? 3 : 2)) return 2;
    char *end;
    unsigned long value=strtoul(argv[check ? 2 : 1],&end,10);
    if (*end || value < 10000 || value >= 100000) return 2;
    if (!check) {
        uint64_t reply=0;
        syscall(SYS_reboot, MAGIC1, CHANGE_MANAGER_UID, (unsigned)value, &reply);
    }
    return manager_uid(&actual) == 0 && actual == value ? 0 : 1;
}
