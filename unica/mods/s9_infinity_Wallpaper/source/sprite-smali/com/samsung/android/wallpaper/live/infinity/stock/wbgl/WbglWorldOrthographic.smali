.class public Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldOrthographic;
.super Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;
.source "WbglWorldOrthographic.java"


# instance fields
.field private mOrghoMatrix:[F

.field private mWorldMatrix:[F


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 9
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldOrthographic;->mWorldMatrix:[F

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldOrthographic;->init(II)V

    return-void
.end method

.method private init(II)V
    .locals 12

    if-le p2, p1, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    int-to-float p1, p1

    const/high16 v1, -0x41000000    # -0.5f

    mul-float v9, p1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p1, v2

    int-to-float p2, p2

    mul-float/2addr v1, p2

    mul-float/2addr p2, v2

    .line 24
    new-instance v10, Landroid/renderscript/Matrix4f;

    invoke-direct {v10}, Landroid/renderscript/Matrix4f;-><init>()V

    int-to-float v11, v0

    neg-int v0, v0

    int-to-float v0, v0

    move-object v2, v10

    move v3, v9

    move v4, p1

    move v5, v1

    move v6, p2

    move v7, v11

    move v8, v0

    .line 25
    invoke-virtual/range {v2 .. v8}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    .line 26
    invoke-virtual {v10}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldOrthographic;->mOrghoMatrix:[F

    const/4 v2, 0x6

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v9, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    const/4 p1, 0x2

    aput v1, v2, p1

    const/4 p1, 0x3

    aput p2, v2, p1

    const/4 p1, 0x4

    aput v11, v2, p1

    const/4 p1, 0x5

    aput v0, v2, p1

    .line 27
    iput-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->mCoordinates:[F

    return-void
.end method


# virtual methods
.method public getCoordinates()[F
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->mCoordinates:[F

    return-object p0
.end method

.method public setupMatrices(I)V
    .locals 8

    .line 32
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldOrthographic;->mWorldMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 35
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldOrthographic;->mWorldMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->mModelMatrix:[F

    iget-object v6, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldOrthographic;->mOrghoMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    .line 39
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorldOrthographic;->mWorldMatrix:[F

    invoke-static {p1, v0, v1, p0, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :cond_0
    return-void
.end method
