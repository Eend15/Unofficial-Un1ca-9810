.class public Lcom/samsung/android/nexus/video/VideoGL;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;
    }
.end annotation


# static fields
.field public static final DEFAULT_HSV_HUE:F = 0.0f

.field public static final DEFAULT_HSV_SATURATION:F = 0.5f

.field public static final DEFAULT_HSV_VALUE:F = 0.5f

.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static final POSITION_OFFSET:I = 0x0

.field private static final STRIDE_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "VideoGL"

.field private static final TEXTURE_COORD_OFFSET:I = 0x3

.field private static final TEXTURE_UV_OFFSET:I = 0x2

.field private static final TOTAL_COMPONENT_COUNT:I = 0x5


# instance fields
.field protected mAngle:F

.field protected mBoundRect:Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;

.field private mContrast:F

.field private mFrameController:Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;

.field private mGlobalAlpha:F

.field private mHdrSaturationConverted:F

.field private mHsvFilterColor:[F

.field private mHsvFilterColorConverted:[F

.field private mIsHdrModeEnabled:Z

.field private mIsTransparencyEnabled:Z

.field private mObjectCenter:Landroid/graphics/PointF;

.field private mObjectHalfHeight:F

.field private mObjectHalfWidth:F

.field private mObjectLeftBottom:[F

.field private mObjectLeftTop:[F

.field protected mObjectRect:Landroid/graphics/RectF;

.field private mObjectRightBottom:[F

.field private mObjectRightTop:[F

.field protected mOffsetX:F

.field protected mOffsetY:F

.field protected mOffsetZ:F

.field private mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

.field private mRgbFilterColor:[F

.field private mRotatedLeftBottom:[F

.field private mRotatedLeftTop:[F

.field private mRotatedRightBottom:[F

.field private mRotatedRightTop:[F

.field protected mRotationMatrix:[F

.field protected mRotationX:F

.field protected mRotationY:F

.field protected mRotationZ:F

.field protected mSTMatrix:[F

.field private mShader:Lcom/samsung/android/nexus/egl/core/Shader;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureID:I

.field private final mTriangleVerticesData:[F

.field private mVertices:Ljava/nio/FloatBuffer;

.field private mWorld:Lcom/samsung/android/nexus/egl/world/BaseWorld;

.field private mWorldHeight:F

.field private mWorldWidth:F

.field protected mZ:F

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muContrastHandle:I

.field private muGlobalAlphaHandle:I

.field private muHsvFilterColorHandle:I

.field private muNightFilterHandle:I

.field private muRgbFilterColorHandle:I

.field private muSTMatrixHandle:I

.field private muTransparencyHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/nexus/video/VideoPlayer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/nexus/video/VideoGL;-><init>(Landroid/content/Context;Lcom/samsung/android/nexus/video/VideoPlayer;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/nexus/video/VideoPlayer;Landroid/graphics/Rect;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/16 v2, 0x14

    .line 3
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mTriangleVerticesData:[F

    .line 4
    new-instance v2, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;

    invoke-direct {v2, p0}, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;-><init>(Lcom/samsung/android/nexus/video/VideoGL;)V

    iput-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mFrameController:Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;

    .line 5
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mGlobalAlpha:F

    const/4 v2, 0x3

    .line 6
    new-array v3, v2, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColor:[F

    .line 7
    new-array v2, v2, [F

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColorConverted:[F

    .line 8
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorldWidth:F

    .line 9
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorldHeight:F

    const/4 v2, 0x0

    .line 10
    iput-boolean v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mIsTransparencyEnabled:Z

    .line 11
    iput-boolean v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mIsHdrModeEnabled:Z

    .line 12
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mContrast:F

    .line 13
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHdrSaturationConverted:F

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mBoundRect:Landroid/graphics/RectF;

    .line 16
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mZ:F

    .line 17
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetX:F

    .line 18
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetY:F

    .line 19
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetZ:F

    .line 20
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mAngle:F

    .line 21
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationX:F

    .line 22
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationY:F

    .line 23
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationZ:F

    const/16 v0, 0x10

    .line 24
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationMatrix:[F

    .line 25
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSTMatrix:[F

    .line 26
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectHalfWidth:F

    .line 27
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectHalfHeight:F

    .line 28
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectCenter:Landroid/graphics/PointF;

    const/4 v0, 0x4

    .line 29
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectLeftTop:[F

    .line 30
    new-array v1, v0, [F

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRightTop:[F

    .line 31
    new-array v1, v0, [F

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectLeftBottom:[F

    .line 32
    new-array v1, v0, [F

    fill-array-data v1, :array_6

    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRightBottom:[F

    .line 33
    new-array v1, v0, [F

    fill-array-data v1, :array_7

    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftTop:[F

    .line 34
    new-array v1, v0, [F

    fill-array-data v1, :array_8

    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightTop:[F

    .line 35
    new-array v1, v0, [F

    fill-array-data v1, :array_9

    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftBottom:[F

    .line 36
    new-array v0, v0, [F

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightBottom:[F

    .line 37
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->initElements()V

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->loadHandles()V

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->generateTexture()V

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->createVideoSurface()V

    .line 43
    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/nexus/video/VideoPlayer;->getVideoOrientation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setVideoOrientation(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 44
    invoke-virtual {p0, p3}, Lcom/samsung/android/nexus/video/VideoGL;->setObjectRect(Landroid/graphics/Rect;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static synthetic a(Lcom/samsung/android/nexus/video/VideoGL;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->lambda$createVideoSurface$0(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method private applySize(FFI)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    const-string p1, "Object size is null. So cannot apply the size."

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    if-nez p3, :cond_1

    sub-float/2addr p1, v0

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    sub-float/2addr p2, v1

    div-float/2addr p2, p3

    iget-object p3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p3, Landroid/graphics/RectF;->left:F

    iget v0, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, p3, Landroid/graphics/RectF;->top:F

    iget v0, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p3, Landroid/graphics/RectF;->right:F

    iget p1, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p2

    iput p1, p3, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p3, Landroid/graphics/RectF;->right:F

    iget p1, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    iput p1, p3, Landroid/graphics/RectF;->bottom:F

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->calculateObjectFactors()V

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->updateVertices()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/nexus/video/VideoGL;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private calculateBoundsOffset()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mBoundRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorldWidth:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorldHeight:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/nexus/video/VideoGL;->setOffset(FFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private calculateObjectFactors()V
    .locals 12

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectHalfWidth:F

    iget-object v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectHalfHeight:F

    iget v7, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectHalfWidth:F

    neg-float v8, v7

    const/4 v9, 0x0

    new-array v10, v4, [F

    aput v8, v10, v3

    aput v5, v10, v2

    aput v9, v10, v1

    aput v9, v10, v0

    iput-object v10, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectLeftTop:[F

    new-array v8, v4, [F

    aput v7, v8, v3

    aput v5, v8, v2

    aput v9, v8, v1

    aput v9, v8, v0

    iput-object v8, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRightTop:[F

    neg-float v8, v7

    neg-float v10, v5

    new-array v11, v4, [F

    aput v8, v11, v3

    aput v10, v11, v2

    aput v9, v11, v1

    aput v9, v11, v0

    iput-object v11, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectLeftBottom:[F

    neg-float v5, v5

    new-array v4, v4, [F

    aput v7, v4, v3

    aput v5, v4, v2

    aput v9, v4, v1

    aput v9, v4, v0

    iput-object v4, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRightBottom:[F

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectCenter:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p0

    div-float/2addr v1, v6

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private calculateRotatedFactors()V
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mAngle:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftTop:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightTop:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftBottom:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightBottom:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftTop:[F

    iget-object v4, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationMatrix:[F

    iget-object v6, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectLeftTop:[F

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v8, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightTop:[F

    iget-object v10, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationMatrix:[F

    iget-object v12, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRightTop:[F

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftBottom:[F

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectLeftBottom:[F

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v6, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightBottom:[F

    iget-object v8, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationMatrix:[F

    iget-object v10, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRightBottom:[F

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectLeftTop:[F

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftTop:[F

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRightTop:[F

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightTop:[F

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectLeftBottom:[F

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftBottom:[F

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRightBottom:[F

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightBottom:[F

    array-length v1, v0

    invoke-static {v0, v3, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method private createVideoSurface()V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    const-string v1, "Create video surface."

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mTextureID:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v2, Lcom/samsung/android/nexus/video/a;

    invoke-direct {v2, p0}, Lcom/samsung/android/nexus/video/a;-><init>(Lcom/samsung/android/nexus/video/VideoGL;)V

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSurface:Landroid/view/Surface;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Create surface media player = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private generateTexture()V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mTextureID:I

    const p0, 0x8d65

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const v1, 0x46180400    # 9729.0f

    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void
.end method

.method private initElements()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mTriangleVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mTriangleVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v0, Lcom/samsung/android/nexus/egl/core/Shader;

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/nexus/video/R$raw;->video_vert_shader:I

    sget v4, Lcom/samsung/android/nexus/video/R$raw;->video_frag_shader:I

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/android/nexus/egl/core/Shader;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSTMatrix:[F

    invoke-static {p0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private synthetic lambda$createVideoSurface$0(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mFrameController:Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->frameUpdated()V

    return-void
.end method

.method private loadHandles()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    const-string v1, "aPosition"

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->getHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->maPositionHandle:I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    const-string v1, "aTextureCoord"

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->getHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->maTextureHandle:I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    const-string v1, "uGlobalAlpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->getHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muGlobalAlphaHandle:I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    const-string v1, "uNightFilter"

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->getHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muNightFilterHandle:I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    const-string v1, "uRgbFilterColor"

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->getHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muRgbFilterColorHandle:I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    const-string v1, "uHsvFilterColor"

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->getHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muHsvFilterColorHandle:I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    const-string v1, "uContrast"

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->getHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muContrastHandle:I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    const-string v1, "uSTMatrix"

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->getHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muSTMatrixHandle:I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    const-string v1, "uTransparency"

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->getHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muTransparencyHandle:I

    return-void
.end method

.method private updateRotationMatrix()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationMatrix:[F

    iget v4, p0, Lcom/samsung/android/nexus/video/VideoGL;->mAngle:F

    iget v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationX:F

    iget v6, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationY:F

    iget v7, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationZ:F

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method private updateVertices()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    const-string v0, "Cannot update vertices because of the object rect is null."

    invoke-static {p0, v0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectCenter:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetX:F

    add-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetY:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mZ:F

    iget v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetZ:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftBottom:[F

    aget v5, v5, v4

    add-float/2addr v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftBottom:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    add-float/2addr v5, v0

    invoke-virtual {v3, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightBottom:[F

    aget v5, v5, v4

    add-float/2addr v5, v1

    const/4 v7, 0x5

    invoke-virtual {v3, v7, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightBottom:[F

    aget v5, v5, v6

    add-float/2addr v5, v0

    const/4 v7, 0x6

    invoke-virtual {v3, v7, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/4 v5, 0x7

    invoke-virtual {v3, v5, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftTop:[F

    aget v5, v5, v4

    add-float/2addr v5, v1

    const/16 v7, 0xa

    invoke-virtual {v3, v7, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedLeftTop:[F

    aget v5, v5, v6

    add-float/2addr v5, v0

    const/16 v7, 0xb

    invoke-virtual {v3, v7, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/16 v5, 0xc

    invoke-virtual {v3, v5, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightTop:[F

    aget v4, v5, v4

    add-float/2addr v4, v1

    const/16 v1, 0xf

    invoke-virtual {v3, v1, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotatedRightTop:[F

    aget v3, v3, v6

    add-float/2addr v3, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/16 v0, 0x11

    invoke-virtual {p0, v0, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    const-string v1, "Clear"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_1
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mTextureID:I

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/egl/core/Shader;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public getContrast()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mContrast:F

    return p0
.end method

.method public getGlobalAlpha()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mGlobalAlpha:F

    return p0
.end method

.method public getHdrModeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mIsHdrModeEnabled:Z

    return p0
.end method

.method public getHdrSaturation()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHdrSaturationConverted:F

    return p0
.end method

.method public getHsvFilterColor()[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColor:[F

    return-object p0
.end method

.method public getHsvHue()F
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColor:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getHsvSaturation()F
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColor:[F

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public getHsvValue()F
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColor:[F

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public getOffsetX()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetX:F

    return p0
.end method

.method public getOffsetY()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetY:F

    return p0
.end method

.method public getTransparencyEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mIsTransparencyEnabled:Z

    return p0
.end method

.method public getWorld()Lcom/samsung/android/nexus/egl/world/BaseWorld;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorld:Lcom/samsung/android/nexus/egl/world/BaseWorld;

    return-object p0
.end method

.method public onDrawFrame()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mFrameController:Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;

    invoke-static {v0}, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->a(Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorld:Lcom/samsung/android/nexus/egl/world/BaseWorld;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/egl/core/Shader;->useProgram()V

    const-string v0, "use program"

    invoke-static {v0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorld:Lcom/samsung/android/nexus/egl/world/BaseWorld;

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/world/BaseWorld;->sendParams(Lcom/samsung/android/nexus/egl/core/Shader;)V

    const-string v0, "send params"

    invoke-static {v0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muGlobalAlphaHandle:I

    iget v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mGlobalAlpha:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRgbFilterColor:[F

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    iget v6, p0, Lcom/samsung/android/nexus/video/VideoGL;->muNightFilterHandle:I

    aget v0, v0, v2

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muRgbFilterColorHandle:I

    iget-object v6, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRgbFilterColor:[F

    aget v7, v6, v5

    aget v8, v6, v4

    aget v6, v6, v3

    invoke-static {v0, v7, v8, v6}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muNightFilterHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mIsHdrModeEnabled:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muHsvFilterColorHandle:I

    iget-object v6, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColorConverted:[F

    aget v7, v6, v5

    iget v8, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHdrSaturationConverted:F

    aget v3, v6, v3

    invoke-static {v0, v7, v8, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muContrastHandle:I

    iget v3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mContrast:F

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muHsvFilterColorHandle:I

    iget-object v6, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColorConverted:[F

    aget v7, v6, v5

    aget v8, v6, v4

    aget v3, v6, v3

    invoke-static {v0, v7, v8, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muContrastHandle:I

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mIsTransparencyEnabled:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muTransparencyHandle:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muTransparencyHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_2
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v0, 0x8d65

    iget v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mTextureID:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v0, "bind texture"

    invoke-static {v0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v6, p0, Lcom/samsung/android/nexus/video/VideoGL;->maPositionHandle:I

    iget-object v11, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/4 v7, 0x3

    const/16 v10, 0x14

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const-string v0, "send vertex data"

    invoke-static {v0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v6, p0, Lcom/samsung/android/nexus/video/VideoGL;->maTextureHandle:I

    iget-object v11, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/4 v7, 0x2

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const-string v0, "send texture coord data"

    invoke-static {v0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->muSTMatrixHandle:I

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mSTMatrix:[F

    invoke-static {v0, v4, v5, p0, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p0, 0x5

    const/4 v0, 0x4

    invoke-static {p0, v5, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_4
    :goto_3
    return-void
.end method

.method public setBoundRect(Landroid/graphics/RectF;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set bounds : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mBoundRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_1

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40000000    # 2.0f

    div-float v0, v1, p1

    div-float p1, v2, p1

    new-instance v3, Landroid/graphics/RectF;

    neg-float v0, v0

    add-float/2addr v1, v0

    sub-float v2, p1, v2

    invoke-direct {v3, v0, p1, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/nexus/video/VideoGL;->setObjectRect(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->calculateBoundsOffset()V

    return-void

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot set bound. Size is wrong. bounds : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setContrast(F)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set contrast = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mContrast:F

    return-void
.end method

.method public setCropRect(Landroid/graphics/RectF;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Apply crop rect = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/16 v1, 0x8

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/16 v1, 0x9

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/16 v1, 0xd

    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/16 v1, 0xe

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/16 v1, 0x12

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/16 v0, 0x13

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public setGlobalAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mGlobalAlpha:F

    return-void
.end method

.method public setHdrModeEnabled(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set HDR mode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mIsHdrModeEnabled:Z

    return-void
.end method

.method public setHdrModeEnabled(ZFF)V
    .locals 0

    .line 3
    invoke-virtual {p0, p2}, Lcom/samsung/android/nexus/video/VideoGL;->setHdrSaturation(F)V

    .line 4
    invoke-virtual {p0, p3}, Lcom/samsung/android/nexus/video/VideoGL;->setContrast(F)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHdrModeEnabled(Z)V

    return-void
.end method

.method public setHdrSaturation(F)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set hdr saturation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHdrSaturationConverted:F

    return-void
.end method

.method public setHsvFilterColor([F)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/video/VideoGL;->setHsvHue(F)V

    const/4 v0, 0x1

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/video/VideoGL;->setHsvSaturation(F)V

    const/4 v0, 0x2

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHsvValue(F)V

    :cond_0
    return-void
.end method

.method public setHsvHue(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColorConverted:[F

    aput p1, p0, v1

    return-void
.end method

.method public setHsvSaturation(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColor:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColorConverted:[F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    aput p1, p0, v1

    return-void
.end method

.method public setHsvValue(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColor:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mHsvFilterColorConverted:[F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    aput p1, p0, v1

    return-void
.end method

.method public setObjectRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/video/VideoGL;->setObjectRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setObjectRect(Landroid/graphics/RectF;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set object rect : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->calculateObjectFactors()V

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->calculateRotatedFactors()V

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->updateVertices()V

    return-void
.end method

.method public setOffset(FFF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetX:F

    iput p2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetY:F

    iput p3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetZ:F

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->updateVertices()V

    return-void
.end method

.method public setOffsetXY(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetX:F

    iput p2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mOffsetY:F

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->updateVertices()V

    return-void
.end method

.method public setRgbFilterColor([F)V
    .locals 3

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set color filter R = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", G = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", B = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", A = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRgbFilterColor:[F

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    const-string v0, "Set color filter to null"

    invoke-static {p1, v0}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRgbFilterColor:[F

    :goto_1
    return-void
.end method

.method public setRotation(FFFF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mAngle:F

    iput p2, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationX:F

    iput p3, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationY:F

    iput p4, p0, Lcom/samsung/android/nexus/video/VideoGL;->mRotationZ:F

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->updateRotationMatrix()V

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->calculateRotatedFactors()V

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->updateVertices()V

    return-void
.end method

.method public setScale(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, p1

    const/4 p1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/nexus/video/VideoGL;->applySize(FFI)V

    return-void
.end method

.method public setSize(FF)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/nexus/video/VideoGL;->applySize(FFI)V

    return-void
.end method

.method public setTransparencyEnabled(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set transparency mode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mIsTransparencyEnabled:Z

    return-void
.end method

.method public setVideoOrientation(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/samsung/android/nexus/video/VideoGL;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Apply video orientation : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "0"

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Apply video orientation adj : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "270"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "180"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "90"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1

    :pswitch_0
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1

    :pswitch_1
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1

    :pswitch_2
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    iget v5, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/16 v1, 0x8

    iget v3, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/16 v1, 0x9

    iget v3, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/16 v1, 0xd

    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/16 v1, 0xe

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/16 v0, 0x12

    iget v1, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mVertices:Ljava/nio/FloatBuffer;

    const/16 p1, 0x13

    iget v0, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x717 -> :sswitch_2
        0xbee9 -> :sswitch_1
        0xc28b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setWorldSize(II)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorldWidth:F

    int-to-float v0, p2

    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorldHeight:F

    new-instance v0, Lcom/samsung/android/nexus/egl/world/WorldOrthographic;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/nexus/egl/world/WorldOrthographic;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoGL;->mWorld:Lcom/samsung/android/nexus/egl/world/BaseWorld;

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL;->calculateBoundsOffset()V

    return-void
.end method
