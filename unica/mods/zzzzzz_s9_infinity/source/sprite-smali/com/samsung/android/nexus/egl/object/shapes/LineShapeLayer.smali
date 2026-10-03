.class public Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;
.super Lcom/samsung/android/nexus/egl/object/shapes/BaseShapeLayer;
.source "SourceFile"


# static fields
.field private static final DIVISION_AMOUNT_PER_1_LENGTH:F = 5.0f

.field private static final TAG:Ljava/lang/String; = "LineShapeLayer"

.field public static final TOTAL_VERTICES:I = 0x7


# instance fields
.field public contourVertexCnt:[I

.field public indexData:[S

.field private mColor:I

.field private mDivisionAmount:F

.field private mLineWidth:F

.field private mPath:Landroid/graphics/Path;

.field public vertexData:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/shapes/BaseShapeLayer;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->vertexData:[F

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->contourVertexCnt:[I

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->indexData:[S

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mColor:I

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mDivisionAmount:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mLineWidth:F

    new-instance v0, Lcom/samsung/android/nexus/egl/core/Shader;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/nexus/R$raw;->base_shape_vert_shader:I

    sget v3, Lcom/samsung/android/nexus/R$raw;->base_shape_frag_shader:I

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/nexus/egl/core/Shader;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->setShader(Lcom/samsung/android/nexus/egl/core/Shader;)V

    return-void
.end method

.method private generateShapeDataFromPath(Landroid/graphics/Path;)V
    .locals 22

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, v0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, v0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    iget v4, v0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mColor:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    new-instance v5, Landroid/graphics/PathMeasure;

    iget-object v6, v0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mPath:Landroid/graphics/Path;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    move v6, v7

    move v8, v6

    :cond_1
    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    iget v10, v0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mDivisionAmount:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    add-int/2addr v8, v10

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v9

    if-nez v9, :cond_1

    sget-object v5, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "vertices = "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v5, v8, [I

    iput-object v5, v0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->contourVertexCnt:[I

    new-array v5, v6, [S

    iput-object v5, v0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->indexData:[S

    mul-int/lit8 v6, v6, 0x7

    new-array v5, v6, [F

    iput-object v5, v0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->vertexData:[F

    new-instance v9, Landroid/graphics/PathMeasure;

    iget-object v5, v0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mPath:Landroid/graphics/Path;

    invoke-direct {v9, v5, v7}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    move v5, v7

    move v6, v5

    :goto_0
    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    iget v11, v0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mDivisionAmount:F

    mul-float/2addr v11, v8

    float-to-int v12, v11

    add-int/lit8 v13, v12, 0x1

    iget-object v14, v0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->contourVertexCnt:[I

    aput v13, v14, v5

    div-float v14, v8, v11

    sget-object v15, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v7, "[Contour] length = "

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", divisions = "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", vertices = "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", step = "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    new-array v10, v7, [F

    new-array v7, v7, [F

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_2

    int-to-float v15, v11

    mul-float/2addr v15, v14

    invoke-virtual {v9, v15, v10, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v15, v0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->indexData:[S

    int-to-short v13, v6

    aput-short v13, v15, v6

    mul-int/lit8 v13, v6, 0x7

    iget-object v15, v0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->vertexData:[F

    add-int/lit8 v18, v13, 0x1

    const/16 v16, 0x0

    aget v19, v10, v16

    aput v19, v15, v13

    add-int/lit8 v19, v13, 0x2

    move/from16 v21, v12

    const/16 v20, 0x1

    aget v12, v10, v20

    neg-float v12, v12

    aput v12, v15, v18

    add-int/lit8 v12, v13, 0x3

    const/16 v17, 0x0

    aput v17, v15, v19

    add-int/lit8 v17, v13, 0x4

    move/from16 v18, v14

    int-to-float v14, v1

    aput v14, v15, v12

    add-int/lit8 v12, v13, 0x5

    int-to-float v14, v2

    aput v14, v15, v17

    add-int/lit8 v13, v13, 0x6

    int-to-float v14, v3

    aput v14, v15, v12

    int-to-float v12, v4

    aput v12, v15, v13

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v11, v11, 0x1

    move/from16 v14, v18

    move/from16 v12, v21

    goto :goto_1

    :cond_2
    invoke-virtual {v9, v8, v10, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v7, v0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->indexData:[S

    int-to-short v8, v6

    aput-short v8, v7, v6

    mul-int/lit8 v7, v6, 0x7

    iget-object v8, v0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->vertexData:[F

    add-int/lit8 v11, v7, 0x1

    const/4 v12, 0x0

    aget v13, v10, v12

    aput v13, v8, v7

    add-int/lit8 v13, v7, 0x2

    const/4 v14, 0x1

    aget v10, v10, v14

    neg-float v10, v10

    aput v10, v8, v11

    add-int/lit8 v10, v7, 0x3

    const/4 v11, 0x0

    aput v11, v8, v13

    add-int/lit8 v11, v7, 0x4

    int-to-float v13, v1

    aput v13, v8, v10

    add-int/lit8 v10, v7, 0x5

    int-to-float v13, v2

    aput v13, v8, v11

    add-int/lit8 v7, v7, 0x6

    int-to-float v11, v3

    aput v11, v8, v10

    int-to-float v10, v4

    aput v10, v8, v7

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v7

    if-nez v7, :cond_3

    return-void

    :cond_3
    move v7, v12

    move v10, v14

    goto/16 :goto_0
.end method


# virtual methods
.method public drawElementInner()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->contourVertexCnt:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xb20

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnable(I)V

    const/16 v0, 0xc52

    const/16 v1, 0x1102

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glHint(II)V

    iget v0, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mLineWidth:F

    invoke-static {v0}, Landroid/opengl/GLES10;->glLineWidth(F)V

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->contourVertexCnt:[I

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p0, v1

    const/4 v4, 0x3

    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public generateShapeData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->indexData:[S

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->generateIndexBuffer([S)V

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->vertexData:[F

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->generateVertexBuffer([F)V

    return-void
.end method

.method public getColor()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mColor:I

    return p0
.end method

.method public getDivisionAmountBetweenDot()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mDivisionAmount:F

    float-to-int p0, p0

    return p0
.end method

.method public getLineWidth()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mLineWidth:F

    return p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mColor:I

    return-void
.end method

.method public setDivisionAmountBetweenDot(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mDivisionAmount:F

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mLineWidth:F

    return-void
.end method

.method public setPath(Landroid/graphics/Path;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->mPath:Landroid/graphics/Path;

    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->generateShapeDataFromPath(Landroid/graphics/Path;)V

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->generateShapeData()V

    return-void
.end method

.method public setVertexData([F)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->vertexData:[F

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->contourVertexCnt:[I

    .line 3
    array-length p1, p1

    div-int/lit8 p1, p1, 0x7

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->generateShapeData()V

    return-void
.end method

.method public setVertexData([F[I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    array-length v0, p1

    div-int/lit8 v0, v0, 0x7

    .line 6
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, p2, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-gt v3, v0, :cond_2

    .line 7
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->vertexData:[F

    .line 8
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->contourVertexCnt:[I

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/shapes/LineShapeLayer;->generateShapeData()V

    return-void

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Total length from the contourVertexCnt is greater than total vertex data count."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method
