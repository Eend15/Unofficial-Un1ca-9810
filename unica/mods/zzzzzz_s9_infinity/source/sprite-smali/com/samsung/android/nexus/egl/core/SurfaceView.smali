.class public Lcom/samsung/android/nexus/egl/core/SurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRenderer:Lcom/samsung/android/nexus/egl/core/Renderer;

.field private mSurfaceCallback:Lcom/samsung/android/nexus/egl/core/SurfaceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/nexus/egl/core/SurfaceCallback;)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/core/SurfaceView;->mRenderer:Lcom/samsung/android/nexus/egl/core/Renderer;

    iput-object p1, p0, Lcom/samsung/android/nexus/egl/core/SurfaceView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/nexus/egl/core/SurfaceView;->mSurfaceCallback:Lcom/samsung/android/nexus/egl/core/SurfaceCallback;

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/core/SurfaceView;->detectOpenGLES20()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/core/SurfaceView;->mSurfaceCallback:Lcom/samsung/android/nexus/egl/core/SurfaceCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/samsung/android/nexus/egl/core/SurfaceCallback;->setSurfaceView(Landroid/opengl/GLSurfaceView;)V

    :cond_0
    new-instance v0, Lcom/samsung/android/nexus/egl/core/Renderer;

    invoke-direct {v0, p2}, Lcom/samsung/android/nexus/egl/core/Renderer;-><init>(Lcom/samsung/android/nexus/egl/core/SurfaceCallback;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/core/SurfaceView;->mRenderer:Lcom/samsung/android/nexus/egl/core/Renderer;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/core/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/nexus/egl/core/SurfaceView;->TAG:Ljava/lang/String;

    const-string p1, "machine does not support OpenGL ES2.0"

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private detectOpenGLES20()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/core/SurfaceView;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v1, 0x20000

    if-lt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/core/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 0

    invoke-super {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/core/SurfaceView;->mSurfaceCallback:Lcom/samsung/android/nexus/egl/core/SurfaceCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/nexus/egl/core/SurfaceCallback;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/core/SurfaceView;->mSurfaceCallback:Lcom/samsung/android/nexus/egl/core/SurfaceCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/samsung/android/nexus/egl/core/SurfaceCallback;->onVisibilityChanged(I)V

    :cond_0
    return-void
.end method
