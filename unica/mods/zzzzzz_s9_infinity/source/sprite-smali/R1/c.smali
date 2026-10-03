.class public final LR1/c;
.super Landroidx/appcompat/widget/y;
.source "SourceFile"


# instance fields
.field public final g:La2/f;

.field public final h:LS2/b;

.field public i:Ljava/lang/String;

.field public j:Landroid/graphics/Bitmap;

.field public final k:Landroid/graphics/Paint;

.field public l:F

.field public final m:Landroid/graphics/Rect;

.field public n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;La2/f;LS2/b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/y;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, LR1/c;->g:La2/f;

    iput-object p3, p0, LR1/c;->h:LS2/b;

    const-string p1, ""

    iput-object p1, p0, LR1/c;->i:Ljava/lang/String;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setDither(Z)V

    :try_start_0
    iget-object p2, p2, La2/f;->k:Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/BlendMode;->valueOf(Ljava/lang/String;)Landroid/graphics/BlendMode;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    iput-object p1, p0, LR1/c;->k:Landroid/graphics/Paint;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, LR1/c;->l:F

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, LR1/c;->m:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, LR1/c;->n:I

    iget-object p1, p0, LR1/c;->g:La2/f;

    iget-object p1, p1, La2/f;->j:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, LR1/c;->g:La2/f;

    iget-object p1, p1, La2/f;->j:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, LR1/c;->n:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v1, p0, LR1/c;->k:Landroid/graphics/Paint;

    const/4 v2, 0x0

    iget-object p0, p0, LR1/c;->m:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    iget-object p1, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    iget-object p2, p0, LR1/c;->m:Landroid/graphics/Rect;

    iget-object p3, p0, LR1/c;->g:La2/f;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    if-gt p1, p4, :cond_0

    iget-object p1, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    if-gt p1, p4, :cond_0

    iget-object p1, p3, La2/f;->m:Ljava/lang/String;

    const-string p4, "centerInside"

    invoke-static {p1, p4}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    iget-object p1, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    mul-int/2addr p4, p1

    iget-object p1, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p5

    mul-int/2addr p5, p1

    if-le p4, p5, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object p4, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    invoke-static {p4}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    :goto_0
    int-to-float p4, p4

    div-float/2addr p1, p4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object p4, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    invoke-static {p4}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    goto :goto_0

    :goto_1
    iput p1, p0, LR1/c;->l:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object p4, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    invoke-static {p4}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    int-to-float p4, p4

    iget p5, p0, LR1/c;->l:F

    mul-float/2addr p4, p5

    float-to-int p4, p4

    sub-int/2addr p1, p4

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    iget-object p5, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    invoke-static {p5}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    int-to-float p5, p5

    iget v0, p0, LR1/c;->l:F

    mul-float/2addr p5, v0

    float-to-int p5, p5

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0x2

    iget-object p5, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    invoke-static {p5}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    int-to-float p5, p5

    iget v0, p0, LR1/c;->l:F

    mul-float/2addr p5, v0

    float-to-int p5, p5

    add-int/2addr p5, p1

    iget-object v0, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, LR1/c;->l:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, p4

    invoke-virtual {p2, p1, p4, p5, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    iget-object p1, p3, La2/f;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "onLayout : "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ElementView"

    invoke-static {p2, p0, p1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    if-eqz p1, :cond_2

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, LR1/c;->g:La2/f;

    if-gt p1, v0, :cond_0

    iget-object p1, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object p1, v1, La2/f;->m:Ljava/lang/String;

    const-string v0, "centerInside"

    invoke-static {p1, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    iget-object p1, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object p1, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    mul-int/2addr v2, p1

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    :goto_1
    iput p1, p0, LR1/c;->l:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v0, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, LR1/c;->l:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, LR1/c;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, LR1/c;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, p1

    iget-object v3, p0, LR1/c;->j:Landroid/graphics/Bitmap;

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, LR1/c;->l:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v3, v0

    iget-object v4, p0, LR1/c;->m:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, v1, La2/f;->j:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    new-instance p1, Landroid/graphics/BlendModeColorFilter;

    iget v0, p0, LR1/c;->n:I

    sget-object v1, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {p1, v0, v1}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    iget-object p0, p0, LR1/c;->k:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    return-void
.end method
