.class public Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/RectangleShape;
.super Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;
.source "RectangleShape.java"


# instance fields
.field protected INDICES:[S

.field private mColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;)V

    const/4 p1, 0x6

    new-array p1, p1, [S

    .line 15
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/RectangleShape;->INDICES:[S

    .line 22
    iput p3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/RectangleShape;->mColor:I

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/RectangleShape;->generateShapeData()V

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x3s
        0x0s
        0x3s
        0x2s
    .end array-data
.end method


# virtual methods
.method protected drawElementInner()V
    .locals 3

    .line 60
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v0, 0x4

    const/4 v1, 0x6

    const/16 v2, 0x1403

    invoke-static {v0, v1, v2, p0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method protected generateShader()Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;
    .locals 3

    .line 55
    new-instance v0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->rectangle_vert_shader:I

    sget v2, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->rectangle_frag_shader:I

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public generateShapeData()V
    .locals 8

    const/16 v0, 0x1c

    new-array v0, v0, [F

    .line 28
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mShapeSize:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 29
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v3

    const/4 v6, 0x1

    aput v5, v0, v6

    .line 30
    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v5

    const/4 v7, 0x7

    aput v6, v0, v7

    int-to-float v3, v3

    const/16 v6, 0x8

    aput v3, v0, v6

    int-to-float v2, v2

    const/16 v3, 0xe

    aput v2, v0, v3

    .line 33
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v1

    const/16 v3, 0xf

    aput v2, v0, v3

    int-to-float v2, v5

    const/16 v3, 0x15

    aput v2, v0, v3

    int-to-float v1, v1

    const/16 v2, 0x16

    aput v1, v0, v2

    :goto_0
    const/4 v1, 0x4

    if-ge v4, v1, :cond_0

    mul-int/lit8 v1, v4, 0x7

    add-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    .line 39
    aput v3, v0, v2

    add-int/lit8 v2, v1, 0x3

    .line 40
    iget v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/RectangleShape;->mColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    mul-int/lit8 v5, v4, 0x32

    add-int/2addr v3, v5

    int-to-float v3, v3

    aput v3, v0, v2

    .line 41
    aget v3, v0, v2

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v3, v6

    aput v3, v0, v2

    add-int/lit8 v2, v1, 0x4

    .line 42
    iget v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/RectangleShape;->mColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    add-int/2addr v3, v5

    int-to-float v3, v3

    aput v3, v0, v2

    .line 43
    aget v3, v0, v2

    div-float/2addr v3, v6

    aput v3, v0, v2

    add-int/lit8 v2, v1, 0x5

    .line 44
    iget v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/RectangleShape;->mColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    add-int/2addr v3, v5

    int-to-float v3, v3

    aput v3, v0, v2

    .line 45
    aget v3, v0, v2

    div-float/2addr v3, v6

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x6

    const/high16 v2, 0x3f800000    # 1.0f

    .line 46
    aput v2, v0, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/RectangleShape;->INDICES:[S

    invoke-virtual {p0, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->generateIndexBuffer([S)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;

    .line 50
    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->generateVertexBuffer([F)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;

    return-void
.end method
