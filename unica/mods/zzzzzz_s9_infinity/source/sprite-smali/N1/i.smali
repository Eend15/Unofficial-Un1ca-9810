.class public final LN1/i;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# instance fields
.field public final d:[F

.field public final e:[F

.field public f:LN1/h;

.field public final synthetic g:LN1/j;


# direct methods
.method public constructor <init>(LN1/j;)V
    .locals 4

    iput-object p1, p0, LN1/i;->g:LN1/j;

    const-string v0, "tilt_video_hue"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, LN1/i;->d:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, LN1/i;->e:[F

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-virtual {p1}, LN1/j;->f()[I

    move-result-object v1

    invoke-virtual {p1}, LN1/j;->d()[I

    move-result-object p1

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, LN1/g;

    invoke-direct {v3, p0, v0, v1, p1}, LN1/g;-><init>(LN1/i;Ljava/util/concurrent/atomic/AtomicInteger;[I[I)V

    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x420a3d71    # -0.12f
        0x3df5c28f    # 0.12f
    .end array-data
.end method


# virtual methods
.method public final onLooperPrepared()V
    .locals 3

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    new-instance v0, LN1/h;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, LN1/h;-><init>(Landroid/os/HandlerThread;Landroid/os/Looper;I)V

    iput-object v0, p0, LN1/i;->f:LN1/h;

    return-void
.end method
