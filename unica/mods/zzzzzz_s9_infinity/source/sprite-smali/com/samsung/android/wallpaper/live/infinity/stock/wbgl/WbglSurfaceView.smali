.class public Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "WbglSurfaceView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMainContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;

.field private mRenderer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;)V
    .locals 7

    .line 18
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglSurfaceView;->mContext:Landroid/content/Context;

    .line 14
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglSurfaceView;->mMainContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglSurfaceView;->mRenderer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglRenderer;

    .line 20
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglSurfaceView;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglSurfaceView;->mMainContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglSurfaceView;->detectOpenGLES20()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 24
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    .line 25
    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 28
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglSurfaceView;->mMainContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;->setSurfaceView(Landroid/opengl/GLSurfaceView;)V

    .line 29
    :cond_0
    new-instance v0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglRenderer;

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglSurfaceView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglRenderer;-><init>(Landroid/content/Context;Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglSurfaceView;->mRenderer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglRenderer;

    .line 30
    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglSurfaceView;->mRenderer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglRenderer;

    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p2, 0x0

    .line 31
    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 33
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0

    :cond_1
    const-string p0, "libWbgl"

    const-string/jumbo p1, "this machine does not support OpenGL ES2.0"

    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private detectOpenGLES20()Z
    .locals 2

    .line 45
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglSurfaceView;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 46
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 49
    iget p0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v1, 0x20000

    if-lt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglSurfaceView;->mMainContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 57
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 58
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglSurfaceView;->mMainContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;->onVisibilityChanged(I)V

    :cond_0
    return-void
.end method
