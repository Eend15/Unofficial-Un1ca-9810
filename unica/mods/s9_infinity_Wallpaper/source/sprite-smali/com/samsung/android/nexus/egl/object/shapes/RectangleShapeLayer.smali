.class public Lcom/samsung/android/nexus/egl/object/shapes/RectangleShapeLayer;
.super Lcom/samsung/android/nexus/egl/object/shapes/BaseShapeLayer;
.source "SourceFile"


# static fields
.field private static final TOTAL_COLORS:I = 0x4


# instance fields
.field protected final INDICES:[S

.field protected mBounds:Landroid/graphics/Rect;

.field protected mColors:[I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 0

    .line 1
    filled-new-array {p2, p2, p2, p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/nexus/egl/object/shapes/RectangleShapeLayer;-><init>(Landroid/graphics/Rect;[I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;[I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/shapes/BaseShapeLayer;-><init>()V

    const/4 v0, 0x6

    .line 3
    new-array v0, v0, [S

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/shapes/RectangleShapeLayer;->INDICES:[S

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/shapes/RectangleShapeLayer;->mBounds:Landroid/graphics/Rect;

    .line 5
    invoke-direct {p0, p2}, Lcom/samsung/android/nexus/egl/object/shapes/RectangleShapeLayer;->initColors([I)V

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/shapes/RectangleShapeLayer;->generateShapeData()V

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

.method private initColors([I)V
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/android/nexus/egl/object/shapes/RectangleShapeLayer;->mColors:[I

    array-length v1, p1

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    if-lt v1, v0, :cond_0

    move v1, v0

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/shapes/RectangleShapeLayer;->mColors:[I

    aget v4, p1, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/nexus/egl/object/shapes/RectangleShapeLayer;->mColors:[I

    aput v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public drawElementInner()V
    .locals 3

    const/16 v0, 0x1403

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-static {v1, v2, v0, p0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public generateShapeData()V
    .locals 8

    const/16 v0, 0x1c

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/samsung/android/nexus/egl/object/shapes/RectangleShapeLayer;->mBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    const/4 v4, 0x0

    aput v3, v0, v4

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v3

    const/4 v6, 0x1

    aput v5, v0, v6

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v5

    const/4 v7, 0x7

    aput v6, v0, v7

    const/16 v6, 0x8

    int-to-float v3, v3

    aput v3, v0, v6

    const/16 v3, 0xe

    int-to-float v2, v2

    aput v2, v0, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v1

    const/16 v3, 0xf

    aput v2, v0, v3

    const/16 v2, 0x15

    int-to-float v3, v5

    aput v3, v0, v2

    const/16 v2, 0x16

    int-to-float v1, v1

    aput v1, v0, v2

    :goto_0
    const/4 v1, 0x4

    if-ge v4, v1, :cond_0

    mul-int/lit8 v1, v4, 0x7

    add-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    aput v3, v0, v2

    add-int/lit8 v2, v1, 0x3

    iget-object v3, p0, Lcom/samsung/android/nexus/egl/object/shapes/RectangleShapeLayer;->mColors:[I

    aget v3, v3, v4

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v3, v5

    aput v3, v0, v2

    add-int/lit8 v2, v1, 0x4

    iget-object v3, p0, Lcom/samsung/android/nexus/egl/object/shapes/RectangleShapeLayer;->mColors:[I

    aget v3, v3, v4

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    aput v3, v0, v2

    add-int/lit8 v2, v1, 0x5

    iget-object v3, p0, Lcom/samsung/android/nexus/egl/object/shapes/RectangleShapeLayer;->mColors:[I

    aget v3, v3, v4

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x6

    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/shapes/RectangleShapeLayer;->mColors:[I

    aget v2, v2, v4

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    aput v2, v0, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/nexus/egl/object/shapes/RectangleShapeLayer;->INDICES:[S

    invoke-virtual {p0, v1}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->generateIndexBuffer([S)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->generateVertexBuffer([F)V

    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/shapes/RectangleShapeLayer;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->onCreate()V

    new-instance v0, Lcom/samsung/android/nexus/egl/core/Shader;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/nexus/R$raw;->base_shape_vert_shader:I

    sget v3, Lcom/samsung/android/nexus/R$raw;->base_shape_frag_shader:I

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/nexus/egl/core/Shader;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->setShader(Lcom/samsung/android/nexus/egl/core/Shader;)V

    return-void
.end method
