.class public final Lk4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LJ4/G;LE3/b;IIZZ)Lk4/c;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    const/4 v4, 0x1

    const-string v5, "<this>"

    invoke-static {v2, v5}, LB/a;->t(ILjava/lang/String;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eq v2, v6, :cond_0

    move v8, v4

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    if-nez v8, :cond_1

    invoke-virtual/range {p0 .. p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v1, Lk4/c;

    invoke-direct {v1, v0, v4, v7}, Lk4/c;-><init>(LJ4/G;IZ)V

    return-object v1

    :cond_1
    invoke-virtual/range {p0 .. p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v8

    invoke-interface {v8}, LJ4/M;->e()LU3/g;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v1, Lk4/c;

    invoke-direct {v1, v0, v4, v7}, Lk4/c;-><init>(LJ4/G;IZ)V

    return-object v1

    :cond_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lk4/e;

    sget-object v10, Lk4/v;->a:LV3/i;

    invoke-static {v2, v5}, LB/a;->t(ILjava/lang/String;)V

    if-eq v2, v6, :cond_3

    move v10, v4

    goto :goto_1

    :cond_3
    move v10, v7

    :goto_1
    const/4 v11, 0x2

    const/4 v12, 0x0

    if-nez v10, :cond_4

    new-instance v10, Lk4/b;

    invoke-direct {v10, v8, v12}, Lk4/b;-><init>(Ljava/lang/Object;LV3/i;)V

    goto/16 :goto_4

    :cond_4
    instance-of v10, v8, LU3/e;

    if-nez v10, :cond_5

    new-instance v10, Lk4/b;

    invoke-direct {v10, v8, v12}, Lk4/b;-><init>(Ljava/lang/Object;LV3/i;)V

    goto/16 :goto_4

    :cond_5
    iget-object v10, v9, Lk4/e;->b:Lk4/f;

    if-nez v10, :cond_6

    const/4 v10, -0x1

    goto :goto_2

    :cond_6
    sget-object v14, Lk4/u;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v14, v10

    :goto_2
    const-string v14, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    if-eq v10, v4, :cond_9

    if-eq v10, v11, :cond_7

    goto/16 :goto_3

    :cond_7
    if-ne v2, v11, :cond_c

    move-object v10, v8

    check-cast v10, LU3/e;

    sget-object v15, LT3/d;->a:Ljava/lang/String;

    invoke-static {v10}, Lv4/f;->g(LU3/j;)Ls4/e;

    move-result-object v15

    sget-object v13, LT3/d;->k:Ljava/util/HashMap;

    if-eqz v13, :cond_8

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-static {v10}, LT3/e;->a(LU3/e;)LU3/e;

    move-result-object v8

    new-instance v10, Lk4/b;

    sget-object v13, Lk4/v;->b:LV3/i;

    invoke-direct {v10, v8, v13}, Lk4/b;-><init>(Ljava/lang/Object;LV3/i;)V

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-ne v2, v4, :cond_c

    move-object v10, v8

    check-cast v10, LU3/e;

    sget-object v13, LT3/d;->a:Ljava/lang/String;

    invoke-static {v10}, Lv4/f;->g(LU3/j;)Ls4/e;

    move-result-object v13

    sget-object v15, LT3/d;->j:Ljava/util/HashMap;

    if-eqz v15, :cond_b

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-static {v10}, Lv4/f;->g(LU3/j;)Ls4/e;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls4/c;

    if-eqz v8, :cond_a

    invoke-static {v10}, Lz4/e;->e(LU3/j;)LR3/j;

    move-result-object v10

    invoke-virtual {v10, v8}, LR3/j;->i(Ls4/c;)LU3/e;

    move-result-object v8

    new-instance v10, Lk4/b;

    sget-object v13, Lk4/v;->b:LV3/i;

    invoke-direct {v10, v8, v13}, Lk4/b;-><init>(Ljava/lang/Object;LV3/i;)V

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a mutable collection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_3
    new-instance v10, Lk4/b;

    invoke-direct {v10, v8, v12}, Lk4/b;-><init>(Ljava/lang/Object;LV3/i;)V

    :goto_4
    iget-object v8, v10, Lk4/b;->a:Ljava/lang/Object;

    check-cast v8, LU3/g;

    invoke-interface {v8}, LU3/g;->E()LJ4/M;

    move-result-object v13

    const-string v14, "enhancedClassifier.typeConstructor"

    invoke-static {v13, v14}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v14, p2, 0x1

    iget-object v10, v10, Lk4/b;->b:LV3/i;

    if-eqz v10, :cond_d

    move v15, v4

    goto :goto_5

    :cond_d
    move v15, v7

    :goto_5
    if-eqz v3, :cond_f

    if-nez p4, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual/range {p0 .. p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v14

    invoke-virtual/range {p0 .. p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v3

    goto/16 :goto_b

    :cond_f
    :goto_6
    invoke-virtual/range {p0 .. p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v16

    new-instance v11, Ljava/util/ArrayList;

    invoke-static/range {v16 .. v16}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v12, v7

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v18, v12, 0x1

    if-ltz v12, :cond_14

    check-cast v17, LJ4/P;

    invoke-virtual/range {v17 .. v17}, LJ4/P;->c()Z

    move-result v19

    const-string v7, "arg.projectionKind"

    if-eqz v19, :cond_11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk4/e;

    const/16 v19, 0x1

    add-int/lit8 v14, v14, 0x1

    iget-object v4, v4, Lk4/e;->a:Lk4/h;

    move-object/from16 v20, v6

    sget-object v6, Lk4/h;->e:Lk4/h;

    if-ne v4, v6, :cond_10

    if-nez p4, :cond_10

    invoke-virtual/range {v17 .. v17}, LJ4/P;->b()LJ4/C;

    move-result-object v4

    invoke-virtual {v4}, LJ4/C;->B0()LJ4/b0;

    move-result-object v4

    invoke-static {v4, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v4, v6}, LJ4/Z;->g(LJ4/C;Z)LJ4/b0;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, LJ4/P;->a()I

    move-result v6

    invoke-static {v6, v7}, LB/a;->y(ILjava/lang/String;)V

    invoke-interface {v13}, LJ4/M;->g()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LU3/O;

    invoke-static {v4, v6, v7}, LK/I;->q(LJ4/C;ILU3/O;)LJ4/Q;

    move-result-object v4

    goto :goto_a

    :cond_10
    invoke-interface {v8}, LU3/g;->E()LJ4/M;

    move-result-object v4

    invoke-interface {v4}, LJ4/M;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LU3/O;

    invoke-static {v4}, LJ4/Z;->j(LU3/O;)LJ4/K;

    move-result-object v4

    goto :goto_a

    :cond_11
    move-object/from16 v20, v6

    invoke-virtual/range {v17 .. v17}, LJ4/P;->b()LJ4/C;

    move-result-object v4

    invoke-virtual {v4}, LJ4/C;->B0()LJ4/b0;

    move-result-object v4

    invoke-static {v4, v1, v14, v3}, Lk4/d;->b(LJ4/b0;LE3/b;IZ)Landroidx/appcompat/widget/a;

    move-result-object v4

    if-nez v15, :cond_13

    iget-boolean v6, v4, Landroidx/appcompat/widget/a;->b:Z

    if-eqz v6, :cond_12

    goto :goto_8

    :cond_12
    const/4 v6, 0x0

    goto :goto_9

    :cond_13
    :goto_8
    const/4 v6, 0x1

    :goto_9
    iget v15, v4, Landroidx/appcompat/widget/a;->a:I

    add-int/2addr v14, v15

    invoke-virtual {v4}, Landroidx/appcompat/widget/a;->d()LJ4/C;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, LJ4/P;->a()I

    move-result v15

    invoke-static {v15, v7}, LB/a;->y(ILjava/lang/String;)V

    invoke-interface {v13}, LJ4/M;->g()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LU3/O;

    invoke-static {v4, v15, v7}, LK/I;->q(LJ4/C;ILU3/O;)LJ4/Q;

    move-result-object v4

    move v15, v6

    :goto_a
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v12, v18

    move-object/from16 v6, v20

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_14
    invoke-static {}, Lr3/k;->i0()V

    const/4 v0, 0x0

    throw v0

    :cond_15
    move-object v3, v11

    move v1, v14

    :goto_b
    invoke-static {v2, v5}, LB/a;->t(ILjava/lang/String;)V

    const/4 v4, 0x3

    if-eq v2, v4, :cond_19

    iget-object v2, v9, Lk4/e;->a:Lk4/h;

    if-nez v2, :cond_16

    const/4 v2, -0x1

    :goto_c
    const/4 v4, 0x1

    goto :goto_d

    :cond_16
    sget-object v4, Lk4/u;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    goto :goto_c

    :goto_d
    if-eq v2, v4, :cond_18

    const/4 v4, 0x2

    if-eq v2, v4, :cond_17

    invoke-virtual/range {p0 .. p0}, LJ4/C;->z0()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v4, Lk4/b;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lk4/b;-><init>(Ljava/lang/Object;LV3/i;)V

    goto :goto_e

    :cond_17
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v4, Lk4/b;

    sget-object v5, Lk4/v;->a:LV3/i;

    invoke-direct {v4, v2, v5}, Lk4/b;-><init>(Ljava/lang/Object;LV3/i;)V

    goto :goto_e

    :cond_18
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v4, Lk4/b;

    sget-object v5, Lk4/v;->a:LV3/i;

    invoke-direct {v4, v2, v5}, Lk4/b;-><init>(Ljava/lang/Object;LV3/i;)V

    goto :goto_e

    :cond_19
    invoke-virtual/range {p0 .. p0}, LJ4/C;->z0()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v4, Lk4/b;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lk4/b;-><init>(Ljava/lang/Object;LV3/i;)V

    :goto_e
    iget-object v2, v4, Lk4/b;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v4, v4, Lk4/b;->b:LV3/i;

    if-nez v15, :cond_1b

    if-eqz v4, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 v5, 0x0

    goto :goto_10

    :cond_1b
    :goto_f
    const/4 v5, 0x1

    :goto_10
    sub-int v1, v1, p2

    if-nez v5, :cond_1c

    new-instance v2, Lk4/c;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lk4/c;-><init>(LJ4/G;IZ)V

    return-object v2

    :cond_1c
    invoke-interface/range {p0 .. p0}, LV3/a;->p()LV3/h;

    move-result-object v5

    filled-new-array {v5, v10, v4}, [LV3/h;

    move-result-object v5

    invoke-static {v5}, Lr3/h;->k0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_20

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1d

    new-instance v6, LV3/i;

    invoke-static {v5}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v6, v7, v5}, LV3/i;-><init>(ILjava/util/List;)V

    goto :goto_11

    :cond_1d
    invoke-static {v5}, Lr3/j;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, LV3/h;

    :goto_11
    invoke-static {v13, v6, v3, v2}, LJ4/d;->p(LJ4/M;LV3/h;Ljava/util/List;Z)LJ4/G;

    move-result-object v2

    iget-boolean v3, v9, Lk4/e;->c:Z

    if-eqz v3, :cond_1e

    new-instance v3, Lk4/g;

    invoke-direct {v3, v2}, Lk4/g;-><init>(LJ4/G;)V

    move-object v2, v3

    :cond_1e
    if-eqz v4, :cond_1f

    iget-boolean v3, v9, Lk4/e;->d:Z

    if-eqz v3, :cond_1f

    invoke-static {v0, v2}, LJ4/c;->z(LJ4/b0;LJ4/C;)LJ4/b0;

    move-result-object v2

    :cond_1f
    new-instance v0, Lk4/c;

    check-cast v2, LJ4/G;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lk4/c;-><init>(LJ4/G;IZ)V

    return-object v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "At least one Annotations object expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(LJ4/b0;LE3/b;IZ)Landroidx/appcompat/widget/a;
    .locals 11

    invoke-static {p0}, LJ4/c;->i(LJ4/C;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-instance p1, Landroidx/appcompat/widget/a;

    invoke-direct {p1, p0, v2, v1}, Landroidx/appcompat/widget/a;-><init>(LJ4/b0;IZ)V

    return-object p1

    :cond_0
    instance-of v0, p0, LJ4/w;

    if-eqz v0, :cond_8

    instance-of v0, p0, Li4/g;

    move-object v9, p0

    check-cast v9, LJ4/w;

    const/4 v6, 0x1

    iget-object v3, v9, LJ4/w;->e:LJ4/G;

    move-object v4, p1

    move v5, p2

    move v7, v0

    move v8, p3

    invoke-static/range {v3 .. v8}, Lk4/d;->a(LJ4/G;LE3/b;IIZZ)Lk4/c;

    move-result-object v10

    const/4 v6, 0x2

    iget-object v3, v9, LJ4/w;->f:LJ4/G;

    move-object v4, p1

    move v5, p2

    move v7, v0

    move v8, p3

    invoke-static/range {v3 .. v8}, Lk4/d;->a(LJ4/G;LE3/b;IIZZ)Lk4/c;

    move-result-object p1

    iget-boolean p2, v10, Landroidx/appcompat/widget/a;->b:Z

    if-nez p2, :cond_1

    iget-boolean p2, p1, Landroidx/appcompat/widget/a;->b:Z

    if-eqz p2, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iget-object p1, p1, Lk4/c;->d:LJ4/G;

    invoke-static {p1}, LJ4/c;->e(LJ4/C;)LJ4/C;

    move-result-object p2

    iget-object p3, v10, Lk4/c;->d:LJ4/G;

    invoke-static {p3}, LJ4/c;->e(LJ4/C;)LJ4/C;

    move-result-object v2

    if-nez v2, :cond_4

    if-nez p2, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    move-object v2, p2

    :cond_4
    if-nez p2, :cond_5

    move-object p2, v2

    goto :goto_0

    :cond_5
    invoke-static {v2}, LJ4/c;->k(LJ4/C;)LJ4/G;

    move-result-object v2

    invoke-static {p2}, LJ4/c;->x(LJ4/C;)LJ4/G;

    move-result-object p2

    invoke-static {v2, p2}, LJ4/d;->i(LJ4/G;LJ4/G;)LJ4/b0;

    move-result-object p2

    :goto_0
    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    new-instance p0, Li4/g;

    invoke-direct {p0, p3, p1}, Li4/g;-><init>(LJ4/G;LJ4/G;)V

    goto :goto_1

    :cond_6
    invoke-static {p3, p1}, LJ4/d;->i(LJ4/G;LJ4/G;)LJ4/b0;

    move-result-object p0

    :goto_1
    invoke-static {p0, p2}, LJ4/c;->z(LJ4/b0;LJ4/C;)LJ4/b0;

    move-result-object p0

    :cond_7
    new-instance p1, Landroidx/appcompat/widget/a;

    iget p2, v10, Landroidx/appcompat/widget/a;->a:I

    invoke-direct {p1, p0, p2, v1}, Landroidx/appcompat/widget/a;-><init>(LJ4/b0;IZ)V

    goto :goto_2

    :cond_8
    instance-of v0, p0, LJ4/G;

    if-eqz v0, :cond_9

    move-object v1, p0

    check-cast v1, LJ4/G;

    const/4 v5, 0x0

    const/4 v4, 0x3

    move-object v2, p1

    move v3, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lk4/d;->a(LJ4/G;LE3/b;IIZZ)Lk4/c;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_9
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
