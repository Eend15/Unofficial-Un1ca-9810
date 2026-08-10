/*
 * Tiny early-boot logger for Exynos9810 ROM diagnostics.
 *
 * It deliberately uses raw AArch64 syscalls so it can run before /system
 * userspace is available.  The init service keeps reading /dev/kmsg and
 * stores the result on /cache, mounting CACHE itself when necessary.
 */

typedef unsigned long size_t;
typedef long ssize_t;
typedef long intptr_t;

struct timespec {
    long tv_sec;
    long tv_nsec;
};

enum {
    SYS_read = 63,
    SYS_write = 64,
    SYS_openat = 56,
    SYS_close = 57,
    SYS_nanosleep = 101,
    SYS_mount = 40,
    SYS_exit = 93,
};

enum {
    AT_FDCWD = -100,
    O_RDONLY = 0,
    O_WRONLY = 1,
    O_CREAT = 64,
    O_APPEND = 1024,
    O_NONBLOCK = 2048,
};

static long syscall6(long number, long a0, long a1, long a2, long a3,
                     long a4, long a5)
{
    register long x0 __asm__("x0") = a0;
    register long x1 __asm__("x1") = a1;
    register long x2 __asm__("x2") = a2;
    register long x3 __asm__("x3") = a3;
    register long x4 __asm__("x4") = a4;
    register long x5 __asm__("x5") = a5;
    register long x8 __asm__("x8") = number;

    __asm__ volatile("svc 0"
                     : "+r"(x0)
                     : "r"(x1), "r"(x2), "r"(x3), "r"(x4), "r"(x5),
                       "r"(x8)
                     : "memory");
    return x0;
}

static size_t string_length(const char *text)
{
    size_t length = 0;
    while (text[length] != '\0')
        ++length;
    return length;
}

static void copy_bytes(char *destination, const char *source, size_t length)
{
    size_t index;
    for (index = 0; index < length; ++index)
        destination[index] = source[index];
}

static void move_bytes(char *destination, const char *source, size_t length)
{
    size_t index;
    if (destination < source) {
        for (index = 0; index < length; ++index)
            destination[index] = source[index];
        return;
    }
    for (index = length; index != 0; --index)
        destination[index - 1] = source[index - 1];
}

static void sleep_milliseconds(long milliseconds)
{
    struct timespec request;
    request.tv_sec = milliseconds / 1000;
    request.tv_nsec = (milliseconds % 1000) * 1000000L;
    syscall6(SYS_nanosleep, (long)&request, 0, 0, 0, 0, 0);
}

static long open_file(const char *path, long flags, long mode)
{
    return syscall6(SYS_openat, AT_FDCWD, (long)path, flags, mode, 0, 0);
}

static long write_all(long fd, const char *data, size_t length)
{
    while (length != 0) {
        long written = syscall6(SYS_write, fd, (long)data, length, 0, 0, 0);
        if (written <= 0)
            return written;
        data += written;
        length -= (size_t)written;
    }
    return 0;
}

static void try_mount_cache(void)
{
    static const char *sources[] = {
        "/dev/block/platform/11120000.ufs/by-name/CACHE",
        "/dev/block/sda22",
    };
    static const char *options =
        "noatime,nosuid,nodev,noauto_da_alloc,discard,journal_checksum,data=ordered";
    size_t index;

    for (index = 0; index < sizeof(sources) / sizeof(sources[0]); ++index)
        syscall6(SYS_mount, (long)sources[index], (long)"/cache",
                 (long)"ext4", 0, (long)options, 0);
}

#define PENDING_SIZE 131072
static char pending[PENDING_SIZE];
static size_t pending_length;
static long output_fd = -1;

static void remember_pending(const char *data, size_t length)
{
    if (length >= PENDING_SIZE) {
        copy_bytes(pending, data + length - PENDING_SIZE, PENDING_SIZE);
        pending_length = PENDING_SIZE;
        return;
    }
    if (pending_length + length > PENDING_SIZE) {
        size_t drop = pending_length + length - PENDING_SIZE;
        move_bytes(pending, pending + drop, pending_length - drop);
        pending_length -= drop;
    }
    copy_bytes(pending + pending_length, data, length);
    pending_length += length;
}

static long find_output(void)
{
    static const char *paths[] = {
        "/cache/bootloop-debug.log",
        "/metadata/bootloop-debug.log",
        "/data/bootloop-debug.log",
    };
    size_t index;

    try_mount_cache();
    for (index = 0; index < sizeof(paths) / sizeof(paths[0]); ++index) {
        long fd = open_file(paths[index], O_WRONLY | O_CREAT | O_APPEND, 0600);
        if (fd >= 0)
            return fd;
    }
    return -1;
}

static void emit(const char *data, size_t length)
{
    if (output_fd < 0)
        output_fd = find_output();
    if (output_fd >= 0) {
        if (pending_length != 0) {
            if (write_all(output_fd, pending, pending_length) < 0) {
                syscall6(SYS_close, output_fd, 0, 0, 0, 0, 0);
                output_fd = -1;
                remember_pending(pending, pending_length);
                return;
            }
            pending_length = 0;
        }
        if (write_all(output_fd, data, length) < 0) {
            syscall6(SYS_close, output_fd, 0, 0, 0, 0, 0);
            output_fd = -1;
            remember_pending(data, length);
        }
        return;
    }
    remember_pending(data, length);
}

static void emit_text(const char *text)
{
    emit(text, string_length(text));
}

static void emit_file(const char *label, const char *path)
{
    char buffer[4096];
    long fd;
    ssize_t length;

    emit_text("\n[bootlogger] ");
    emit_text(label);
    emit_text(" ");
    emit_text(path);
    emit_text("\n");
    fd = open_file(path, O_RDONLY, 0);
    if (fd < 0) {
        emit_text("<unavailable>\n");
        return;
    }
    for (;;) {
        length = syscall6(SYS_read, fd, (long)buffer, sizeof(buffer), 0, 0, 0);
        if (length <= 0)
            break;
        emit(buffer, (size_t)length);
    }
    syscall6(SYS_close, fd, 0, 0, 0, 0, 0);
    emit_text("\n");
}

static void snapshot(void)
{
    emit_text("\n========== BOOTLOGGER SNAPSHOT ==========\n");
    emit_file("cmdline", "/proc/cmdline");
    emit_file("mounts", "/proc/mounts");
    emit_file("uptime", "/proc/uptime");
    emit_file("printk", "/proc/sys/kernel/printk");
    emit_file("pstore", "/sys/fs/pstore/console-ramoops-0");
}

void bootlogger_main(void)
{
    char buffer[4096];
    long kmsg = -1;
    long tick;

    emit_text("\n========== BOOTLOGGER START =========="
              "\nversion=1\n");
    snapshot();

    for (tick = 0; tick < 3600; ++tick) {
        if (output_fd < 0)
            output_fd = find_output();
        if (kmsg < 0) {
            kmsg = open_file("/dev/kmsg", O_RDONLY | O_NONBLOCK, 0);
            if (kmsg < 0)
                kmsg = open_file("/proc/kmsg", O_RDONLY | O_NONBLOCK, 0);
        }
        if (kmsg >= 0) {
            long length;
            do {
                length = syscall6(SYS_read, kmsg, (long)buffer, sizeof(buffer), 0, 0, 0);
                if (length > 0)
                    emit(buffer, (size_t)length);
            } while (length > 0);
        }
        if ((tick % 20) == 0)
            snapshot();
        sleep_milliseconds(100);
    }

    emit_text("\n========== BOOTLOGGER END =========="
              "\n");
    if (output_fd >= 0)
        syscall6(SYS_close, output_fd, 0, 0, 0, 0, 0);
    syscall6(SYS_exit, 0, 0, 0, 0, 0, 0);
    for (;;) {}
}

#ifndef EXYNOS9810_BOOTLOGGER_WRAPPER
void _start(void)
{
    bootlogger_main();
}
#endif
