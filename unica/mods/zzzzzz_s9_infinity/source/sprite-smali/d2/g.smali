.class public final Ld2/g;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# instance fields
.field public d:LN1/h;

.field public final synthetic e:Ld2/h;


# direct methods
.method public constructor <init>(Ld2/h;)V
    .locals 0

    iput-object p1, p0, Ld2/g;->e:Ld2/h;

    const-string p1, "tilt-draw"

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ld2/g;)V
    .locals 5

    iget-object v0, p0, Ld2/g;->e:Ld2/h;

    iget-object v0, v0, Ld2/h;->i:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Ld2/g;->e:Ld2/h;

    iget-object p0, p0, Ld2/h;->q:Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    const-string v0, "onDraw surface null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Ld2/g;->e:Ld2/h;

    iget-boolean v0, v0, Ld2/h;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ld2/g;->e:Ld2/h;

    iget-object v0, v0, Ld2/h;->q:Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    const-string v2, "onDraw invisible"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ld2/g;->e:Ld2/h;

    iget-object v0, v0, Ld2/h;->i:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-object p0, p0, Ld2/g;->e:Ld2/h;

    iget-object p0, p0, Ld2/h;->i:Landroid/view/SurfaceHolder;

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ld2/g;->e:Ld2/h;

    iget-object v0, v0, Ld2/h;->i:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Ld2/g;->e:Ld2/h;

    iget-object v2, v2, Ld2/h;->i:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_4

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Ld2/g;->e:Ld2/h;

    iget-object v4, v3, Ld2/h;->h:La0/b;

    if-nez v4, :cond_3

    iget-object p0, v3, Ld2/h;->q:Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    const-string v0, "onDraw no render"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v1, v3, Ld2/h;->i:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    iget-object v3, p0, Ld2/g;->e:Ld2/h;

    iget-object v3, v3, Ld2/h;->h:La0/b;

    invoke-virtual {v3, v1, v0, v2}, La0/b;->a(Landroid/graphics/Canvas;II)V

    iget-object p0, p0, Ld2/g;->e:Ld2/h;

    iget-object p0, p0, Ld2/h;->i:Landroid/view/SurfaceHolder;

    invoke-interface {p0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p0, p0, Ld2/g;->e:Ld2/h;

    iget-object p0, p0, Ld2/h;->q:Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    const-string v3, "onDraw "

    const-string v4, " "

    invoke-static {v3, v4, v2, v0}, LB/a;->m(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Ld2/g;->d:LN1/h;

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Ld2/g;->d:LN1/h;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final onLooperPrepared()V
    .locals 3

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    new-instance v0, LN1/h;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, LN1/h;-><init>(Landroid/os/HandlerThread;Landroid/os/Looper;I)V

    iput-object v0, p0, Ld2/g;->d:LN1/h;

    return-void
.end method
