.class public Lcom/samsung/android/nexus/egl/core/Renderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final CLEAR_COLOR:F = 0.11765f

.field private static final TAG:Ljava/lang/String; = "Renderer"


# instance fields
.field private mSurfaceViewCallback:Lcom/samsung/android/nexus/egl/core/SurfaceCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/egl/core/SurfaceCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/nexus/egl/core/Renderer;->mSurfaceViewCallback:Lcom/samsung/android/nexus/egl/core/SurfaceCallback;

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const v0, 0x3df0f27c    # 0.11765f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/core/Renderer;->mSurfaceViewCallback:Lcom/samsung/android/nexus/egl/core/SurfaceCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/nexus/egl/core/SurfaceCallback;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/egl/core/Renderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "surface changed width = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/core/Renderer;->mSurfaceViewCallback:Lcom/samsung/android/nexus/egl/core/SurfaceCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/nexus/egl/core/SurfaceCallback;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    sget-object p0, Lcom/samsung/android/nexus/egl/core/Renderer;->TAG:Ljava/lang/String;

    const-string p1, "surface created"

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x3df0f27c    # 0.11765f

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, p0, p0, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    return-void
.end method
