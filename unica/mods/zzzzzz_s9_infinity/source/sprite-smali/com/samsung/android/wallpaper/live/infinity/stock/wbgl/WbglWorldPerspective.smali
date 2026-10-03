.class public Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldPerspective;
.super Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;
.source "WbglWorldPerspective.java"


# instance fields
.field private mMVPMatrix:[F

.field private mProjectionMatrix:[F

.field private mViewMatrix:[F


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 7
    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldPerspective;->mViewMatrix:[F

    new-array v1, v0, [F

    .line 8
    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldPerspective;->mProjectionMatrix:[F

    new-array v0, v0, [F

    .line 9
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldPerspective;->mMVPMatrix:[F

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldPerspective;->init(II)V

    return-void
.end method

.method private init(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-le v2, v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v5, v3, 0x2

    int-to-float v10, v5

    .line 32
    iget-object v6, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldPerspective;->mViewMatrix:[F

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, -0x40800000    # -1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    invoke-static/range {v6 .. v16}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    int-to-float v1, v1

    const/high16 v5, -0x41000000    # -0.5f

    mul-float v6, v1, v5

    mul-float/2addr v1, v4

    int-to-float v2, v2

    mul-float/2addr v5, v2

    mul-float/2addr v2, v4

    int-to-float v15, v3

    mul-int/lit8 v7, v3, 0x3

    int-to-float v14, v7

    .line 41
    iget-object v7, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldPerspective;->mProjectionMatrix:[F

    const/4 v8, 0x0

    mul-float v9, v6, v4

    mul-float v10, v1, v4

    mul-float v11, v5, v4

    mul-float v12, v2, v4

    move v13, v15

    invoke-static/range {v7 .. v14}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    const/4 v4, 0x6

    new-array v4, v4, [F

    const/4 v7, 0x0

    aput v6, v4, v7

    const/4 v6, 0x1

    aput v1, v4, v6

    const/4 v1, 0x2

    aput v5, v4, v1

    const/4 v1, 0x3

    aput v2, v4, v1

    const/4 v1, 0x4

    neg-int v2, v3

    int-to-float v2, v2

    aput v2, v4, v1

    const/4 v1, 0x5

    aput v15, v4, v1

    .line 43
    iput-object v4, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->mCoordinates:[F

    return-void
.end method


# virtual methods
.method public setupMatrices(I)V
    .locals 14

    .line 48
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldPerspective;->mMVPMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 50
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldPerspective;->mMVPMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldPerspective;->mViewMatrix:[F

    iget-object v6, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->mModelMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 51
    iget-object v12, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldPerspective;->mMVPMatrix:[F

    iget-object v10, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldPerspective;->mProjectionMatrix:[F

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v8, v12

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    .line 54
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldPerspective;->mMVPMatrix:[F

    invoke-static {p1, v0, v1, p0, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :cond_0
    return-void
.end method
