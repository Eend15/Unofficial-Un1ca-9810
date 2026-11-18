/* Offline crosscompile-only declarations for this tiny AArch64 interposer.
 * Struct layout follows AOSP Android 16 hardware/libhardware hardware.h.
 * NEVER install this header or use it to build unrelated modules.
 */
#ifndef EXYNOS9810_FACEUNLOCKFIX_ANDROID_ABI_MINIMAL_H
#define EXYNOS9810_FACEUNLOCKFIX_ANDROID_ABI_MINIMAL_H

typedef unsigned int uint32_t;
typedef unsigned short uint16_t;
typedef unsigned long uint64_t;

struct hw_module_methods_t;
struct hw_module_t;
struct hw_device_t;

typedef struct hw_module_t {
    uint32_t tag;
    uint16_t module_api_version;
    uint16_t hal_api_version;
    const char *id;
    const char *name;
    const char *author;
    struct hw_module_methods_t *methods;
    void *dso;
    uint64_t reserved[25];
} hw_module_t;

typedef struct hw_module_methods_t {
    int (*open)(const hw_module_t *, const char *, struct hw_device_t **);
} hw_module_methods_t;

#define HARDWARE_MODULE_TAG ((uint32_t)(('H' << 24) | ('W' << 16) | ('M' << 8) | 'T'))
#define RTLD_NOW 2
#define RTLD_LOCAL 0
#define RTLD_NEXT ((void *)-1)
#define EINVAL 22
#define ENOENT 2
#define ENOSYS 38
#define ANDROID_LOG_ERROR 6
#define ANDROID_LOG_INFO 4
#define NULL ((void *)0)

extern void *dlopen(const char *, int);
extern void *dlsym(void *, const char *);
extern const char *dlerror(void);
extern int dlclose(void *);
extern int strcmp(const char *, const char *);
extern int __android_log_print(int, const char *, const char *, ...);

#endif
