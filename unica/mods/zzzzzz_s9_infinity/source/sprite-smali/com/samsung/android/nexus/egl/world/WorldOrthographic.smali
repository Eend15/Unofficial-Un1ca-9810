.class public Lcom/samsung/android/nexus/egl/world/WorldOrthographic;
.super Lcom/samsung/android/nexus/egl/world/BaseWorld;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/world/BaseWorld;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/nexus/egl/world/WorldOrthographic;->init(II)V

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

    invoke-virtual/range {v2 .. v8}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    invoke-virtual {v10}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mProjectionMatrix:[F

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

    iput-object v2, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mCoordinates:[F

    return-void
.end method
