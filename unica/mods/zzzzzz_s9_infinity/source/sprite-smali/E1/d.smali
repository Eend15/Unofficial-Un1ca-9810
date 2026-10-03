.class public final LE1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static n:Ljava/lang/String; = "LayerDataManager"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/graphics/Point;

.field public c:Ljava/util/ArrayList;

.field public d:Ljava/util/ArrayList;

.field public e:Lj1/b;

.field public f:F

.field public g:F

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, LE1/d;->b:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-object v0, p0, LE1/d;->c:Ljava/util/ArrayList;

    iput-object v0, p0, LE1/d;->d:Ljava/util/ArrayList;

    iput-object v0, p0, LE1/d;->e:Lj1/b;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, LE1/d;->f:F

    iput v0, p0, LE1/d;->g:F

    iput v1, p0, LE1/d;->h:I

    iput v1, p0, LE1/d;->i:I

    iput v1, p0, LE1/d;->j:I

    const/4 v0, 0x2

    iput v0, p0, LE1/d;->k:I

    iput-boolean v1, p0, LE1/d;->l:Z

    iput-boolean v1, p0, LE1/d;->m:Z

    iput-object p1, p0, LE1/d;->a:Landroid/content/Context;

    invoke-virtual {p0, p2}, LE1/d;->j(I)V

    invoke-virtual {p0, p3}, LE1/d;->i(Z)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LE1/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, LE1/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE1/a;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, LE1/a;->a:Ljava/lang/String;

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, LE1/a;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final b(I)Landroid/graphics/Rect;
    .locals 8

    iget-object v0, p0, LE1/d;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, LE1/d;->n:Ljava/lang/String;

    const-string v0, "getDstBound : layer data is NULL "

    invoke-static {p1, v0}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE1/a;

    iget-object v0, v0, LE1/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, LE1/d;->h:I

    if-gt v0, v2, :cond_1

    sget-object p1, LE1/d;->n:Ljava/lang/String;

    const-string v0, "getDstBound : bound is NULL"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, LE1/d;->d:Ljava/util/ArrayList;

    iget v2, p0, LE1/d;->h:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, LE1/d;->g:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, LE1/d;->d:Ljava/util/ArrayList;

    iget v3, p0, LE1/d;->h:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget p0, p0, LE1/d;->g:F

    mul-float/2addr v2, p0

    float-to-int p0, v2

    invoke-direct {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p0, p1

    goto/16 :goto_5

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, LE1/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LE1/a;

    iget-object p1, p1, LE1/a;->e:Ljava/util/ArrayList;

    iget v2, p0, LE1/d;->h:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    iget-object v2, p0, LE1/d;->e:Lj1/b;

    const-string v3, "[v0-9]+(\\.[0-9]+)*"

    const-string v4, "1.0.2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "v"

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lj1/b;->d:Ljava/lang/String;

    const-string v4, "\\."

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v2

    array-length v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_6

    array-length v6, v2

    if-ge v5, v6, :cond_2

    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    array-length v7, v3

    if-ge v5, v7, :cond_3

    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    if-ge v6, v7, :cond_4

    goto :goto_3

    :cond_4
    if-le v6, v7, :cond_5

    iget-object v1, p0, LE1/d;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, LE1/d;->d:Ljava/util/ArrayList;

    iget v3, p0, LE1/d;->h:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, LE1/d;->g:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget p0, p0, LE1/d;->g:F

    mul-float/2addr v3, p0

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, p0

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget v5, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v5, p0

    float-to-int v5, v5

    int-to-float v5, v5

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    int-to-float p0, p0

    add-float/2addr p0, v1

    invoke-direct {v2, v3, v4, v5, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget p0, p0, LE1/d;->g:F

    mul-float/2addr v2, p0

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, p0

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, p0

    float-to-int v4, v4

    int-to-float v4, v4

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    int-to-float p0, p0

    invoke-direct {v1, v2, v3, v4, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    :goto_4
    move-object p0, v0

    :goto_5
    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid version format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LE1/d;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LE1/d;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LE1/a;

    iget-object p0, p0, LE1/a;->b:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    sget-object p1, LE1/d;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getImagePath : Image path is NULL. srcWhich="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, LE1/d;->j:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()I
    .locals 3

    iget-object p0, p0, LE1/d;->c:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    sget-object p0, LE1/d;->n:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getLayerCount: layer data is NULL"

    invoke-static {p0, v2, v1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final e(I)Landroid/graphics/Bitmap;
    .locals 7

    iget-object v0, p0, LE1/d;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object p0, LE1/d;->n:Ljava/lang/String;

    const-string v0, "getLayerImage : layer data is NULL "

    invoke-static {p1, v0}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE1/a;

    iget-object v0, v0, LE1/a;->a:Ljava/lang/String;

    const-string v3, "image"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v3, " , "

    const-string v4, "getLayerImage : "

    if-nez v0, :cond_2

    iget-object v0, p0, LE1/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE1/a;

    iget-object v0, v0, LE1/a;->a:Ljava/lang/String;

    const-string v5, "aod_image"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, LE1/d;->n:Ljava/lang/String;

    invoke-static {p1, v4, v3}, LB/a;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, LE1/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LE1/a;

    iget v3, v3, LE1/a;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x64

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, LE1/d;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LE1/a;

    iget p0, p0, LE1/a;->c:I

    invoke-virtual {v1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, LE1/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE1/a;

    iget-object v0, v0, LE1/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, LE1/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE1/a;

    iget-object v0, v0, LE1/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v0, p0, LE1/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE1/a;

    iget-object v0, v0, LE1/a;->b:Ljava/lang/String;

    sget-object v5, LE1/d;->n:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, p1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, LE1/d;->j:I

    iget-object v3, p0, LE1/d;->a:Landroid/content/Context;

    invoke-static {v3, p1, v0}, LL1/a;->getWallpaperAssetFile(Landroid/content/Context;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const-string v3, "frame_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    iget v4, p0, LE1/d;->f:F

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_1
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    const/16 v0, 0x140

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget-boolean p0, p0, LE1/d;->m:Z

    if-nez p0, :cond_6

    sget-object p0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p0

    iput-object p0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    :cond_6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_2
    sget-object p0, LE1/d;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getLayerImage : layer image is NULL. "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_8
    :goto_3
    sget-object p0, LE1/d;->n:Ljava/lang/String;

    const-string v0, "getLayerImage : can NOT load a layer image "

    invoke-static {p1, v0}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public final f()Landroid/graphics/Point;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LE1/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LE1/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE1/a;

    iget-object v1, v1, LE1/a;->b:Ljava/lang/String;

    const-string v2, "object.png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, LE1/d;->b(I)Landroid/graphics/Rect;

    move-result-object p0

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v1

    invoke-direct {v0, v2, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, LE1/d;->d:Ljava/util/ArrayList;

    iget v2, p0, LE1/d;->h:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, LE1/d;->d:Ljava/util/ArrayList;

    iget p0, p0, LE1/d;->h:I

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public final g(I)Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, LE1/d;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, LE1/d;->n:Ljava/lang/String;

    const-string v0, "getSrcBound : layer data is NULL "

    invoke-static {p1, v0}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE1/a;

    iget-object v0, v0, LE1/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, LE1/d;->h:I

    if-gt v0, v2, :cond_1

    sget-object p1, LE1/d;->n:Ljava/lang/String;

    const-string v0, "getSrcBound : bound is NULL"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, LE1/d;->d:Ljava/util/ArrayList;

    iget v2, p0, LE1/d;->h:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v2, p0, LE1/d;->d:Ljava/util/ArrayList;

    iget p0, p0, LE1/d;->h:I

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-direct {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, LE1/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LE1/a;

    iget-object p1, p1, LE1/a;->d:Ljava/util/ArrayList;

    iget p0, p0, LE1/d;->h:I

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 4

    iget v0, p0, LE1/d;->j:I

    invoke-static {v0}, LK/I;->b0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_S"

    goto :goto_0

    :cond_0
    const-string v0, "_P"

    :goto_0
    iget v1, p0, LE1/d;->i:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, LK/I;->Y(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "H"

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    iget v2, p0, LE1/d;->i:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, LK/I;->Y(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "L"

    invoke-static {v1, v2}, Li4/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lq/e;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, LE1/d;->i:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {v0, v1}, Li4/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final i(Z)Z
    .locals 22

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget v3, v1, LE1/d;->j:I

    sget-object v0, LE1/d;->n:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loadLayerData: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , sourceWhich="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v1, LE1/d;->a:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/samsung/android/wallpaper/live/util/WallpaperManagerHelper;->getWallpaperExtras(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "setWallpaper.xml"

    const-string v7, "layered"

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    const-string v9, "contentType"

    invoke-virtual {v0, v9, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "manifest"

    invoke-virtual {v0, v9, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "hasCroppedObject"

    invoke-virtual {v0, v9, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v1, LE1/d;->l:Z

    const-string v9, "representativeImageFile"

    invoke-virtual {v0, v9, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "cropHints"

    invoke-virtual {v0, v10, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v10, LE1/c;

    invoke-direct {v10}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    invoke-virtual {v10}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v10

    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v11, v0, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    move-object v0, v8

    goto :goto_0

    :cond_1
    sget-object v0, LE1/d;->n:Ljava/lang/String;

    const-string v9, "loadLayerData: extras is NULL"

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v0, v9, v10}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v8

    move-object v9, v0

    :goto_0
    invoke-static {v4, v3, v6}, LL1/a;->getWallpaperAssetFile(Landroid/content/Context;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    if-nez v10, :cond_3

    :cond_2
    move v3, v5

    goto/16 :goto_1c

    :cond_3
    const/4 v10, 0x2

    iput v10, v1, LE1/d;->k:I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v1, LE1/d;->c:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v11, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v12, v11, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_17

    :cond_4
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, La4/x;->K(Ljava/lang/String;)La1/a;

    move-result-object v6

    check-cast v6, Lc1/q;

    if-nez v6, :cond_5

    sget-object v0, LE1/d;->n:Ljava/lang/String;

    const-string v1, "loadLayerData: layer list is NULL"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_5
    iget-object v10, v6, Lc1/q;->d:Lb1/a;

    iget-object v10, v10, Lb1/a;->b:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v10, "1.0.0"

    :cond_6
    new-instance v11, Lj1/b;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    if-eqz v10, :cond_20

    const-string v12, "[v0-9]+(\\.[0-9]+)*"

    invoke-virtual {v10, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1f

    const-string v12, "v"

    const-string v13, ""

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Lj1/b;->d:Ljava/lang/String;

    iput-object v11, v1, LE1/d;->e:Lj1/b;

    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, v6, Lc1/q;->e:Lb1/a;

    iget-object v11, v11, Lb1/a;->b:Ljava/lang/Object;

    check-cast v11, Landroid/util/Size;

    iget-object v12, v6, Lc1/q;->f:Lb1/a;

    iget-object v12, v12, Lb1/a;->b:Ljava/lang/Object;

    check-cast v12, Landroid/util/Size;

    iget-object v13, v6, Lc1/q;->g:Lb1/a;

    iget-object v13, v13, Lb1/a;->b:Ljava/lang/Object;

    check-cast v13, Landroid/util/Size;

    invoke-static {v11, v12, v13}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, v1, LE1/d;->d:Ljava/util/ArrayList;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-static {v4, v3, v9}, LL1/a;->getWallpaperAssetFile(Landroid/content/Context;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    goto :goto_2

    :cond_7
    move-object v11, v8

    goto :goto_2

    :cond_8
    move-object v10, v8

    move-object v11, v10

    :goto_2
    sget-object v12, LE1/d;->n:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "loadLayerData: singleFD="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " , isSystem="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v14, v3, 0x3

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    move v14, v15

    goto :goto_3

    :cond_9
    move v14, v5

    :goto_3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " , isWeather="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "weather"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v12, v8, v13}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v8, "loadLayerData: added layer = "

    const-string v12, " , wcg="

    const-string v13, "loadLayerData: srcScale="

    const/high16 v16, 0x45800000    # 4096.0f

    const-string v5, "image"

    if-eqz v11, :cond_d

    iget v15, v1, LE1/d;->i:I

    and-int/lit8 v15, v15, 0x3

    const/4 v2, 0x1

    if-ne v15, v2, :cond_d

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, LE1/d;->n:Ljava/lang/String;

    const-string v3, "loadLayerData: Loading Single Image Layer"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, LE1/a;

    invoke-direct {v2}, LE1/a;-><init>()V

    iput-object v5, v2, LE1/a;->a:Ljava/lang/String;

    iput-object v9, v2, LE1/a;->b:Ljava/lang/String;

    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v4, v3}, LL1/a;->wallpaperSupportsWcg(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result v4

    iput-boolean v4, v1, LE1/d;->m:Z

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float v16, v16, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v5, v16, v4

    if-gez v5, :cond_a

    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, v1, LE1/d;->f:F

    goto :goto_4

    :cond_a
    iput v4, v1, LE1/d;->f:F

    :goto_4
    sget-object v4, LE1/d;->n:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, LE1/d;->f:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, LE1/d;->m:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, LE1/a;->d:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, LE1/a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget-object v4, v2, LE1/a;->d:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/RectF;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v1, LE1/d;->f:F

    mul-float/2addr v6, v7

    iget v9, v3, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v7

    iget v11, v3, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    mul-float/2addr v11, v7

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-direct {v5, v6, v9, v11, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, v1, LE1/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v0, v3, v6, v5}, LK/I;->x(IIII)Landroid/graphics/RectF;

    move-result-object v7

    const-string v9, "getCenterCropRectF: imgWidth="

    const-string v11, ", imgHeight="

    const-string v12, ", widthToFit="

    invoke-static {v0, v9, v3, v11, v12}, LB/a;->p(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", heightToFit="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", result="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GraphicsUtils"

    invoke-static {v6, v5}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, LE1/a;->d:Ljava/util/ArrayList;

    new-instance v6, LE1/b;

    invoke-direct {v6, v0, v3}, LE1/b;-><init>(II)V

    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    iget-object v0, v1, LE1/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, LE1/d;->n:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, LE1/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_5
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_15

    :catch_0
    move-exception v0

    move-object v2, v0

    sget-object v0, LE1/d;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_15

    :cond_d
    const/4 v7, 0x0

    sget-object v0, LE1/d;->n:Ljava/lang/String;

    const-string v2, "loadLayerData: Loading Image Layers"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v9}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v6}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1c

    invoke-virtual {v6}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lc1/r;

    iget-object v0, v7, Lc1/r;->d:Lc1/B;

    iget-object v9, v7, Lc1/r;->e:Lc1/B;

    new-instance v10, LE1/a;

    invoke-direct {v10}, LE1/a;-><init>()V

    iget-object v11, v0, Lc1/B;->d:Lb1/a;

    iget-object v11, v11, Lb1/a;->b:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iput-object v11, v10, LE1/a;->a:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    const-string v14, "frame_"

    if-eqz v11, :cond_e

    iget-object v0, v0, Lc1/B;->e:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v10, LE1/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v11, 0x0

    iput v11, v1, LE1/d;->k:I

    :cond_e
    :goto_8
    move/from16 v17, v3

    move-object/from16 v18, v4

    goto/16 :goto_10

    :cond_f
    iget v0, v1, LE1/d;->k:I

    if-eqz v0, :cond_10

    iget-object v0, v10, LE1/a;->b:Ljava/lang/String;

    const-string v11, "object"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v11, 0x1

    iput v11, v1, LE1/d;->k:I

    goto :goto_8

    :cond_10
    iget-object v0, v10, LE1/a;->b:Ljava/lang/String;

    const-string v11, "background"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    :try_start_6
    iget-object v0, v10, LE1/a;->b:Ljava/lang/String;

    invoke-static {v4, v3, v0}, LL1/a;->getWallpaperAssetFile(Landroid/content/Context;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2

    if-eqz v11, :cond_12

    :try_start_7
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v4, v0}, LL1/a;->wallpaperSupportsWcg(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result v15

    iput-boolean v15, v1, LE1/d;->m:Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v16, v0

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v15

    if-gez v0, :cond_11

    const/high16 v15, 0x3f000000    # 0.5f

    iput v15, v1, LE1/d;->f:F

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_b

    :catchall_1
    move-exception v0

    move/from16 v17, v3

    :goto_9
    move-object/from16 v18, v4

    :goto_a
    move-object v3, v0

    goto :goto_c

    :cond_11
    iput v15, v1, LE1/d;->f:F

    :goto_b
    sget-object v0, LE1/d;->n:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move/from16 v17, v3

    :try_start_8
    iget v3, v1, LE1/d;->f:F

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, LE1/d;->m:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v18, v4

    const/4 v15, 0x0

    :try_start_9
    new-array v4, v15, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_e

    :catchall_2
    move-exception v0

    goto :goto_a

    :catchall_3
    move-exception v0

    goto :goto_9

    :cond_12
    move/from16 v17, v3

    move-object/from16 v18, v4

    goto :goto_e

    :goto_c
    :try_start_a
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object v4, v0

    :try_start_b
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v3

    :catch_1
    move-exception v0

    goto :goto_f

    :goto_e
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_10

    :catch_2
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v18, v4

    :goto_f
    sget-object v3, LE1/d;->n:Ljava/lang/String;

    const-string v4, "loadLayerData: e = "

    invoke-static {v4, v0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    :goto_10
    if-eqz v9, :cond_14

    iget-object v0, v9, Lc1/B;->d:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "aod_image"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, LE1/a;

    invoke-direct {v0}, LE1/a;-><init>()V

    iput-object v3, v0, LE1/a;->a:Ljava/lang/String;

    iget-object v3, v9, Lc1/B;->e:Lb1/a;

    iget-object v3, v3, Lb1/a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, LE1/a;->b:Ljava/lang/String;

    goto :goto_11

    :cond_14
    const/4 v0, 0x0

    :goto_11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v10, LE1/a;->d:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v10, LE1/a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, LE1/a;->d:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, LE1/a;->e:Ljava/util/ArrayList;

    :cond_15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La1/a;

    instance-of v9, v7, Lc1/h;

    if-eqz v9, :cond_16

    check-cast v7, Lc1/h;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_17
    const/4 v4, 0x0

    :goto_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_1a

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc1/h;

    invoke-virtual {v7}, Lc1/h;->d()Landroid/graphics/RectF;

    move-result-object v7

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc1/h;

    invoke-virtual {v9}, Lc1/h;->d()Landroid/graphics/RectF;

    move-result-object v9

    iget-object v11, v10, LE1/a;->b:Ljava/lang/String;

    if-eqz v11, :cond_18

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_18

    iget v11, v7, Landroid/graphics/RectF;->left:F

    iget v15, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v19, v3

    iget v3, v7, Landroid/graphics/RectF;->right:F

    move-object/from16 v20, v5

    iget v5, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v7, v11, v15, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v21, v6

    goto :goto_14

    :cond_18
    move-object/from16 v19, v3

    move-object/from16 v20, v5

    iget v3, v7, Landroid/graphics/RectF;->left:F

    iget v5, v1, LE1/d;->f:F

    mul-float/2addr v3, v5

    iget v11, v7, Landroid/graphics/RectF;->top:F

    mul-float/2addr v11, v5

    iget v15, v7, Landroid/graphics/RectF;->right:F

    mul-float/2addr v15, v5

    move-object/from16 v21, v6

    iget v6, v7, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v6, v5

    invoke-virtual {v7, v3, v11, v15, v6}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_14
    iget-object v3, v10, LE1/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v10, LE1/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_19

    iget-object v3, v0, LE1/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, LE1/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v4, v4, 0x2

    move-object/from16 v3, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    goto :goto_13

    :cond_1a
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    iget-object v3, v1, LE1/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, LE1/d;->n:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v10, LE1/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1b

    iget-object v3, v1, LE1/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, LE1/d;->n:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loadLayerData: added aod layer = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, LE1/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    goto/16 :goto_7

    :cond_1c
    :goto_15
    if-eqz p1, :cond_1e

    new-instance v0, LE1/a;

    invoke-direct {v0}, LE1/a;-><init>()V

    const-string v2, "color"

    iput-object v2, v0, LE1/a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, LE1/a;->c:I

    const-string v2, "DarkModeFilter"

    iput-object v2, v0, LE1/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, LE1/a;->d:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, LE1/a;->e:Ljava/util/ArrayList;

    const/4 v5, 0x0

    :goto_16
    iget-object v2, v1, LE1/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_1d

    iget-object v2, v0, LE1/a;->d:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-direct {v3, v4, v4, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, LE1/a;->e:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/RectF;

    iget-object v6, v1, LE1/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v1, LE1/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v3, v4, v4, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_1d
    iget-object v1, v1, LE1/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    const/4 v1, 0x1

    return v1

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid version format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version can not be NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    goto :goto_1b

    :catchall_5
    move-exception v0

    move-object v1, v0

    goto :goto_19

    :goto_17
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_18

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :goto_19
    :try_start_e
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_1a

    :catchall_7
    move-exception v0

    move-object v2, v0

    :try_start_f
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a
    throw v1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    :goto_1b
    sget-object v1, LE1/d;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadLayerData: can NOT load layer data. e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, LE1/d;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadLayerData: read = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_21

    sget-object v1, LE1/d;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "loadLayerData : cause="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    return v3

    :goto_1c
    sget-object v0, LE1/d;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadLayerData: wallpaper data is NULL. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public final j(I)V
    .locals 3

    sget-object v0, LE1/d;->n:Ljava/lang/String;

    const-string v1, "setWhich : "

    invoke-static {p1, v1}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, LE1/d;->i:I

    invoke-static {p1}, LK/I;->c0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 p1, p1, 0x3c

    or-int/lit8 p1, p1, 0x1

    :cond_0
    and-int/lit8 v0, p1, 0x3c

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit8 p1, p1, 0x3

    iget-object v0, p0, LE1/d;->a:Landroid/content/Context;

    invoke-static {v0}, LM1/i;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    :goto_0
    or-int/2addr p1, v0

    :goto_1
    iput p1, p0, LE1/d;->j:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "LayerDataManager"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LE1/d;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, LE1/d;->n:Ljava/lang/String;

    return-void
.end method

.method public final k(II)V
    .locals 9

    iget-object v0, p0, LE1/d;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, LE1/d;->b:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/high16 v4, 0x41200000    # 10.0f

    move v5, v1

    :goto_0
    iget-object v6, p0, LE1/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, p0, LE1/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, LE1/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v7, v6, v4

    if-gez v7, :cond_1

    iput v5, p0, LE1/d;->h:I

    move v4, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, LE1/d;->d:Ljava/util/ArrayList;

    iget v3, p0, LE1/d;->h:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    iget-object v3, p0, LE1/d;->e:Lj1/b;

    const-string v4, "1.0.2"

    const-string v5, "[v0-9]+(\\.[0-9]+)*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "v"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lj1/b;->d:Ljava/lang/String;

    const-string v5, "\\."

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v3

    array-length v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_7

    array-length v7, v3

    if-ge v6, v7, :cond_3

    aget-object v7, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    array-length v8, v4

    if-ge v6, v8, :cond_4

    aget-object v8, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_3

    :cond_4
    move v8, v1

    :goto_3
    if-ge v7, v8, :cond_5

    goto :goto_4

    :cond_5
    if-le v7, v8, :cond_6

    iget p1, v0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, LE1/d;->g:F

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v0

    mul-int/2addr v0, p2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v3, p1

    if-le v0, v3, :cond_8

    int-to-float p1, p2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, LE1/d;->g:F

    goto :goto_5

    :cond_8
    int-to-float p1, p1

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, LE1/d;->g:F

    :goto_5
    sget-object p1, LE1/d;->n:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "updateSurfaceSize : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, LE1/d;->g:F

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid version format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_6
    sget-object p0, LE1/d;->n:Ljava/lang/String;

    const-string p1, "updateSurfaceSize : base resolution is NULL"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
