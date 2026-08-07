/* Minimal AArch64 PID 1 wrapper/logger. It intentionally has no libc. */

typedef unsigned long ulong;
typedef long slong;

enum {
    SYS_MKNODAT = 33,
    SYS_LSEEK = 62,
    SYS_READ = 63,
    SYS_WRITE = 64,
    SYS_OPENAT = 56,
    SYS_CLOSE = 57,
    SYS_MKDIRAT = 34,
    SYS_MOUNT = 40,
    SYS_NANOSLEEP = 101,
    SYS_SYSLOG = 116,
    SYS_FSYNC = 82,
    SYS_CLONE = 220,
    SYS_EXECVE = 221,
    SYS_EXIT = 93,
};

enum {
    AT_FDCWD = -100,
    O_RDONLY = 0,
    O_WRONLY = 1,
    O_CREAT = 64,
    O_APPEND = 1024,
    O_NONBLOCK = 2048,
    O_CLOEXEC = 524288,
    SIGCHLD = 17,
    MS_NOATIME = 1024,
};

struct timespec {
    slong seconds;
    slong nanoseconds;
};

static int log_fd = -1;
static int kmsg_fd = -1;
static int sd_mounted;
static unsigned char buffer[16384];

static slong syscall6(slong number, slong a0, slong a1, slong a2,
                      slong a3, slong a4, slong a5)
{
    register slong x0 asm("x0") = a0;
    register slong x1 asm("x1") = a1;
    register slong x2 asm("x2") = a2;
    register slong x3 asm("x3") = a3;
    register slong x4 asm("x4") = a4;
    register slong x5 asm("x5") = a5;
    register slong x8 asm("x8") = number;

    asm volatile("svc 0"
                 : "+r"(x0)
                 : "r"(x1), "r"(x2), "r"(x3), "r"(x4), "r"(x5), "r"(x8)
                 : "memory");
    return x0;
}

static ulong string_length(const char *value)
{
    ulong length = 0;
    while (value[length])
        ++length;
    return length;
}

static int write_all(int fd, const void *data, ulong length)
{
    const unsigned char *cursor = (const unsigned char *)data;

    while (length) {
        slong written = syscall6(SYS_WRITE, fd, (slong)cursor, length, 0, 0, 0);
        if (written <= 0)
            return -1;
        cursor += (ulong)written;
        length -= (ulong)written;
    }
    return 0;
}

static void log_text(const char *value)
{
    if (log_fd >= 0)
        write_all(log_fd, value, string_length(value));
}

static void log_hex(slong value)
{
    static const char digits[] = "0123456789abcdef";
    char output[19];
    ulong number = (ulong)value;
    int index;

    output[0] = '0';
    output[1] = 'x';
    for (index = 0; index < 16; ++index)
        output[2 + index] = digits[(number >> (60 - index * 4)) & 15];
    output[18] = '\n';
    if (log_fd >= 0)
        write_all(log_fd, output, sizeof(output));
}

static void write_boot_marker(void)
{
    static const char marker[] = "UN1CA_EARLY_INIT_MARKER\n";
    slong fd;

    fd = syscall6(SYS_OPENAT, AT_FDCWD,
                  (slong)"/dev/block/platform/11120000.ufs/by-name/BOOT",
                  O_WRONLY | O_CLOEXEC, 0, 0, 0);
    if (fd < 0) {
        syscall6(SYS_MKDIRAT, AT_FDCWD, (slong)"/dev", 0755, 0, 0, 0);
        syscall6(SYS_MKDIRAT, AT_FDCWD, (slong)"/dev/block", 0755, 0, 0, 0);
        syscall6(SYS_MKNODAT, AT_FDCWD, (slong)"/dev/block/sda10",
                 060600, 0x080a, 0, 0);
        fd = syscall6(SYS_OPENAT, AT_FDCWD, (slong)"/dev/block/sda10",
                      O_WRONLY | O_CLOEXEC, 0, 0, 0);
    }
    if (fd < 0)
        return;

    if (syscall6(SYS_LSEEK, fd, 57667584, 0, 0, 0, 0) >= 0) {
        write_all((int)fd, marker, sizeof(marker) - 1);
        syscall6(SYS_FSYNC, fd, 0, 0, 0, 0, 0);
    }
    syscall6(SYS_CLOSE, fd, 0, 0, 0, 0, 0);
}

static int open_log_file(void)
{
    static const char *persistent_paths[] = {
        "/cache/UN1CA-early-boot.log",
        "/metadata/UN1CA-early-boot.log",
        "/data/local/tmp/UN1CA-early-boot.log",
        "/external_sd/UN1CA-early-boot.log",
    };
    ulong index;

    if (log_fd >= 0)
        return 0;

    for (index = 0; index < sizeof(persistent_paths) / sizeof(persistent_paths[0]); ++index) {
        slong fd = syscall6(SYS_OPENAT, AT_FDCWD, (slong)persistent_paths[index],
                             O_WRONLY | O_CREAT | O_APPEND | O_CLOEXEC,
                             0644, 0, 0);
        if (fd >= 0) {
            log_fd = (int)fd;
            log_text("\n=== UN1CA early logger ===\n");
            log_text("log_path=");
            log_text(persistent_paths[index]);
            log_text("\n");
            return 0;
        }
    }
    if (sd_mounted) {
        slong fd = syscall6(SYS_OPENAT, AT_FDCWD,
                             (slong)"/mnt/logger/UN1CA-early-boot.log",
                             O_WRONLY | O_CREAT | O_APPEND | O_CLOEXEC,
                             0644, 0, 0);
        if (fd >= 0) {
            log_fd = (int)fd;
            log_text("\n=== UN1CA early logger ===\n");
            log_text("log_path=/mnt/logger/UN1CA-early-boot.log\n");
            return 0;
        }
    }
    return -1;
}

static void try_mount_sd(void)
{
    static const char *devices[] = {
        "/dev/block/mmcblk0p1",
        "/dev/block/mmcblk0p2",
        "/dev/block/mmcblk1p1",
        "/dev/block/mmcblk1p2",
        "/dev/block/mmcblk1p3",
        "/dev/block/mmcblk1p4",
        "/dev/block/mmcblk1",
    };
    static const char *types[] = { "sdfat", "vfat", "msdos", "exfat", "ext4", "f2fs" };
    ulong device_index;
    ulong type_index;

    syscall6(SYS_MKDIRAT, AT_FDCWD, (slong)"/dev", 0755, 0, 0, 0);
    syscall6(SYS_MKDIRAT, AT_FDCWD, (slong)"/dev/block", 0755, 0, 0, 0);
    syscall6(SYS_MKNODAT, AT_FDCWD, (slong)"/dev/block/mmcblk0p1",
             060600, 0xb301, 0, 0);
    syscall6(SYS_MKDIRAT, AT_FDCWD, (slong)"/mnt/logger", 0755, 0, 0, 0);
    for (device_index = 0; device_index < sizeof(devices) / sizeof(devices[0]); ++device_index) {
        for (type_index = 0; type_index < sizeof(types) / sizeof(types[0]); ++type_index) {
            slong result = syscall6(SYS_MOUNT, (slong)devices[device_index],
                                     (slong)"/mnt/logger", (slong)types[type_index],
                                     0, (slong)"utf8", 0);
            if (result == 0) {
                sd_mounted = 1;
                return;
            }
        }
    }
}

static void try_mount_cache(void)
{
    static const char *devices[] = {
        "/dev/block/platform/11120000.ufs/by-name/CACHE",
        "/dev/block/sda22",
    };
    static const char *types[] = { "ext4", "ext3" };
    ulong device_index;
    ulong type_index;

    syscall6(SYS_MKDIRAT, AT_FDCWD, (slong)"/dev", 0755, 0, 0, 0);
    syscall6(SYS_MKDIRAT, AT_FDCWD, (slong)"/dev/block", 0755, 0, 0, 0);
    syscall6(SYS_MKNODAT, AT_FDCWD, (slong)"/dev/block/sda22",
             060600, 0x10306, 0, 0);
    syscall6(SYS_MKDIRAT, AT_FDCWD, (slong)"/cache", 0755, 0, 0, 0);
    for (device_index = 0; device_index < sizeof(devices) / sizeof(devices[0]); ++device_index) {
        for (type_index = 0; type_index < sizeof(types) / sizeof(types[0]); ++type_index) {
            if (syscall6(SYS_MOUNT, (slong)devices[device_index],
                          (slong)"/cache", (slong)types[type_index],
                          0, (slong)"noatime", 0) == 0 ||
                syscall6(SYS_MOUNT, (slong)devices[device_index],
                         (slong)"/cache", (slong)types[type_index],
                         MS_NOATIME, 0, 0) == 0 ||
                syscall6(SYS_MOUNT, (slong)devices[device_index],
                         (slong)"/cache", (slong)types[type_index],
                         0, 0, 0) == 0)
                return;
        }
    }
}

static void dump_file(const char *label, const char *path)
{
    slong fd;
    slong count;

    if (log_fd < 0)
        return;
    log_text(label);
    log_text(" ");
    fd = syscall6(SYS_OPENAT, AT_FDCWD, (slong)path, O_RDONLY | O_CLOEXEC, 0, 0, 0);
    if (fd < 0) {
        log_text("open_failed=");
        log_hex(fd);
        return;
    }
    while ((count = syscall6(SYS_READ, fd, (slong)buffer, sizeof(buffer), 0, 0, 0)) > 0)
        write_all(log_fd, buffer, (ulong)count);
    syscall6(SYS_CLOSE, fd, 0, 0, 0, 0, 0);
    log_text("\n");
}

static void dump_kernel_log(void)
{
    slong count;

    if (log_fd < 0)
        return;
    log_text("--- syslog ---\n");
    count = syscall6(SYS_SYSLOG, 3, (slong)buffer, sizeof(buffer), 0, 0, 0);
    if (count > 0)
        write_all(log_fd, buffer, (ulong)count);
    else {
        log_text("syslog_failed=");
        log_hex(count);
    }
    log_text("\n--- end syslog ---\n");
}

static void drain_kmsg(void)
{
    slong count;

    if (kmsg_fd < 0) {
        kmsg_fd = (int)syscall6(SYS_OPENAT, AT_FDCWD, (slong)"/dev/kmsg",
                                 O_RDONLY | O_NONBLOCK | O_CLOEXEC, 0, 0, 0);
        if (kmsg_fd < 0)
            return;
    }
    while ((count = syscall6(SYS_READ, kmsg_fd, (slong)buffer, sizeof(buffer), 0, 0, 0)) > 0)
        if (log_fd >= 0)
            write_all(log_fd, buffer, (ulong)count);
}

static void snapshot(void)
{
    if (log_fd < 0)
        return;
    dump_file("cmdline=", "/proc/cmdline");
    dump_file("mounts=", "/proc/mounts");
    dump_file("filesystems=", "/proc/filesystems");
    dump_file("uptime=", "/proc/uptime");
    dump_kernel_log();
    drain_kmsg();
    syscall6(SYS_FSYNC, log_fd, 0, 0, 0, 0, 0);
}

static void sleep_one_second(void)
{
    struct timespec delay;
    delay.seconds = 1;
    delay.nanoseconds = 0;
    syscall6(SYS_NANOSLEEP, (slong)&delay, 0, 0, 0, 0, 0);
}

static __attribute__((noreturn)) void logger_child(void)
{
    int second;

    for (second = 0; second < 180; ++second) {
        if (log_fd < 0) {
            try_mount_cache();
            if ((second % 5) == 0)
                try_mount_sd();
            open_log_file();
            if (log_fd >= 0) {
                log_text("phase=background_logger\n");
                snapshot();
            }
        } else {
            drain_kmsg();
            if (second == 1 || second == 2 || second == 5 || second == 10 ||
                second == 20 || second == 40 || second == 80 || second == 120)
                snapshot();
        }
        sleep_one_second();
    }

    if (log_fd >= 0) {
        log_text("phase=background_logger_exit\n");
        syscall6(SYS_FSYNC, log_fd, 0, 0, 0, 0, 0);
        syscall6(SYS_CLOSE, log_fd, 0, 0, 0, 0, 0);
    }
    syscall6(SYS_EXIT, 0, 0, 0, 0, 0, 0);
    for (;;)
        ;
}

__attribute__((used, noreturn)) void entry(long *stack)
{
    long argc = stack[0];
    char **argv = (char **)(stack + 1);
    char **envp = argv + argc + 1;
    slong child;
    int second;

    write_boot_marker();
    for (second = 0; second < 15 && log_fd < 0; ++second) {
        try_mount_cache();
        try_mount_sd();
        open_log_file();
        if (log_fd >= 0) {
            log_text("phase=pid1_wrapper\n");
            snapshot();
        } else {
            sleep_one_second();
        }
    }

    child = syscall6(SYS_CLONE, SIGCHLD, 0, 0, 0, 0, 0);
    if (child == 0)
        logger_child();
    if (log_fd >= 0 && child < 0) {
        log_text("clone_failed=");
        log_hex(child);
        syscall6(SYS_FSYNC, log_fd, 0, 0, 0, 0, 0);
    }

    syscall6(SYS_EXECVE, (slong)"/init.real", (slong)argv, (slong)envp, 0, 0, 0);
    if (log_fd >= 0) {
        log_text("exec_init_real_failed\n");
        syscall6(SYS_FSYNC, log_fd, 0, 0, 0, 0, 0);
    }
    syscall6(SYS_EXIT, 127, 0, 0, 0, 0, 0);
    for (;;)
        ;
}

__attribute__((naked, noreturn)) void _start(void)
{
    __asm__("mov x0, sp\n"
            "bl entry\n"
            "mov x8, #93\n"
            "mov x0, #127\n"
            "svc #0\n"
            "b .\n");
}
