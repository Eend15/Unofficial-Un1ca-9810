.class public abstract Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;
.super Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperConnector;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/torus/core/engine/TorusEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$Companion;,
        Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008&\u0018\u0000 Y2\u00020\u00012\u00020\u0002:\u0002ZYB\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0017\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\nH\u0017\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\nH\u0017\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\nH\u0017\u00a2\u0006\u0004\u0008\u0011\u0010\u000eJ\u0017\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0012H\u0017\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u001c\u0010\u000cJ\u0015\u0010\u001d\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u001d\u0010\u000cJ\r\u0010\u001e\u001a\u00020\n\u00a2\u0006\u0004\u0008\u001e\u0010\u000eJ\r\u0010\u001f\u001a\u00020\n\u00a2\u0006\u0004\u0008\u001f\u0010\u000eJ\r\u0010 \u001a\u00020\n\u00a2\u0006\u0004\u0008 \u0010\u000eJ\r\u0010!\u001a\u00020\n\u00a2\u0006\u0004\u0008!\u0010\u000eJ\u001d\u0010%\u001a\u00020\n2\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\"\u00a2\u0006\u0004\u0008%\u0010&J\u0015\u0010\'\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\'\u0010\u000cJ\u0017\u0010*\u001a\u00020\n2\u0006\u0010)\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010,\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008,\u0010\u000eJ)\u00100\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00162\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\n0-\u00a2\u0006\u0004\u00080\u00101J!\u00102\u001a\u00020\u00052\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\n0-\u00a2\u0006\u0004\u00082\u00103J\u0017\u00106\u001a\u00020\n2\u0006\u00105\u001a\u000204H\u0004\u00a2\u0006\u0004\u00086\u00107J\u000f\u00108\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00088\u0010\u000eJ\u000f\u00109\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00089\u0010\u000eJ\u0017\u0010<\u001a\u00020\n2\u0006\u0010;\u001a\u00020:H\u0016\u00a2\u0006\u0004\u0008<\u0010=J#\u0010>\u001a\u00020\u00052\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\n0-H\u0002\u00a2\u0006\u0004\u0008>\u00103J\u000f\u0010?\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008?\u0010@R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010AR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010BR\u001c\u0010E\u001a\n D*\u0004\u0018\u00010C0C8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0014\u0010H\u001a\u00020G8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0018\u0010K\u001a\u00060JR\u00020\u00008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0014\u0010N\u001a\u00020M8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR$\u0010Q\u001a\u00020\u00122\u0006\u0010P\u001a\u00020\u00128\u0004@BX\u0084\u000e\u00a2\u0006\u000c\n\u0004\u0008Q\u0010R\u001a\u0004\u0008S\u0010TR\u0016\u0010U\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010BR\u0016\u0010V\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010BR\u0016\u0010W\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010BR\u0016\u0010X\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010B\u00a8\u0006["
    }
    d2 = {
        "Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;",
        "Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperConnector;",
        "Lcom/google/android/torus/core/engine/TorusEngine;",
        "Landroid/view/SurfaceHolder;",
        "defaultHolder",
        "",
        "hardwareAccelerated",
        "<init>",
        "(Landroid/view/SurfaceHolder;Z)V",
        "isFirstActiveInstance",
        "Lq3/m;",
        "onCreate",
        "(Z)V",
        "onResume",
        "()V",
        "onPause",
        "onResumeCommand",
        "onPauseCommand",
        "Landroid/util/Size;",
        "size",
        "onResize",
        "(Landroid/util/Size;)V",
        "",
        "deltaMillis",
        "frameTimeNanos",
        "onUpdate",
        "(JJ)V",
        "isLastActiveInstance",
        "onDestroy",
        "create",
        "pause",
        "resume",
        "dispatchPauseCommand",
        "dispatchResumeCommand",
        "",
        "width",
        "height",
        "resize",
        "(II)V",
        "destroy",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "onSurfaceRedrawNeeded",
        "Lkotlin/Function1;",
        "Landroid/graphics/Canvas;",
        "onRender",
        "renderWithFpsLimit",
        "(JLE3/b;)Z",
        "render",
        "(LE3/b;)Z",
        "",
        "fps",
        "setFpsLimit",
        "(F)V",
        "startUpdateLoop",
        "stopUpdateLoop",
        "Ljava/io/PrintWriter;",
        "out",
        "dump",
        "(Ljava/io/PrintWriter;)V",
        "renderToCanvas",
        "getCurrentSurfaceHolder",
        "()Landroid/view/SurfaceHolder;",
        "Landroid/view/SurfaceHolder;",
        "Z",
        "Landroid/view/Choreographer;",
        "kotlin.jvm.PlatformType",
        "choreographer",
        "Landroid/view/Choreographer;",
        "Lcom/google/android/torus/core/time/TimeController;",
        "timeController",
        "Lcom/google/android/torus/core/time/TimeController;",
        "Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;",
        "frameScheduler",
        "Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;",
        "Lcom/google/android/torus/core/power/FpsThrottler;",
        "fpsThrottler",
        "Lcom/google/android/torus/core/power/FpsThrottler;",
        "value",
        "screenSize",
        "Landroid/util/Size;",
        "getScreenSize",
        "()Landroid/util/Size;",
        "resizeCalled",
        "isWallpaperEngineVisible",
        "isCreated",
        "shouldInvokeResume",
        "Companion",
        "FrameCallback",
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
.field private static final Companion:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$Companion;

.field private static final TAG:Ljava/lang/String; = "CanvasWallpaperEngine"


# instance fields
.field private final choreographer:Landroid/view/Choreographer;

.field private final defaultHolder:Landroid/view/SurfaceHolder;

.field private final fpsThrottler:Lcom/google/android/torus/core/power/FpsThrottler;

.field private final frameScheduler:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;

.field private final hardwareAccelerated:Z

.field private isCreated:Z

.field private isWallpaperEngineVisible:Z

.field private resizeCalled:Z

.field private screenSize:Landroid/util/Size;

.field private shouldInvokeResume:Z

.field private final timeController:Lcom/google/android/torus/core/time/TimeController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$Companion;-><init>(LF3/f;)V

    sput-object v0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->Companion:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceHolder;Z)V
    .locals 2

    const-string v0, "defaultHolder"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperConnector;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->defaultHolder:Landroid/view/SurfaceHolder;

    .line 4
    iput-boolean p2, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->hardwareAccelerated:Z

    .line 5
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->choreographer:Landroid/view/Choreographer;

    .line 6
    new-instance p1, Lcom/google/android/torus/core/time/TimeController;

    invoke-direct {p1}, Lcom/google/android/torus/core/time/TimeController;-><init>()V

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/torus/core/time/TimeController;->resetDeltaTime(J)V

    .line 8
    iput-object p1, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->timeController:Lcom/google/android/torus/core/time/TimeController;

    .line 9
    new-instance p1, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;

    invoke-direct {p1, p0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;-><init>(Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;)V

    iput-object p1, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->frameScheduler:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;

    .line 10
    new-instance p1, Lcom/google/android/torus/core/power/FpsThrottler;

    invoke-direct {p1}, Lcom/google/android/torus/core/power/FpsThrottler;-><init>()V

    iput-object p1, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->fpsThrottler:Lcom/google/android/torus/core/power/FpsThrottler;

    .line 11
    new-instance p1, Landroid/util/Size;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->screenSize:Landroid/util/Size;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/SurfaceHolder;ZILF3/f;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;-><init>(Landroid/view/SurfaceHolder;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;LE3/b;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->renderWithFpsLimit$lambda$1(Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;LE3/b;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getChoreographer$p(Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;)Landroid/view/Choreographer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->choreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method public static final synthetic access$getTimeController$p(Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;)Lcom/google/android/torus/core/time/TimeController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->timeController:Lcom/google/android/torus/core/time/TimeController;

    return-object p0
.end method

.method private final getCurrentSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperConnector;->getEngineSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->defaultHolder:Landroid/view/SurfaceHolder;

    :cond_0
    return-object v0
.end method

.method private final renderToCanvas(LE3/b;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LE3/b;",
            ")Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->getCurrentSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-boolean p0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->hardwareAccelerated:Z

    if-eqz p0, :cond_1

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    :goto_0
    move-object v1, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    goto :goto_0

    :goto_1
    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-interface {p1, v1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_4

    :goto_3
    :try_start_1
    const-string p1, "canvas_exception"

    const-string v2, "canvas exception"

    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_4
    const/4 p0, 0x1

    return p0

    :goto_5
    if-eqz v1, :cond_4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_4
    throw p0
.end method

.method private static final renderWithFpsLimit$lambda$1(Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;LE3/b;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->renderToCanvas(LE3/b;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final create(Z)V
    .locals 3

    new-instance v0, Landroid/util/Size;

    invoke-direct {p0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->getCurrentSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->getCurrentSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->screenSize:Landroid/util/Size;

    invoke-virtual {p0, p1}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->onCreate(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->isCreated:Z

    iget-boolean p1, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->shouldInvokeResume:Z

    if-eqz p1, :cond_0

    const-string p1, "CanvasWallpaperEngine"

    const-string v0, "Force invoke resume. onVisibilityChanged must have been calledbefore onCreate."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->resume()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->shouldInvokeResume:Z

    :cond_0
    return-void
.end method

.method public final destroy(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->choreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->frameScheduler:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->timeController:Lcom/google/android/torus/core/time/TimeController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/torus/core/time/TimeController;->resetDeltaTime(J)V

    invoke-virtual {p0, p1}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->onDestroy(Z)V

    return-void
.end method

.method public final dispatchPauseCommand()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->onPauseCommand()V

    return-void
.end method

.method public final dispatchResumeCommand()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->onResumeCommand()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    const-string p0, "out"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getScreenSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->screenSize:Landroid/util/Size;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const-string p0, "newConfig"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Z)V
    .locals 0

    return-void
.end method

.method public onDestroy(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPauseCommand()V
    .locals 0

    return-void
.end method

.method public onResize(Landroid/util/Size;)V
    .locals 0

    const-string p0, "size"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onResumeCommand()V
    .locals 0

    return-void
.end method

.method public onSurfaceRedrawNeeded()V
    .locals 0

    return-void
.end method

.method public onUpdate(JJ)V
    .locals 0

    return-void
.end method

.method public final pause()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->isCreated:Z

    if-nez v0, :cond_0

    const-string v0, "CanvasWallpaperEngine"

    const-string v1, "Engine is not yet created but pause is called. Set a flag to invoke resume on next create."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->shouldInvokeResume:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->isWallpaperEngineVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->isWallpaperEngineVisible:Z

    :cond_1
    return-void
.end method

.method public final render(LE3/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LE3/b;",
            ")Z"
        }
    .end annotation

    const-string v0, "onRender"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->resizeCalled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->resizeCalled:Z

    invoke-virtual {p0, p1}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->render(LE3/b;)Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->renderToCanvas(LE3/b;)Z

    move-result p0

    return p0
.end method

.method public final renderWithFpsLimit(JLE3/b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "LE3/b;",
            ")Z"
        }
    .end annotation

    const-string v0, "onRender"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->resizeCalled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->resizeCalled:Z

    iget-object v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->fpsThrottler:Lcom/google/android/torus/core/power/FpsThrottler;

    invoke-virtual {v0}, Lcom/google/android/torus/core/power/FpsThrottler;->requestRendering()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->renderWithFpsLimit(JLE3/b;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->fpsThrottler:Lcom/google/android/torus/core/power/FpsThrottler;

    new-instance v1, Lcom/google/android/torus/canvas/engine/a;

    invoke-direct {v1, p0, p3}, Lcom/google/android/torus/canvas/engine/a;-><init>(Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;LE3/b;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/torus/core/power/FpsThrottler;->tryRender(JLE3/a;)Z

    move-result p0

    return p0
.end method

.method public final resize(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->resizeCalled:Z

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->screenSize:Landroid/util/Size;

    invoke-virtual {p0, v0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->onResize(Landroid/util/Size;)V

    return-void
.end method

.method public final resume()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->isCreated:Z

    const/4 v1, 0x1

    const-string v2, "CanvasWallpaperEngine"

    if-nez v0, :cond_0

    const-string v0, "Engine is not yet created but resume is called. Set a flag to invoke resume on next create."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->shouldInvokeResume:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper$LiveWallpaperConnector;->getEngineSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "SurfaceHolder of Engine is null. But resume() will called. "

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->isWallpaperEngineVisible:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->onResume()V

    iput-boolean v1, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->isWallpaperEngineVisible:Z

    :cond_2
    return-void
.end method

.method public final setFpsLimit(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->fpsThrottler:Lcom/google/android/torus/core/power/FpsThrottler;

    invoke-virtual {p0, p1}, Lcom/google/android/torus/core/power/FpsThrottler;->updateFps(F)V

    return-void
.end method

.method public startUpdateLoop()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->frameScheduler:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;

    invoke-virtual {v0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->getRunning$torus_release()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startUpdateLoop frameScheduler.running = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CanvasWallpaperEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->frameScheduler:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;

    invoke-virtual {v0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->getRunning$torus_release()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->frameScheduler:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->setRunning$torus_release(Z)V

    iget-object v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->frameScheduler:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->setAnyFrameDrawn$torus_release(Z)V

    iget-object v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->choreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->frameScheduler:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-string p0, "updated frameScheduler.running to true and added choreographer callback"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public stopUpdateLoop()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->frameScheduler:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;

    invoke-virtual {v0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->getRunning$torus_release()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopUpdateLoop frameScheduler.running = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CanvasWallpaperEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->frameScheduler:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;

    invoke-virtual {v0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->getRunning$torus_release()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->frameScheduler:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;->setRunning$torus_release(Z)V

    iget-object v0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->choreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->frameScheduler:Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-string p0, "updated frameScheduler.running to false and removed choreographer callback"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
