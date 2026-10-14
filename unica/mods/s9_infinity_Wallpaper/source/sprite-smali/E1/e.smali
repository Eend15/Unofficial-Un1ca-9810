.class public final synthetic LE1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/samsung/android/wallpaper/live/layered/LayeredController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/wallpaper/live/layered/LayeredController;I)V
    .locals 0

    iput p2, p0, LE1/e;->d:I

    iput-object p1, p0, LE1/e;->e:Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, LE1/e;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LE1/e;->e:Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->g:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "setLayerAnimation : start"

    invoke-static {v0, v2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    const/4 v1, 0x0

    iput v1, v0, LF1/b;->a:F

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, LE1/e;->e:Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->g:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void

    :pswitch_1
    iget-object p0, p0, LE1/e;->e:Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->getLayer(I)Lcom/samsung/android/nexus/base/layer/BaseLayer;

    move-result-object v0

    check-cast v0, LF1/c;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v1}, LE1/d;->d()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, LE1/d;->e(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, LF1/c;->c(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    iput-object v1, v0, LF1/c;->c:Landroid/graphics/Rect;

    iput-object v1, v0, LF1/c;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, LF1/c;->h()V

    invoke-virtual {v0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->updateTexture(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->invalidate()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
