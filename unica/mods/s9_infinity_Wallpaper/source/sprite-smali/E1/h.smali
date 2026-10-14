.class public final LE1/h;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# instance fields
.field public d:Lcom/samsung/android/nexus/egl/core/SurfaceCallback;

.field public final synthetic e:LE1/i;


# direct methods
.method public constructor <init>(LE1/i;Landroid/content/Context;Lcom/samsung/android/nexus/egl/core/SurfaceCallback;Z)V
    .locals 7

    iput-object p1, p0, LE1/h;->e:LE1/i;

    invoke-direct {p0, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, LE1/h;->d:Lcom/samsung/android/nexus/egl/core/SurfaceCallback;

    const-string v1, "activity"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    if-eqz p4, :cond_0

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/16 v1, 0xa

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/4 v4, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    goto :goto_0

    :cond_0
    const/16 v5, 0x10

    const/4 v6, 0x0

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    iget-object v1, p0, LE1/h;->d:Lcom/samsung/android/nexus/egl/core/SurfaceCallback;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lcom/samsung/android/nexus/egl/core/SurfaceCallback;->setSurfaceView(Landroid/opengl/GLSurfaceView;)V

    :cond_1
    new-instance v1, LG1/a;

    invoke-direct {v1, p0}, LG1/a;-><init>(LE1/h;)V

    if-eqz p4, :cond_2

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V

    :cond_2
    new-instance v1, Lcom/samsung/android/nexus/egl/core/Renderer;

    iget-object v2, p0, LE1/h;->d:Lcom/samsung/android/nexus/egl/core/SurfaceCallback;

    invoke-direct {v1, v2}, Lcom/samsung/android/nexus/egl/core/Renderer;-><init>(Lcom/samsung/android/nexus/egl/core/SurfaceCallback;)V

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    if-eqz p4, :cond_3

    invoke-virtual {p1}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_1

    :cond_4
    const-string v0, "SurfaceView"

    const-string v1, "machine does not support OpenGL ES2.0"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurfaceView"

    const-string v2, "onDestroy"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, LE1/h;->d:Lcom/samsung/android/nexus/egl/core/SurfaceCallback;

    return-void
.end method

.method public final getHolder()Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, LE1/h;->e:LE1/i;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    return-object p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, LE1/h;->d:Lcom/samsung/android/nexus/egl/core/SurfaceCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/nexus/egl/core/SurfaceCallback;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p0, p0, LE1/h;->d:Lcom/samsung/android/nexus/egl/core/SurfaceCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/samsung/android/nexus/egl/core/SurfaceCallback;->onVisibilityChanged(I)V

    :cond_0
    return-void
.end method
