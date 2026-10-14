.class public Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglRenderer;
.super Ljava/lang/Object;
.source "WbglRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMainContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglRenderer;->mContext:Landroid/content/Context;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglRenderer;->mMainContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;

    .line 22
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglRenderer;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglRenderer;->mMainContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 41
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 42
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 44
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglRenderer;->mMainContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 36
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglRenderer;->mMainContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    const/16 p0, 0xbe2

    .line 28
    invoke-static {p0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p0, 0x302

    const/16 p1, 0x303

    .line 29
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 p0, 0x0

    .line 30
    invoke-static {p0, p0, p0, p0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    return-void
.end method
