/* camera3 ABI adapter for Exynos9810: consume imported acquire fences.
 * The HIDL session transfers fence ownership only when the HAL accepts a
 * request. Wait before buffer reuse; on rejection leave ownership to HIDL.
 * Do not touch release fences or native camera buffer descriptors.
 */
typedef __SIZE_TYPE__ size_t;
typedef unsigned int uint32_t;
typedef struct {
    void *stream;
    const void **buffer;
    int status;
    int acquire_fence;
    int release_fence;
} stream_buffer;
typedef struct {
    uint32_t frame_number;
    const void *settings;
    stream_buffer *input_buffer;
    uint32_t num_output_buffers;
    const stream_buffer *output_buffers;
    uint32_t num_physcam_settings;
    const char **physcam_id;
    const void **physcam_settings;
} capture_request;
typedef struct { int fd; short events; short revents; } pollfd;
extern int poll(pollfd *, unsigned int, int);
extern int close(int);
extern int *__errno(void);
extern void *dlopen(const char *, int);
extern void *dlsym(void *, const char *);
typedef int (*capture_fn)(void *, capture_request *);

#ifndef FENCE_TEST
static capture_fn original;
static capture_fn get_original(void) {
    capture_fn fn = __atomic_load_n(&original, __ATOMIC_ACQUIRE);
    if (!fn) {
        void *handle = dlopen("libexynoscamera3.so", 2);
        if (!handle) return (capture_fn)0;
        fn = (capture_fn)dlsym(handle,
            "_ZN7android12ExynosCamera21processCaptureRequestEP23camera3_capture_request");
        __atomic_store_n(&original, fn, __ATOMIC_RELEASE);
    }
    return fn;
}
#else
extern capture_fn get_original(void);
#endif

static int wait_acquire(int fd) {
    if (fd < 0) return 0;
    pollfd p = {fd, 1 /* POLLIN */, 0};
    int ret;
    do { ret = poll(&p, 1, 3000); } while (ret < 0 && *__errno() == 4 /* EINTR */);
    if (ret == 0) return -110; /* ETIMEDOUT: caller still owns all fences */
    if (ret < 0) return -*__errno();
    if (p.revents & (8 | 32)) return -22; /* POLLERR | POLLNVAL */
    return (p.revents & 1) ? 0 : -22;
}

__attribute__((visibility("default")))
int unica_exynos9810_process_capture_request(void *camera, capture_request *request) {
    if (!request || request->num_output_buffers > 64 ||
        (request->num_output_buffers && !request->output_buffers)) return -22;
    capture_fn fn = get_original();
    if (!fn) return -19;
    /* HAL may not retain the caller's request/buffer array after return. */
    capture_request clean = *request;
    stream_buffer outputs[64], input;
    int fences[65];
    unsigned int count = 0;
    for (unsigned int i = 0; i < request->num_output_buffers; ++i) {
        outputs[i] = request->output_buffers[i];
        int fd = outputs[i].acquire_fence;
        int ret = wait_acquire(fd);
        if (ret) return ret;
        if (fd >= 0) fences[count++] = fd;
        outputs[i].acquire_fence = -1;
    }
    if (request->input_buffer) {
        input = *request->input_buffer;
        int ret = wait_acquire(input.acquire_fence);
        if (ret) return ret;
        if (input.acquire_fence >= 0) fences[count++] = input.acquire_fence;
        input.acquire_fence = -1;
        clean.input_buffer = &input;
    }
    clean.output_buffers = request->num_output_buffers ? outputs : request->output_buffers;
    int ret = fn(camera, &clean);
    if (ret == 0) {
        for (unsigned int i = 0; i < count; ++i) {
            unsigned int j;
            for (j = 0; j < i && fences[j] != fences[i]; ++j) {}
            if (j == i) close(fences[i]);
        }
    }
    return ret;
}
