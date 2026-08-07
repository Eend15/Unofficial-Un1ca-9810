/* UN1CA Exynos9810 comprehensive early-boot logger v4.
 *
 * Replaces /init in the boot ramdisk. Logs EVERYTHING to the raw CP_DEBUG
 * block device (/dev/block/sda25, 5 MB, no filesystem needed) so a bootloop
 * never loses data: TWRP can read it back with:
 *     dd if=/dev/block/by-name/CP_DEBUG of=/external_sd/cp_debug.raw
 *
 * Also writes a marker at the end of the BOOT partition, tries /cache and the
 * external SD, dumps /sys/fs/pstore (ramoops records from previous boots),
 * the full kernel ring buffer via syslog(3), /proc state, and keeps draining
 * /dev/kmsg for 180 s in a child. Then execs the original /init as /init.real.
 *
 * No libc. Raw aarch64 syscalls. Build: see build_logger.sh.
 */

typedef unsigned long ulong;
typedef long slong;

enum {
    SYS_MKNODAT = 33,
    SYS_MKDIRAT = 34,
    SYS_MOUNT = 40,
    SYS_OPENAT = 56,
    SYS_CLOSE = 57,
    SYS_LSEEK = 62,
    SYS_READ = 63,
    SYS_WRITE = 64,
    SYS_FSYNC = 82,
    SYS_EXIT = 93,
    SYS_NANOSLEEP = 101,
    SYS_SYSLOG = 116,
    SYS_CLONE = 220,
    SYS_EXECVE = 221,
};

enum {
    AT_FDCWD = -100,
    O_RDONLY = 0,
    O_WRONLY = 1,
    O_RDWR = 2,
    O_CREAT = 64,
    O_APPEND = 1024,
    O_NONBLOCK = 2048,
    O_CLOEXEC = 524288,
    SIGCHLD = 17,
    MS_NOATIME = 1024,
};

#define CP_DEBUG_PATH "/dev/block/sda25"
#define CP_DEBUG_DEV 0x10309u
#define CP_DEBUG_SIZE (5120 * 1024)
#define SESSION_MAGIC "UN1CALOG"
#define BOOT_MARKER_OFFSET 57667584

struct timespec {
    slong seconds;
    slong nanoseconds;
};

static int log_fd = -1;       /* best writable file (cache/sd), may be -1 */
static int cp_fd = -1;        /* raw CP_DEBUG partition */
static slong cp_next = 0;     /* next append offset in CP_DEBUG */
static slong cp_session = 0;  /* session number for this boot */
static int sd_mounted;
static unsigned char buffer[65536];

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

static void log_text_to(int fd, const char *value)
{
    if (fd >= 0)
        write_all(fd, value, string_length(value));
}

/* ------------------------------------------------------------------ */
/* CP_DEBUG raw partition                                               */
/* ------------------------------------------------------------------ */

static slong read32_at(const unsigned char *p)
{
    return (slong)p[0] | ((slong)p[1] << 8) | ((slong)p[2] << 16) |
           ((slong)p[3] << 24);
}

static void write32_at(unsigned char *p, slong value)
{
    p[0] = (unsigned char)(value & 0xff);
    p[1] = (unsigned char)((value >> 8) & 0xff);
    p[2] = (unsigned char)((value >> 16) & 0xff);
    p[3] = (unsigned char)((value >> 24) & 0xff);
}

/* Scan CP_DEBUG for the highest session number, compute next append offset. */
static void cp_find_next(void)
{
    slong offset = 0;
    slong best_session = -1;
    slong best_next = -1;

    if (cp_fd < 0)
        return;

    while (offset < CP_DEBUG_SIZE) {
        slong count = syscall6(SYS_READ, cp_fd, (slong)buffer,
                               sizeof(buffer), 0, 0, 0);
        slong i;
        if (count <= 0)
            break;
        for (i = 0; i + 16 <= count; ++i) {
            if (buffer[i] == 'U' && buffer[i + 1] == 'N' &&
                buffer[i + 2] == '1' && buffer[i + 3] == 'C' &&
                buffer[i + 4] == 'A' && buffer[i + 5] == 'L' &&
                buffer[i + 6] == 'O' && buffer[i + 7] == 'G') {
                slong session = read32_at(&buffer[i + 8]);
                slong length = read32_at(&buffer[i + 12]);
                if (session > best_session) {
                    best_session = session;
                    best_next = offset + i + 16 + length;
                }
            }
        }
        offset += count;
    }
    cp_session = best_session + 1;
    cp_next = best_next > 0 ? best_next : 0;
    if (cp_next >= CP_DEBUG_SIZE)
        cp_next = CP_DEBUG_SIZE;
}

static void cp_write_session_text(const char *text, ulong length)
{
    unsigned char header[16];

    if (cp_fd < 0)
        return;
    if (cp_next + 16 + length > CP_DEBUG_SIZE)
        return;

    header[0] = 'U'; header[1] = 'N'; header[2] = '1'; header[3] = 'C';
    header[4] = 'A'; header[5] = 'L'; header[6] = 'O'; header[7] = 'G';
    write32_at(&header[8], cp_session);
    write32_at(&header[12], (slong)length);

    if (syscall6(SYS_LSEEK, cp_fd, cp_next, 0, 0, 0, 0) < 0)
        return;
    write_all(cp_fd, header, sizeof(header));
    write_all(cp_fd, text, length);
    syscall6(SYS_FSYNC, cp_fd, 0, 0, 0, 0, 0);
    cp_next += 16 + length;
}

static void cp_log(const char *value)
{
    cp_write_session_text(value, string_length(value));
}

static void cp_log_hex(slong value)
{
    static const char digits[] = "0123456789abcdef";
    unsigned char output[19];
    ulong number = (ulong)value;
    int index;

    output[0] = '0';
    output[1] = 'x';
    for (index = 0; index < 16; ++index)
        output[2 + index] = (unsigned char)digits[(number >> (60 - index * 4)) & 15];
    output[18] = '\n';
    cp_write_session_text((const char *)output, sizeof(output));
}

static void cp_open(void)
{
    if (cp_fd >= 0)
        return;
    syscall6(SYS_MKDIRAT, AT_FDCWD, (slong)"/dev", 0755, 0, 0, 0);
    syscall6(SYS_MKDIRAT, AT_FDCWD, (slong)"/dev/block", 0755, 0, 0, 0);
    syscall6(SYS_MKNODAT, AT_FDCWD, (slong)CP_DEBUG_PATH,
             060600, CP_DEBUG_DEV, 0, 0);
    cp_fd = (int)syscall6(SYS_OPENAT, AT_FDCWD, (slong)CP_DEBUG_PATH,
                          O_RDWR | O_CLOEXEC, 0, 0, 0);
    if (cp_fd < 0)
        return;
    cp_find_next();
}

/* ------------------------------------------------------------------ */
/* Boot marker on the BOOT partition                                    */
/* ------------------------------------------------------------------ */

static void write_boot_marker(void)
{
    static const char marker[] = "UN1CA_EARLY_INIT_MARKER\n";
    slong fd = syscall6(SYS_OPENAT, AT_FDCWD,
                        (slong)"/dev/block/sda10",
                        O_WRONLY | O_CLOEXEC, 0, 0, 0);
    if (fd < 0)
        return;
    if (syscall6(SYS_LSEEK, fd, BOOT_MARKER_OFFSET, 0, 0, 0, 0) >= 0) {
        write_all((int)fd, marker, sizeof(marker) - 1);
        syscall6(SYS_FSYNC, fd, 0, 0, 0, 0, 0);
    }
    syscall6(SYS_CLOSE, fd, 0, 0, 0, 0, 0);
}

/* ------------------------------------------------------------------ */
/* File-based logging (cache / sd)                                      */
/* ------------------------------------------------------------------ */

static int open_log_file(void)
{
    static const char *paths[] = {
        "/cache/UN1CA-early-boot.log",
        "/metadata/UN1CA-early-boot.log",
        "/data/local/tmp/UN1CA-early-boot.log",
        "/external_sd/UN1CA-early-boot.log",
    };
    ulong index;

    if (log_fd >= 0)
        return 0;

    for (index = 0; index < sizeof(paths) / sizeof(paths[0]); ++index) {
        slong fd = syscall6(SYS_OPENAT, AT_FDCWD, (slong)paths[index],
                            O_WRONLY | O_CREAT | O_APPEND | O_CLOEXEC,
                            0644, 0, 0);
        if (fd >= 0) {
            log_fd = (int)fd;
            log_text_to(log_fd, "\n=== UN1CA early logger v4 ===\n");
            log_text_to(log_fd, "log_path=");
            log_text_to(log_fd, paths[index]);
            log_text_to(log_fd, "\n");
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
            log_text_to(log_fd, "\n=== UN1CA early logger v4 ===\n");
            log_text_to(log_fd, "log_path=/mnt/logger/UN1CA-early-boot.log\n");
            return 0;
        }
    }
    return -1;
}

static void try_mount_sd(void)
{
    static const char *devices[] = {
        "/dev/block/mmcblk0p1",
        "/dev/block/mmcblk0",
        "/dev/block/mmcblk1p1",
        "/dev/block/mmcblk1p2",
        "/dev/block/mmcblk1p3",
        "/dev/block/mmcblk1p4",
        "/dev/block/mmcblk1",
    };
    static const char *types[] = { "sdfat", "vfat", "msdos", "exfat", "ext4", "f2fs" };
    ulong device_index;
    ulong type_index;

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

/* ------------------------------------------------------------------ */
/* Dumps                                                                */
/* ------------------------------------------------------------------ */

static void dump_file(const char *label, const char *path)
{
    slong fd;
    slong count;

    cp_log(label);
    cp_log(" ");
    fd = syscall6(SYS_OPENAT, AT_FDCWD, (slong)path, O_RDONLY | O_CLOEXEC, 0, 0, 0);
    if (fd < 0) {
        cp_log("open_failed=");
        cp_log_hex(fd);
        return;
    }
    while ((count = syscall6(SYS_READ, fd, (slong)buffer, sizeof(buffer), 0, 0, 0)) > 0) {
        cp_write_session_text((const char *)buffer, (ulong)count);
        if (log_fd >= 0)
            write_all(log_fd, buffer, (ulong)count);
    }
    syscall6(SYS_CLOSE, fd, 0, 0, 0, 0, 0);
    cp_log("\n");
}

static void dump_kernel_log(void)
{
    slong count;

    cp_log("--- syslog(3) full kernel ring buffer ---\n");
    count = syscall6(SYS_SYSLOG, 3, (slong)buffer, sizeof(buffer) - 1, 0, 0, 0);
    if (count > 0) {
        buffer[count] = '\n';
        cp_write_session_text((const char *)buffer, (ulong)count + 1);
        if (log_fd >= 0) {
            write_all(log_fd, buffer, (ulong)count + 1);
            syscall6(SYS_FSYNC, log_fd, 0, 0, 0, 0, 0);
        }
    } else {
        cp_log("syslog_failed=");
        cp_log_hex(count);
    }
    cp_log("--- end syslog ---\n");
}

/* Dump /sys/fs/pstore records (ramoops data from this and previous boots). */
static void dump_pstore(void)
{
    static const char prefix[] = "/sys/fs/pstore/";
    static const char *names[] = {
        "dmesg-ramoops-0", "dmesg-ramoops-1", "dmesg-ramoops-2",
        "dmesg-ramoops-3", "console-ramoops-0", "console-ramoops-1",
        "console-ramoops-2", "console-ramoops-3", "pmsg-ramoops-0",
        "ftrace-ramoops-0",
    };
    char path[64];
    ulong index;

    cp_log("--- pstore dump ---\n");
    for (index = 0; index < sizeof(names) / sizeof(names[0]); ++index) {
        ulong p = 0;
        ulong n = 0;
        slong fd;
        slong count;

        while (prefix[n])
            path[p++] = prefix[n++];
        n = 0;
        while (names[index][n])
            path[p++] = names[index][n++];
        path[p++] = 0;
        fd = syscall6(SYS_OPENAT, AT_FDCWD, (slong)path, O_RDONLY | O_CLOEXEC, 0, 0, 0);
        if (fd < 0)
            continue;
        cp_log("==== ");
        cp_log(path);
        cp_log(" ====\n");
        while ((count = syscall6(SYS_READ, fd, (slong)buffer, sizeof(buffer), 0, 0, 0)) > 0) {
            cp_write_session_text((const char *)buffer, (ulong)count);
            if (log_fd >= 0)
                write_all(log_fd, buffer, (ulong)count);
        }
        syscall6(SYS_CLOSE, fd, 0, 0, 0, 0, 0);
        cp_log("\n");
    }
    cp_log("--- end pstore ---\n");
}

static void snapshot(void)
{
    cp_log("==== snapshot ====\n");
    dump_file("cmdline=", "/proc/cmdline");
    dump_file("version=", "/proc/version");
    dump_file("uptime=", "/proc/uptime");
    dump_file("mounts=", "/proc/mounts");
    dump_file("filesystems=", "/proc/filesystems");
    dump_file("partitions=", "/proc/partitions");
    dump_file("iomem=", "/proc/iomem");
    dump_file("printk=", "/proc/sys/kernel/printk");
    dump_kernel_log();
    dump_pstore();
    cp_log("==== end snapshot ====\n");
    if (log_fd >= 0)
        syscall6(SYS_FSYNC, log_fd, 0, 0, 0, 0, 0);
}

/* ------------------------------------------------------------------ */
/* Background child: keep draining /dev/kmsg for 180 s                  */
/* ------------------------------------------------------------------ */

static int kmsg_fd = -1;

static void drain_kmsg(void)
{
    slong count;

    if (kmsg_fd < 0) {
        kmsg_fd = (int)syscall6(SYS_OPENAT, AT_FDCWD, (slong)"/dev/kmsg",
                                O_RDONLY | O_NONBLOCK | O_CLOEXEC, 0, 0, 0);
        if (kmsg_fd < 0)
            return;
    }
    while ((count = syscall6(SYS_READ, kmsg_fd, (slong)buffer, sizeof(buffer), 0, 0, 0)) > 0) {
        cp_write_session_text((const char *)buffer, (ulong)count);
        if (log_fd >= 0)
            write_all(log_fd, buffer, (ulong)count);
    }
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
                log_text_to(log_fd, "phase=background_logger\n");
                snapshot();
            }
        } else {
            drain_kmsg();
            if (second == 1 || second == 2 || second == 5 || second == 10 ||
                second == 20 || second == 40 || second == 80 || second == 120)
                snapshot();
        }
        if ((second % 5) == 0) {
            cp_log("heartbeat_second=");
            cp_log_hex(second);
        }
        sleep_one_second();
    }

    cp_log("phase=background_logger_exit\n");
    if (log_fd >= 0) {
        log_text_to(log_fd, "phase=background_logger_exit\n");
        syscall6(SYS_FSYNC, log_fd, 0, 0, 0, 0, 0);
        syscall6(SYS_CLOSE, log_fd, 0, 0, 0, 0, 0);
    }
    syscall6(SYS_CLOSE, cp_fd, 0, 0, 0, 0, 0);
    syscall6(SYS_EXIT, 0, 0, 0, 0, 0, 0);
    for (;;)
        ;
}

/* ------------------------------------------------------------------ */

__attribute__((used, noreturn)) void entry(long *stack)
{
    long argc = stack[0];
    char **argv = (char **)(stack + 1);
    char **envp = argv + argc + 1;
    slong child;
    int second;

    cp_open();
    cp_log("==== UN1CA early logger v4 pid1 =====\n");
    cp_log("session=");
    cp_log_hex(cp_session);
    write_boot_marker();
    cp_log("boot_marker_written\n");

    for (second = 0; second < 15 && log_fd < 0; ++second) {
        try_mount_cache();
        try_mount_sd();
        open_log_file();
        if (log_fd >= 0) {
            log_text_to(log_fd, "phase=pid1_wrapper\n");
            snapshot();
        } else {
            sleep_one_second();
        }
    }
    snapshot();

    child = syscall6(SYS_CLONE, SIGCHLD, 0, 0, 0, 0, 0);
    if (child == 0)
        logger_child();
    if (child < 0) {
        cp_log("clone_failed=");
        cp_log_hex(child);
    }

    cp_log("phase=exec_init_real\n");
    syscall6(SYS_EXECVE, (slong)"/init.real", (slong)argv, (slong)envp, 0, 0, 0);
    cp_log("exec_init_real_failed\n");
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
