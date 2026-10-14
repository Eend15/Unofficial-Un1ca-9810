/*
 * Experimental, fail-closed hw_get_module override for FaceunlockFix faced.
 *
 * When loaded through LD_PRELOAD in faced, redirects its legacy
 * hw_get_module("face") request to the matching original face HAL under a
 * private /system/lib64/faceunlockfix directory. This avoids overwriting
 * Android 16's existing face.default.so and libFaceService.so.
 *
 * Not production-ready until Android 16 linker and SELinux validation.
 */
#define _GNU_SOURCE

#ifdef FACEUNLOCKFIX_STANDALONE_CROSSCOMPILE
/* Build-only ABI declarations when a full Android Soong sysroot is absent.
 * Production AOSP builds MUST use the real platform headers below instead.
 * These declarations are tested against AOSP hardware.h and the final ELF.
 */
#include "faceunlockfix_android_abi_minimal.h"
#else
#include <android/log.h>
#include <dlfcn.h>
#include <errno.h>
#include <hardware/hardware.h>
#include <string.h>
#endif

#define TAG "FaceunlockFixRedirect"
#define LEGACY_MODULE_ID "face"
#ifndef LEGACY_HAL_PATH
#ifdef FACEUNLOCKFIX_LINK_PROBE
/* Temporary ADB sandbox only; never ship this diagnostic build in a ROM. */
#define LEGACY_HAL_PATH "/data/local/tmp/faceunlockfix_link_probe/face.faceunlockfix.so"
#else
#define LEGACY_HAL_PATH "/system/lib64/faceunlockfix/face.faceunlockfix.so"
#endif
#endif

typedef int (*hw_get_module_fn)(const char *id, const hw_module_t **module);

__attribute__((visibility("default")))
int hw_get_module(const char *id, const hw_module_t **module)
{
    if (!module || !id)
        return -EINVAL;

    if (strcmp(id, LEGACY_MODULE_ID) != 0) {
        hw_get_module_fn original =
            (hw_get_module_fn)dlsym(RTLD_NEXT, "hw_get_module");
        if (!original)
            return -ENOSYS;
        return original(id, module);
    }

    /* Never fall back to a different Android 16 face HAL on error. */
    *module = NULL;

    void *handle = dlopen(LEGACY_HAL_PATH, RTLD_NOW | RTLD_LOCAL);
    if (!handle) {
        __android_log_print(ANDROID_LOG_ERROR, TAG,
                            "FaceunlockFix face HAL dlopen failed: %s", dlerror());
        return -ENOENT;
    }

    hw_module_t *face_module = (hw_module_t *)dlsym(handle, "HMI");
    if (!face_module || face_module->tag != HARDWARE_MODULE_TAG ||
        !face_module->id || strcmp(face_module->id, LEGACY_MODULE_ID) ||
        !face_module->methods || !face_module->methods->open) {
        __android_log_print(ANDROID_LOG_ERROR, TAG,
                            "FaceunlockFix face HAL has incompatible HMI");
        dlclose(handle);
        return -EINVAL;
    }

    /* libhardware's successful loader retains the DSO for module lifetime. */
    face_module->dso = handle;
    *module = face_module;
    __android_log_print(ANDROID_LOG_INFO, TAG,
                        "Loaded isolated FaceunlockFix face HAL");
    return 0;
}
