.class public Lcom/samsung/android/nexus/egl/data/ObjFileLoader;
.super Lcom/samsung/android/nexus/egl/data/NexusFileLoader;
.source "SourceFile"


# static fields
.field public static final COLOR_ELEMENT_CNT:I = 0x4

.field public static final NORMAL_ELEMENT_CNT:I = 0x3

.field public static final POSITION_ELEMENT_CNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ObjFileLoader"

.field public static final TEXTURE_ELEMENT_CNT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/data/NexusFileLoader;-><init>()V

    return-void
.end method

.method public static parseData(Landroid/content/Context;I)Lcom/samsung/android/nexus/egl/data/ShapeData;
    .locals 1

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/nexus/egl/data/ObjFileLoader;->parseData(Landroid/content/Context;Ljava/io/InputStream;Z)Lcom/samsung/android/nexus/egl/data/ShapeData;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseData(Landroid/content/Context;IZ)Lcom/samsung/android/nexus/egl/data/ShapeData;
    .locals 1

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/nexus/egl/data/ObjFileLoader;->parseData(Landroid/content/Context;Ljava/io/InputStream;Z)Lcom/samsung/android/nexus/egl/data/ShapeData;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseData(Landroid/content/Context;Ljava/io/InputStream;)Lcom/samsung/android/nexus/egl/data/ShapeData;
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, p1, v0}, Lcom/samsung/android/nexus/egl/data/ObjFileLoader;->parseData(Landroid/content/Context;Ljava/io/InputStream;Z)Lcom/samsung/android/nexus/egl/data/ShapeData;

    move-result-object p0

    return-object p0
.end method

.method public static parseData(Landroid/content/Context;Ljava/io/InputStream;Z)Lcom/samsung/android/nexus/egl/data/ShapeData;
    .locals 22

    move-object/from16 v0, p1

    if-eqz p0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_d

    .line 4
    :cond_1
    sget-object v2, Lcom/samsung/android/nexus/egl/data/ObjFileLoader;->TAG:Ljava/lang/String;

    const-string v3, "Start to load 3D object file"

    invoke-static {v2, v3}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v2, Lcom/samsung/android/nexus/egl/data/ShapeData;

    invoke-direct {v2}, Lcom/samsung/android/nexus/egl/data/ShapeData;-><init>()V

    .line 6
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 7
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x6

    .line 15
    new-array v12, v11, [F

    iput-object v12, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->boundaryData:[F

    const/4 v12, 0x0

    move v13, v12

    .line 16
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x1

    if-eqz v14, :cond_12

    .line 17
    const-string v11, " "

    invoke-virtual {v14, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 18
    array-length v14, v11

    if-ge v14, v15, :cond_2

    const/4 v11, 0x6

    goto :goto_0

    .line 19
    :cond_2
    const-string v14, "v"

    aget-object v1, v11, v12

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 20
    aget-object v1, v11, v18

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 21
    aget-object v14, v11, v17

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 22
    aget-object v11, v11, v16

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 23
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v15, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->boundaryData:[F

    aget v19, v15, v12

    cmpg-float v19, v1, v19

    if-gez v19, :cond_3

    aput v1, v15, v12

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_c

    .line 27
    :cond_3
    :goto_1
    aget v19, v15, v18

    cmpl-float v19, v1, v19

    if-lez v19, :cond_4

    aput v1, v15, v18

    .line 28
    :cond_4
    aget v1, v15, v17

    cmpg-float v1, v14, v1

    if-gez v1, :cond_5

    aput v14, v15, v17

    .line 29
    :cond_5
    aget v1, v15, v16

    cmpl-float v1, v14, v1

    if-lez v1, :cond_6

    aput v14, v15, v16

    :cond_6
    const/4 v1, 0x4

    .line 30
    aget v14, v15, v1

    cmpg-float v14, v11, v14

    if-gez v14, :cond_7

    aput v11, v15, v1

    :cond_7
    const/4 v1, 0x5

    .line 31
    aget v14, v15, v1

    cmpl-float v14, v11, v14

    if-lez v14, :cond_8

    aput v11, v15, v1

    :cond_8
    move-object/from16 v21, v3

    move-object/from16 v20, v4

    goto/16 :goto_6

    .line 32
    :cond_9
    const-string v1, "f"

    aget-object v14, v11, v12

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 33
    array-length v1, v11

    const/4 v14, 0x4

    if-le v1, v14, :cond_a

    .line 34
    sget-object v1, Lcom/samsung/android/nexus/egl/data/ObjFileLoader;->TAG:Ljava/lang/String;

    const-string v14, "!!!!! Has quad data !!!!!!"

    invoke-static {v1, v14}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move/from16 v14, v18

    const/4 v1, 0x4

    :goto_2
    if-ge v14, v1, :cond_e

    .line 35
    aget-object v1, v11, v14

    const-string v15, "/"

    invoke-virtual {v1, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 36
    aget-object v15, v1, v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, ", value = "

    const-string v0, "Wrong value line = "

    if-eqz v15, :cond_b

    :try_start_1
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_b

    const/4 v15, 0x0

    .line 37
    aget-object v20, v1, v15

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v15

    invoke-static {v15}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    goto :goto_3

    .line 38
    :cond_b
    sget-object v15, Lcom/samsung/android/nexus/egl/data/ObjFileLoader;->TAG:Ljava/lang/String;

    move-object/from16 v20, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v3

    const/16 v19, 0x0

    aget-object v3, v1, v19

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_3
    aget-object v3, v1, v18

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 40
    aget-object v3, v1, v18

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 41
    :cond_c
    sget-object v3, Lcom/samsung/android/nexus/egl/data/ObjFileLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v1, v18

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_4
    aget-object v3, v1, v17

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 43
    aget-object v0, v1, v17

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 44
    :cond_d
    sget-object v3, Lcom/samsung/android/nexus/egl/data/ObjFileLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    const/4 v1, 0x4

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_e
    move-object/from16 v21, v3

    move-object/from16 v20, v4

    .line 45
    iget v0, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->totalVertexCnt:I

    add-int/lit8 v0, v0, 0x3

    iput v0, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->totalVertexCnt:I

    goto :goto_6

    :cond_f
    move-object/from16 v21, v3

    move-object/from16 v20, v4

    .line 46
    const-string v0, "vt"

    const/4 v1, 0x0

    aget-object v3, v11, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 47
    aget-object v0, v11, v18

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 48
    aget-object v1, v11, v17

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    .line 49
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 51
    :cond_10
    const-string v0, "vn"

    const/4 v1, 0x0

    aget-object v3, v11, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 52
    aget-object v0, v11, v18

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    aget-object v0, v11, v17

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    aget-object v0, v11, v16

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    const/4 v11, 0x6

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_12
    move-object/from16 v21, v3

    .line 55
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    sget-object v0, Lcom/samsung/android/nexus/egl/data/ObjFileLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Total loaded vertices = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->totalVertexCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v2}, Lcom/samsung/android/nexus/egl/data/ShapeData;->toBoundaryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_18

    .line 58
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    move/from16 v0, v18

    goto :goto_7

    :cond_13
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasNormals:Z

    .line 59
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    move/from16 v0, v18

    goto :goto_8

    :cond_14
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasColors:Z

    const/4 v1, 0x0

    .line 60
    iput-boolean v1, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasLight:Z

    .line 61
    iget-boolean v1, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasNormals:Z

    if-eqz v1, :cond_15

    const/4 v11, 0x6

    goto :goto_9

    :cond_15
    move/from16 v11, v16

    :goto_9
    if-eqz v0, :cond_16

    add-int/lit8 v11, v11, 0x4

    .line 62
    :cond_16
    iget v0, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->totalVertexCnt:I

    new-array v1, v0, [S

    iput-object v1, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->indexData:[S

    mul-int v3, v0, v11

    .line 63
    new-array v3, v3, [F

    iput-object v3, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    mul-int/lit8 v0, v0, 0x2

    .line 64
    new-array v0, v0, [F

    iput-object v0, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->textureCoordData:[F

    .line 65
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->indexDataSize:I

    .line 66
    array-length v1, v3

    const/4 v3, 0x4

    mul-int/2addr v1, v3

    iput v1, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexDataSize:I

    .line 67
    array-length v0, v0

    mul-int/2addr v0, v3

    iput v0, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->textureCoordDataSize:I

    const/4 v12, 0x0

    .line 68
    :goto_a
    iget v0, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->totalVertexCnt:I

    if-ge v12, v0, :cond_19

    .line 69
    iget-object v0, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->indexData:[S

    int-to-short v1, v12

    aput-short v1, v0, v12

    .line 70
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    mul-int v1, v12, v11

    .line 71
    iget-object v3, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    move-object/from16 v4, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v3, v1

    .line 72
    iget-object v3, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v13, v0, 0x1

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    aput v13, v3, v5

    .line 73
    iget-object v3, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    add-int/lit8 v5, v1, 0x2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v3, v5

    .line 74
    iget-boolean v0, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasNormals:Z

    if-eqz v0, :cond_17

    .line 75
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    .line 76
    iget-object v3, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    add-int/lit8 v5, v1, 0x3

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    aput v13, v3, v5

    .line 77
    iget-object v3, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    add-int/lit8 v5, v1, 0x4

    add-int/lit8 v13, v0, 0x1

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    aput v13, v3, v5

    .line 78
    iget-object v3, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    add-int/lit8 v1, v1, 0x5

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v3, v1

    .line 79
    :cond_17
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v1, v12, 0x2

    .line 80
    iget-object v3, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->textureCoordData:[F

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v3, v1

    .line 81
    iget-object v3, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->textureCoordData:[F

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v21, v4

    goto/16 :goto_a

    :cond_18
    move-object/from16 v4, v21

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasNormals:Z

    .line 83
    iput-boolean v0, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasColors:Z

    .line 84
    iput-boolean v0, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasLight:Z

    .line 85
    iget v0, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->totalVertexCnt:I

    new-array v1, v0, [S

    iput-object v1, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->indexData:[S

    mul-int/lit8 v0, v0, 0x3

    .line 86
    new-array v0, v0, [F

    iput-object v0, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    .line 87
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->indexDataSize:I

    .line 88
    array-length v0, v0

    const/4 v1, 0x4

    mul-int/2addr v0, v1

    iput v0, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexDataSize:I

    const/4 v0, 0x0

    .line 89
    iput v0, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->textureCoordDataSize:I

    move v12, v0

    .line 90
    :goto_b
    iget v0, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->totalVertexCnt:I

    if-ge v12, v0, :cond_19

    .line 91
    iget-object v0, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->indexData:[S

    int-to-short v1, v12

    aput-short v1, v0, v12

    .line 92
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v1, v12, 0x3

    .line 93
    iget-object v3, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v3, v1

    .line 94
    iget-object v3, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v3, v5

    .line 95
    iget-object v3, v2, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 96
    :cond_19
    sget-object v0, Lcom/samsung/android/nexus/egl/data/ObjFileLoader;->TAG:Ljava/lang/String;

    const-string v1, "Finished to load 3D object file"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 97
    :goto_c
    sget-object v1, Lcom/samsung/android/nexus/egl/data/ObjFileLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parsing error line = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method
