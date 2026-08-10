/* Start the logger before Android init, then hand control to the donor init. */
#define EXYNOS9810_BOOTLOGGER_WRAPPER
#include "bootlogger.c"

enum {
    SYS_clone = 220,
    SYS_execve = 221,
};

void _start(void)
{
    long *stack;
    long argc;
    char **argv;
    char **envp;
    long child;

    __asm__ volatile("mov %0, sp" : "=r"(stack));
    argc = stack[0];
    argv = (char **)(stack + 1);
    envp = argv + argc + 1;

    child = syscall6(SYS_clone, 17, 0, 0, 0, 0, 0);
    if (child == 0) {
        bootlogger_main();
        syscall6(SYS_exit, 127, 0, 0, 0, 0, 0);
    }

    syscall6(SYS_execve, (long)"/init.real", (long)argv, (long)envp, 0, 0, 0);
    syscall6(SYS_exit, 127, 0, 0, 0, 0, 0);
    for (;;) {}
}
