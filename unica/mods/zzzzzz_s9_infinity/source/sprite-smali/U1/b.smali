.class public final LU1/b;
.super Landroidx/appcompat/widget/y;
.source "SourceFile"


# instance fields
.field public g:LS2/b;

.field public h:La2/f;

.field public i:Landroid/graphics/Bitmap;

.field public j:Landroid/graphics/Paint;

.field public k:F

.field public l:Landroid/graphics/Rect;

.field public m:Z

.field public n:Z


# virtual methods
.method public final b()V
    .locals 5

    iget-object v0, p0, LU1/b;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LU1/b;->i:Landroid/graphics/Bitmap;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LU1/b;->h:La2/f;

    iget-object v0, v0, La2/f;->m:Ljava/lang/String;

    const-string v1, "centerInside"

    invoke-static {v0, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    iget-object v0, p0, LU1/b;->i:Landroid/graphics/Bitmap;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v0, p0, LU1/b;->i:Landroid/graphics/Bitmap;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, LU1/b;->i:Landroid/graphics/Bitmap;

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, LU1/b;->i:Landroid/graphics/Bitmap;

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_0

    :goto_1
    iput v0, p0, LU1/b;->k:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, LU1/b;->i:Landroid/graphics/Bitmap;

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, LU1/b;->k:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, LU1/b;->i:Landroid/graphics/Bitmap;

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, LU1/b;->k:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, LU1/b;->i:Landroid/graphics/Bitmap;

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, LU1/b;->k:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v0

    iget-object v3, p0, LU1/b;->i:Landroid/graphics/Bitmap;

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, LU1/b;->k:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v3, v1

    iget-object p0, p0, LU1/b;->l:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    return-void
.end method

.method public final c(I)V
    .locals 4

    iget-object v0, p0, LU1/b;->h:La2/f;

    iget-object v1, v0, La2/f;->l:Ljava/lang/String;

    const-string v2, "horizontal"

    invoke-static {v1, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleX(F)V

    goto :goto_0

    :cond_0
    const-string v2, "vertical"

    invoke-static {v1, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    :goto_0
    iget-object v1, v0, La2/f;->b:La2/i;

    sget-object v2, La2/i;->e:La2/i;

    iget-object v3, p0, LU1/b;->g:LS2/b;

    if-eq v1, v2, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    if-gez p1, :cond_2

    iget-object p1, v0, La2/f;->b:La2/i;

    invoke-virtual {v3, p1}, LS2/b;->d(La2/i;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object p1, v0, La2/f;->g:Ljava/lang/String;

    invoke-virtual {v3, v0, v1, p1}, LS2/b;->f(La2/f;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v0}, LS2/b;->e(La2/f;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, LU1/b;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LU1/b;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v1, p0, LU1/b;->j:Landroid/graphics/Paint;

    const/4 v2, 0x0

    iget-object p0, p0, LU1/b;->l:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, LU1/b;->b()V

    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, LU1/b;->i:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, LU1/b;->b()V

    iget-object p1, p0, LU1/b;->h:La2/f;

    iget-object v0, p1, La2/f;->j:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, LU1/b;->i:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p0, p1, La2/f;->j:Ljava/lang/String;

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    sget-object p1, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/BlendMode;)V

    :cond_0
    return-void
.end method
