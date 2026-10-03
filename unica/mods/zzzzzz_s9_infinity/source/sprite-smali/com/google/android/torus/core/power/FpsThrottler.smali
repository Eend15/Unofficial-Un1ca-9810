.class public final Lcom/google/android/torus/core/power/FpsThrottler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/torus/core/power/FpsThrottler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0015\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000e\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u0015\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J#\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u001dR\u0016\u0010\u000e\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/google/android/torus/core/power/FpsThrottler;",
        "",
        "<init>",
        "()V",
        "Lq3/m;",
        "updateFrameTime",
        "",
        "fps",
        "updateFps",
        "(F)V",
        "",
        "continuousRenderingMode",
        "setContinuousRenderingMode",
        "(Z)V",
        "requestRendering",
        "",
        "frameTimeNanos",
        "canRender",
        "(J)Z",
        "Lkotlin/Function0;",
        "onRenderPermitted",
        "tryRender",
        "(JLE3/a;)Z",
        "F",
        "",
        "frameTimeMillis",
        "D",
        "lastFrameTimeNanos",
        "J",
        "Z",
        "Companion",
        "torus_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/torus/core/power/FpsThrottler$Companion;

.field public static final FPS_120:F = 120.0f

.field public static final FPS_18:F = 18.0f

.field public static final FPS_30:F = 30.0f

.field public static final FPS_60:F = 60.0f

.field public static final HIGH_FPS:F = 60.0f

.field public static final LOW_FPS:F = 18.0f

.field public static final MED_FPS:F = 30.0f

.field private static final NANO_TO_MILLIS:D = 1.0E-6


# instance fields
.field private volatile continuousRenderingMode:Z

.field private fps:F

.field private volatile frameTimeMillis:D

.field private lastFrameTimeNanos:J

.field private volatile requestRendering:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/torus/core/power/FpsThrottler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/torus/core/power/FpsThrottler$Companion;-><init>(LF3/f;)V

    sput-object v0, Lcom/google/android/torus/core/power/FpsThrottler;->Companion:Lcom/google/android/torus/core/power/FpsThrottler$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/google/android/torus/core/power/FpsThrottler;->fps:F

    const-wide v1, 0x408f400000000000L    # 1000.0

    float-to-double v3, v0

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/torus/core/power/FpsThrottler;->frameTimeMillis:D

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/torus/core/power/FpsThrottler;->lastFrameTimeNanos:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/torus/core/power/FpsThrottler;->continuousRenderingMode:Z

    return-void
.end method

.method private final updateFrameTime()V
    .locals 4

    iget v0, p0, Lcom/google/android/torus/core/power/FpsThrottler;->fps:F

    float-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/torus/core/power/FpsThrottler;->frameTimeMillis:D

    return-void
.end method


# virtual methods
.method public final canRender(J)Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/torus/core/power/FpsThrottler;->continuousRenderingMode:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/torus/core/power/FpsThrottler;->lastFrameTimeNanos:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    sub-long/2addr p1, v0

    long-to-double p1, p1

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr p1, v0

    iget-wide v0, p0, Lcom/google/android/torus/core/power/FpsThrottler;->frameTimeMillis:D

    cmpl-double p1, p1, v0

    if-ltz p1, :cond_1

    iget p0, p0, Lcom/google/android/torus/core/power/FpsThrottler;->fps:F

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_2
    iget-boolean v3, p0, Lcom/google/android/torus/core/power/FpsThrottler;->requestRendering:Z

    :goto_1
    return v3
.end method

.method public final requestRendering()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/torus/core/power/FpsThrottler;->requestRendering:Z

    return-void
.end method

.method public final setContinuousRenderingMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/torus/core/power/FpsThrottler;->continuousRenderingMode:Z

    return-void
.end method

.method public final tryRender(JLE3/a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "LE3/a;",
            ")Z"
        }
    .end annotation

    const-string v0, "onRenderPermitted"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/torus/core/power/FpsThrottler;->canRender(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p3}, LE3/a;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lcom/google/android/torus/core/power/FpsThrottler;->lastFrameTimeNanos:J

    iput-boolean v1, p0, Lcom/google/android/torus/core/power/FpsThrottler;->requestRendering:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final updateFps(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/torus/core/power/FpsThrottler;->setContinuousRenderingMode(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/torus/core/power/FpsThrottler;->setContinuousRenderingMode(Z)V

    iput p1, p0, Lcom/google/android/torus/core/power/FpsThrottler;->fps:F

    invoke-direct {p0}, Lcom/google/android/torus/core/power/FpsThrottler;->updateFrameTime()V

    :goto_0
    return-void
.end method
