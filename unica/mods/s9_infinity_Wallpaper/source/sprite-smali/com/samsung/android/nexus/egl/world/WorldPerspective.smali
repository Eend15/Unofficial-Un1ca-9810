.class public Lcom/samsung/android/nexus/egl/world/WorldPerspective;
.super Lcom/samsung/android/nexus/egl/world/BaseWorld;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/world/BaseWorld;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/nexus/egl/world/WorldPerspective;->init(II)V

    return-void
.end method

.method private init(II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-le v2, v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    mul-int/lit8 v7, v5, 0x2

    int-to-float v12, v7

    iget-object v8, v0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mViewMatrix:[F

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v8 .. v18}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    int-to-float v1, v1

    const/high16 v7, -0x41000000    # -0.5f

    mul-float v8, v1, v7

    mul-float/2addr v1, v6

    int-to-float v2, v2

    mul-float/2addr v7, v2

    mul-float/2addr v2, v6

    int-to-float v15, v5

    mul-int/lit8 v9, v5, 0x3

    int-to-float v14, v9

    iget-object v9, v0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mProjectionMatrix:[F

    mul-float v11, v8, v6

    mul-float v12, v1, v6

    mul-float v13, v7, v6

    mul-float/2addr v6, v2

    const/4 v10, 0x0

    move/from16 v16, v14

    move v14, v6

    move v6, v15

    invoke-static/range {v9 .. v16}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v9, 0x6

    new-array v9, v9, [F

    aput v8, v9, v10

    const/4 v8, 0x1

    aput v1, v9, v8

    aput v7, v9, v4

    aput v2, v9, v3

    const/4 v1, 0x4

    aput v5, v9, v1

    const/4 v1, 0x5

    aput v6, v9, v1

    iput-object v9, v0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mCoordinates:[F

    return-void
.end method
