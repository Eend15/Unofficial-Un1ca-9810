.class public Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeDataGenerator;
.super Ljava/lang/Object;
.source "ShapeDataGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateVertexData(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;IFFF)Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    .line 162
    new-instance v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    invoke-direct {v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;-><init>()V

    if-nez v0, :cond_0

    return-object v2

    .line 165
    :cond_0
    iput v1, v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalVertexCnt:I

    .line 166
    iput v1, v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    .line 167
    iget v3, v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalVertexCnt:I

    mul-int/lit8 v3, v3, 0xa

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    .line 168
    iget v3, v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    new-array v3, v3, [S

    iput-object v3, v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->faceIndexData:[S

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, p2, v3

    div-float v5, p3, v3

    .line 172
    new-instance v6, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Random;-><init>(J)V

    div-float v3, p4, v3

    const/high16 v7, 0x40800000    # 4.0f

    div-float v7, p4, v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v1, :cond_1

    .line 177
    iget v9, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalVertexCnt:I

    invoke-virtual {v6, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0xa

    mul-int/lit8 v10, v8, 0xa

    .line 180
    iget-object v11, v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v12, v10, 0x0

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v13

    mul-float v13, v13, p2

    sub-float/2addr v13, v4

    aput v13, v11, v12

    .line 181
    iget-object v11, v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v13

    mul-float v13, v13, p3

    sub-float/2addr v13, v5

    aput v13, v11, v12

    .line 182
    iget-object v11, v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v12, v10, 0x2

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v13

    mul-float/2addr v13, v3

    add-float/2addr v13, v7

    aput v13, v11, v12

    .line 183
    iget-object v11, v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v12, v10, 0x3

    iget-object v13, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v14, v9, 0x3

    aget v14, v13, v14

    aput v14, v11, v12

    add-int/lit8 v12, v10, 0x4

    add-int/lit8 v14, v9, 0x4

    .line 184
    aget v14, v13, v14

    aput v14, v11, v12

    add-int/lit8 v12, v10, 0x5

    add-int/lit8 v14, v9, 0x5

    .line 185
    aget v14, v13, v14

    aput v14, v11, v12

    add-int/lit8 v12, v10, 0x6

    add-int/lit8 v9, v9, 0x6

    .line 186
    aget v9, v13, v9

    aput v9, v11, v12

    add-int/lit8 v9, v10, 0x7

    const/4 v12, 0x5

    .line 187
    invoke-virtual {v6, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    int-to-float v12, v12

    aput v12, v11, v9

    .line 188
    iget-object v9, v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v11, v10, 0x8

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v12

    const v13, 0x3ecccccd    # 0.4f

    mul-float/2addr v12, v13

    aput v12, v9, v11

    .line 189
    iget-object v9, v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v10, v10, 0x9

    aget v11, v9, v11

    const v12, 0x3f19999a    # 0.6f

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 190
    iget-object v9, v2, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->faceIndexData:[S

    int-to-short v10, v8

    aput-short v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_1
    return-object v2
.end method

.method public static parseData(Landroid/content/Context;I[[IF)Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;
    .locals 22

    move-object/from16 v0, p2

    move/from16 v1, p3

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse data start shapeSizeRatio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InfinityWallpaper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v4, p1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 22
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 23
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 27
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 29
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 35
    new-instance v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    invoke-direct {v12}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;-><init>()V

    const/4 v13, 0x0

    .line 36
    iput v13, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalVertexCnt:I

    .line 37
    iput v13, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    .line 40
    :goto_0
    :try_start_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x1

    if-eqz v14, :cond_6

    const-string v15, " "

    .line 41
    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 42
    array-length v15, v14

    const/4 v13, 0x4

    if-ge v15, v13, :cond_0

    :goto_1
    const/4 v13, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo v15, "v"

    const/16 v17, 0x0

    .line 44
    aget-object v13, v14, v17

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 45
    aget-object v13, v14, v16

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    mul-float/2addr v13, v1

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    .line 46
    aget-object v13, v14, v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    mul-float/2addr v13, v1

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    .line 47
    aget-object v13, v14, v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    mul-float/2addr v13, v1

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget v13, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalVertexCnt:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalVertexCnt:I

    goto :goto_1

    :cond_1
    const-string v13, "f"

    const/4 v15, 0x0

    .line 49
    aget-object v1, v14, v15

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move/from16 v1, v16

    :goto_2
    const/4 v13, 0x4

    if-ge v1, v13, :cond_2

    .line 51
    aget-object v13, v14, v1

    invoke-static {v13}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v13

    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget v13, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    move/from16 v1, p3

    goto :goto_1

    :cond_3
    const-string v1, "c"

    const/4 v13, 0x0

    .line 54
    aget-object v15, v14, v13

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 55
    aget-object v1, v14, v16

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v13, 0x437f0000    # 255.0f

    div-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    .line 56
    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 57
    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    .line 58
    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const-string v1, "g"

    const/16 v17, 0x0

    .line 59
    aget-object v13, v14, v17

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move/from16 v1, v16

    const/4 v13, 0x4

    :goto_4
    if-ge v1, v13, :cond_5

    .line 61
    aget-object v15, v14, v1

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    move/from16 v1, p3

    move/from16 v13, v17

    goto/16 :goto_0

    :cond_6
    move/from16 v17, v13

    .line 65
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    iget v1, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalVertexCnt:I

    mul-int/lit8 v1, v1, 0xa

    new-array v1, v1, [F

    iput-object v1, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    .line 71
    iget v1, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    mul-int/lit8 v2, v1, 0xa

    new-array v2, v2, [F

    iput-object v2, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->faceVertexData:[F

    .line 72
    new-array v1, v1, [S

    iput-object v1, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->faceIndexData:[S

    .line 74
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    invoke-direct {v1, v13, v14}, Ljava/util/Random;-><init>(J)V

    move/from16 v2, v17

    .line 76
    :goto_5
    iget v5, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalVertexCnt:I

    if-ge v2, v5, :cond_7

    mul-int/lit8 v5, v2, 0x3

    mul-int/lit8 v13, v2, 0xa

    .line 80
    iget-object v14, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v15, v13, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    aput v18, v14, v15

    .line 81
    iget-object v14, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v15, v13, 0x1

    move-object/from16 v18, v3

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v14, v15

    .line 82
    iget-object v3, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v14, v13, 0x2

    const/4 v15, 0x2

    add-int/2addr v5, v15

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v3, v14

    .line 83
    iget-object v3, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v5, v13, 0x8

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v14

    const v15, 0x3ecccccd    # 0.4f

    mul-float/2addr v14, v15

    aput v14, v3, v5

    .line 84
    iget-object v3, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v13, v13, 0x9

    aget v5, v3, v5

    const v14, 0x3f19999a    # 0.6f

    add-float/2addr v5, v14

    aput v5, v3, v13

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v18

    goto :goto_5

    :cond_7
    move-object/from16 v18, v3

    if-eqz v0, :cond_a

    move/from16 v1, v17

    .line 89
    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_a

    .line 90
    aget-object v2, v0, v1

    move/from16 v3, v17

    .line 91
    :goto_7
    array-length v5, v2

    if-ge v3, v5, :cond_9

    move/from16 v5, v17

    :goto_8
    const/4 v13, 0x3

    if-ge v5, v13, :cond_8

    mul-int/lit8 v13, v3, 0x3

    add-int/2addr v13, v5

    .line 94
    iget-object v14, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->faceIndexData:[S

    aget-short v13, v14, v13

    mul-int/lit8 v13, v13, 0xa

    .line 95
    iget-object v14, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v13, v13, 0x7

    int-to-float v15, v1

    aput v15, v14, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    move/from16 v0, v17

    .line 102
    :goto_9
    iget v1, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    if-ge v0, v1, :cond_e

    .line 103
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v2, v1, 0x3

    mul-int/lit8 v1, v1, 0xa

    mul-int/lit8 v3, v0, 0xa

    const/4 v5, -0x1

    .line 108
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v0, v13, :cond_b

    .line 109
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 112
    :cond_b
    iget-object v13, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->faceIndexData:[S

    int-to-short v14, v0

    aput-short v14, v13, v0

    .line 114
    iget-object v13, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->faceVertexData:[F

    add-int/lit8 v14, v3, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    aput v15, v13, v14

    .line 115
    iget-object v13, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->faceVertexData:[F

    add-int/lit8 v14, v3, 0x1

    add-int/lit8 v15, v2, 0x1

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    aput v15, v13, v14

    .line 116
    iget-object v13, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->faceVertexData:[F

    add-int/lit8 v14, v3, 0x2

    const/4 v15, 0x2

    add-int/2addr v2, v15

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v13, v14

    if-ltz v5, :cond_d

    .line 119
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 120
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    .line 121
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 122
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 124
    iget-object v15, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v19, v1, 0x6

    aget v20, v15, v19

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_c

    add-int/lit8 v20, v1, 0x3

    .line 125
    aput v2, v15, v20

    add-int/lit8 v20, v1, 0x4

    .line 126
    aput v13, v15, v20

    add-int/lit8 v1, v1, 0x5

    .line 127
    aput v14, v15, v1

    .line 128
    aput v5, v15, v19

    .line 131
    :cond_c
    iget-object v1, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->faceVertexData:[F

    add-int/lit8 v15, v3, 0x3

    aput v2, v1, v15

    add-int/lit8 v2, v3, 0x4

    .line 132
    aput v13, v1, v2

    add-int/lit8 v2, v3, 0x5

    .line 133
    aput v14, v1, v2

    add-int/lit8 v3, v3, 0x6

    .line 134
    aput v5, v1, v3

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    .line 139
    :cond_e
    iget v0, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalVertexCnt:I

    filled-new-array {v0, v0}, [I

    move-result-object v0

    const-class v1, S

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexIndexMap:[[S

    .line 140
    iget v0, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    const/4 v1, 0x3

    div-int/2addr v0, v1

    move/from16 v1, v17

    :goto_a
    if-ge v1, v0, :cond_f

    mul-int/lit8 v2, v1, 0x3

    .line 143
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v2, 0x1

    .line 144
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x2

    add-int/2addr v2, v5

    .line 145
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 147
    iget-object v7, v12, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexIndexMap:[[S

    aget-object v8, v7, v3

    aput-short v16, v8, v4

    .line 148
    aget-object v8, v7, v3

    aput-short v16, v8, v2

    .line 150
    aget-object v8, v7, v4

    aput-short v16, v8, v3

    .line 151
    aget-object v8, v7, v4

    aput-short v16, v8, v2

    .line 153
    aget-object v8, v7, v2

    aput-short v16, v8, v3

    .line 154
    aget-object v2, v7, v2

    aput-short v16, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_f
    const-string v0, "parse data end"

    move-object/from16 v1, v18

    .line 157
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
