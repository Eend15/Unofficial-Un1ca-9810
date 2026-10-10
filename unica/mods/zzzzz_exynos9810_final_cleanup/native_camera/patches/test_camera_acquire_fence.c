#define FENCE_TEST 1
#include "camera_acquire_fence.c"
#include <assert.h>
#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>

int *__errno(void) { return &errno; }
static int result, calls;
static int mock_capture(void *camera, capture_request *request) {
    (void)camera;
    ++calls;
    for (unsigned i = 0; i < request->num_output_buffers; ++i) {
        assert(request->output_buffers[i].acquire_fence == -1);
        assert(request->output_buffers[i].release_fence == 99);
    }
    if (request->input_buffer) assert(request->input_buffer->acquire_fence == -1);
    return result;
}
capture_fn get_original(void) { return mock_capture; }
static int ready_fence(int *writer) {
    int pair[2]; assert(pipe(pair) == 0);
    assert(write(pair[1], "x", 1) == 1);
    *writer = pair[1]; return pair[0];
}
int main(void) {
    int writer, fd = ready_fence(&writer);
    stream_buffer b[2] = {{0, 0, 0, fd, 99}, {0, 0, 0, fd, 99}};
    capture_request r = {0}; r.num_output_buffers = 2; r.output_buffers = b;
    result = 0;
    assert(unica_exynos9810_process_capture_request(0, &r) == 0);
    assert(fcntl(fd, F_GETFD) == -1 && errno == EBADF);
    assert(b[0].acquire_fence == fd && r.output_buffers == b);
    close(writer);

    fd = ready_fence(&writer); b[0].acquire_fence = fd; r.num_output_buffers = 1;
    result = -22;
    assert(unica_exynos9810_process_capture_request(0, &r) == -22);
    assert(fcntl(fd, F_GETFD) >= 0); close(fd); close(writer);

    int pair[2]; assert(pipe(pair) == 0); b[0].acquire_fence = pair[0];
    int before = calls;
    assert(unica_exynos9810_process_capture_request(0, &r) == -110);
    assert(calls == before && fcntl(pair[0], F_GETFD) >= 0);
    close(pair[0]); close(pair[1]);

    fd = ready_fence(&writer); b[0].acquire_fence = -1;
    stream_buffer in = {0, 0, 0, fd, 99}; r.input_buffer = &in; result = 0;
    assert(unica_exynos9810_process_capture_request(0, &r) == 0);
    assert(fcntl(fd, F_GETFD) == -1 && errno == EBADF); close(writer);
    puts("PASS: accepted, rejected, timeout, duplicate and input fence ownership");
}
