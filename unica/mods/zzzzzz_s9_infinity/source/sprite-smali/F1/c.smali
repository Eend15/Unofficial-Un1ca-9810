.class public final LF1/c;
.super Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:Landroid/graphics/Rect;

.field public d:Landroid/graphics/Rect;

.field public e:F

.field public f:Landroid/graphics/Point;

.field public g:LF1/a;

.field public h:Landroid/graphics/Canvas;

.field public i:Landroid/graphics/Paint;

.field public j:F


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;-><init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    const-string p2, "LayeredImageLayer"

    iput-object p2, p0, LF1/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, LF1/c;->b:Ljava/lang/String;

    iput-object v0, p0, LF1/c;->c:Landroid/graphics/Rect;

    iput-object v0, p0, LF1/c;->d:Landroid/graphics/Rect;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, LF1/c;->e:F

    iput-object v0, p0, LF1/c;->g:LF1/a;

    iput-object v0, p0, LF1/c;->h:Landroid/graphics/Canvas;

    iput-object v0, p0, LF1/c;->i:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, LF1/c;->j:F

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "."

    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    const-string v4, "_"

    if-ne v2, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LF1/c;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p2, p3, v4}, LB/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p4, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LF1/c;->a:Ljava/lang/String;

    :goto_0
    iput-object p4, p0, LF1/c;->b:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, LF1/c;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "LayeredImageLayer : srcBound = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, LF1/c;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "initTransitionAnimator : layered image is NULL"

    invoke-static {v1, v0, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, p0, LF1/c;->g:LF1/a;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, v2, LF1/a;->g:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, LF1/a;->g:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget-object v5, p0, LF1/c;->g:LF1/a;

    iget v5, v5, LF1/a;->h:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, LF1/c;->g:LF1/a;

    iget-object v5, v5, LF1/a;->g:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, LF1/c;->g:LF1/a;

    iget-object v5, v5, LF1/a;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initTransitionAnimator : e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, LF1/c;->g:LF1/a;

    const/4 v0, 0x0

    iput-object v0, p0, LF1/a;->g:Landroid/graphics/Bitmap;

    return-void

    :cond_1
    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, LF1/c;->h:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LF1/c;->i:Landroid/graphics/Paint;

    iput v3, p0, LF1/c;->j:F

    return-void
.end method

.method public final b()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayerInfo :  , "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LF1/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LF1/c;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, LF1/c;->a:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final d(FLandroid/graphics/Point;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setLayerAnimation : toScale="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, LF1/c;->a:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LF1/c;->g:LF1/a;

    if-nez v0, :cond_0

    new-instance v0, LF1/a;

    invoke-direct {v0}, LF1/a;-><init>()V

    iput-object v0, p0, LF1/c;->g:LF1/a;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LF1/a;->a()V

    :goto_0
    iget-object v0, p0, LF1/c;->g:LF1/a;

    const/4 v1, 0x1

    iput v1, v0, LF1/a;->a:I

    iget p0, p0, LF1/c;->e:F

    iput p0, v0, LF1/a;->b:F

    iput p1, v0, LF1/a;->c:F

    iput-object p2, v0, LF1/a;->d:Landroid/graphics/Point;

    return-void
.end method

.method public final e(FLandroid/graphics/Point;Landroid/graphics/Bitmap;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setLayerAnimation : toScale="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , toImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , toColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, LF1/c;->a:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LF1/c;->g:LF1/a;

    if-nez v0, :cond_0

    new-instance v0, LF1/a;

    invoke-direct {v0}, LF1/a;-><init>()V

    iput-object v0, p0, LF1/c;->g:LF1/a;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LF1/a;->a()V

    :goto_0
    iget-object v0, p0, LF1/c;->g:LF1/a;

    const/4 v1, 0x5

    iput v1, v0, LF1/a;->a:I

    iget v1, p0, LF1/c;->e:F

    iput v1, v0, LF1/a;->b:F

    iput p1, v0, LF1/a;->c:F

    iput-object p2, v0, LF1/a;->d:Landroid/graphics/Point;

    iput-object p3, v0, LF1/a;->g:Landroid/graphics/Bitmap;

    iput p4, v0, LF1/a;->h:I

    invoke-virtual {p0}, LF1/c;->a()V

    return-void
.end method

.method public final f(Landroid/graphics/Bitmap;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setLayerAnimation : toImage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , toColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, LF1/c;->a:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LF1/c;->g:LF1/a;

    if-nez v0, :cond_0

    new-instance v0, LF1/a;

    invoke-direct {v0}, LF1/a;-><init>()V

    iput-object v0, p0, LF1/c;->g:LF1/a;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LF1/a;->a()V

    :goto_0
    iget-object v0, p0, LF1/c;->g:LF1/a;

    const/4 v1, 0x4

    iput v1, v0, LF1/a;->a:I

    iput-object p1, v0, LF1/a;->g:Landroid/graphics/Bitmap;

    iput p2, v0, LF1/a;->h:I

    invoke-virtual {p0}, LF1/c;->a()V

    return-void
.end method

.method public final g(Landroid/graphics/Point;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, LF1/c;->a:Ljava/lang/String;

    const-string v2, "setLayerAnimation : toScale=1.0 , toAlpha=0.0"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LF1/c;->g:LF1/a;

    if-nez v0, :cond_0

    new-instance v0, LF1/a;

    invoke-direct {v0}, LF1/a;-><init>()V

    iput-object v0, p0, LF1/c;->g:LF1/a;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LF1/a;->a()V

    :goto_0
    iget-object v0, p0, LF1/c;->g:LF1/a;

    const/4 v1, 0x3

    iput v1, v0, LF1/a;->a:I

    iget v1, p0, LF1/c;->e:F

    iput v1, v0, LF1/a;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, LF1/a;->c:F

    iput-object p1, v0, LF1/a;->d:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->getGlobalAlpha()F

    move-result p1

    iput p1, v0, LF1/a;->e:F

    iget-object p0, p0, LF1/c;->g:LF1/a;

    const/4 p1, 0x0

    iput p1, p0, LF1/a;->f:F

    return-void
.end method

.method public final h()V
    .locals 10

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->getWorld()Lcom/samsung/android/nexus/egl/world/BaseWorld;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->getWorld()Lcom/samsung/android/nexus/egl/world/BaseWorld;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/nexus/egl/world/BaseWorld;->getCoordinates()[F

    move-result-object v0

    const/4 v2, 0x1

    aget v3, v0, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v5, 0x3

    aget v0, v0, v5

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v6, p0, LF1/c;->c:Landroid/graphics/Rect;

    if-eqz v6, :cond_2

    iget-object v7, p0, LF1/c;->d:Landroid/graphics/Rect;

    if-nez v7, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, LF1/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int v8, v6, v0

    mul-int v9, v7, v3

    if-le v8, v9, :cond_1

    int-to-float v6, v0

    int-to-float v7, v7

    div-float/2addr v6, v7

    goto :goto_0

    :cond_1
    int-to-float v7, v3

    int-to-float v6, v6

    div-float v6, v7, v6

    :goto_0
    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v5, v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p0, v7, v8, v2}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->setSize(FFI)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->updateBoundary(Landroid/graphics/Rect;)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    iget-object v1, p0, LF1/c;->c:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    neg-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    sub-float/2addr v8, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v8, v0

    neg-float v0, v8

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->setOffsetXY(FF)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    goto/16 :goto_5

    :cond_2
    if-eqz v6, :cond_5

    iget-object v7, p0, LF1/c;->d:Landroid/graphics/Rect;

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, LF1/c;->d:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int/2addr v7, v6

    iget-object v6, p0, LF1/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v8, p0, LF1/c;->d:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    mul-int/2addr v8, v6

    if-le v7, v8, :cond_3

    iget-object v6, p0, LF1/c;->d:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, LF1/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    :goto_1
    int-to-float v7, v7

    div-float/2addr v6, v7

    goto :goto_2

    :cond_3
    iget-object v6, p0, LF1/c;->d:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, LF1/c;->c:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    goto :goto_1

    :goto_2
    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v4, v7

    int-to-float v5, v5

    mul-float/2addr v5, v6

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    int-to-float v4, v4

    iget v7, p0, LF1/c;->e:F

    mul-float v8, v4, v7

    int-to-float v5, v5

    mul-float/2addr v7, v5

    invoke-virtual {p0, v8, v7, v2}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->setSize(FFI)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    new-instance v2, Landroid/graphics/Rect;

    iget v7, p0, LF1/c;->e:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-direct {v2, v1, v1, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->updateBoundary(Landroid/graphics/Rect;)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    iget-object v1, p0, LF1/c;->c:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    div-int/lit8 v3, v3, 0x2

    int-to-float v4, v3

    add-float/2addr v2, v4

    iget-object v4, p0, LF1/c;->d:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v2, v7

    neg-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    sub-float/2addr v5, v1

    div-int/lit8 v1, v0, 0x2

    int-to-float v6, v1

    add-float/2addr v5, v6

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    add-float/2addr v5, v0

    neg-float v0, v5

    iget-object v4, p0, LF1/c;->f:Landroid/graphics/Point;

    if-eqz v4, :cond_4

    iget v5, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    sub-float/2addr v2, v3

    iget v4, p0, LF1/c;->e:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    invoke-static {v0, v1, v4, v1}, Li4/b;->b(FFFF)F

    move-result v0

    :cond_4
    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->setOffsetXY(FF)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    goto :goto_5

    :cond_5
    mul-int v6, v4, v0

    mul-int v7, v5, v3

    if-le v6, v7, :cond_6

    int-to-float v0, v0

    int-to-float v3, v5

    :goto_3
    div-float/2addr v0, v3

    goto :goto_4

    :cond_6
    if-ge v6, v7, :cond_7

    int-to-float v0, v3

    int-to-float v3, v4

    goto :goto_3

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_4
    int-to-float v3, v4

    mul-float/2addr v3, v0

    float-to-int v3, v3

    int-to-float v4, v5

    mul-float/2addr v4, v0

    float-to-int v0, v4

    int-to-float v4, v3

    int-to-float v5, v0

    invoke-virtual {p0, v4, v5, v2}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->setSize(FFI)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->updateBoundary(Landroid/graphics/Rect;)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    div-int/lit8 v3, v3, 0x2

    neg-int v1, v3

    int-to-float v1, v1

    div-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->setOffsetXY(FF)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;

    :goto_5
    return-void

    :cond_8
    :goto_6
    new-array v0, v1, [Ljava/lang/Object;

    iget-object p0, p0, LF1/c;->a:Ljava/lang/String;

    const-string v1, "updateImageSize : Image or World is NULL"

    invoke-static {p0, v1, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, LF1/c;->a:Ljava/lang/String;

    const-string v2, "onDestroy"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->onDestroy()V

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mImage:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, LF1/c;->h:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    iput-object v1, p0, LF1/c;->h:Landroid/graphics/Canvas;

    :cond_1
    iget-object v0, p0, LF1/c;->i:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    iput-object v1, p0, LF1/c;->i:Landroid/graphics/Paint;

    :cond_2
    iget-object v0, p0, LF1/c;->g:LF1/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LF1/a;->a()V

    iput-object v1, p0, LF1/c;->g:LF1/a;

    :cond_3
    return-void
.end method

.method public final onDraw()V
    .locals 6

    iget-object v0, p0, LF1/c;->g:LF1/a;

    if-eqz v0, :cond_b

    iget v1, v0, LF1/a;->a:I

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v3, -0x40800000    # -1.0f

    if-lez v1, :cond_2

    if-lez v1, :cond_1

    iget v1, v0, LF1/a;->c:F

    iget v4, v0, LF1/a;->b:F

    sub-float/2addr v1, v4

    iget v5, v0, LF1/a;->i:F

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget-object v0, v0, LF1/a;->d:Landroid/graphics/Point;

    iput v1, p0, LF1/c;->e:F

    iput-object v0, p0, LF1/c;->f:Landroid/graphics/Point;

    invoke-virtual {p0}, LF1/c;->h()V

    :cond_2
    iget-object v0, p0, LF1/c;->g:LF1/a;

    iget v1, v0, LF1/a;->a:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_4

    if-lez v1, :cond_3

    iget v1, v0, LF1/a;->f:F

    iget v3, v0, LF1/a;->e:F

    sub-float/2addr v1, v3

    iget v0, v0, LF1/a;->i:F

    mul-float/2addr v1, v0

    add-float/2addr v3, v1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->setGlobalAlpha(F)V

    :cond_4
    iget-object v0, p0, LF1/c;->g:LF1/a;

    iget v1, v0, LF1/a;->a:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_b

    iget v1, v0, LF1/a;->i:F

    iget-object v0, v0, LF1/a;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    iget-object v3, p0, LF1/c;->h:Landroid/graphics/Canvas;

    if-eqz v3, :cond_a

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_6

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    iget v2, p0, LF1/c;->j:F

    sub-float/2addr v1, v2

    sub-float v2, v0, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    iput v1, p0, LF1/c;->j:F

    iget-object v0, p0, LF1/c;->i:Landroid/graphics/Paint;

    if-nez v0, :cond_5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LF1/c;->i:Landroid/graphics/Paint;

    :cond_5
    iget-object v0, p0, LF1/c;->i:Landroid/graphics/Paint;

    iget v1, p0, LF1/c;->j:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, LF1/c;->h:Landroid/graphics/Canvas;

    iget-object v1, p0, LF1/c;->g:LF1/a;

    iget-object v1, v1, LF1/a;->g:Landroid/graphics/Bitmap;

    iget-object v2, p0, LF1/c;->i:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_7

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_7
    iget-object v1, p0, LF1/c;->g:LF1/a;

    iget-object v1, v1, LF1/a;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mImage:Landroid/graphics/Bitmap;

    iget-object v0, p0, LF1/c;->h:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iput-object v1, p0, LF1/c;->h:Landroid/graphics/Canvas;

    :cond_8
    iget-object v0, p0, LF1/c;->i:Landroid/graphics/Paint;

    if-eqz v0, :cond_9

    iput-object v1, p0, LF1/c;->i:Landroid/graphics/Paint;

    :cond_9
    iget-object v0, p0, LF1/c;->g:LF1/a;

    invoke-virtual {v0}, LF1/a;->a()V

    :cond_a
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->updateTexture(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "drawAnimation: e="

    invoke-static {v1, v0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, LF1/c;->a:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    :goto_2
    invoke-super {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->onDraw()V

    return-void
.end method
