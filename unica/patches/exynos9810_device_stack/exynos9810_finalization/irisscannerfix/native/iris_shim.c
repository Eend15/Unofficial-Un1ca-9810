/*
 * Android 8/10 -> 16 ABI shim for Samsung's iris stack (libIrisService.so).
 *
 * 1. Android 16 libgui only exports
 *      Surface(const sp<IGraphicBufferProducer>&, bool, const sp<IBinder>&)
 *    while the old blob calls the two-argument constructor. sp<T> is a single
 *    raw pointer, so a null sp<IBinder> is a pointer to a null pointer.
 *
 * 2. ConsumerListener gained callbacks (onFrameDequeued/Cancelled/Detached,
 *    onSetFrameRate, ...) in front of and after the ones libIrisService
 *    implements, so One UI 8 would call the wrong methods. libIrisService's
 *    ProxyConsumerListener import is renamed to land here; before forwarding to
 *    the real constructor the listener gets a vtable in the One UI 8 layout:
 *    the iris implementations in their new slots, libgui defaults elsewhere.
 */
/* Built without an NDK sysroot: just the bionic declarations this file needs. */
typedef _Bool bool;
typedef unsigned long size_t;
typedef struct { int __private[10]; } pthread_mutex_t;   /* bionic LP64 layout */
#define PTHREAD_MUTEX_INITIALIZER { { 0 } }
void *malloc(size_t size);
int pthread_mutex_lock(pthread_mutex_t *mutex);
int pthread_mutex_unlock(pthread_mutex_t *mutex);

void _ZN7android7SurfaceC1ERKNS_2spINS_22IGraphicBufferProducerEEEbRKNS1_INS_7IBinderEEE(
        void *self, const void *producer, bool controlledByApp, const void *surfaceControlHandle);

void _ZN7android7SurfaceC1ERKNS_2spINS_22IGraphicBufferProducerEEEb(
        void *self, const void *producer, bool controlledByApp)
{
    void *no_handle = 0;
    _ZN7android7SurfaceC1ERKNS_2spINS_22IGraphicBufferProducerEEEbRKNS1_INS_7IBinderEEE(
            self, producer, controlledByApp, &no_handle);
}

/* ---- ConsumerListener vtable translation ---- */

void _ZN7android11BufferQueue21ProxyConsumerListenerC1ERKNS_2wpINS_16ConsumerListenerEEE(void *self, void *wp);
extern void *_ZTVN7android16ConsumerListenerE[];

#define HEADER 3            /* vbase offset, offset-to-top, typeinfo */
#define NEW_SLOTS 13        /* One UI 8 ConsumerListener: 0x00 .. 0x60 */
/* old blob layout (slot index): 0 ~, 1 ~(delete), 2 onDisconnect, 3 onFrameAvailable,
 * 4 onFrameReplaced, 5 (default), 6 onBuffersReleased, 7 onSidebandStreamChanged */
#define OLD_FRAME_AVAILABLE 3
#define OLD_BUFFERS_RELEASED 6
#define OLD_SIDEBAND 7
/* One UI 8 slot index */
#define NEW_FRAME_AVAILABLE 6
#define NEW_BUFFERS_RELEASED 8
#define NEW_SIDEBAND 9

static pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;
static void **cache_old[8];
static void **cache_new[8];

static void **translate(void **old)
{
    void **const defaults = _ZTVN7android16ConsumerListenerE + HEADER;
    void **table;
    int i;

    for (i = 0; i < 8 && cache_old[i]; i++)
        if (cache_old[i] == old)
            return cache_new[i];
    table = malloc((HEADER + NEW_SLOTS) * sizeof(void *));
    if (!table)
        return old;
    for (i = 0; i < HEADER; i++)
        table[i] = old[i - HEADER];
    table += HEADER;
    for (i = 0; i < NEW_SLOTS; i++)
        table[i] = defaults[i];
    table[0] = old[0];
    table[1] = old[1];
    table[NEW_FRAME_AVAILABLE] = old[OLD_FRAME_AVAILABLE];
    table[NEW_BUFFERS_RELEASED] = old[OLD_BUFFERS_RELEASED];
    table[NEW_SIDEBAND] = old[OLD_SIDEBAND];
    for (i = 0; i < 8; i++) {
        if (!cache_old[i]) {
            cache_old[i] = old;
            cache_new[i] = table;
            break;
        }
    }
    return table;
}

/* Called by libIrisService instead of the real ProxyConsumerListener constructor. */
void un1ca_proxy_consumer_listener_ctor(void *self, void **wp)
        __asm__("_ZU7android11BufferQueue21ProxyConsumerListenerC1ERKNS_2wpINS_16ConsumerListenerEEE");
void un1ca_proxy_consumer_listener_ctor(void *self, void **wp)
{
    void ***listener = (void ***)wp[0];   /* wp<ConsumerListener>::m_ptr */

    if (listener && *listener) {
        pthread_mutex_lock(&lock);
        *listener = translate(*listener);
        pthread_mutex_unlock(&lock);
    }
    _ZN7android11BufferQueue21ProxyConsumerListenerC1ERKNS_2wpINS_16ConsumerListenerEEE(self, wp);
}
