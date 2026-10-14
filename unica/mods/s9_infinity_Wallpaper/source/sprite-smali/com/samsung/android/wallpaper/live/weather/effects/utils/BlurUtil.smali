.class public abstract Lcom/samsung/android/wallpaper/live/weather/effects/utils/BlurUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/samsung/android/wallpaper/live/weather/effects/utils/BlurUtil;",
        "",
        "SpriteWallpaper_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Landroid/graphics/Bitmap;I)V
    .locals 41

    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v11, v9, v10

    new-array v12, v11, [I

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move v4, v9

    move v7, v9

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v1, v9, -0x1

    add-int v2, v0, v0

    add-int/lit8 v3, v2, 0x1

    new-array v4, v11, [I

    new-array v5, v11, [I

    new-array v6, v11, [I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v7, v7, [I

    const/4 v8, 0x2

    add-int/2addr v2, v8

    const/4 v13, 0x1

    shr-int/2addr v2, v13

    mul-int/2addr v2, v2

    mul-int/lit16 v14, v2, 0x100

    new-array v15, v14, [I

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v14, :cond_0

    div-int v18, v13, v2

    aput v18, v15, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    new-array v13, v8, [I

    const/16 v18, 0x3

    const/16 v16, 0x1

    aput v18, v13, v16

    const/16 v17, 0x0

    aput v3, v13, v17

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    add-int/lit8 v13, v0, 0x1

    move/from16 v20, v2

    const/4 v2, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_1
    const/high16 v23, -0x1000000

    const/high16 v24, 0xff0000

    const v25, 0xff00

    if-ge v2, v10, :cond_5

    move/from16 v26, v14

    neg-int v14, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    :goto_2
    if-gt v14, v0, :cond_2

    move/from16 v37, v10

    move/from16 v36, v11

    const/4 v11, 0x0

    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v10, v10, v21

    aget v10, v12, v10

    add-int v17, v14, v0

    aget-object v38, v8, v17

    and-int v17, v10, v24

    shr-int/lit8 v17, v17, 0x10

    aput v17, v38, v11

    and-int v17, v10, v25

    shr-int/lit8 v17, v17, 0x8

    const/16 v16, 0x1

    aput v17, v38, v16

    and-int/lit16 v10, v10, 0xff

    const/16 v19, 0x2

    aput v10, v38, v19

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v10

    sub-int v10, v13, v10

    aget v39, v38, v11

    mul-int v11, v39, v10

    add-int v27, v11, v27

    aget v11, v38, v16

    mul-int v40, v11, v10

    add-int v28, v40, v28

    aget v38, v38, v19

    mul-int v10, v10, v38

    add-int v29, v10, v29

    if-lez v14, :cond_1

    add-int v33, v33, v39

    add-int v34, v34, v11

    add-int v35, v35, v38

    goto :goto_3

    :cond_1
    add-int v30, v30, v39

    add-int v31, v31, v11

    add-int v32, v32, v38

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move/from16 v11, v36

    move/from16 v10, v37

    goto :goto_2

    :cond_2
    move/from16 v37, v10

    move/from16 v36, v11

    move v11, v0

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_4

    aget v14, v15, v27

    aput v14, v4, v21

    aget v14, v15, v28

    aput v14, v5, v21

    aget v14, v15, v29

    aput v14, v6, v21

    aget v14, v12, v21

    and-int v14, v14, v23

    aget v38, v15, v27

    shl-int/lit8 v38, v38, 0x10

    or-int v14, v14, v38

    aget v38, v15, v28

    shl-int/lit8 v38, v38, 0x8

    or-int v14, v14, v38

    aget v38, v15, v29

    or-int v14, v14, v38

    aput v14, v12, v21

    sub-int v27, v27, v30

    sub-int v28, v28, v31

    sub-int v29, v29, v32

    sub-int v14, v11, v0

    add-int/2addr v14, v3

    rem-int/2addr v14, v3

    aget-object v14, v8, v14

    const/16 v17, 0x0

    aget v38, v14, v17

    sub-int v30, v30, v38

    const/16 v16, 0x1

    aget v38, v14, v16

    sub-int v31, v31, v38

    const/16 v19, 0x2

    aget v38, v14, v19

    sub-int v32, v32, v38

    if-nez v2, :cond_3

    add-int v38, v10, v0

    move-object/from16 v39, v4

    add-int/lit8 v4, v38, 0x1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v7, v10

    goto :goto_5

    :cond_3
    move-object/from16 v39, v4

    :goto_5
    aget v4, v7, v10

    add-int v4, v22, v4

    aget v4, v12, v4

    and-int v38, v4, v24

    shr-int/lit8 v38, v38, 0x10

    const/16 v17, 0x0

    aput v38, v14, v17

    and-int v40, v4, v25

    shr-int/lit8 v40, v40, 0x8

    const/16 v16, 0x1

    aput v40, v14, v16

    and-int/lit16 v4, v4, 0xff

    const/16 v19, 0x2

    aput v4, v14, v19

    add-int v33, v33, v38

    add-int v34, v34, v40

    add-int v35, v35, v4

    add-int v27, v27, v33

    add-int v28, v28, v34

    add-int v29, v29, v35

    add-int/lit8 v11, v11, 0x1

    rem-int/2addr v11, v3

    rem-int v4, v11, v3

    aget-object v4, v8, v4

    const/4 v14, 0x0

    aget v38, v4, v14

    add-int v30, v30, v38

    const/4 v14, 0x1

    aget v40, v4, v14

    add-int v31, v31, v40

    const/4 v14, 0x2

    aget v4, v4, v14

    add-int v32, v32, v4

    sub-int v33, v33, v38

    sub-int v34, v34, v40

    sub-int v35, v35, v4

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v39

    goto/16 :goto_4

    :cond_4
    move-object/from16 v39, v4

    add-int v22, v22, v9

    add-int/lit8 v2, v2, 0x1

    move/from16 v14, v26

    move/from16 v11, v36

    move/from16 v10, v37

    goto/16 :goto_1

    :cond_5
    move/from16 v37, v10

    move/from16 v36, v11

    move/from16 v26, v14

    add-int/lit8 v10, v37, -0x1

    move/from16 v1, v36

    new-array v2, v1, [I

    new-array v4, v1, [I

    new-array v5, v1, [I

    move/from16 v7, v37

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-array v6, v6, [I

    move/from16 v8, v26

    new-array v11, v8, [I

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v8, :cond_6

    div-int v15, v14, v20

    aput v15, v11, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_6
    const/4 v14, 0x2

    new-array v8, v14, [I

    const/4 v14, 0x1

    aput v18, v8, v14

    const/4 v14, 0x0

    aput v3, v8, v14

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v1, :cond_7

    aget v15, v12, v14

    and-int v15, v15, v24

    shr-int/lit8 v15, v15, 0x10

    aput v15, v2, v14

    aget v15, v12, v14

    and-int v15, v15, v25

    shr-int/lit8 v15, v15, 0x8

    aput v15, v4, v14

    aget v15, v12, v14

    and-int/lit16 v15, v15, 0xff

    aput v15, v5, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v9, :cond_d

    neg-int v14, v0

    mul-int v15, v14, v9

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_9
    if-gt v14, v0, :cond_a

    move-object/from16 v29, v6

    const/4 v6, 0x0

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int v30, v17, v1

    add-int v17, v14, v0

    aget-object v31, v8, v17

    aget v17, v2, v30

    aput v17, v31, v6

    aget v6, v4, v30

    const/16 v16, 0x1

    aput v6, v31, v16

    aget v6, v5, v30

    const/16 v19, 0x2

    aput v6, v31, v19

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v6, v13, v6

    aget v32, v2, v30

    mul-int v32, v32, v6

    add-int v18, v32, v18

    aget v32, v4, v30

    mul-int v32, v32, v6

    add-int v20, v32, v20

    aget v30, v5, v30

    mul-int v30, v30, v6

    add-int v21, v30, v21

    if-lez v14, :cond_8

    const/4 v6, 0x0

    aget v17, v31, v6

    add-int v26, v26, v17

    const/16 v16, 0x1

    aget v17, v31, v16

    add-int v27, v27, v17

    const/16 v19, 0x2

    aget v17, v31, v19

    add-int v28, v28, v17

    goto :goto_a

    :cond_8
    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v19, 0x2

    aget v30, v31, v6

    add-int v22, v22, v30

    aget v6, v31, v16

    add-int v24, v24, v6

    aget v6, v31, v19

    add-int v25, v25, v6

    :goto_a
    if-ge v14, v10, :cond_9

    add-int/2addr v15, v9

    :cond_9
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, v29

    goto :goto_9

    :cond_a
    move-object/from16 v29, v6

    move v15, v0

    move v14, v1

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v7, :cond_c

    aget v30, v12, v14

    and-int v30, v30, v23

    aget v31, v11, v18

    shl-int/lit8 v31, v31, 0x10

    or-int v30, v30, v31

    aget v31, v11, v20

    shl-int/lit8 v31, v31, 0x8

    or-int v30, v30, v31

    aget v31, v11, v21

    or-int v30, v30, v31

    aput v30, v12, v14

    sub-int v18, v18, v22

    sub-int v20, v20, v24

    sub-int v21, v21, v25

    sub-int v30, v15, v0

    add-int v30, v30, v3

    rem-int v30, v30, v3

    aget-object v30, v8, v30

    const/16 v17, 0x0

    aget v31, v30, v17

    sub-int v22, v22, v31

    const/16 v16, 0x1

    aget v31, v30, v16

    sub-int v24, v24, v31

    const/16 v19, 0x2

    aget v31, v30, v19

    sub-int v25, v25, v31

    if-nez v1, :cond_b

    add-int v0, v6, v13

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/2addr v0, v9

    aput v0, v29, v6

    :cond_b
    aget v0, v29, v6

    add-int/2addr v0, v1

    aget v31, v2, v0

    const/16 v17, 0x0

    aput v31, v30, v17

    aget v32, v4, v0

    const/16 v16, 0x1

    aput v32, v30, v16

    aget v0, v5, v0

    const/16 v19, 0x2

    aput v0, v30, v19

    add-int v26, v26, v31

    add-int v27, v27, v32

    add-int v28, v28, v0

    add-int v18, v18, v26

    add-int v20, v20, v27

    add-int v21, v21, v28

    add-int/lit8 v15, v15, 0x1

    rem-int/2addr v15, v3

    aget-object v0, v8, v15

    const/16 v17, 0x0

    aget v30, v0, v17

    add-int v22, v22, v30

    const/16 v16, 0x1

    aget v31, v0, v16

    add-int v24, v24, v31

    const/16 v19, 0x2

    aget v0, v0, v19

    add-int v25, v25, v0

    sub-int v26, v26, v30

    sub-int v27, v27, v31

    sub-int v28, v28, v0

    add-int/2addr v14, v9

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p1

    goto/16 :goto_b

    :cond_c
    const/16 v16, 0x1

    const/16 v19, 0x2

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, p1

    move-object/from16 v6, v29

    goto/16 :goto_8

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    const-string v1, "BlurUtil"

    if-eqz v0, :cond_e

    const-string v0, "Setting blurred pixel in original mutable bitmap"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move v3, v9

    move v6, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_c

    :cond_e
    const-string v0, "original bitmap is not mutable"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_c
    return-void
.end method
