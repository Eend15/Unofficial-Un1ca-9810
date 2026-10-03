.class public final LC1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>(IIJFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LC1/a;->a:I

    iput p2, p0, LC1/a;->b:I

    iput-wide p3, p0, LC1/a;->c:J

    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, p5, p6, p7, p8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, LC1/a;->d:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public static a(Ljava/lang/String;)[[LC1/a;
    .locals 32

    const-string v0, "TOUCH"

    const-string v1, "LOCK"

    const-string v2, "HOME"

    const-string v3, "AOD"

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    return-object v10

    :cond_0
    new-array v9, v7, [I

    const/4 v11, 0x4

    aput v11, v9, v8

    aput v11, v9, v6

    const-class v12, LC1/a;

    invoke-static {v12, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[LC1/a;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    array-length v14, v12

    const-string v15, ""

    invoke-static {v13, v14, v15}, Li4/b;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-array v14, v6, [Ljava/lang/Object;

    const-string v15, "infinity_Choreographer"

    invoke-static {v15, v13, v14}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    array-length v13, v12

    move v14, v6

    :goto_0
    if-ge v14, v13, :cond_c

    aget-object v4, v12, v14

    const-string v11, " "

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/16 v7, 0x9

    if-eq v5, v7, :cond_1

    return-object v10

    :cond_1
    :try_start_0
    aget-object v5, v4, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_1
    const/4 v5, -0x1

    goto :goto_2

    :sswitch_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x3

    goto :goto_2

    :sswitch_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    goto :goto_2

    :sswitch_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    move v5, v8

    goto :goto_2

    :sswitch_3
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    move v5, v6

    :goto_2
    packed-switch v5, :pswitch_data_0

    const/4 v5, -0x1

    goto :goto_3

    :pswitch_0
    const/4 v5, 0x3

    goto :goto_3

    :pswitch_1
    move v5, v8

    goto :goto_3

    :pswitch_2
    const/4 v5, 0x2

    goto :goto_3

    :pswitch_3
    move v5, v6

    :goto_3
    :try_start_2
    aget-object v7, v4, v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_1

    :goto_4
    const/4 v7, -0x1

    goto :goto_5

    :sswitch_4
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_4

    :cond_6
    const/4 v7, 0x3

    goto :goto_5

    :sswitch_5
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    const/4 v7, 0x2

    goto :goto_5

    :sswitch_6
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_4

    :cond_8
    move v7, v8

    goto :goto_5

    :sswitch_7
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_4

    :cond_9
    move v7, v6

    :goto_5
    packed-switch v7, :pswitch_data_1

    const/4 v7, -0x1

    :goto_6
    const/16 v19, 0x2

    goto :goto_7

    :pswitch_4
    const/4 v7, 0x3

    goto :goto_6

    :pswitch_5
    move v7, v8

    goto :goto_6

    :pswitch_6
    const/4 v7, 0x2

    goto :goto_6

    :pswitch_7
    move v7, v6

    goto :goto_6

    :goto_7
    :try_start_4
    aget-object v20, v4, v19
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v18, 0x3

    aget-object v20, v4, v18

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v17, 0x4

    aget-object v20, v4, v17

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    const/16 v20, 0x5

    aget-object v20, v4, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v26

    const/16 v20, 0x6

    aget-object v20, v4, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v27

    const/16 v20, 0x7

    aget-object v20, v4, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v28

    const/16 v20, 0x8

    aget-object v20, v4, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v29

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    if-eq v7, v6, :cond_a

    if-gt v10, v8, :cond_a

    const-wide/16 v21, 0x0

    cmp-long v16, v24, v21

    if-gez v16, :cond_b

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v0

    const-string v0, "make "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v31, v1

    const/4 v0, 0x0

    aget-object v1, v4, v0

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-object v1, v4, v0

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v15, v0, v4}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    aget-object v0, v9, v0

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-instance v5, LC1/a;

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v22

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v23

    move-object/from16 v21, v5

    invoke-direct/range {v21 .. v29}, LC1/a;-><init>(IIJFFFF)V

    aput-object v5, v0, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v0, 0x1

    add-int/2addr v14, v0

    move v8, v0

    move v6, v1

    move/from16 v11, v17

    move/from16 v7, v19

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    const/4 v10, 0x0

    goto/16 :goto_0

    :catch_0
    const/4 v0, 0x0

    goto :goto_9

    :goto_8
    return-object v0

    :catch_1
    move-object v0, v10

    :goto_9
    return-object v0

    :cond_c
    return-object v9

    :sswitch_data_0
    .sparse-switch
        0xfdd6 -> :sswitch_3
        0x21ecdf -> :sswitch_2
        0x23bd2b -> :sswitch_1
        0x4c4e71f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xfdd6 -> :sswitch_7
        0x21ecdf -> :sswitch_6
        0x23bd2b -> :sswitch_5
        0x4c4e71f -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
