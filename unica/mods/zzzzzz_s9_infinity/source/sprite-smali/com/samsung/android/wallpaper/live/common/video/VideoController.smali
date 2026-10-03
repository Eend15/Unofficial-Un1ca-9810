.class public Lcom/samsung/android/wallpaper/live/common/video/VideoController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/nexus/egl/core/SurfaceCallback;


# instance fields
.field public a:Lcom/samsung/android/nexus/base/layer/LayerContainer;

.field public b:Lcom/samsung/android/nexus/video/VideoLayer;

.field public c:Landroid/opengl/GLSurfaceView;

.field public d:F

.field public e:F


# virtual methods
.method public invalidate()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->e:F

    iget v1, p0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->d:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->e:F

    iget v1, p0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->d:F

    cmpl-float v0, v0, v1

    const v2, 0x3ba3d70a    # 0.005f

    if-lez v0, :cond_0

    add-float/2addr v1, v2

    goto :goto_0

    :cond_0
    sub-float/2addr v1, v2

    :goto_0
    iput v1, p0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->d:F

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->b:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer;->setHsvHue(F)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->c:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->a:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->draw()V

    return-void
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->a:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setSize(II)V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->b:Lcom/samsung/android/nexus/video/VideoLayer;

    new-instance p1, Landroid/graphics/RectF;

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setBoundRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onVisibilityChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->a:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setVisibility(Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method

.method public final setSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->c:Landroid/opengl/GLSurfaceView;

    return-void
.end method
