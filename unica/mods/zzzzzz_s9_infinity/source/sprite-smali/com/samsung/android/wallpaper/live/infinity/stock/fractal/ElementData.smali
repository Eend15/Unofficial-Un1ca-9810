.class public Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;
.super Ljava/lang/Object;
.source "ElementData.java"


# static fields
.field public static final DEFAULT_ROTATION_X:F = 0.0f

.field public static final DEFAULT_ROTATION_Y:F = 35.0f

.field private static final GROUP_ALPHA_CYCLE:F = 15.707964f

.field private static final GROUP_ALPHA_SIN_SHIFT:F = 1.5707964f

.field public static final MAX_RANDOM_ROTATION:F = 5.0f

.field public static final OVER_BRIGHTNESS_DOT:[F

.field public static final OVER_BRIGHTNESS_LINE:[F

.field public static final SCALE:[F


# instance fields
.field public alphaAodBgObjects:F

.field public alphaAodFgObjects:F

.field public alphaGroup1:F

.field public alphaGroup2:F

.field public alphaGroup3:F

.field public alphaGroup4:F

.field public alphaGroup5:F

.field public alphaHomeBg:F

.field public alphaHomeDot:F

.field public alphaHomeLine:F

.field public alphaLockBg:F

.field public alphaLockDot:F

.field public alphaLockFaces:F

.field public alphaLockLine:F

.field public animateStep:F

.field private mAodBackgroundDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

.field private mAodBgParticleShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

.field private mAodForegroundDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

.field private mAodLine:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

.field private mContext:Landroid/content/Context;

.field private mDrawLock:Ljava/lang/Object;

.field private mGroupData:[[I

.field private mHeight:I

.field private mHomeBg:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

.field private mHomeBgContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;

.field private mHomeBgResId:I

.field private mHomeDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

.field private mHomeLine:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

.field private mIsLoadingData:Z

.field private mLockBg:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

.field private mLockBgContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;

.field private mLockBgResId:I

.field private mLockDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

.field private mLockFaces:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/TriangleShape;

.field private mLockLine:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

.field private mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

.field private mShapeDataResId:I

.field private mWidth:I

.field private mWorld:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;

.field public overBrightnessDot:F

.field public overBrightnessLine:F

.field public rotateX:F

.field public rotateY:F

.field public scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 27
    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->SCALE:[F

    new-array v1, v0, [F

    .line 28
    fill-array-data v1, :array_1

    sput-object v1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    new-array v0, v0, [F

    .line 29
    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3fc00000    # 1.5f
    .end array-data

    :array_1
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;III[[I)V
    .locals 8

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 197
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;-><init>(Landroid/content/Context;III[[III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III[[III)V
    .locals 2

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mDrawLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mIsLoadingData:Z

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockBgResId:I

    .line 46
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeBgResId:I

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mWorld:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 67
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->scale:F

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateX:F

    const/high16 v1, 0x420c0000    # 35.0f

    .line 69
    iput v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateY:F

    .line 70
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->animateStep:F

    .line 71
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessDot:F

    .line 72
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessLine:F

    .line 74
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodFgObjects:F

    .line 75
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodBgObjects:F

    .line 76
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockBg:F

    .line 77
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockFaces:F

    .line 78
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockDot:F

    .line 79
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockLine:F

    .line 81
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaHomeBg:F

    .line 82
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaHomeDot:F

    .line 83
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaHomeLine:F

    .line 85
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup1:F

    .line 86
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup2:F

    .line 87
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup3:F

    .line 88
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup4:F

    .line 89
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup5:F

    .line 201
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mContext:Landroid/content/Context;

    .line 202
    iput p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mWidth:I

    .line 203
    iput p3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHeight:I

    .line 204
    iput p4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeDataResId:I

    .line 205
    iput-object p5, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mGroupData:[[I

    .line 206
    iput p6, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockBgResId:I

    .line 207
    iput p7, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeBgResId:I

    .line 209
    iget p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mWidth:I

    int-to-float p2, p1

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p2, p3

    .line 210
    iget p4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHeight:I

    int-to-float p5, p4

    mul-float/2addr p5, p3

    .line 212
    new-instance p3, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldPerspective;

    invoke-direct {p3, p1, p4}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldPerspective;-><init>(II)V

    iput-object p3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mWorld:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->createShapeData()V

    .line 215
    invoke-direct {p0, p2, p5}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->initElements(FF)V

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->resetGroup()V

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->resetProperties()V

    return-void
.end method

.method private drawBackgroundObject(Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;F)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->setGlobalAlpha(F)V

    .line 383
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mWorld:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->drawElements(Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawShape(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;F)V
    .locals 1

    const/4 v0, 0x0

    .line 387
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->drawShape(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;FF)V

    return-void
.end method

.method private drawShape(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;FF)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->setGlobalAlpha(F)V

    .line 394
    invoke-virtual {p1, p3}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->setOverBrightness(F)V

    .line 395
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mWorld:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->drawElements(Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getShapeSizeRatio()F
    .locals 2

    .line 306
    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mWidth:I

    int-to-float p0, p0

    const/high16 v0, 0x44870000    # 1080.0f

    div-float/2addr v0, p0

    const p0, 0x3f23d70a    # 0.64f

    div-float v0, p0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method private initElements(FF)V
    .locals 11

    const-string v0, "InfinityWallpaper"

    const-string v1, "init elements start"

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v1, Landroid/graphics/Rect;

    neg-float v2, p1

    float-to-int v2, v2

    float-to-int v3, p2

    float-to-int p1, p1

    neg-float p2, p2

    float-to-int p2, p2

    invoke-direct {v1, v2, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 224
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mWidth:I

    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHeight:I

    const/4 v3, 0x0

    invoke-direct {p1, v3, v3, p2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 225
    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mWorld:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;

    invoke-virtual {p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->getCoordinates()[F

    move-result-object p2

    const/4 v2, 0x4

    aget p2, p2, v2

    .line 227
    new-instance v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    invoke-direct {v2, v3, v1, v4}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V

    iput-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodLine:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

    .line 228
    new-instance v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->getDotRatio()F

    move-result v7

    move-object v2, v8

    move-object v4, v1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;FLcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;F)V

    iput-object v8, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodForegroundDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    .line 229
    new-instance v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodBgParticleShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->getDotRatio()F

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;FLcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;F)V

    iput-object v8, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodBackgroundDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    .line 231
    new-instance v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/TriangleShape;

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    invoke-direct {v2, v3, v1, v4}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/TriangleShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V

    iput-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockFaces:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/TriangleShape;

    .line 232
    new-instance v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->getDotRatio()F

    move-result v7

    move-object v2, v8

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;FLcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;F)V

    iput-object v8, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    .line 233
    new-instance v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    const/4 v8, 0x1

    invoke-direct {v2, v3, v1, v4, v8}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;I)V

    iput-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockLine:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

    .line 234
    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockBgResId:I

    const-string v9, "Orig"

    if-ltz v2, :cond_0

    .line 235
    new-instance v3, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    iget-object v4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglUtils;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v3, p1, p1, v9, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockBg:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    .line 236
    new-instance v2, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->single_texture_vert_shader:I

    sget v5, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->single_texture_frag_shader:I

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;-><init>(Landroid/content/Context;Landroid/graphics/Rect;II)V

    iput-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockBgContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;

    .line 238
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockBgContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockBg:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    invoke-virtual {v2, v3}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->addTexture(Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;)V

    .line 241
    :cond_0
    new-instance v10, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->getDotRatio()F

    move-result v7

    move-object v2, v10

    move-object v4, v1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;FLcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;F)V

    iput-object v10, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    .line 242
    new-instance p2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    invoke-direct {p2, v2, v1, v3, v8}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;I)V

    iput-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeLine:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

    .line 243
    iget p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeBgResId:I

    if-ltz p2, :cond_1

    .line 244
    new-instance v2, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglUtils;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v2, p1, p1, v9, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeBg:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    .line 245
    new-instance p1, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;

    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->single_texture_vert_shader:I

    sget v3, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->single_texture_frag_shader:I

    invoke-direct {p1, p2, v1, v2, v3}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;-><init>(Landroid/content/Context;Landroid/graphics/Rect;II)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeBgContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;

    .line 247
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeBgContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeBg:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    invoke-virtual {p1, p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->addTexture(Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;)V

    :cond_1
    const-string p0, "init elements end"

    .line 250
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-string v0, "InfinityWallpaper"

    const-string v1, "Clear all data"

    .line 427
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodLine:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->clear()V

    .line 429
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodForegroundDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->clear()V

    .line 430
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockBgContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->clear()V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockFaces:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/TriangleShape;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->clear()V

    .line 432
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->clear()V

    .line 433
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockLine:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->clear()V

    .line 434
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeBgContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->clear()V

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->clear()V

    .line 436
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeLine:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->clear()V

    return-void
.end method

.method public createShapeData()V
    .locals 5

    .line 254
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeDataResId:I

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mGroupData:[[I

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->getShapeSizeRatio()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeDataGenerator;->parseData(Landroid/content/Context;I[[IF)Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    .line 255
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mWorld:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->getCoordinates()[F

    move-result-object v3

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/16 v4, 0x64

    invoke-static {v0, v4, v1, v2, v3}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeDataGenerator;->generateVertexData(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;IFFF)Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodBgParticleShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    return-void
.end method

.method public drawElements()V
    .locals 5

    .line 352
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mWorld:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->setIdentity()V

    .line 353
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockBgContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;

    iget v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockBg:F

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->drawBackgroundObject(Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;F)V

    .line 354
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeBgContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;

    iget v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaHomeBg:F

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->drawBackgroundObject(Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;F)V

    .line 356
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mIsLoadingData:Z

    if-eqz v0, :cond_0

    const-string v0, "InfinityWallpaper"

    const-string v1, "Waiting drawElements cause data is loading"

    .line 357
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mDrawLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mWorld:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;

    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->setIdentity()V

    .line 362
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mWorld:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;

    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->scale:F

    iget v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->scale:F

    iget v4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->scale:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->scale(FFF)V

    .line 363
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mWorld:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;

    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateX:F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->rotate(FFFF)V

    .line 364
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mWorld:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;

    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateY:F

    invoke-virtual {v1, v2, v4, v3, v4}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->rotate(FFFF)V

    .line 366
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodBackgroundDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodFgObjects:F

    iget v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessDot:F

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->drawShape(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;FF)V

    .line 367
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodForegroundDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodFgObjects:F

    iget v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessDot:F

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->drawShape(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;FF)V

    .line 368
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodLine:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodBgObjects:F

    iget v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessLine:F

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->drawShape(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;FF)V

    .line 370
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockFaces:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/TriangleShape;

    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockFaces:F

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->drawShape(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;F)V

    .line 371
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockDot:F

    iget v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessDot:F

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->drawShape(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;FF)V

    .line 372
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockLine:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockLine:F

    iget v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessLine:F

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->drawShape(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;FF)V

    .line 374
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaHomeDot:F

    iget v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessDot:F

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->drawShape(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;FF)V

    .line 375
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeLine:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaHomeLine:F

    iget v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessLine:F

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->drawShape(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;FF)V

    .line 376
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDotRatio()F
    .locals 1

    .line 301
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->getShapeSizeRatio()F

    move-result p0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public resetGroup()V
    .locals 0

    return-void
.end method

.method public resetProperties()V
    .locals 3

    const-string v0, "InfinityWallpaper"

    const-string v1, "resetProperties"

    .line 399
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sget-object v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->SCALE:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->scale:F

    .line 401
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->resetRotation()V

    const/4 v0, 0x0

    .line 402
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->animateStep:F

    .line 403
    sget-object v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    aget v2, v2, v1

    iput v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessDot:F

    .line 404
    sget-object v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    aget v1, v2, v1

    iput v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessLine:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 405
    iput v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodFgObjects:F

    .line 406
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodBgObjects:F

    .line 407
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockBg:F

    .line 408
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockFaces:F

    .line 409
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockDot:F

    .line 410
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockLine:F

    .line 411
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaHomeBg:F

    .line 412
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaHomeDot:F

    .line 413
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaHomeLine:F

    .line 414
    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->setGroupAlpha(F)V

    return-void
.end method

.method public resetRotation()V
    .locals 5

    .line 290
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 291
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v1, v2

    .line 292
    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v3, :cond_0

    mul-float/2addr v1, v4

    :cond_0
    const/4 v3, 0x0

    add-float/2addr v1, v3

    .line 293
    iput v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateX:F

    .line 295
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v1, v2

    .line 296
    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    mul-float/2addr v1, v4

    :cond_1
    const/high16 v0, 0x420c0000    # 35.0f

    add-float/2addr v1, v0

    .line 297
    iput v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateY:F

    return-void
.end method

.method public resetShapeData()V
    .locals 3

    const-string v0, "InfinityWallpaper"

    const-string v1, "Reset data started."

    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mDrawLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 261
    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mIsLoadingData:Z

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->createShapeData()V

    .line 264
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodLine:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    invoke-virtual {v1, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->updateShapeData(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V

    .line 265
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodForegroundDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    invoke-virtual {v1, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->updateShapeData(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V

    .line 266
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodBackgroundDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodBgParticleShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    invoke-virtual {v1, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->updateShapeData(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V

    .line 268
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockFaces:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/TriangleShape;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    invoke-virtual {v1, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/TriangleShape;->updateShapeData(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V

    .line 269
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    invoke-virtual {v1, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->updateShapeData(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V

    .line 270
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockLine:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    invoke-virtual {v1, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->updateShapeData(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V

    .line 272
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    invoke-virtual {v1, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->updateShapeData(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V

    .line 273
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeLine:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    invoke-virtual {v1, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->updateShapeData(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V

    .line 274
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodLine:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    invoke-virtual {v1, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->updateShapeData(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->resetGroup()V

    const/4 v1, 0x0

    .line 277
    iput-boolean v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mIsLoadingData:Z

    .line 278
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "InfinityWallpaper"

    const-string v0, "Reset data finished."

    .line 279
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 278
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setAlphaAodBgObjects(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 128
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodBgObjects:F

    return-void
.end method

.method public setAlphaAodFgObjects(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 123
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaAodFgObjects:F

    return-void
.end method

.method public setAlphaGroup1(F)V
    .locals 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodBgParticleShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->groupAlpha:[F

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v1, v1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->groupAlpha:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    aput p1, v0, v2

    .line 169
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup1:F

    return-void
.end method

.method public setAlphaGroup2(F)V
    .locals 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodBgParticleShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->groupAlpha:[F

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v1, v1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->groupAlpha:[F

    const/4 v2, 0x1

    aput p1, v1, v2

    aput p1, v0, v2

    .line 175
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup2:F

    return-void
.end method

.method public setAlphaGroup3(F)V
    .locals 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodBgParticleShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->groupAlpha:[F

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v1, v1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->groupAlpha:[F

    const/4 v2, 0x2

    aput p1, v1, v2

    aput p1, v0, v2

    .line 181
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup3:F

    return-void
.end method

.method public setAlphaGroup4(F)V
    .locals 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodBgParticleShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->groupAlpha:[F

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v1, v1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->groupAlpha:[F

    const/4 v2, 0x3

    aput p1, v1, v2

    aput p1, v0, v2

    .line 187
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup4:F

    return-void
.end method

.method public setAlphaGroup5(F)V
    .locals 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodBgParticleShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->groupAlpha:[F

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v1, v1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->groupAlpha:[F

    const/4 v2, 0x4

    aput p1, v1, v2

    aput p1, v0, v2

    .line 193
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup5:F

    return-void
.end method

.method public setAlphaHomeBg(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 153
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaHomeBg:F

    return-void
.end method

.method public setAlphaHomeDot(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 158
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaHomeDot:F

    return-void
.end method

.method public setAlphaHomeLine(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 163
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaHomeLine:F

    return-void
.end method

.method public setAlphaLockBg(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 133
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockBg:F

    return-void
.end method

.method public setAlphaLockDot(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 143
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockDot:F

    return-void
.end method

.method public setAlphaLockFaces(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 138
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockFaces:F

    return-void
.end method

.method public setAlphaLockLine(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 148
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaLockLine:F

    return-void
.end method

.method public setAnimateStep(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 108
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->animateStep:F

    return-void
.end method

.method public setGroupAlpha(F)V
    .locals 0

    .line 418
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup1:F

    .line 419
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup2:F

    .line 420
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup3:F

    .line 421
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup4:F

    .line 422
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->alphaGroup5:F

    .line 423
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->setGroupAlpha(F)V

    return-void
.end method

.method public setOverBrightnessDot(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 113
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessDot:F

    return-void
.end method

.method public setOverBrightnessLine(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 118
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->overBrightnessLine:F

    return-void
.end method

.method public setRotateX(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 98
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateX:F

    return-void
.end method

.method public setRotateY(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 103
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateY:F

    return-void
.end method

.method public setScale(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 93
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->scale:F

    return-void
.end method

.method public updateScreenSize(II)V
    .locals 5

    .line 312
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mWidth:I

    .line 313
    iput p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHeight:I

    int-to-float v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    int-to-float v2, p2

    mul-float/2addr v2, v1

    .line 318
    new-instance v1, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldPerspective;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldPerspective;-><init>(II)V

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mWorld:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;

    .line 320
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->resetShapeData()V

    .line 322
    new-instance v1, Landroid/graphics/Rect;

    neg-float v3, v0

    float-to-int v3, v3

    float-to-int v4, v2

    float-to-int v0, v0

    neg-float v2, v2

    float-to-int v2, v2

    invoke-direct {v1, v3, v4, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 323
    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 324
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mWorld:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;

    invoke-virtual {p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->getCoordinates()[F

    move-result-object p1

    const/4 p2, 0x4

    aget p1, p1, p2

    .line 325
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->getDotRatio()F

    move-result p2

    .line 327
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodLine:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

    invoke-virtual {v2, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->setShapeSize(Landroid/graphics/Rect;)V

    .line 328
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodForegroundDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    invoke-virtual {v2, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->setShapeSize(Landroid/graphics/Rect;)V

    .line 329
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodForegroundDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    invoke-virtual {v2, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;->setNear(F)V

    .line 330
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodForegroundDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    invoke-virtual {v2, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;->setDotSizeRatio(F)V

    .line 331
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodBackgroundDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    invoke-virtual {v2, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->setShapeSize(Landroid/graphics/Rect;)V

    .line 332
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodBackgroundDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    invoke-virtual {v2, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;->setNear(F)V

    .line 333
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mAodBackgroundDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    invoke-virtual {v2, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;->setDotSizeRatio(F)V

    .line 335
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockFaces:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/TriangleShape;

    invoke-virtual {v2, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->setShapeSize(Landroid/graphics/Rect;)V

    .line 336
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockLine:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

    invoke-virtual {v2, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->setShapeSize(Landroid/graphics/Rect;)V

    .line 337
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    invoke-virtual {v2, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->setShapeSize(Landroid/graphics/Rect;)V

    .line 338
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    invoke-virtual {v2, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;->setNear(F)V

    .line 339
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    invoke-virtual {v2, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;->setDotSizeRatio(F)V

    .line 340
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockBgContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->updateBoundary(Landroid/graphics/Rect;)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;

    .line 341
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mLockBg:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->updateBoundary(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeLine:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;

    invoke-virtual {v2, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->setShapeSize(Landroid/graphics/Rect;)V

    .line 344
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    invoke-virtual {v2, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->setShapeSize(Landroid/graphics/Rect;)V

    .line 345
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    invoke-virtual {v2, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;->setNear(F)V

    .line 346
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeDot:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;

    invoke-virtual {p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;->setDotSizeRatio(F)V

    .line 347
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeBgContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->updateBoundary(Landroid/graphics/Rect;)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;

    .line 348
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->mHomeBg:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->updateBoundary(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_3
    return-void
.end method

.method public wakeAod()V
    .locals 0

    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->resetRotation()V

    return-void
.end method
