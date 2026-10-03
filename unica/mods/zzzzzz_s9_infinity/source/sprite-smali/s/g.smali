.class public abstract Ls/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Ls/g;->a:[Z

    return-void
.end method

.method public static a(Ls/e;Lq/c;Ljava/util/ArrayList;I)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v12, 0x2

    if-nez p3, :cond_0

    iget v1, v0, Ls/e;->x0:I

    iget-object v2, v0, Ls/e;->A0:[Ls/b;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, Ls/e;->y0:I

    iget-object v2, v0, Ls/e;->z0:[Ls/b;

    move v14, v1

    move-object v15, v2

    move/from16 v16, v12

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_70

    aget-object v1, v15, v9

    iget-boolean v2, v1, Ls/b;->q:Z

    iget-object v8, v1, Ls/b;->a:Ls/d;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/16 v7, 0x8

    const/16 v17, 0x0

    if-nez v2, :cond_19

    iget v2, v1, Ls/b;->l:I

    mul-int/lit8 v6, v2, 0x2

    move-object v13, v8

    move-object/from16 v20, v13

    const/16 v18, 0x0

    :goto_2
    if-nez v18, :cond_14

    iget v5, v1, Ls/b;->i:I

    add-int/2addr v5, v4

    iput v5, v1, Ls/b;->i:I

    iget-object v5, v13, Ls/d;->k0:[Ls/d;

    aput-object v17, v5, v2

    iget-object v5, v13, Ls/d;->j0:[Ls/d;

    aput-object v17, v5, v2

    iget v5, v13, Ls/d;->e0:I

    iget-object v4, v13, Ls/d;->O:[Ls/c;

    if-eq v5, v7, :cond_f

    invoke-virtual {v13, v2}, Ls/d;->h(I)I

    aget-object v5, v4, v6

    invoke-virtual {v5}, Ls/c;->d()I

    add-int/lit8 v5, v6, 0x1

    aget-object v23, v4, v5

    invoke-virtual/range {v23 .. v23}, Ls/c;->d()I

    aget-object v23, v4, v6

    invoke-virtual/range {v23 .. v23}, Ls/c;->d()I

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ls/c;->d()I

    iget-object v5, v1, Ls/b;->b:Ls/d;

    if-nez v5, :cond_1

    iput-object v13, v1, Ls/b;->b:Ls/d;

    :cond_1
    iput-object v13, v1, Ls/b;->d:Ls/d;

    iget-object v5, v13, Ls/d;->n0:[I

    aget v5, v5, v2

    if-ne v5, v3, :cond_f

    iget-object v7, v13, Ls/d;->s:[I

    aget v7, v7, v2

    if-eqz v7, :cond_3

    if-eq v7, v3, :cond_3

    if-ne v7, v12, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v25, v9

    goto :goto_5

    :cond_3
    :goto_3
    iget v12, v1, Ls/b;->j:I

    const/16 v22, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v1, Ls/b;->j:I

    iget-object v12, v13, Ls/d;->i0:[F

    aget v12, v12, v2

    const/16 v21, 0x0

    cmpl-float v24, v12, v21

    if-lez v24, :cond_4

    iget v3, v1, Ls/b;->k:F

    add-float/2addr v3, v12

    iput v3, v1, Ls/b;->k:F

    :cond_4
    iget v3, v13, Ls/d;->e0:I

    move/from16 v25, v9

    const/16 v9, 0x8

    if-eq v3, v9, :cond_8

    const/4 v3, 0x3

    if-ne v5, v3, :cond_8

    if-eqz v7, :cond_5

    if-ne v7, v3, :cond_8

    :cond_5
    const/4 v3, 0x0

    cmpg-float v5, v12, v3

    if-gez v5, :cond_6

    const/4 v3, 0x1

    iput-boolean v3, v1, Ls/b;->n:Z

    goto :goto_4

    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, v1, Ls/b;->o:Z

    :goto_4
    iget-object v3, v1, Ls/b;->h:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Ls/b;->h:Ljava/util/ArrayList;

    :cond_7
    iget-object v3, v1, Ls/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v3, v1, Ls/b;->f:Ls/d;

    if-nez v3, :cond_9

    iput-object v13, v1, Ls/b;->f:Ls/d;

    :cond_9
    iget-object v3, v1, Ls/b;->g:Ls/d;

    if-eqz v3, :cond_a

    iget-object v3, v3, Ls/d;->j0:[Ls/d;

    aput-object v13, v3, v2

    :cond_a
    iput-object v13, v1, Ls/b;->g:Ls/d;

    :goto_5
    if-nez v2, :cond_c

    iget v3, v13, Ls/d;->q:I

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    iget v3, v13, Ls/d;->t:I

    if-nez v3, :cond_e

    iget v3, v13, Ls/d;->u:I

    goto :goto_6

    :cond_c
    iget v3, v13, Ls/d;->r:I

    if-eqz v3, :cond_d

    goto :goto_6

    :cond_d
    iget v3, v13, Ls/d;->w:I

    if-nez v3, :cond_e

    iget v3, v13, Ls/d;->x:I

    :cond_e
    :goto_6
    move-object/from16 v3, v20

    goto :goto_7

    :cond_f
    move/from16 v25, v9

    goto :goto_6

    :goto_7
    if-eq v3, v13, :cond_10

    iget-object v3, v3, Ls/d;->k0:[Ls/d;

    aput-object v13, v3, v2

    :cond_10
    add-int/lit8 v3, v6, 0x1

    aget-object v3, v4, v3

    iget-object v3, v3, Ls/c;->f:Ls/c;

    if-eqz v3, :cond_11

    iget-object v3, v3, Ls/c;->d:Ls/d;

    iget-object v4, v3, Ls/d;->O:[Ls/c;

    aget-object v4, v4, v6

    iget-object v4, v4, Ls/c;->f:Ls/c;

    if-eqz v4, :cond_11

    iget-object v4, v4, Ls/c;->d:Ls/d;

    if-eq v4, v13, :cond_12

    :cond_11
    move-object/from16 v3, v17

    :cond_12
    if-eqz v3, :cond_13

    goto :goto_8

    :cond_13
    move-object v3, v13

    const/16 v18, 0x1

    :goto_8
    move-object/from16 v20, v13

    move/from16 v9, v25

    const/4 v4, 0x1

    const/16 v7, 0x8

    const/4 v12, 0x2

    move-object v13, v3

    const/4 v3, 0x3

    goto/16 :goto_2

    :cond_14
    move/from16 v25, v9

    iget-object v3, v1, Ls/b;->b:Ls/d;

    if-eqz v3, :cond_15

    iget-object v3, v3, Ls/d;->O:[Ls/c;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ls/c;->d()I

    :cond_15
    iget-object v3, v1, Ls/b;->d:Ls/d;

    if-eqz v3, :cond_16

    add-int/lit8 v6, v6, 0x1

    iget-object v3, v3, Ls/d;->O:[Ls/c;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ls/c;->d()I

    :cond_16
    iput-object v13, v1, Ls/b;->c:Ls/d;

    if-nez v2, :cond_17

    iget-boolean v2, v1, Ls/b;->m:Z

    if-eqz v2, :cond_17

    iput-object v13, v1, Ls/b;->e:Ls/d;

    goto :goto_9

    :cond_17
    iput-object v8, v1, Ls/b;->e:Ls/d;

    :goto_9
    iget-boolean v2, v1, Ls/b;->o:Z

    if-eqz v2, :cond_18

    iget-boolean v2, v1, Ls/b;->n:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_a

    :cond_18
    const/4 v2, 0x0

    :goto_a
    iput-boolean v2, v1, Ls/b;->p:Z

    const/4 v2, 0x1

    goto :goto_b

    :cond_19
    move/from16 v25, v9

    move v2, v4

    :goto_b
    iput-boolean v2, v1, Ls/b;->q:Z

    if-eqz v11, :cond_1b

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_c

    :cond_1a
    move/from16 v30, v14

    move-object/from16 v31, v15

    move/from16 v23, v25

    const/16 v19, 0x0

    goto/16 :goto_4b

    :cond_1b
    :goto_c
    iget-object v12, v1, Ls/b;->c:Ls/d;

    iget-object v13, v1, Ls/b;->b:Ls/d;

    iget-object v9, v1, Ls/b;->d:Ls/d;

    iget-object v2, v1, Ls/b;->e:Ls/d;

    iget v3, v1, Ls/b;->k:F

    iget-object v4, v0, Ls/d;->n0:[I

    aget v4, v4, p3

    const/4 v7, 0x2

    if-ne v4, v7, :cond_1c

    const/4 v4, 0x1

    goto :goto_d

    :cond_1c
    const/4 v4, 0x0

    :goto_d
    if-nez p3, :cond_20

    iget v5, v2, Ls/d;->g0:I

    const/4 v6, 0x1

    if-nez v5, :cond_1d

    const/16 v22, 0x1

    goto :goto_e

    :cond_1d
    const/16 v22, 0x0

    :goto_e
    if-ne v5, v6, :cond_1e

    move/from16 v18, v6

    goto :goto_f

    :cond_1e
    const/16 v18, 0x0

    :goto_f
    if-ne v5, v7, :cond_1f

    move v5, v6

    goto :goto_10

    :cond_1f
    const/4 v5, 0x0

    :goto_10
    move/from16 v26, v3

    move-object v7, v8

    move/from16 v20, v22

    :goto_11
    const/4 v6, 0x0

    goto :goto_15

    :cond_20
    const/4 v6, 0x1

    iget v5, v2, Ls/d;->h0:I

    if-nez v5, :cond_21

    move/from16 v18, v6

    goto :goto_12

    :cond_21
    const/16 v18, 0x0

    :goto_12
    if-ne v5, v6, :cond_22

    const/4 v6, 0x1

    goto :goto_13

    :cond_22
    const/4 v6, 0x0

    :goto_13
    if-ne v5, v7, :cond_23

    const/4 v5, 0x1

    goto :goto_14

    :cond_23
    const/4 v5, 0x0

    :goto_14
    move/from16 v26, v3

    move-object v7, v8

    move/from16 v20, v18

    move/from16 v18, v6

    goto :goto_11

    :goto_15
    iget-object v3, v0, Ls/d;->O:[Ls/c;

    if-nez v6, :cond_31

    iget-object v11, v7, Ls/d;->O:[Ls/c;

    aget-object v11, v11, v16

    if-eqz v5, :cond_24

    const/16 v27, 0x1

    goto :goto_16

    :cond_24
    const/16 v27, 0x4

    :goto_16
    invoke-virtual {v11}, Ls/c;->d()I

    move-result v28

    move/from16 v29, v6

    iget-object v6, v7, Ls/d;->n0:[I

    move/from16 v30, v14

    aget v14, v6, p3

    move-object/from16 v31, v15

    const/4 v15, 0x3

    if-ne v14, v15, :cond_25

    iget-object v14, v7, Ls/d;->s:[I

    aget v14, v14, p3

    if-nez v14, :cond_25

    const/4 v14, 0x1

    goto :goto_17

    :cond_25
    const/4 v14, 0x0

    :goto_17
    iget-object v15, v11, Ls/c;->f:Ls/c;

    if-eqz v15, :cond_26

    if-eq v7, v8, :cond_26

    invoke-virtual {v15}, Ls/c;->d()I

    move-result v15

    add-int v28, v15, v28

    :cond_26
    move/from16 v15, v28

    if-eqz v5, :cond_27

    if-eq v7, v8, :cond_27

    if-eq v7, v13, :cond_27

    move-object/from16 v28, v2

    const/16 v27, 0x8

    goto :goto_18

    :cond_27
    move-object/from16 v28, v2

    :goto_18
    iget-object v2, v11, Ls/c;->f:Ls/c;

    if-eqz v2, :cond_2b

    if-ne v7, v13, :cond_28

    move-object/from16 v32, v8

    iget-object v8, v11, Ls/c;->i:Lq/f;

    iget-object v2, v2, Ls/c;->i:Lq/f;

    move-object/from16 v33, v1

    const/4 v1, 0x6

    invoke-virtual {v10, v8, v2, v15, v1}, Lq/c;->f(Lq/f;Lq/f;II)V

    goto :goto_19

    :cond_28
    move-object/from16 v33, v1

    move-object/from16 v32, v8

    iget-object v1, v11, Ls/c;->i:Lq/f;

    iget-object v2, v2, Ls/c;->i:Lq/f;

    const/16 v8, 0x8

    invoke-virtual {v10, v1, v2, v15, v8}, Lq/c;->f(Lq/f;Lq/f;II)V

    :goto_19
    if-eqz v14, :cond_29

    if-nez v5, :cond_29

    const/16 v27, 0x5

    :cond_29
    if-ne v7, v13, :cond_2a

    if-eqz v5, :cond_2a

    iget-object v1, v7, Ls/d;->Q:[Z

    aget-boolean v1, v1, p3

    if-eqz v1, :cond_2a

    const/4 v1, 0x5

    goto :goto_1a

    :cond_2a
    move/from16 v1, v27

    :goto_1a
    iget-object v2, v11, Ls/c;->i:Lq/f;

    iget-object v8, v11, Ls/c;->f:Ls/c;

    iget-object v8, v8, Ls/c;->i:Lq/f;

    invoke-virtual {v10, v2, v8, v15, v1}, Lq/c;->e(Lq/f;Lq/f;II)V

    goto :goto_1b

    :cond_2b
    move-object/from16 v33, v1

    move-object/from16 v32, v8

    :goto_1b
    iget-object v1, v7, Ls/d;->O:[Ls/c;

    if-eqz v4, :cond_2d

    iget v2, v7, Ls/d;->e0:I

    const/16 v8, 0x8

    if-eq v2, v8, :cond_2c

    aget v2, v6, p3

    const/4 v6, 0x3

    if-ne v2, v6, :cond_2c

    add-int/lit8 v2, v16, 0x1

    aget-object v2, v1, v2

    iget-object v2, v2, Ls/c;->i:Lq/f;

    aget-object v6, v1, v16

    iget-object v6, v6, Ls/c;->i:Lq/f;

    const/4 v8, 0x0

    const/4 v11, 0x5

    invoke-virtual {v10, v2, v6, v8, v11}, Lq/c;->f(Lq/f;Lq/f;II)V

    goto :goto_1c

    :cond_2c
    const/4 v8, 0x0

    :goto_1c
    aget-object v2, v1, v16

    iget-object v2, v2, Ls/c;->i:Lq/f;

    aget-object v3, v3, v16

    iget-object v3, v3, Ls/c;->i:Lq/f;

    const/16 v6, 0x8

    invoke-virtual {v10, v2, v3, v8, v6}, Lq/c;->f(Lq/f;Lq/f;II)V

    :cond_2d
    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Ls/c;->f:Ls/c;

    if-eqz v1, :cond_2e

    iget-object v1, v1, Ls/c;->d:Ls/d;

    iget-object v2, v1, Ls/d;->O:[Ls/c;

    aget-object v2, v2, v16

    iget-object v2, v2, Ls/c;->f:Ls/c;

    if-eqz v2, :cond_2e

    iget-object v2, v2, Ls/c;->d:Ls/d;

    if-eq v2, v7, :cond_2f

    :cond_2e
    move-object/from16 v1, v17

    :cond_2f
    if-eqz v1, :cond_30

    move-object v7, v1

    move/from16 v6, v29

    goto :goto_1d

    :cond_30
    const/4 v6, 0x1

    :goto_1d
    move-object/from16 v11, p2

    move-object/from16 v2, v28

    move/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v8, v32

    move-object/from16 v1, v33

    goto/16 :goto_15

    :cond_31
    move-object/from16 v33, v1

    move-object/from16 v28, v2

    move-object/from16 v32, v8

    move/from16 v30, v14

    move-object/from16 v31, v15

    if-eqz v9, :cond_34

    iget-object v1, v12, Ls/d;->O:[Ls/c;

    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Ls/c;->f:Ls/c;

    if-eqz v1, :cond_34

    iget-object v1, v9, Ls/d;->O:[Ls/c;

    aget-object v1, v1, v2

    iget-object v6, v9, Ls/d;->n0:[I

    aget v6, v6, p3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_32

    iget-object v6, v9, Ls/d;->s:[I

    aget v6, v6, p3

    if-nez v6, :cond_32

    if-nez v5, :cond_32

    iget-object v6, v1, Ls/c;->f:Ls/c;

    iget-object v7, v6, Ls/c;->d:Ls/d;

    if-ne v7, v0, :cond_32

    iget-object v7, v1, Ls/c;->i:Lq/f;

    iget-object v6, v6, Ls/c;->i:Lq/f;

    invoke-virtual {v1}, Ls/c;->d()I

    move-result v8

    neg-int v8, v8

    const/4 v11, 0x5

    invoke-virtual {v10, v7, v6, v8, v11}, Lq/c;->e(Lq/f;Lq/f;II)V

    goto :goto_1e

    :cond_32
    const/4 v11, 0x5

    if-eqz v5, :cond_33

    iget-object v6, v1, Ls/c;->f:Ls/c;

    iget-object v7, v6, Ls/c;->d:Ls/d;

    if-ne v7, v0, :cond_33

    iget-object v7, v1, Ls/c;->i:Lq/f;

    iget-object v6, v6, Ls/c;->i:Lq/f;

    invoke-virtual {v1}, Ls/c;->d()I

    move-result v8

    neg-int v8, v8

    const/4 v14, 0x4

    invoke-virtual {v10, v7, v6, v8, v14}, Lq/c;->e(Lq/f;Lq/f;II)V

    :cond_33
    :goto_1e
    iget-object v6, v1, Ls/c;->i:Lq/f;

    iget-object v7, v12, Ls/d;->O:[Ls/c;

    aget-object v2, v7, v2

    iget-object v2, v2, Ls/c;->f:Ls/c;

    iget-object v2, v2, Ls/c;->i:Lq/f;

    invoke-virtual {v1}, Ls/c;->d()I

    move-result v1

    neg-int v1, v1

    const/4 v7, 0x6

    invoke-virtual {v10, v6, v2, v1, v7}, Lq/c;->g(Lq/f;Lq/f;II)V

    goto :goto_1f

    :cond_34
    const/4 v11, 0x5

    :goto_1f
    if-eqz v4, :cond_35

    add-int/lit8 v1, v16, 0x1

    aget-object v2, v3, v1

    iget-object v2, v2, Ls/c;->i:Lq/f;

    iget-object v3, v12, Ls/d;->O:[Ls/c;

    aget-object v1, v3, v1

    iget-object v3, v1, Ls/c;->i:Lq/f;

    invoke-virtual {v1}, Ls/c;->d()I

    move-result v1

    const/16 v4, 0x8

    invoke-virtual {v10, v2, v3, v1, v4}, Lq/c;->f(Lq/f;Lq/f;II)V

    :cond_35
    move-object/from16 v1, v33

    iget-object v2, v1, Ls/b;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3f

    iget-boolean v6, v1, Ls/b;->n:Z

    if-eqz v6, :cond_36

    iget-boolean v6, v1, Ls/b;->p:Z

    if-nez v6, :cond_36

    iget v6, v1, Ls/b;->j:I

    int-to-float v6, v6

    goto :goto_20

    :cond_36
    move/from16 v6, v26

    :goto_20
    move-object/from16 v14, v17

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_21
    if-ge v8, v3, :cond_3f

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ls/d;

    iget-object v4, v15, Ls/d;->i0:[F

    aget v4, v4, p3

    const/16 v21, 0x0

    cmpg-float v24, v4, v21

    iget-object v11, v15, Ls/d;->O:[Ls/c;

    if-gez v24, :cond_38

    iget-boolean v4, v1, Ls/b;->p:Z

    if-eqz v4, :cond_37

    add-int/lit8 v0, v16, 0x1

    aget-object v0, v11, v0

    iget-object v0, v0, Ls/c;->i:Lq/f;

    aget-object v4, v11, v16

    iget-object v4, v4, Ls/c;->i:Lq/f;

    const/4 v11, 0x0

    const/4 v15, 0x4

    invoke-virtual {v10, v0, v4, v11, v15}, Lq/c;->e(Lq/f;Lq/f;II)V

    move/from16 v24, v15

    goto :goto_24

    :cond_37
    const/16 v24, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_22
    const/16 v21, 0x0

    goto :goto_23

    :cond_38
    const/16 v24, 0x4

    goto :goto_22

    :goto_23
    cmpl-float v26, v4, v21

    if-nez v26, :cond_39

    add-int/lit8 v0, v16, 0x1

    aget-object v0, v11, v0

    iget-object v0, v0, Ls/c;->i:Lq/f;

    aget-object v4, v11, v16

    iget-object v4, v4, Ls/c;->i:Lq/f;

    const/4 v11, 0x0

    const/16 v15, 0x8

    invoke-virtual {v10, v0, v4, v11, v15}, Lq/c;->e(Lq/f;Lq/f;II)V

    :goto_24
    move-object/from16 v29, v2

    move/from16 v27, v3

    move/from16 v19, v11

    const/16 v21, 0x0

    goto/16 :goto_29

    :cond_39
    const/16 v19, 0x0

    if-eqz v14, :cond_3e

    iget-object v14, v14, Ls/d;->O:[Ls/c;

    aget-object v0, v14, v16

    iget-object v0, v0, Ls/c;->i:Lq/f;

    add-int/lit8 v27, v16, 0x1

    aget-object v14, v14, v27

    iget-object v14, v14, Ls/c;->i:Lq/f;

    move-object/from16 v29, v2

    aget-object v2, v11, v16

    iget-object v2, v2, Ls/c;->i:Lq/f;

    aget-object v11, v11, v27

    iget-object v11, v11, Ls/c;->i:Lq/f;

    move/from16 v27, v3

    invoke-virtual/range {p1 .. p1}, Lq/c;->l()Lq/b;

    move-result-object v3

    move-object/from16 v33, v15

    const/4 v15, 0x0

    iput v15, v3, Lq/b;->b:F

    cmpl-float v21, v6, v15

    const/high16 v15, -0x40800000    # -1.0f

    if-eqz v21, :cond_3a

    cmpl-float v21, v7, v4

    if-nez v21, :cond_3b

    :cond_3a
    move/from16 v26, v4

    move v4, v15

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    goto :goto_26

    :cond_3b
    const/16 v21, 0x0

    cmpl-float v34, v7, v21

    if-nez v34, :cond_3c

    iget-object v2, v3, Lq/b;->d:Lq/a;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0, v7}, Lq/a;->g(Lq/f;F)V

    iget-object v0, v3, Lq/b;->d:Lq/a;

    invoke-virtual {v0, v14, v15}, Lq/a;->g(Lq/f;F)V

    :goto_25
    move/from16 v26, v4

    goto :goto_27

    :cond_3c
    const/high16 v15, 0x3f800000    # 1.0f

    if-nez v26, :cond_3d

    iget-object v0, v3, Lq/b;->d:Lq/a;

    invoke-virtual {v0, v2, v15}, Lq/a;->g(Lq/f;F)V

    iget-object v0, v3, Lq/b;->d:Lq/a;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v11, v2}, Lq/a;->g(Lq/f;F)V

    goto :goto_25

    :cond_3d
    div-float/2addr v7, v6

    div-float v26, v4, v6

    div-float v7, v7, v26

    move/from16 v26, v4

    iget-object v4, v3, Lq/b;->d:Lq/a;

    invoke-virtual {v4, v0, v15}, Lq/a;->g(Lq/f;F)V

    iget-object v0, v3, Lq/b;->d:Lq/a;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v0, v14, v4}, Lq/a;->g(Lq/f;F)V

    iget-object v0, v3, Lq/b;->d:Lq/a;

    invoke-virtual {v0, v11, v7}, Lq/a;->g(Lq/f;F)V

    iget-object v0, v3, Lq/b;->d:Lq/a;

    neg-float v4, v7

    invoke-virtual {v0, v2, v4}, Lq/a;->g(Lq/f;F)V

    goto :goto_27

    :goto_26
    iget-object v7, v3, Lq/b;->d:Lq/a;

    invoke-virtual {v7, v0, v15}, Lq/a;->g(Lq/f;F)V

    iget-object v0, v3, Lq/b;->d:Lq/a;

    invoke-virtual {v0, v14, v4}, Lq/a;->g(Lq/f;F)V

    iget-object v0, v3, Lq/b;->d:Lq/a;

    invoke-virtual {v0, v11, v15}, Lq/a;->g(Lq/f;F)V

    iget-object v0, v3, Lq/b;->d:Lq/a;

    invoke-virtual {v0, v2, v4}, Lq/a;->g(Lq/f;F)V

    :goto_27
    invoke-virtual {v10, v3}, Lq/c;->c(Lq/b;)V

    goto :goto_28

    :cond_3e
    move-object/from16 v29, v2

    move/from16 v27, v3

    move/from16 v26, v4

    move-object/from16 v33, v15

    const/16 v21, 0x0

    :goto_28
    move/from16 v7, v26

    move-object/from16 v14, v33

    :goto_29
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v27

    move-object/from16 v2, v29

    const/4 v4, 0x1

    const/4 v11, 0x5

    move-object/from16 v0, p0

    goto/16 :goto_21

    :cond_3f
    const/16 v19, 0x0

    const/16 v24, 0x4

    if-eqz v13, :cond_41

    if-eq v13, v9, :cond_40

    if-eqz v5, :cond_41

    :cond_40
    move-object/from16 v0, v32

    goto :goto_2a

    :cond_41
    move-object v14, v9

    move/from16 v15, v25

    move-object/from16 v0, v32

    const/4 v11, 0x2

    goto/16 :goto_30

    :goto_2a
    iget-object v0, v0, Ls/d;->O:[Ls/c;

    aget-object v0, v0, v16

    iget-object v1, v12, Ls/d;->O:[Ls/c;

    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    iget-object v0, v0, Ls/c;->f:Ls/c;

    if-eqz v0, :cond_42

    iget-object v0, v0, Ls/c;->i:Lq/f;

    move-object v3, v0

    goto :goto_2b

    :cond_42
    move-object/from16 v3, v17

    :goto_2b
    iget-object v0, v1, Ls/c;->f:Ls/c;

    if-eqz v0, :cond_43

    iget-object v0, v0, Ls/c;->i:Lq/f;

    move-object v6, v0

    goto :goto_2c

    :cond_43
    move-object/from16 v6, v17

    :goto_2c
    iget-object v0, v13, Ls/d;->O:[Ls/c;

    aget-object v0, v0, v16

    if-eqz v9, :cond_44

    iget-object v1, v9, Ls/d;->O:[Ls/c;

    aget-object v1, v1, v2

    :cond_44
    if-eqz v3, :cond_46

    if-eqz v6, :cond_46

    if-nez p3, :cond_45

    move-object/from16 v2, v28

    iget v2, v2, Ls/d;->b0:F

    :goto_2d
    move v5, v2

    goto :goto_2e

    :cond_45
    move-object/from16 v2, v28

    iget v2, v2, Ls/d;->c0:F

    goto :goto_2d

    :goto_2e
    invoke-virtual {v0}, Ls/c;->d()I

    move-result v4

    invoke-virtual {v1}, Ls/c;->d()I

    move-result v8

    iget-object v2, v0, Ls/c;->i:Lq/f;

    iget-object v7, v1, Ls/c;->i:Lq/f;

    const/4 v0, 0x7

    move-object/from16 v1, p1

    const/4 v11, 0x2

    move-object v14, v9

    move/from16 v15, v25

    move v9, v0

    invoke-virtual/range {v1 .. v9}, Lq/c;->b(Lq/f;Lq/f;IFLq/f;Lq/f;II)V

    goto :goto_2f

    :cond_46
    move-object v14, v9

    move/from16 v15, v25

    const/4 v11, 0x2

    :cond_47
    :goto_2f
    move/from16 v23, v15

    goto/16 :goto_47

    :goto_30
    if-eqz v20, :cond_58

    if-eqz v13, :cond_58

    iget v2, v1, Ls/b;->j:I

    if-lez v2, :cond_48

    iget v1, v1, Ls/b;->i:I

    if-ne v1, v2, :cond_48

    const/16 v22, 0x1

    goto :goto_31

    :cond_48
    move/from16 v22, v19

    :goto_31
    move-object v8, v13

    move-object v9, v8

    :goto_32
    if-eqz v9, :cond_47

    iget-object v1, v9, Ls/d;->k0:[Ls/d;

    aget-object v1, v1, p3

    move-object v7, v1

    :goto_33
    if-eqz v7, :cond_49

    iget v1, v7, Ls/d;->e0:I

    const/16 v6, 0x8

    if-ne v1, v6, :cond_4a

    iget-object v1, v7, Ls/d;->k0:[Ls/d;

    aget-object v7, v1, p3

    goto :goto_33

    :cond_49
    const/16 v6, 0x8

    :cond_4a
    if-nez v7, :cond_4c

    if-ne v9, v14, :cond_4b

    goto :goto_34

    :cond_4b
    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move-object v11, v9

    goto/16 :goto_39

    :cond_4c
    :goto_34
    iget-object v1, v9, Ls/d;->O:[Ls/c;

    aget-object v2, v1, v16

    iget-object v3, v2, Ls/c;->i:Lq/f;

    iget-object v4, v2, Ls/c;->f:Ls/c;

    if-eqz v4, :cond_4d

    iget-object v4, v4, Ls/c;->i:Lq/f;

    goto :goto_35

    :cond_4d
    move-object/from16 v4, v17

    :goto_35
    if-eq v8, v9, :cond_4e

    iget-object v4, v8, Ls/d;->O:[Ls/c;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Ls/c;->i:Lq/f;

    goto :goto_36

    :cond_4e
    if-ne v9, v13, :cond_50

    iget-object v4, v0, Ls/d;->O:[Ls/c;

    aget-object v4, v4, v16

    iget-object v4, v4, Ls/c;->f:Ls/c;

    if-eqz v4, :cond_4f

    iget-object v4, v4, Ls/c;->i:Lq/f;

    goto :goto_36

    :cond_4f
    move-object/from16 v4, v17

    :cond_50
    :goto_36
    invoke-virtual {v2}, Ls/c;->d()I

    move-result v2

    add-int/lit8 v5, v16, 0x1

    aget-object v21, v1, v5

    invoke-virtual/range {v21 .. v21}, Ls/c;->d()I

    move-result v21

    if-eqz v7, :cond_51

    iget-object v6, v7, Ls/d;->O:[Ls/c;

    aget-object v6, v6, v16

    iget-object v11, v6, Ls/c;->i:Lq/f;

    goto :goto_37

    :cond_51
    iget-object v6, v12, Ls/d;->O:[Ls/c;

    aget-object v6, v6, v5

    iget-object v6, v6, Ls/c;->f:Ls/c;

    if-eqz v6, :cond_52

    iget-object v11, v6, Ls/c;->i:Lq/f;

    goto :goto_37

    :cond_52
    move-object/from16 v11, v17

    :goto_37
    aget-object v1, v1, v5

    iget-object v1, v1, Ls/c;->i:Lq/f;

    if-eqz v6, :cond_53

    invoke-virtual {v6}, Ls/c;->d()I

    move-result v6

    add-int v21, v6, v21

    :cond_53
    iget-object v6, v8, Ls/d;->O:[Ls/c;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ls/c;->d()I

    move-result v6

    add-int/2addr v6, v2

    if-eqz v3, :cond_4b

    if-eqz v4, :cond_4b

    if-eqz v11, :cond_4b

    if-eqz v1, :cond_4b

    if-ne v9, v13, :cond_54

    iget-object v2, v13, Ls/d;->O:[Ls/c;

    aget-object v2, v2, v16

    invoke-virtual {v2}, Ls/c;->d()I

    move-result v2

    move v6, v2

    :cond_54
    if-ne v9, v14, :cond_55

    iget-object v2, v14, Ls/d;->O:[Ls/c;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ls/c;->d()I

    move-result v2

    move/from16 v21, v2

    :cond_55
    if-eqz v22, :cond_56

    const/16 v24, 0x8

    goto :goto_38

    :cond_56
    const/16 v24, 0x5

    :goto_38
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v25, v1

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v6

    const/16 v23, 0x8

    move-object v6, v11

    move-object v11, v7

    move-object/from16 v7, v25

    move-object/from16 v23, v8

    move/from16 v8, v21

    move-object/from16 v21, v11

    move-object v11, v9

    move/from16 v9, v24

    invoke-virtual/range {v1 .. v9}, Lq/c;->b(Lq/f;Lq/f;IFLq/f;Lq/f;II)V

    :goto_39
    iget v1, v11, Ls/d;->e0:I

    const/16 v9, 0x8

    if-eq v1, v9, :cond_57

    move-object v8, v11

    goto :goto_3a

    :cond_57
    move-object/from16 v8, v23

    :goto_3a
    move-object/from16 v9, v21

    const/4 v11, 0x2

    goto/16 :goto_32

    :cond_58
    const/16 v9, 0x8

    if-eqz v18, :cond_47

    if-eqz v13, :cond_47

    iget v2, v1, Ls/b;->j:I

    if-lez v2, :cond_59

    iget v1, v1, Ls/b;->i:I

    if-ne v1, v2, :cond_59

    const/16 v22, 0x1

    goto :goto_3b

    :cond_59
    move/from16 v22, v19

    :goto_3b
    move-object v8, v13

    move-object v11, v8

    :goto_3c
    if-eqz v11, :cond_64

    iget-object v1, v11, Ls/d;->k0:[Ls/d;

    aget-object v1, v1, p3

    :goto_3d
    if-eqz v1, :cond_5a

    iget v2, v1, Ls/d;->e0:I

    if-ne v2, v9, :cond_5a

    iget-object v1, v1, Ls/d;->k0:[Ls/d;

    aget-object v1, v1, p3

    goto :goto_3d

    :cond_5a
    if-eq v11, v13, :cond_62

    if-eq v11, v14, :cond_62

    if-eqz v1, :cond_62

    if-ne v1, v14, :cond_5b

    move-object/from16 v7, v17

    goto :goto_3e

    :cond_5b
    move-object v7, v1

    :goto_3e
    iget-object v1, v11, Ls/d;->O:[Ls/c;

    aget-object v2, v1, v16

    iget-object v3, v2, Ls/c;->i:Lq/f;

    iget-object v4, v8, Ls/d;->O:[Ls/c;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Ls/c;->i:Lq/f;

    invoke-virtual {v2}, Ls/c;->d()I

    move-result v2

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ls/c;->d()I

    move-result v6

    if-eqz v7, :cond_5d

    iget-object v1, v7, Ls/d;->O:[Ls/c;

    aget-object v1, v1, v16

    iget-object v9, v1, Ls/c;->i:Lq/f;

    move-object/from16 v21, v7

    iget-object v7, v1, Ls/c;->f:Ls/c;

    if-eqz v7, :cond_5c

    iget-object v7, v7, Ls/c;->i:Lq/f;

    goto :goto_40

    :cond_5c
    move-object/from16 v7, v17

    goto :goto_40

    :cond_5d
    move-object/from16 v21, v7

    iget-object v7, v14, Ls/d;->O:[Ls/c;

    aget-object v7, v7, v16

    if-eqz v7, :cond_5e

    iget-object v9, v7, Ls/c;->i:Lq/f;

    goto :goto_3f

    :cond_5e
    move-object/from16 v9, v17

    :goto_3f
    aget-object v1, v1, v5

    iget-object v1, v1, Ls/c;->i:Lq/f;

    move-object/from16 v35, v7

    move-object v7, v1

    move-object/from16 v1, v35

    :goto_40
    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Ls/c;->d()I

    move-result v1

    add-int/2addr v1, v6

    move/from16 v23, v1

    goto :goto_41

    :cond_5f
    move/from16 v23, v6

    :goto_41
    iget-object v1, v8, Ls/d;->O:[Ls/c;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ls/c;->d()I

    move-result v1

    add-int v5, v1, v2

    if-eqz v22, :cond_60

    const/16 v25, 0x8

    goto :goto_42

    :cond_60
    move/from16 v25, v24

    :goto_42
    if-eqz v3, :cond_61

    if-eqz v4, :cond_61

    if-eqz v9, :cond_61

    if-eqz v7, :cond_61

    const/high16 v6, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v9

    move-object/from16 v26, v8

    move/from16 v8, v23

    move/from16 v23, v15

    const/16 v15, 0x8

    move/from16 v9, v25

    invoke-virtual/range {v1 .. v9}, Lq/c;->b(Lq/f;Lq/f;IFLq/f;Lq/f;II)V

    goto :goto_43

    :cond_61
    move-object/from16 v26, v8

    move/from16 v23, v15

    const/16 v15, 0x8

    :goto_43
    move-object/from16 v1, v21

    goto :goto_44

    :cond_62
    move-object/from16 v26, v8

    move/from16 v23, v15

    move v15, v9

    :goto_44
    iget v2, v11, Ls/d;->e0:I

    if-eq v2, v15, :cond_63

    move-object v8, v11

    goto :goto_45

    :cond_63
    move-object/from16 v8, v26

    :goto_45
    move-object v11, v1

    move v9, v15

    move/from16 v15, v23

    goto/16 :goto_3c

    :cond_64
    move/from16 v23, v15

    iget-object v1, v13, Ls/d;->O:[Ls/c;

    aget-object v1, v1, v16

    iget-object v0, v0, Ls/d;->O:[Ls/c;

    aget-object v0, v0, v16

    iget-object v0, v0, Ls/c;->f:Ls/c;

    iget-object v2, v14, Ls/d;->O:[Ls/c;

    add-int/lit8 v3, v16, 0x1

    aget-object v11, v2, v3

    iget-object v2, v12, Ls/d;->O:[Ls/c;

    aget-object v2, v2, v3

    iget-object v15, v2, Ls/c;->f:Ls/c;

    const/4 v9, 0x5

    if-eqz v0, :cond_65

    if-eq v13, v14, :cond_66

    iget-object v2, v1, Ls/c;->i:Lq/f;

    iget-object v0, v0, Ls/c;->i:Lq/f;

    invoke-virtual {v1}, Ls/c;->d()I

    move-result v1

    invoke-virtual {v10, v2, v0, v1, v9}, Lq/c;->e(Lq/f;Lq/f;II)V

    :cond_65
    move v0, v9

    goto :goto_46

    :cond_66
    if-eqz v15, :cond_65

    iget-object v2, v1, Ls/c;->i:Lq/f;

    iget-object v3, v0, Ls/c;->i:Lq/f;

    invoke-virtual {v1}, Ls/c;->d()I

    move-result v4

    iget-object v6, v11, Ls/c;->i:Lq/f;

    iget-object v7, v15, Ls/c;->i:Lq/f;

    invoke-virtual {v11}, Ls/c;->d()I

    move-result v8

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move v0, v9

    invoke-virtual/range {v1 .. v9}, Lq/c;->b(Lq/f;Lq/f;IFLq/f;Lq/f;II)V

    :goto_46
    if-eqz v15, :cond_67

    if-eq v13, v14, :cond_67

    iget-object v1, v11, Ls/c;->i:Lq/f;

    iget-object v2, v15, Ls/c;->i:Lq/f;

    invoke-virtual {v11}, Ls/c;->d()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v10, v1, v2, v3, v0}, Lq/c;->e(Lq/f;Lq/f;II)V

    :cond_67
    :goto_47
    if-nez v20, :cond_68

    if-eqz v18, :cond_6f

    :cond_68
    if-eqz v13, :cond_6f

    if-eq v13, v14, :cond_6f

    iget-object v0, v13, Ls/d;->O:[Ls/c;

    aget-object v1, v0, v16

    if-nez v14, :cond_69

    move-object v9, v13

    goto :goto_48

    :cond_69
    move-object v9, v14

    :goto_48
    add-int/lit8 v2, v16, 0x1

    iget-object v3, v9, Ls/d;->O:[Ls/c;

    aget-object v4, v3, v2

    iget-object v5, v1, Ls/c;->f:Ls/c;

    if-eqz v5, :cond_6a

    iget-object v5, v5, Ls/c;->i:Lq/f;

    goto :goto_49

    :cond_6a
    move-object/from16 v5, v17

    :goto_49
    iget-object v6, v4, Ls/c;->f:Ls/c;

    if-eqz v6, :cond_6b

    iget-object v6, v6, Ls/c;->i:Lq/f;

    goto :goto_4a

    :cond_6b
    move-object/from16 v6, v17

    :goto_4a
    if-eq v12, v9, :cond_6d

    iget-object v6, v12, Ls/d;->O:[Ls/c;

    aget-object v6, v6, v2

    iget-object v6, v6, Ls/c;->f:Ls/c;

    if-eqz v6, :cond_6c

    iget-object v6, v6, Ls/c;->i:Lq/f;

    move-object/from16 v17, v6

    :cond_6c
    move-object/from16 v6, v17

    :cond_6d
    if-ne v13, v9, :cond_6e

    aget-object v4, v0, v2

    :cond_6e
    if-eqz v5, :cond_6f

    if-eqz v6, :cond_6f

    invoke-virtual {v1}, Ls/c;->d()I

    move-result v0

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ls/c;->d()I

    move-result v8

    iget-object v2, v1, Ls/c;->i:Lq/f;

    iget-object v7, v4, Ls/c;->i:Lq/f;

    const/4 v9, 0x5

    const/high16 v11, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v3, v5

    move v4, v0

    move v5, v11

    invoke-virtual/range {v1 .. v9}, Lq/c;->b(Lq/f;Lq/f;IFLq/f;Lq/f;II)V

    :cond_6f
    :goto_4b
    add-int/lit8 v9, v23, 0x1

    const/4 v12, 0x2

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move/from16 v14, v30

    move-object/from16 v15, v31

    goto/16 :goto_1

    :cond_70
    return-void
.end method

.method public static b(Ls/e;Lq/c;Ls/d;)V
    .locals 8

    const/4 v0, -0x1

    iput v0, p2, Ls/d;->n:I

    iput v0, p2, Ls/d;->o:I

    iget-object v0, p0, Ls/d;->n0:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p2, Ls/d;->n0:[I

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eq v0, v3, :cond_0

    aget v0, v2, v1

    if-ne v0, v4, :cond_0

    iget-object v0, p2, Ls/d;->G:Ls/c;

    iget v1, v0, Ls/c;->g:I

    invoke-virtual {p0}, Ls/d;->l()I

    move-result v5

    iget-object v6, p2, Ls/d;->I:Ls/c;

    iget v7, v6, Ls/c;->g:I

    sub-int/2addr v5, v7

    invoke-virtual {p1, v0}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object v7

    iput-object v7, v0, Ls/c;->i:Lq/f;

    invoke-virtual {p1, v6}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object v7

    iput-object v7, v6, Ls/c;->i:Lq/f;

    iget-object v0, v0, Ls/c;->i:Lq/f;

    invoke-virtual {p1, v0, v1}, Lq/c;->d(Lq/f;I)V

    iget-object v0, v6, Ls/c;->i:Lq/f;

    invoke-virtual {p1, v0, v5}, Lq/c;->d(Lq/f;I)V

    iput v3, p2, Ls/d;->n:I

    iput v1, p2, Ls/d;->W:I

    sub-int/2addr v5, v1

    iput v5, p2, Ls/d;->S:I

    iget v0, p2, Ls/d;->Z:I

    if-ge v5, v0, :cond_0

    iput v0, p2, Ls/d;->S:I

    :cond_0
    iget-object v0, p0, Ls/d;->n0:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eq v0, v3, :cond_3

    aget v0, v2, v1

    if-ne v0, v4, :cond_3

    iget-object v0, p2, Ls/d;->H:Ls/c;

    iget v1, v0, Ls/c;->g:I

    invoke-virtual {p0}, Ls/d;->i()I

    move-result p0

    iget-object v2, p2, Ls/d;->J:Ls/c;

    iget v4, v2, Ls/c;->g:I

    sub-int/2addr p0, v4

    invoke-virtual {p1, v0}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object v4

    iput-object v4, v0, Ls/c;->i:Lq/f;

    invoke-virtual {p1, v2}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object v4

    iput-object v4, v2, Ls/c;->i:Lq/f;

    iget-object v0, v0, Ls/c;->i:Lq/f;

    invoke-virtual {p1, v0, v1}, Lq/c;->d(Lq/f;I)V

    iget-object v0, v2, Ls/c;->i:Lq/f;

    invoke-virtual {p1, v0, p0}, Lq/c;->d(Lq/f;I)V

    iget v0, p2, Ls/d;->Y:I

    if-gtz v0, :cond_1

    iget v0, p2, Ls/d;->e0:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p2, Ls/d;->K:Ls/c;

    invoke-virtual {p1, v0}, Lq/c;->k(Ljava/lang/Object;)Lq/f;

    move-result-object v2

    iput-object v2, v0, Ls/c;->i:Lq/f;

    iget v0, p2, Ls/d;->Y:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Lq/c;->d(Lq/f;I)V

    :cond_2
    iput v3, p2, Ls/d;->o:I

    iput v1, p2, Ls/d;->X:I

    sub-int/2addr p0, v1

    iput p0, p2, Ls/d;->T:I

    iget p1, p2, Ls/d;->a0:I

    if-ge p0, p1, :cond_3

    iput p1, p2, Ls/d;->T:I

    :cond_3
    return-void
.end method

.method public static final c(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
