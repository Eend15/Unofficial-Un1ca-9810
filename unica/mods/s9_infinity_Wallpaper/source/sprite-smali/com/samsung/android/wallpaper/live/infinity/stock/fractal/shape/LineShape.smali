.class public Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;
.super Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;
.source "LineShape.java"


# static fields
.field public static final LINE_TYPE_LONG:I = 0x1

.field public static final LINE_TYPE_SHORT:I = 0x0

.field private static final SHORT_LINE_LENGTH:F = 50.0f

.field private static final SHORT_LINE_MIN_DISTANCE:F = 100.0f


# instance fields
.field private mCurLineLength:F

.field private mIndexData:[S

.field private mLineMinDistance:F

.field private mTotalIndexCnt:I

.field private mVertexData:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mTotalIndexCnt:I

    const/high16 p1, 0x42480000    # 50.0f

    .line 22
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mCurLineLength:F

    const/high16 p1, 0x42c80000    # 100.0f

    .line 23
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mLineMinDistance:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;I)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mTotalIndexCnt:I

    const/high16 p1, 0x42480000    # 50.0f

    .line 22
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mCurLineLength:F

    const/high16 p1, 0x42c80000    # 100.0f

    .line 23
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mLineMinDistance:F

    return-void
.end method

.method private generateLongLineData()V
    .locals 9

    .line 124
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->faceVertexData:[F

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mVertexData:[F

    .line 126
    iget v0, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mIndexData:[S

    .line 127
    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    mul-int/lit8 v2, v1, 0x3

    mul-int/lit8 v3, v1, 0x6

    .line 133
    iget-object v4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mIndexData:[S

    iget-object v5, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v5, v5, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->faceIndexData:[S

    aget-short v6, v5, v2

    aput-short v6, v4, v3

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v2, 0x1

    .line 134
    aget-short v8, v5, v7

    aput-short v8, v4, v6

    add-int/lit8 v6, v3, 0x2

    .line 136
    aget-short v7, v5, v7

    aput-short v7, v4, v6

    add-int/lit8 v6, v3, 0x3

    add-int/lit8 v7, v2, 0x2

    .line 137
    aget-short v8, v5, v7

    aput-short v8, v4, v6

    add-int/lit8 v6, v3, 0x4

    .line 139
    aget-short v7, v5, v7

    aput-short v7, v4, v6

    add-int/lit8 v3, v3, 0x5

    .line 140
    aget-short v2, v5, v2

    aput-short v2, v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generateShortLineData()V
    .locals 19

    move-object/from16 v0, p0

    .line 53
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 57
    :goto_0
    iget-object v6, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget v6, v6, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalVertexCnt:I

    if-ge v4, v6, :cond_6

    .line 58
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v6

    rem-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_0

    move v8, v3

    move/from16 v16, v4

    goto/16 :goto_6

    :cond_0
    mul-int/lit8 v6, v4, 0xa

    const/4 v7, 0x3

    new-array v8, v7, [F

    .line 61
    iget-object v9, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v9, v9, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v10, v6, 0x0

    aget v10, v9, v10

    aput v10, v8, v3

    add-int/lit8 v10, v6, 0x1

    aget v10, v9, v10

    const/4 v11, 0x1

    aput v10, v8, v11

    add-int/lit8 v10, v6, 0x2

    aget v9, v9, v10

    const/4 v10, 0x2

    aput v9, v8, v10

    move v9, v5

    move v5, v3

    .line 67
    :goto_1
    iget-object v12, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget v13, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalVertexCnt:I

    if-ge v5, v13, :cond_5

    .line 68
    iget-object v12, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexIndexMap:[[S

    aget-object v12, v12, v4

    aget-short v12, v12, v5

    if-nez v12, :cond_1

    :goto_2
    move/from16 v16, v4

    move-object/from16 v17, v8

    goto :goto_3

    .line 69
    :cond_1
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v12

    rem-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    mul-int/lit8 v12, v5, 0xa

    new-array v13, v7, [F

    .line 72
    iget-object v14, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v14, v14, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v15, v12, 0x0

    aget v15, v14, v15

    aput v15, v13, v3

    add-int/lit8 v15, v12, 0x1

    aget v15, v14, v15

    aput v15, v13, v11

    add-int/lit8 v15, v12, 0x2

    aget v14, v14, v15

    aput v14, v13, v10

    new-array v14, v7, [F

    .line 78
    aget v15, v13, v3

    aget v16, v8, v3

    sub-float v15, v15, v16

    aput v15, v14, v3

    aget v15, v13, v11

    aget v16, v8, v11

    sub-float v15, v15, v16

    aput v15, v14, v11

    aget v13, v13, v10

    aget v15, v8, v10

    sub-float/2addr v13, v15

    aput v13, v14, v10

    .line 84
    aget v13, v14, v3

    move/from16 v16, v4

    float-to-double v3, v13

    move-object/from16 v17, v8

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    aget v13, v14, v11

    move/from16 v18, v12

    float-to-double v11, v13

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v3, v11

    aget v11, v14, v10

    float-to-double v11, v11

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 85
    iget v4, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mLineMinDistance:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_3

    :goto_3
    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v8, 0x0

    goto/16 :goto_5

    .line 87
    :cond_3
    iget v4, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mCurLineLength:F

    div-float/2addr v4, v3

    const/4 v3, 0x3

    new-array v7, v3, [F

    const/4 v8, 0x0

    .line 88
    aget v11, v17, v8

    aget v12, v14, v8

    mul-float/2addr v12, v4

    add-float/2addr v11, v12

    aput v11, v7, v8

    const/4 v8, 0x1

    aget v11, v17, v8

    aget v12, v14, v8

    mul-float/2addr v12, v4

    add-float/2addr v11, v12

    aput v11, v7, v8

    aget v8, v17, v10

    aget v11, v14, v10

    mul-float/2addr v11, v4

    add-float/2addr v8, v11

    aput v8, v7, v10

    const/4 v4, 0x0

    :goto_4
    const/16 v8, 0xa

    if-ge v4, v8, :cond_4

    .line 95
    iget-object v8, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v8, v8, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int v11, v6, v4

    aget v8, v8, v11

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    .line 97
    aget v4, v7, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    .line 98
    aget v11, v7, v4

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    aget v7, v7, v10

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v7, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v7, v7, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v12, v18, 0x3

    aget v7, v7, v12

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v7, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v7, v7, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v12, v18, 0x4

    aget v7, v7, v12

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v7, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v7, v7, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v12, v18, 0x5

    aget v7, v7, v12

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    .line 103
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v7, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v7, v7, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v12, v18, 0x7

    aget v7, v7, v12

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v7, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v7, v7, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v12, v18, 0x8

    aget v7, v7, v12

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v7, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v7, v7, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v12, v18, 0x9

    aget v7, v7, v12

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x2

    :goto_5
    add-int/lit8 v5, v5, 0x1

    move v7, v3

    move v11, v4

    move v3, v8

    move/from16 v4, v16

    move-object/from16 v8, v17

    goto/16 :goto_1

    :cond_5
    move v8, v3

    move/from16 v16, v4

    move v5, v9

    :goto_6
    add-int/lit8 v4, v16, 0x1

    move v3, v8

    goto/16 :goto_0

    :cond_6
    move v8, v3

    .line 112
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mVertexData:[F

    move v1, v8

    .line 113
    :goto_7
    iget-object v3, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mVertexData:[F

    array-length v4, v3

    if-ge v1, v4, :cond_7

    .line 114
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 117
    :cond_7
    new-array v1, v5, [S

    iput-object v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mIndexData:[S

    :goto_8
    if-ge v8, v5, :cond_8

    .line 119
    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mIndexData:[S

    int-to-short v2, v8

    aput-short v2, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_8
    return-void
.end method


# virtual methods
.method protected drawElementInner()V
    .locals 3

    .line 40
    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->drawElementInner()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 42
    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 43
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mTotalIndexCnt:I

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v1, 0x1

    const/16 v2, 0x1403

    invoke-static {v1, v0, v2, p0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method protected generateShader()Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;
    .locals 3

    .line 35
    new-instance v0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->line_vert_shader:I

    sget v2, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->line_frag_shader:I

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public setShapeSize(Landroid/graphics/Rect;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->setShapeSize(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateShapeData(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V
    .locals 1

    .line 146
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    .line 148
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mShapeSize:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x44870000    # 1080.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x42480000    # 50.0f

    mul-float/2addr v0, p1

    .line 149
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mCurLineLength:F

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    .line 150
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mLineMinDistance:F

    .line 152
    iget p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->generateLongLineData()V

    goto :goto_0

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->generateShortLineData()V

    :goto_0
    const/4 p1, 0x0

    .line 158
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mTotalIndexCnt:I

    .line 159
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mIndexData:[S

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->generateIndexBuffer([S)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;

    .line 160
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mIndexData:[S

    if-eqz v0, :cond_1

    .line 161
    array-length p1, v0

    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mTotalIndexCnt:I

    goto :goto_1

    .line 163
    :cond_1
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mTotalIndexCnt:I

    .line 165
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/LineShape;->mVertexData:[F

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->generateVertexBuffer([F)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;

    return-void
.end method
