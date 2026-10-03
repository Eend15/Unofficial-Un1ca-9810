.class public final Lt/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ls/e;

.field public b:Z

.field public c:Z

.field public d:Ls/e;

.field public e:Ljava/util/ArrayList;

.field public f:Lv/d;

.field public g:Lt/b;

.field public h:Ljava/util/ArrayList;


# virtual methods
.method public final a(Lt/f;ILjava/util/ArrayList;Lt/l;)V
    .locals 6

    iget-object p1, p1, Lt/f;->d:Lt/o;

    iget-object v0, p1, Lt/o;->c:Lt/l;

    if-nez v0, :cond_a

    iget-object v0, p0, Lt/e;->a:Ls/e;

    iget-object v1, v0, Ls/d;->d:Lt/k;

    if-eq p1, v1, :cond_a

    iget-object v0, v0, Ls/d;->e:Lt/m;

    if-ne p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p4, :cond_1

    new-instance p4, Lt/l;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p4, Lt/l;->a:Lt/o;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p4, Lt/l;->b:Ljava/util/ArrayList;

    iput-object p1, p4, Lt/l;->a:Lt/o;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object p4, p1, Lt/o;->c:Lt/l;

    iget-object v0, p4, Lt/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lt/o;->h:Lt/f;

    iget-object v1, v0, Lt/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt/d;

    instance-of v3, v2, Lt/f;

    if-eqz v3, :cond_2

    check-cast v2, Lt/f;

    invoke-virtual {p0, v2, p2, p3, p4}, Lt/e;->a(Lt/f;ILjava/util/ArrayList;Lt/l;)V

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lt/o;->i:Lt/f;

    iget-object v2, v1, Lt/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt/d;

    instance-of v4, v3, Lt/f;

    if-eqz v4, :cond_4

    check-cast v3, Lt/f;

    invoke-virtual {p0, v3, p2, p3, p4}, Lt/e;->a(Lt/f;ILjava/util/ArrayList;Lt/l;)V

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    if-ne p2, v2, :cond_7

    instance-of v3, p1, Lt/m;

    if-eqz v3, :cond_7

    move-object v3, p1

    check-cast v3, Lt/m;

    iget-object v3, v3, Lt/m;->k:Lt/f;

    iget-object v3, v3, Lt/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt/d;

    instance-of v5, v4, Lt/f;

    if-eqz v5, :cond_6

    check-cast v4, Lt/f;

    invoke-virtual {p0, v4, p2, p3, p4}, Lt/e;->a(Lt/f;ILjava/util/ArrayList;Lt/l;)V

    goto :goto_2

    :cond_7
    iget-object v0, v0, Lt/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt/f;

    invoke-virtual {p0, v3, p2, p3, p4}, Lt/e;->a(Lt/f;ILjava/util/ArrayList;Lt/l;)V

    goto :goto_3

    :cond_8
    iget-object v0, v1, Lt/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/f;

    invoke-virtual {p0, v1, p2, p3, p4}, Lt/e;->a(Lt/f;ILjava/util/ArrayList;Lt/l;)V

    goto :goto_4

    :cond_9
    if-ne p2, v2, :cond_a

    instance-of v0, p1, Lt/m;

    if-eqz v0, :cond_a

    check-cast p1, Lt/m;

    iget-object p1, p1, Lt/m;->k:Lt/f;

    iget-object p1, p1, Lt/f;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/f;

    invoke-virtual {p0, v0, p2, p3, p4}, Lt/e;->a(Lt/f;ILjava/util/ArrayList;Lt/l;)V

    goto :goto_5

    :cond_a
    :goto_6
    return-void
.end method

.method public final b(Ls/e;)V
    .locals 16

    move-object/from16 v0, p1

    iget-object v1, v0, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/d;

    iget-object v3, v2, Ls/d;->n0:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v9, 0x1

    aget v3, v3, v9

    iget v6, v2, Ls/d;->e0:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    iput-boolean v9, v2, Ls/d;->a:Z

    goto :goto_0

    :cond_1
    iget v6, v2, Ls/d;->v:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v10

    const/4 v8, 0x3

    const/4 v11, 0x2

    if-gez v7, :cond_2

    if-ne v5, v8, :cond_2

    iput v11, v2, Ls/d;->q:I

    :cond_2
    iget v7, v2, Ls/d;->y:F

    cmpg-float v12, v7, v10

    if-gez v12, :cond_3

    if-ne v3, v8, :cond_3

    iput v11, v2, Ls/d;->r:I

    :cond_3
    iget v12, v2, Ls/d;->U:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-lez v12, :cond_9

    if-ne v5, v8, :cond_5

    if-eq v3, v13, :cond_4

    if-ne v3, v14, :cond_5

    :cond_4
    iput v8, v2, Ls/d;->q:I

    goto :goto_1

    :cond_5
    if-ne v3, v8, :cond_7

    if-eq v5, v13, :cond_6

    if-ne v5, v14, :cond_7

    :cond_6
    iput v8, v2, Ls/d;->r:I

    goto :goto_1

    :cond_7
    if-ne v5, v8, :cond_9

    if-ne v3, v8, :cond_9

    iget v12, v2, Ls/d;->q:I

    if-nez v12, :cond_8

    iput v8, v2, Ls/d;->q:I

    :cond_8
    iget v12, v2, Ls/d;->r:I

    if-nez v12, :cond_9

    iput v8, v2, Ls/d;->r:I

    :cond_9
    :goto_1
    iget-object v12, v2, Ls/d;->I:Ls/c;

    iget-object v15, v2, Ls/d;->G:Ls/c;

    if-ne v5, v8, :cond_b

    iget v10, v2, Ls/d;->q:I

    if-ne v10, v9, :cond_b

    iget-object v10, v15, Ls/c;->f:Ls/c;

    if-eqz v10, :cond_a

    iget-object v10, v12, Ls/c;->f:Ls/c;

    if-nez v10, :cond_b

    :cond_a
    move v5, v13

    :cond_b
    iget-object v10, v2, Ls/d;->J:Ls/c;

    iget-object v4, v2, Ls/d;->H:Ls/c;

    if-ne v3, v8, :cond_d

    iget v11, v2, Ls/d;->r:I

    if-ne v11, v9, :cond_d

    iget-object v11, v4, Ls/c;->f:Ls/c;

    if-eqz v11, :cond_c

    iget-object v11, v10, Ls/c;->f:Ls/c;

    if-nez v11, :cond_d

    :cond_c
    move v11, v13

    goto :goto_2

    :cond_d
    move v11, v3

    :goto_2
    iget-object v3, v2, Ls/d;->d:Lt/k;

    iput v5, v3, Lt/o;->d:I

    iget v9, v2, Ls/d;->q:I

    iput v9, v3, Lt/o;->a:I

    iget-object v3, v2, Ls/d;->e:Lt/m;

    iput v11, v3, Lt/o;->d:I

    iget v8, v2, Ls/d;->r:I

    iput v8, v3, Lt/o;->a:I

    const/4 v3, 0x4

    if-eq v5, v3, :cond_e

    if-eq v5, v14, :cond_e

    if-ne v5, v13, :cond_f

    :cond_e
    if-eq v11, v3, :cond_25

    if-eq v11, v14, :cond_25

    if-ne v11, v13, :cond_f

    goto/16 :goto_a

    :cond_f
    iget-object v4, v0, Ls/d;->n0:[I

    iget-object v10, v2, Ls/d;->O:[Ls/c;

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v15, 0x3

    if-ne v5, v15, :cond_10

    if-eq v11, v13, :cond_11

    if-ne v11, v14, :cond_10

    goto :goto_3

    :cond_10
    move v3, v15

    goto/16 :goto_5

    :cond_11
    :goto_3
    if-ne v9, v15, :cond_13

    if-ne v11, v13, :cond_12

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p0

    move v4, v13

    move v6, v13

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lt/e;->f(IIIILs/d;)V

    :cond_12
    invoke-virtual {v2}, Ls/d;->i()I

    move-result v7

    int-to-float v3, v7

    iget v4, v2, Ls/d;->U:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v12

    float-to-int v5, v3

    move-object/from16 v3, p0

    move v4, v14

    move v6, v14

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lt/e;->f(IIIILs/d;)V

    iget-object v3, v2, Ls/d;->d:Lt/k;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    iget-object v3, v2, Ls/d;->e:Lt/m;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    const/4 v15, 0x1

    iput-boolean v15, v2, Ls/d;->a:Z

    goto/16 :goto_0

    :cond_13
    const/4 v15, 0x1

    if-ne v9, v15, :cond_14

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move v4, v13

    move v6, v11

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lt/e;->f(IIIILs/d;)V

    iget-object v3, v2, Ls/d;->d:Lt/k;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->l()I

    move-result v2

    iput v2, v3, Lt/g;->m:I

    goto/16 :goto_0

    :cond_14
    const/4 v15, 0x2

    if-ne v9, v15, :cond_17

    const/4 v15, 0x0

    aget v13, v4, v15

    if-eq v13, v14, :cond_16

    if-ne v13, v3, :cond_15

    goto :goto_4

    :cond_15
    const/4 v3, 0x3

    goto :goto_5

    :cond_16
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ls/d;->l()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v6, v3

    add-float/2addr v6, v12

    float-to-int v5, v6

    invoke-virtual {v2}, Ls/d;->i()I

    move-result v7

    move-object/from16 v3, p0

    move v4, v14

    move v6, v11

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lt/e;->f(IIIILs/d;)V

    iget-object v3, v2, Ls/d;->d:Lt/k;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    iget-object v3, v2, Ls/d;->e:Lt/m;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    const/4 v13, 0x1

    iput-boolean v13, v2, Ls/d;->a:Z

    goto/16 :goto_0

    :cond_17
    const/4 v13, 0x1

    const/4 v15, 0x0

    aget-object v3, v10, v15

    iget-object v3, v3, Ls/c;->f:Ls/c;

    if-eqz v3, :cond_18

    aget-object v3, v10, v13

    iget-object v3, v3, Ls/c;->f:Ls/c;

    if-nez v3, :cond_15

    :cond_18
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    const/4 v4, 0x2

    move v6, v11

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lt/e;->f(IIIILs/d;)V

    iget-object v3, v2, Ls/d;->d:Lt/k;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    iget-object v3, v2, Ls/d;->e:Lt/m;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Ls/d;->a:Z

    goto/16 :goto_0

    :goto_5
    if-ne v11, v3, :cond_1f

    const/4 v13, 0x2

    if-eq v5, v13, :cond_1a

    if-ne v5, v14, :cond_19

    goto :goto_6

    :cond_19
    move v10, v3

    const/4 v3, 0x1

    goto/16 :goto_8

    :cond_1a
    :goto_6
    if-ne v8, v3, :cond_1d

    if-ne v5, v13, :cond_1b

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p0

    move v4, v13

    move v6, v13

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lt/e;->f(IIIILs/d;)V

    :cond_1b
    invoke-virtual {v2}, Ls/d;->l()I

    move-result v5

    iget v3, v2, Ls/d;->U:F

    iget v4, v2, Ls/d;->V:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1c

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    :cond_1c
    int-to-float v4, v5

    mul-float/2addr v4, v3

    add-float/2addr v4, v12

    float-to-int v7, v4

    move-object/from16 v3, p0

    move v4, v14

    move v6, v14

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lt/e;->f(IIIILs/d;)V

    iget-object v3, v2, Ls/d;->d:Lt/k;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    iget-object v3, v2, Ls/d;->e:Lt/m;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Ls/d;->a:Z

    goto/16 :goto_0

    :cond_1d
    const/4 v3, 0x1

    if-ne v8, v3, :cond_1e

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move v4, v5

    move v5, v6

    const/4 v6, 0x2

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lt/e;->f(IIIILs/d;)V

    iget-object v3, v2, Ls/d;->e:Lt/m;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->i()I

    move-result v2

    iput v2, v3, Lt/g;->m:I

    goto/16 :goto_0

    :cond_1e
    const/4 v3, 0x2

    if-ne v8, v3, :cond_21

    const/4 v3, 0x1

    aget v10, v4, v3

    if-eq v10, v14, :cond_20

    const/4 v3, 0x4

    if-ne v10, v3, :cond_1f

    goto :goto_7

    :cond_1f
    const/4 v3, 0x1

    const/4 v10, 0x3

    goto :goto_8

    :cond_20
    :goto_7
    invoke-virtual {v2}, Ls/d;->l()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ls/d;->i()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v7, v3

    add-float/2addr v7, v12

    float-to-int v7, v7

    move-object/from16 v3, p0

    move v4, v5

    move v5, v6

    move v6, v14

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lt/e;->f(IIIILs/d;)V

    iget-object v3, v2, Ls/d;->d:Lt/k;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    iget-object v3, v2, Ls/d;->e:Lt/m;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Ls/d;->a:Z

    goto/16 :goto_0

    :cond_21
    aget-object v13, v10, v3

    iget-object v3, v13, Ls/c;->f:Ls/c;

    if-eqz v3, :cond_22

    const/4 v3, 0x3

    aget-object v10, v10, v3

    iget-object v3, v10, Ls/c;->f:Ls/c;

    if-nez v3, :cond_1f

    :cond_22
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    const/4 v4, 0x2

    move v6, v11

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lt/e;->f(IIIILs/d;)V

    iget-object v3, v2, Ls/d;->d:Lt/k;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    iget-object v3, v2, Ls/d;->e:Lt/m;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Ls/d;->a:Z

    goto/16 :goto_0

    :goto_8
    if-ne v5, v10, :cond_0

    if-ne v11, v10, :cond_0

    if-eq v9, v3, :cond_24

    if-ne v8, v3, :cond_23

    goto :goto_9

    :cond_23
    const/4 v5, 0x2

    if-ne v8, v5, :cond_0

    if-ne v9, v5, :cond_0

    const/4 v5, 0x0

    aget v5, v4, v5

    if-ne v5, v14, :cond_0

    aget v4, v4, v3

    if-ne v4, v14, :cond_0

    invoke-virtual/range {p1 .. p1}, Ls/d;->l()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v6, v3

    add-float/2addr v6, v12

    float-to-int v5, v6

    invoke-virtual/range {p1 .. p1}, Ls/d;->i()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v7, v3

    add-float/2addr v7, v12

    float-to-int v7, v7

    move-object/from16 v3, p0

    move v4, v14

    move v6, v14

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lt/e;->f(IIIILs/d;)V

    iget-object v3, v2, Ls/d;->d:Lt/k;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    iget-object v3, v2, Ls/d;->e:Lt/m;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Ls/d;->a:Z

    goto/16 :goto_0

    :cond_24
    :goto_9
    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p0

    const/4 v6, 0x2

    move v4, v6

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lt/e;->f(IIIILs/d;)V

    iget-object v3, v2, Ls/d;->d:Lt/k;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->l()I

    move-result v4

    iput v4, v3, Lt/g;->m:I

    iget-object v3, v2, Ls/d;->e:Lt/m;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->i()I

    move-result v2

    iput v2, v3, Lt/g;->m:I

    goto/16 :goto_0

    :cond_25
    :goto_a
    invoke-virtual {v2}, Ls/d;->l()I

    move-result v3

    const/4 v6, 0x4

    if-ne v5, v6, :cond_26

    invoke-virtual/range {p1 .. p1}, Ls/d;->l()I

    move-result v3

    iget v5, v15, Ls/c;->g:I

    sub-int/2addr v3, v5

    iget v5, v12, Ls/c;->g:I

    sub-int/2addr v3, v5

    move v7, v3

    move v5, v14

    goto :goto_b

    :cond_26
    move v7, v3

    :goto_b
    invoke-virtual {v2}, Ls/d;->i()I

    move-result v3

    if-ne v11, v6, :cond_27

    invoke-virtual/range {p1 .. p1}, Ls/d;->i()I

    move-result v3

    iget v4, v4, Ls/c;->g:I

    sub-int/2addr v3, v4

    iget v4, v10, Ls/c;->g:I

    sub-int/2addr v3, v4

    move v8, v3

    move v6, v14

    goto :goto_c

    :cond_27
    move v8, v3

    move v6, v11

    :goto_c
    move-object/from16 v3, p0

    move v4, v5

    move v5, v7

    move v7, v8

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lt/e;->f(IIIILs/d;)V

    iget-object v3, v2, Ls/d;->d:Lt/k;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    iget-object v3, v2, Ls/d;->e:Lt/m;

    iget-object v3, v3, Lt/o;->e:Lt/g;

    invoke-virtual {v2}, Ls/d;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Ls/d;->a:Z

    goto/16 :goto_0

    :cond_28
    return-void
.end method

.method public final c()V
    .locals 8

    iget-object v0, p0, Lt/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lt/e;->d:Ls/e;

    iget-object v2, v1, Ls/d;->d:Lt/k;

    invoke-virtual {v2}, Lt/k;->f()V

    iget-object v2, v1, Ls/d;->e:Lt/m;

    invoke-virtual {v2}, Lt/m;->f()V

    iget-object v2, v1, Ls/d;->d:Lt/k;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Ls/d;->e:Lt/m;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/d;

    instance-of v7, v4, Ls/f;

    if-eqz v7, :cond_1

    new-instance v5, Lt/i;

    invoke-direct {v5, v4}, Lt/o;-><init>(Ls/d;)V

    iget-object v6, v4, Ls/d;->d:Lt/k;

    invoke-virtual {v6}, Lt/k;->f()V

    iget-object v6, v4, Ls/d;->e:Lt/m;

    invoke-virtual {v6}, Lt/m;->f()V

    check-cast v4, Ls/f;

    iget v4, v4, Ls/f;->s0:I

    iput v4, v5, Lt/o;->f:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ls/d;->s()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v4, Ls/d;->b:Lt/c;

    if-nez v7, :cond_2

    new-instance v7, Lt/c;

    invoke-direct {v7, v4, v6}, Lt/c;-><init>(Ls/d;I)V

    iput-object v7, v4, Ls/d;->b:Lt/c;

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_3
    iget-object v6, v4, Ls/d;->b:Lt/c;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v6, v4, Ls/d;->d:Lt/k;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v4}, Ls/d;->t()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v4, Ls/d;->c:Lt/c;

    if-nez v6, :cond_5

    new-instance v6, Lt/c;

    invoke-direct {v6, v4, v5}, Lt/c;-><init>(Ls/d;I)V

    iput-object v6, v4, Ls/d;->c:Lt/c;

    :cond_5
    if-nez v3, :cond_6

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_6
    iget-object v5, v4, Ls/d;->c:Lt/c;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v5, v4, Ls/d;->e:Lt/m;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    instance-of v5, v4, Ls/a;

    if-eqz v5, :cond_0

    new-instance v5, Lt/j;

    invoke-direct {v5, v4}, Lt/o;-><init>(Ls/d;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt/o;

    invoke-virtual {v3}, Lt/o;->f()V

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt/o;

    iget-object v3, v2, Lt/o;->b:Ls/d;

    if-ne v3, v1, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v2}, Lt/o;->d()V

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lt/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lt/e;->a:Ls/e;

    iget-object v2, v1, Ls/d;->d:Lt/k;

    invoke-virtual {p0, v2, v6, v0}, Lt/e;->e(Lt/o;ILjava/util/ArrayList;)V

    iget-object v1, v1, Ls/d;->e:Lt/m;

    invoke-virtual {p0, v1, v5, v0}, Lt/e;->e(Lt/o;ILjava/util/ArrayList;)V

    iput-boolean v6, p0, Lt/e;->b:Z

    return-void
.end method

.method public final d(Ls/e;I)I
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-object v1, v1, Lt/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    if-ge v6, v3, :cond_d

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lt/l;

    iget-object v9, v9, Lt/l;->a:Lt/o;

    instance-of v10, v9, Lt/c;

    if-eqz v10, :cond_0

    move-object v10, v9

    check-cast v10, Lt/c;

    iget v10, v10, Lt/o;->f:I

    if-eq v10, v2, :cond_2

    :goto_1
    move-object/from16 p0, v1

    move-wide v0, v4

    move/from16 v16, v6

    goto/16 :goto_8

    :cond_0
    if-nez v2, :cond_1

    instance-of v10, v9, Lt/k;

    if-nez v10, :cond_2

    goto :goto_1

    :cond_1
    instance-of v10, v9, Lt/m;

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    iget-object v10, v0, Ls/d;->d:Lt/k;

    :goto_2
    iget-object v10, v10, Lt/o;->h:Lt/f;

    goto :goto_3

    :cond_3
    iget-object v10, v0, Ls/d;->e:Lt/m;

    goto :goto_2

    :goto_3
    if-nez v2, :cond_4

    iget-object v11, v0, Ls/d;->d:Lt/k;

    :goto_4
    iget-object v11, v11, Lt/o;->i:Lt/f;

    goto :goto_5

    :cond_4
    iget-object v11, v0, Ls/d;->e:Lt/m;

    goto :goto_4

    :goto_5
    iget-object v12, v9, Lt/o;->h:Lt/f;

    iget-object v12, v12, Lt/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    iget-object v12, v9, Lt/o;->i:Lt/f;

    iget-object v13, v12, Lt/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v9}, Lt/o;->j()J

    move-result-wide v13

    iget-object v15, v9, Lt/o;->h:Lt/f;

    if-eqz v10, :cond_a

    if-eqz v11, :cond_a

    invoke-static {v15, v4, v5}, Lt/l;->b(Lt/f;J)J

    move-result-wide v10

    move-object/from16 p0, v1

    invoke-static {v12, v4, v5}, Lt/l;->a(Lt/f;J)J

    move-result-wide v0

    sub-long/2addr v10, v13

    iget v4, v12, Lt/f;->f:I

    neg-int v5, v4

    move/from16 v16, v6

    int-to-long v5, v5

    cmp-long v5, v10, v5

    if-ltz v5, :cond_5

    int-to-long v4, v4

    add-long/2addr v10, v4

    :cond_5
    neg-long v0, v0

    sub-long/2addr v0, v13

    iget v4, v15, Lt/f;->f:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    cmp-long v6, v0, v4

    if-ltz v6, :cond_6

    sub-long/2addr v0, v4

    :cond_6
    iget-object v4, v9, Lt/o;->b:Ls/d;

    if-nez v2, :cond_7

    iget v4, v4, Ls/d;->b0:F

    goto :goto_6

    :cond_7
    const/4 v5, 0x1

    if-ne v2, v5, :cond_8

    iget v4, v4, Ls/d;->c0:F

    goto :goto_6

    :cond_8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v4, -0x40800000    # -1.0f

    :goto_6
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v5, :cond_9

    long-to-float v0, v0

    div-float/2addr v0, v4

    long-to-float v1, v10

    sub-float v5, v6, v4

    div-float/2addr v1, v5

    add-float/2addr v1, v0

    float-to-long v0, v1

    goto :goto_7

    :cond_9
    const-wide/16 v0, 0x0

    :goto_7
    long-to-float v0, v0

    mul-float v1, v0, v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v1, v5

    float-to-long v9, v1

    invoke-static {v6, v4, v0, v5}, Li4/b;->b(FFFF)F

    move-result v0

    float-to-long v0, v0

    add-long/2addr v9, v13

    add-long/2addr v9, v0

    iget v0, v15, Lt/f;->f:I

    int-to-long v0, v0

    add-long/2addr v0, v9

    iget v4, v12, Lt/f;->f:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    goto :goto_8

    :cond_a
    move-object/from16 p0, v1

    move/from16 v16, v6

    if-eqz v10, :cond_b

    iget v0, v15, Lt/f;->f:I

    int-to-long v0, v0

    invoke-static {v15, v0, v1}, Lt/l;->b(Lt/f;J)J

    move-result-wide v0

    iget v4, v15, Lt/f;->f:I

    int-to-long v4, v4

    add-long/2addr v4, v13

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_8

    :cond_b
    if-eqz v11, :cond_c

    iget v0, v12, Lt/f;->f:I

    int-to-long v0, v0

    invoke-static {v12, v0, v1}, Lt/l;->a(Lt/f;J)J

    move-result-wide v0

    iget v4, v12, Lt/f;->f:I

    neg-int v4, v4

    int-to-long v4, v4

    add-long/2addr v4, v13

    neg-long v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_8

    :cond_c
    iget v0, v15, Lt/f;->f:I

    int-to-long v0, v0

    invoke-virtual {v9}, Lt/o;->j()J

    move-result-wide v4

    add-long/2addr v4, v0

    iget v0, v12, Lt/f;->f:I

    int-to-long v0, v0

    sub-long v0, v4, v0

    :goto_8
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    add-int/lit8 v6, v16, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :cond_d
    long-to-int v0, v7

    return v0
.end method

.method public final e(Lt/o;ILjava/util/ArrayList;)V
    .locals 4

    iget-object v0, p1, Lt/o;->h:Lt/f;

    iget-object v0, v0, Lt/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v2, p1, Lt/o;->i:Lt/f;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/d;

    instance-of v2, v1, Lt/f;

    if-eqz v2, :cond_1

    check-cast v1, Lt/f;

    invoke-virtual {p0, v1, p2, p3, v3}, Lt/e;->a(Lt/f;ILjava/util/ArrayList;Lt/l;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lt/o;

    if-eqz v2, :cond_0

    check-cast v1, Lt/o;

    iget-object v1, v1, Lt/o;->h:Lt/f;

    invoke-virtual {p0, v1, p2, p3, v3}, Lt/e;->a(Lt/f;ILjava/util/ArrayList;Lt/l;)V

    goto :goto_0

    :cond_2
    iget-object v0, v2, Lt/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/d;

    instance-of v2, v1, Lt/f;

    if-eqz v2, :cond_4

    check-cast v1, Lt/f;

    invoke-virtual {p0, v1, p2, p3, v3}, Lt/e;->a(Lt/f;ILjava/util/ArrayList;Lt/l;)V

    goto :goto_1

    :cond_4
    instance-of v2, v1, Lt/o;

    if-eqz v2, :cond_3

    check-cast v1, Lt/o;

    iget-object v1, v1, Lt/o;->i:Lt/f;

    invoke-virtual {p0, v1, p2, p3, v3}, Lt/e;->a(Lt/f;ILjava/util/ArrayList;Lt/l;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    check-cast p1, Lt/m;

    iget-object p1, p1, Lt/m;->k:Lt/f;

    iget-object p1, p1, Lt/f;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/d;

    instance-of v1, v0, Lt/f;

    if-eqz v1, :cond_6

    check-cast v0, Lt/f;

    invoke-virtual {p0, v0, p2, p3, v3}, Lt/e;->a(Lt/f;ILjava/util/ArrayList;Lt/l;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final f(IIIILs/d;)V
    .locals 1

    iget-object v0, p0, Lt/e;->g:Lt/b;

    iput p1, v0, Lt/b;->a:I

    iput p3, v0, Lt/b;->b:I

    iput p2, v0, Lt/b;->c:I

    iput p4, v0, Lt/b;->d:I

    iget-object p0, p0, Lt/e;->f:Lv/d;

    invoke-virtual {p0, p5, v0}, Lv/d;->b(Ls/d;Lt/b;)V

    iget p0, v0, Lt/b;->e:I

    invoke-virtual {p5, p0}, Ls/d;->F(I)V

    iget p0, v0, Lt/b;->f:I

    invoke-virtual {p5, p0}, Ls/d;->C(I)V

    iget-boolean p0, v0, Lt/b;->h:Z

    iput-boolean p0, p5, Ls/d;->D:Z

    iget p0, v0, Lt/b;->g:I

    iput p0, p5, Ls/d;->Y:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, p5, Ls/d;->D:Z

    return-void
.end method

.method public final g()V
    .locals 14

    iget-object v0, p0, Lt/e;->a:Ls/e;

    iget-object v0, v0, Ls/e;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls/d;

    iget-boolean v2, v1, Ls/d;->a:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Ls/d;->n0:[I

    const/4 v3, 0x0

    aget v8, v2, v3

    const/4 v9, 0x1

    aget v10, v2, v9

    iget v2, v1, Ls/d;->q:I

    iget v4, v1, Ls/d;->r:I

    const/4 v5, 0x2

    const/4 v11, 0x3

    if-eq v8, v5, :cond_3

    if-ne v8, v11, :cond_2

    if-ne v2, v9, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v9

    :goto_2
    if-eq v10, v5, :cond_4

    if-ne v10, v11, :cond_5

    if-ne v4, v9, :cond_5

    :cond_4
    move v3, v9

    :cond_5
    iget-object v4, v1, Ls/d;->d:Lt/k;

    iget-object v4, v4, Lt/o;->e:Lt/g;

    iget-boolean v6, v4, Lt/f;->j:Z

    iget-object v7, v1, Ls/d;->e:Lt/m;

    iget-object v7, v7, Lt/o;->e:Lt/g;

    iget-boolean v12, v7, Lt/f;->j:Z

    const/4 v13, 0x1

    if-eqz v6, :cond_6

    if-eqz v12, :cond_6

    iget v4, v4, Lt/f;->g:I

    iget v6, v7, Lt/f;->g:I

    move-object v2, p0

    move v3, v13

    move v5, v13

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lt/e;->f(IIIILs/d;)V

    iput-boolean v9, v1, Ls/d;->a:Z

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_8

    if-eqz v3, :cond_8

    iget v4, v4, Lt/f;->g:I

    iget v6, v7, Lt/f;->g:I

    move-object v2, p0

    move v3, v13

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lt/e;->f(IIIILs/d;)V

    if-ne v10, v11, :cond_7

    iget-object v2, v1, Ls/d;->e:Lt/m;

    iget-object v2, v2, Lt/o;->e:Lt/g;

    invoke-virtual {v1}, Ls/d;->i()I

    move-result v3

    iput v3, v2, Lt/g;->m:I

    goto :goto_3

    :cond_7
    iget-object v2, v1, Ls/d;->e:Lt/m;

    iget-object v2, v2, Lt/o;->e:Lt/g;

    invoke-virtual {v1}, Ls/d;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Lt/g;->d(I)V

    iput-boolean v9, v1, Ls/d;->a:Z

    goto :goto_3

    :cond_8
    if-eqz v12, :cond_a

    if-eqz v2, :cond_a

    iget v4, v4, Lt/f;->g:I

    iget v6, v7, Lt/f;->g:I

    move-object v2, p0

    move v3, v5

    move v5, v13

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lt/e;->f(IIIILs/d;)V

    if-ne v8, v11, :cond_9

    iget-object v2, v1, Ls/d;->d:Lt/k;

    iget-object v2, v2, Lt/o;->e:Lt/g;

    invoke-virtual {v1}, Ls/d;->l()I

    move-result v3

    iput v3, v2, Lt/g;->m:I

    goto :goto_3

    :cond_9
    iget-object v2, v1, Ls/d;->d:Lt/k;

    iget-object v2, v2, Lt/o;->e:Lt/g;

    invoke-virtual {v1}, Ls/d;->l()I

    move-result v3

    invoke-virtual {v2, v3}, Lt/g;->d(I)V

    iput-boolean v9, v1, Ls/d;->a:Z

    :cond_a
    :goto_3
    iget-boolean v2, v1, Ls/d;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Ls/d;->e:Lt/m;

    iget-object v2, v2, Lt/m;->l:Lt/a;

    if-eqz v2, :cond_0

    iget v1, v1, Ls/d;->Y:I

    invoke-virtual {v2, v1}, Lt/g;->d(I)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method
