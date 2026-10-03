.class public final Lt2/a;
.super Ln2/b;
.source "SourceFile"


# instance fields
.field public final c:Lo2/a;

.field public final d:Lo2/b;

.field public final e:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo2/a;Lo2/b;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Ln2/b;-><init>(Lo2/a;)V

    iput-object p2, p0, Lt2/a;->c:Lo2/a;

    iput-object p3, p0, Lt2/a;->d:Lo2/b;

    iget p2, p2, Lo2/a;->b:I

    invoke-static {p1, p2}, Lf2/e;->a(Landroid/content/Context;I)[F

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const/4 p3, 0x3

    aget p3, p1, p3

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-static {p3, v0, v1, p1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p1

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p1, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lt2/a;->e:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    const-string v0, "NoEffect"

    invoke-virtual {p0, p1, v0}, Ln2/b;->j(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iget-object v1, p0, Lt2/a;->e:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lt2/a;->d:Lo2/b;

    iget-object v1, v1, Lo2/b;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lt2/a;->c:Lo2/a;

    iget-object p0, p0, Lo2/a;->a:Landroid/util/SizeF;

    new-instance v2, Landroid/util/SizeF;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/util/SizeF;-><init>(FF)V

    const-string v3, "surfaceSize"

    invoke-static {p0, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result v4

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    new-instance v4, Landroid/graphics/Matrix;

    sget-object v5, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {v4, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v5

    neg-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v6

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    div-float/2addr v2, v6

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result p0

    div-float/2addr p0, v6

    invoke-virtual {v4, v2, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1, v1, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object p0, p0, Lt2/a;->d:Lo2/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lo2/b;->b:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lo2/b;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h(Landroid/util/SizeF;)V
    .locals 4

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resize surfaceSize(wxh): ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NoEffect"

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lt2/a;->c:Lo2/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lo2/a;->a:Landroid/util/SizeF;

    return-void
.end method

.method public final i(J)V
    .locals 0

    return-void
.end method

.method public final k(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lt2/a;->d:Lo2/b;

    iput-object p1, p0, Lo2/b;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final l(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NoEffect"

    return-object p0
.end method
