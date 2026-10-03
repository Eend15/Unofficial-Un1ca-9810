.class public Lcom/samsung/android/wallpaper/live/layered/LayeredController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/nexus/egl/core/SurfaceCallback;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/content/Context;

.field public c:LE1/d;

.field public d:Landroid/opengl/GLSurfaceView;

.field public e:LF1/b;

.field public f:Landroid/graphics/Point;

.field public g:Landroid/animation/ValueAnimator;

.field public h:J

.field public final i:Landroid/os/Handler;

.field public j:Ljava/lang/String;

.field public k:I

.field public final l:LE1/f;

.field public final m:LE1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LayeredController"

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->f:Landroid/graphics/Point;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->i:Landroid/os/Handler;

    const-string v1, "none"

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->j:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->k:I

    new-instance v1, LE1/f;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v3, v2}, LE1/f;-><init>(Ljava/lang/Object;Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->l:LE1/f;

    new-instance v1, LE1/g;

    invoke-direct {v1, v2, p0}, LE1/g;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->m:LE1/g;

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    const-string v3, "LayeredController : "

    invoke-static {p2, v3}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b:Landroid/content/Context;

    new-instance v1, LE1/d;

    const/4 v4, 0x1

    invoke-direct {v1, p1, p2, v4}, LE1/d;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    new-instance p1, LF1/b;

    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p1, LF1/b;->a:F

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {p1, v2}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    move p1, v2

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v1}, LE1/d;->d()I

    move-result v1

    const/4 v5, 0x0

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    invoke-static {p1, v3}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v1, p1}, LE1/d;->c(I)Ljava/lang/String;

    move-result-object v1

    new-instance v6, LF1/c;

    iget-object v7, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v7, p1}, LE1/d;->g(I)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v8, p1}, LE1/d;->e(I)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v9}, LE1/d;->h()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9, v1}, LF1/c;-><init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "aod_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v6, v5}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->setGlobalAlpha(F)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {v1, v6}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->addLayer(Lcom/samsung/android/nexus/base/layer/BaseLayer;)Z

    add-int/2addr p1, v4

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->f:Landroid/graphics/Point;

    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->g:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->g:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e2e147b    # 0.17f

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v2, v3, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->g:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x258

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->g:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->m:LE1/g;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {p2}, LE1/d;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onVisibilityChanged : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {v2}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_2

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {p1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->getCount()I

    move-result p1

    if-ge v2, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {p1, v2}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->getLayer(I)Lcom/samsung/android/nexus/base/layer/BaseLayer;

    move-result-object p1

    check-cast p1, LF1/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LF1/c;->b()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->d()V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->invalidate()V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "wallpaper_finish_drawing"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_2
    return-void
.end method

.method public final b(I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    const-string v1, "reloadData : which = "

    invoke-static {p1, v1}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v0, p1}, LE1/d;->j(I)V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LE1/d;->i(Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    const-string p1, "reloadData : FAILED to load wallpaper data"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {p1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->removeAllLayers()V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {p1}, LE1/d;->d()I

    move-result p1

    move v0, v2

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v1, v0}, LE1/d;->c(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, LF1/c;

    iget-object v4, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v4, v0}, LE1/d;->g(I)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v5, v0}, LE1/d;->e(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v6}, LE1/d;->h()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v1}, LF1/c;-><init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "aod_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->setGlobalAlpha(F)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {v1, v3}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->addLayer(Lcom/samsung/android/nexus/base/layer/BaseLayer;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->f:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v1}, LE1/d;->k(II)V

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->f:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setSize(II)V

    :goto_1
    if-ge v2, p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {v0, v2}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->getLayer(I)Lcom/samsung/android/nexus/base/layer/BaseLayer;

    move-result-object v0

    instance-of v1, v0, LF1/c;

    if-eqz v1, :cond_3

    check-cast v0, LF1/c;

    new-instance v1, Lcom/samsung/android/nexus/egl/world/WorldOrthographic;

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->f:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v4, v3}, Lcom/samsung/android/nexus/egl/world/WorldOrthographic;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->setWorld(Lcom/samsung/android/nexus/egl/world/BaseWorld;)V

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v1, v2}, LE1/d;->g(I)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v3, v2}, LE1/d;->b(I)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v1, v0, LF1/c;->c:Landroid/graphics/Rect;

    iput-object v3, v0, LF1/c;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, LF1/c;->h()V

    invoke-virtual {v0}, LF1/c;->b()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->d()V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->invalidate()V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget v2, Li1/a;->a:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    const-string v1, "setLayerAnimation : This device does NOT support AOD full screen"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v2, "android.wallpaper.wakingup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "going_to_sleep"

    const-string v5, "wake_up"

    if-eqz v2, :cond_1

    move-object v1, v5

    goto :goto_1

    :cond_1
    const-string v2, "android.wallpaper.goingtosleep"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "samsung.android.wallpaper.goingtosleep"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "none"

    goto :goto_1

    :cond_3
    :goto_0
    move-object v1, v4

    :goto_1
    iget-object v2, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    const-string v2, "setLayerAnimation : Skipped animation to "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object v2, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->i:Landroid/os/Handler;

    new-instance v6, LE1/e;

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, LE1/e;-><init>(Lcom/samsung/android/wallpaper/live/layered/LayeredController;I)V

    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v6, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b:Landroid/content/Context;

    invoke-static {v6}, Lf2/k;->b(Landroid/content/Context;)Z

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b:Landroid/content/Context;

    invoke-static {v7}, Lf2/h;->a(Landroid/content/Context;)Z

    move-result v7

    iget-object v8, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "setLayerAnimation : isDozeAfterScreenOff = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " , isLockScreenDisabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "aod_mode"

    const-string v11, "background.png"

    const-string v12, "object.png"

    const-string v13, "aod_background.png"

    const-string v14, "aod_object.png"

    const-string v15, "DarkModeFilter"

    const-string v3, " , "

    const-string v10, ", "

    move-object/from16 v16, v2

    const-string v2, "aod_erase_background"

    move/from16 v17, v6

    const-string v6, "aod_show_lockscreen_wallpaper"

    const-wide/16 v18, 0x1

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    const-wide/16 v14, 0x258

    if-eqz v8, :cond_16

    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    iget v1, v1, LE1/d;->i:I

    invoke-static {v1}, LK/I;->c0(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->g:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_6

    move-wide/from16 v14, v18

    :cond_6
    invoke-virtual {v1, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_2
    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->getCount()I

    move-result v1

    int-to-long v7, v1

    const-wide/16 v14, 0x50

    mul-long/2addr v7, v14

    const-wide/16 v14, 0x190

    sub-long/2addr v14, v7

    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v1, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_7

    move v1, v4

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    iget-object v7, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iget-object v4, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v4, v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v1, :cond_8

    const/4 v2, 0x0

    :cond_8
    iget-object v4, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    iget-boolean v4, v4, LE1/d;->l:Z

    iget-object v7, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setWakingUpAnimation : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v7, v3, v8}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {v3}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->getCount()I

    move-result v3

    iput-object v5, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->j:Ljava/lang/String;

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_2d

    iget-object v6, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {v6, v5}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->getLayer(I)Lcom/samsung/android/nexus/base/layer/BaseLayer;

    move-result-object v6

    check-cast v6, LF1/c;

    if-eqz v6, :cond_15

    iget-object v7, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "startWakingUpAnimation : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v6, LF1/c;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v14, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v14}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v1, :cond_e

    const/4 v8, 0x1

    if-ne v2, v8, :cond_e

    if-eqz v4, :cond_e

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    iget v9, v8, LE1/d;->k:I

    if-nez v9, :cond_9

    invoke-virtual {v8}, LE1/d;->f()Landroid/graphics/Point;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, LF1/c;->d(FLandroid/graphics/Point;)V

    :goto_5
    move-object/from16 v8, v20

    move-object/from16 v10, v21

    goto/16 :goto_9

    :cond_9
    invoke-virtual {v8}, LE1/d;->f()Landroid/graphics/Point;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v9, v5}, LE1/d;->e(I)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, LF1/c;->e(FLandroid/graphics/Point;Landroid/graphics/Bitmap;I)V

    goto :goto_5

    :cond_a
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v8}, LE1/d;->f()Landroid/graphics/Point;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, LF1/c;->d(FLandroid/graphics/Point;)V

    goto :goto_5

    :cond_b
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move-object/from16 v8, v20

    if-nez v7, :cond_c

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    move-object/from16 v10, v21

    goto :goto_6

    :cond_d
    move-object/from16 v10, v21

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    iget-object v7, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v7, v5}, LE1/d;->e(I)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, LF1/c;->f(Landroid/graphics/Bitmap;I)V

    goto :goto_9

    :goto_6
    iget-object v7, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v7}, LE1/d;->f()Landroid/graphics/Point;

    move-result-object v7

    invoke-virtual {v6, v7}, LF1/c;->g(Landroid/graphics/Point;)V

    goto :goto_9

    :cond_e
    move-object/from16 v8, v20

    move-object/from16 v10, v21

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    iget-object v7, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v7, v5}, LE1/d;->e(I)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, LF1/c;->f(Landroid/graphics/Bitmap;I)V

    goto :goto_9

    :cond_11
    :goto_7
    iget-object v7, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v7}, LE1/d;->f()Landroid/graphics/Point;

    move-result-object v7

    invoke-virtual {v6, v7}, LF1/c;->g(Landroid/graphics/Point;)V

    goto :goto_9

    :cond_12
    :goto_8
    iget v9, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->k:I

    if-eq v9, v2, :cond_13

    iget-object v9, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v9}, LE1/d;->f()Landroid/graphics/Point;

    move-result-object v9

    iget-object v14, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v14, v5}, LE1/d;->e(I)Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v6, v7, v9, v14, v15}, LF1/c;->e(FLandroid/graphics/Point;Landroid/graphics/Bitmap;I)V

    goto :goto_9

    :cond_13
    iget-object v9, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v9}, LE1/d;->f()Landroid/graphics/Point;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, LF1/c;->d(FLandroid/graphics/Point;)V

    :cond_14
    :goto_9
    iput v2, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->k:I

    goto :goto_a

    :cond_15
    move-object/from16 v8, v20

    move-object/from16 v10, v21

    :goto_a
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v20, v8

    move-object/from16 v21, v10

    goto/16 :goto_4

    :cond_16
    move-object/from16 v8, v20

    move-object/from16 v5, v21

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    iget v1, v1, LE1/d;->i:I

    invoke-static {v1}, LK/I;->c0(I)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->g:Landroid/animation/ValueAnimator;

    if-eqz v17, :cond_17

    move-wide/from16 v14, v18

    :cond_17
    invoke-virtual {v1, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_b

    :cond_18
    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->g:Landroid/animation/ValueAnimator;

    if-nez v17, :cond_19

    if-eqz v7, :cond_1a

    :cond_19
    move-wide/from16 v14, v18

    :cond_1a
    invoke-virtual {v1, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_b
    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->g:Landroid/animation/ValueAnimator;

    const-wide/16 v14, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v7, 0x1

    invoke-static {v1, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_1b

    move v1, v7

    goto :goto_c

    :cond_1b
    const/4 v1, 0x0

    :goto_c
    iget-object v9, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v2, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v1, :cond_1c

    const/4 v7, 0x0

    goto :goto_d

    :cond_1c
    move v7, v2

    :goto_d
    iget-object v2, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    iget-boolean v2, v2, LE1/d;->l:Z

    iget-object v9, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "setGoingToSleepAnimation : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v9, v3, v10}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {v3}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->getCount()I

    move-result v3

    iput-object v4, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->j:Ljava/lang/String;

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_2c

    iget-object v6, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {v6, v4}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->getLayer(I)Lcom/samsung/android/nexus/base/layer/BaseLayer;

    move-result-object v6

    check-cast v6, LF1/c;

    if-eqz v6, :cond_2b

    iget-object v9, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v14, "startGoingToSleepAnimation : "

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v6, LF1/c;->b:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move/from16 v17, v3

    const/4 v15, 0x0

    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v9, v10, v3}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v9, 0x3f8570a4    # 1.0425f

    if-eqz v1, :cond_23

    const/4 v10, 0x1

    if-ne v7, v10, :cond_23

    if-eqz v2, :cond_23

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/high16 v10, -0x1000000

    const/4 v3, 0x0

    if-eqz v15, :cond_1f

    iget-object v14, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    iget v15, v14, LE1/d;->k:I

    if-nez v15, :cond_1e

    invoke-virtual {v14}, LE1/d;->f()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v6, v9, v3}, LF1/c;->d(FLandroid/graphics/Point;)V

    :cond_1d
    :goto_f
    const/4 v9, 0x0

    goto/16 :goto_12

    :cond_1e
    invoke-virtual {v14}, LE1/d;->f()Landroid/graphics/Point;

    move-result-object v14

    invoke-virtual {v6, v9, v14, v3, v10}, LF1/c;->e(FLandroid/graphics/Point;Landroid/graphics/Bitmap;I)V

    goto :goto_f

    :cond_1f
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    iget-object v3, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v3}, LE1/d;->f()Landroid/graphics/Point;

    move-result-object v3

    const v9, 0x3f866666    # 1.05f

    invoke-virtual {v6, v9, v3}, LF1/c;->d(FLandroid/graphics/Point;)V

    goto :goto_f

    :cond_20
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    goto :goto_10

    :cond_21
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    invoke-virtual {v6, v3, v10}, LF1/c;->f(Landroid/graphics/Bitmap;I)V

    goto :goto_f

    :cond_22
    :goto_10
    iget-object v3, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v3}, LE1/d;->f()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v6, v3}, LF1/c;->g(Landroid/graphics/Point;)V

    goto :goto_f

    :cond_23
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    if-eqz v2, :cond_25

    iget v3, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->k:I

    if-eq v3, v7, :cond_24

    iget-object v3, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v3}, LE1/d;->f()Landroid/graphics/Point;

    move-result-object v3

    iget-object v10, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v10, v4}, LE1/d;->e(I)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v14, 0x0

    invoke-virtual {v6, v9, v3, v10, v14}, LF1/c;->e(FLandroid/graphics/Point;Landroid/graphics/Bitmap;I)V

    move v9, v14

    goto/16 :goto_12

    :cond_24
    iget-object v3, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v3}, LE1/d;->f()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v6, v9, v3}, LF1/c;->d(FLandroid/graphics/Point;)V

    goto :goto_f

    :cond_25
    iget v3, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->k:I

    if-eq v3, v7, :cond_26

    iget-object v3, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v3}, LE1/d;->f()Landroid/graphics/Point;

    move-result-object v3

    iget-object v9, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v9, v4}, LE1/d;->e(I)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v10, 0x0

    const v15, 0x3f866666    # 1.05f

    invoke-virtual {v6, v15, v3, v9, v10}, LF1/c;->e(FLandroid/graphics/Point;Landroid/graphics/Bitmap;I)V

    move v9, v10

    goto :goto_12

    :cond_26
    const v15, 0x3f866666    # 1.05f

    iget-object v3, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v3}, LE1/d;->f()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v6, v15, v3}, LF1/c;->d(FLandroid/graphics/Point;)V

    goto/16 :goto_f

    :cond_27
    const v15, 0x3f866666    # 1.05f

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v3}, LE1/d;->f()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v6, v15, v3}, LF1/c;->d(FLandroid/graphics/Point;)V

    goto/16 :goto_f

    :cond_28
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    :cond_29
    const/4 v9, 0x0

    goto :goto_11

    :cond_2a
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    iget-object v3, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v3, v4}, LE1/d;->e(I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v6, v3, v9}, LF1/c;->f(Landroid/graphics/Bitmap;I)V

    goto :goto_12

    :goto_11
    iget-object v3, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v3}, LE1/d;->f()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v6, v3}, LF1/c;->g(Landroid/graphics/Point;)V

    :goto_12
    iput v7, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->k:I

    goto :goto_13

    :cond_2b
    move/from16 v17, v3

    const/4 v9, 0x0

    :goto_13
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v17

    goto/16 :goto_e

    :cond_2c
    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b:Landroid/content/Context;

    invoke-static {v1}, Lf2/k;->a(Landroid/content/Context;)V

    :cond_2d
    new-instance v1, LE1/e;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, LE1/e;-><init>(Lcom/samsung/android/wallpaper/live/layered/LayeredController;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b:Landroid/content/Context;

    iget v0, v0, LE1/d;->j:I

    invoke-static {v1, v0}, Lf2/e;->a(Landroid/content/Context;I)[F

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    aget v3, v0, v3

    aget v4, v0, v2

    aget v5, v0, v1

    const/4 v6, 0x2

    aget v0, v0, v6

    invoke-static {v3, v4, v5, v0}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v3}, LE1/d;->d()I

    move-result v4

    iget-object v3, v3, LE1/d;->c:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LE1/a;

    iget v3, v3, LE1/a;->c:I

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v3, LE1/d;->n:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "getDarkModeFilterColor : layer data is NULL"

    invoke-static {v3, v5, v4}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v0

    :goto_2
    if-eq v3, v0, :cond_5

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v3}, LE1/d;->d()I

    move-result v4

    if-nez v4, :cond_4

    sget-object v5, LE1/d;->n:Ljava/lang/String;

    const-string v6, "setDarkModeFilterColor : layer data is NULL"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    sget-object v5, LE1/d;->n:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setDarkModeFilterColor : 0x"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v3, LE1/d;->c:Ljava/util/ArrayList;

    sub-int/2addr v4, v1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE1/a;

    iput v0, v1, LE1/a;->c:I

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->d:Landroid/opengl/GLSurfaceView;

    new-instance v1, LE1/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LE1/e;-><init>(Lcom/samsung/android/wallpaper/live/layered/LayeredController;I)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public invalidate()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->d:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    const/16 p1, 0xbe2

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->draw()V

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    const-string v0, "onSurfaceChanged : "

    const-string v1, " , "

    invoke-static {p2, v0, p3, v1, v1}, LB/a;->p(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {v3}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->f:Landroid/graphics/Point;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {p1, p2, p3}, LE1/d;->k(II)V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setSize(II)V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {p1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->getCount()I

    move-result p1

    move v2, v3

    :goto_0
    if-ge v2, p1, :cond_1

    iget-object v4, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {v4, v2}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->getLayer(I)Lcom/samsung/android/nexus/base/layer/BaseLayer;

    move-result-object v4

    check-cast v4, LF1/c;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v7, v2}, LE1/d;->c(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v7, v2}, LE1/d;->g(I)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v7, v2}, LE1/d;->b(I)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Lcom/samsung/android/nexus/egl/world/WorldOrthographic;

    invoke-direct {v5, p2, p3}, Lcom/samsung/android/nexus/egl/world/WorldOrthographic;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->setWorld(Lcom/samsung/android/nexus/egl/world/BaseWorld;)V

    iget-object v5, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v5, v2}, LE1/d;->g(I)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v6, v2}, LE1/d;->b(I)Landroid/graphics/Rect;

    move-result-object v6

    iput-object v5, v4, LF1/c;->c:Landroid/graphics/Rect;

    iput-object v6, v4, LF1/c;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, LF1/c;->h()V

    invoke-virtual {v4}, LF1/c;->b()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->d()V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->invalidate()V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "display_night_theme"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->l:LE1/f;

    invoke-virtual {p1, p2, v3, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "display_night_theme_wallpaper"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v3, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "wallpaper_finish_drawing"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTouchEvent : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public final onVisibilityChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    const-string v1, "onVisibilityChanged : "

    const-string v2, " , "

    invoke-static {p1, v1, v2}, LB/a;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {v2}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a(Z)V

    return-void
.end method

.method public final setSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSurfaceView : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->d:Landroid/opengl/GLSurfaceView;

    return-void
.end method
