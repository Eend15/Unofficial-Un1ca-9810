.class public Lf4/g;
.super LX3/L;
.source "SourceFile"

# interfaces
.implements Lf4/a;


# instance fields
.field public final B:Z

.field public final C:Lq3/f;


# direct methods
.method public constructor <init>(LU3/j;LV3/h;ILU3/n;ZLs4/f;LU3/L;LX3/L;IZLq3/f;)V
    .locals 16

    move-object/from16 v15, p0

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    if-eqz p6, :cond_2

    if-eqz p7, :cond_1

    if-eqz p9, :cond_0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p9

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v14}, LX3/L;-><init>(LU3/j;LX3/L;LV3/h;ILU3/n;ZLs4/f;ILU3/L;ZZZZZ)V

    move/from16 v0, p10

    iput-boolean v0, v15, Lf4/g;->B:Z

    move-object/from16 v0, p11

    iput-object v0, v15, Lf4/g;->C:Lq3/f;

    return-void

    :cond_0
    const/4 v1, 0x6

    invoke-static {v1}, Lf4/g;->z0(I)V

    throw v0

    :cond_1
    const/4 v1, 0x5

    invoke-static {v1}, Lf4/g;->z0(I)V

    throw v0

    :cond_2
    const/4 v1, 0x4

    invoke-static {v1}, Lf4/g;->z0(I)V

    throw v0

    :cond_3
    const/4 v1, 0x3

    invoke-static {v1}, Lf4/g;->z0(I)V

    throw v0

    :cond_4
    const/4 v1, 0x2

    invoke-static {v1}, Lf4/g;->z0(I)V

    throw v0

    :cond_5
    const/4 v1, 0x1

    invoke-static {v1}, Lf4/g;->z0(I)V

    throw v0

    :cond_6
    const/4 v1, 0x0

    invoke-static {v1}, Lf4/g;->z0(I)V

    throw v0
.end method

.method public static N0(LU3/j;Lg4/c;LU3/n;ZLs4/f;LZ3/g;Z)Lf4/g;
    .locals 13

    if-eqz p0, :cond_0

    new-instance v12, Lf4/g;

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v9, 0x1

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Lf4/g;-><init>(LU3/j;LV3/h;ILU3/n;ZLs4/f;LU3/L;LX3/L;IZLq3/f;)V

    return-object v12

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Lf4/g;->z0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static synthetic z0(I)V
    .locals 7

    const/16 v0, 0x15

    if-eq p0, v0, :cond_0

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v2, 0x2

    if-eq p0, v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor"

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v6, "containingDeclaration"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_1
    aput-object v4, v3, v5

    goto :goto_2

    :pswitch_2
    const-string v6, "enhancedReturnType"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_3
    const-string v6, "enhancedValueParametersData"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_4
    const-string v6, "newName"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_5
    const-string v6, "newVisibility"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_6
    const-string v6, "newModality"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_7
    const-string v6, "newOwner"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_8
    const-string v6, "kind"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_9
    const-string v6, "source"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_a
    const-string v6, "name"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_b
    const-string v6, "visibility"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_c
    const-string v6, "modality"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_d
    const-string v6, "annotations"

    aput-object v6, v3, v5

    :goto_2
    const-string v5, "enhance"

    const/4 v6, 0x1

    if-eq p0, v0, :cond_2

    aput-object v4, v3, v6

    goto :goto_3

    :cond_2
    aput-object v5, v3, v6

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v4, "<init>"

    aput-object v4, v3, v2

    goto :goto_4

    :pswitch_e
    aput-object v5, v3, v2

    goto :goto_4

    :pswitch_f
    const-string v4, "createSubstitutedCopy"

    aput-object v4, v3, v2

    goto :goto_4

    :pswitch_10
    const-string v4, "create"

    aput-object v4, v3, v2

    :goto_4
    :pswitch_11
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public final D(LJ4/C;Ljava/util/ArrayList;LJ4/C;Lq3/f;)Lf4/a;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, LX3/L;->I0()LX3/L;

    move-result-object v4

    if-ne v4, v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, LX3/L;->I0()LX3/L;

    move-result-object v4

    :goto_0
    new-instance v15, Lf4/g;

    invoke-virtual/range {p0 .. p0}, LX3/q;->g()LU3/j;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, LD4/a;->p()LV3/h;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, LX3/L;->e()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, LX3/L;->b()LU3/n;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, LX3/p;->r()Ls4/f;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, LX3/q;->i()LU3/L;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, LX3/L;->f0()I

    move-result v14

    iget-boolean v13, v0, Lf4/g;->B:Z

    iget-boolean v10, v0, LX3/L;->i:Z

    move-object v5, v15

    move/from16 v16, v13

    move-object v13, v4

    move-object/from16 p2, v15

    move/from16 v15, v16

    move-object/from16 v16, p4

    invoke-direct/range {v5 .. v16}, Lf4/g;-><init>(LU3/j;LV3/h;ILU3/n;ZLs4/f;LU3/L;LX3/L;IZLq3/f;)V

    iget-object v15, v0, LX3/L;->x:LX3/M;

    if-eqz v15, :cond_2

    new-instance v14, LX3/M;

    invoke-virtual {v15}, LD4/a;->p()LV3/h;

    move-result-object v7

    invoke-virtual {v15}, LX3/J;->e()I

    move-result v8

    invoke-virtual {v15}, LX3/J;->b()LU3/n;

    move-result-object v9

    iget-boolean v10, v15, LX3/J;->h:Z

    invoke-virtual/range {p0 .. p0}, LX3/L;->f0()I

    move-result v13

    if-nez v4, :cond_1

    const/16 v16, 0x0

    goto :goto_1

    :cond_1
    iget-object v5, v4, LX3/L;->x:LX3/M;

    move-object/from16 v16, v5

    :goto_1
    invoke-virtual {v15}, LX3/q;->i()LU3/L;

    move-result-object v17

    iget-boolean v11, v15, LX3/J;->i:Z

    iget-boolean v12, v15, LX3/J;->l:Z

    move-object v5, v14

    move-object/from16 v6, p2

    move-object v3, v14

    move-object/from16 v14, v16

    move-object v1, v15

    move-object/from16 v15, v17

    invoke-direct/range {v5 .. v15}, LX3/M;-><init>(LX3/L;LV3/h;ILU3/n;ZZZILX3/M;LU3/L;)V

    iget-object v1, v1, LX3/J;->o:LU3/s;

    iput-object v1, v3, LX3/J;->o:LU3/s;

    iput-object v2, v3, LX3/M;->p:LJ4/C;

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget-object v1, v0, LX3/L;->y:LX3/N;

    if-eqz v1, :cond_5

    new-instance v15, LX3/N;

    invoke-virtual {v1}, LD4/a;->p()LV3/h;

    move-result-object v7

    invoke-virtual {v1}, LX3/J;->e()I

    move-result v8

    invoke-virtual {v1}, LX3/J;->b()LU3/n;

    move-result-object v9

    iget-boolean v10, v1, LX3/J;->h:Z

    invoke-virtual/range {p0 .. p0}, LX3/L;->f0()I

    move-result v13

    if-nez v4, :cond_3

    const/4 v14, 0x0

    goto :goto_3

    :cond_3
    iget-object v4, v4, LX3/L;->y:LX3/N;

    move-object v14, v4

    :goto_3
    invoke-virtual {v1}, LX3/q;->i()LU3/L;

    move-result-object v4

    iget-boolean v11, v1, LX3/J;->i:Z

    iget-boolean v12, v1, LX3/J;->l:Z

    move-object v5, v15

    move-object/from16 v6, p2

    move-object v2, v15

    move-object v15, v4

    invoke-direct/range {v5 .. v15}, LX3/N;-><init>(LX3/L;LV3/h;ILU3/n;ZZZILX3/N;LU3/L;)V

    iget-object v4, v2, LX3/J;->o:LU3/s;

    iput-object v4, v2, LX3/J;->o:LU3/s;

    invoke-virtual {v1}, LX3/N;->n0()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX3/W;

    if-eqz v1, :cond_4

    iput-object v1, v2, LX3/N;->p:LX3/W;

    move-object v15, v2

    goto :goto_4

    :cond_4
    const/4 v0, 0x6

    invoke-static {v0}, LX3/N;->z0(I)V

    const/4 v0, 0x0

    throw v0

    :cond_5
    const/4 v15, 0x0

    :goto_4
    iget-object v1, v0, LX3/L;->z:LX3/u;

    iget-object v2, v0, LX3/L;->A:LX3/u;

    move-object/from16 v4, p2

    invoke-virtual {v4, v3, v15, v1, v2}, LX3/L;->K0(LX3/M;LX3/N;LX3/u;LX3/u;)V

    iget-object v1, v0, LX3/L;->j:LI4/h;

    if-eqz v1, :cond_6

    iput-object v1, v4, LX3/L;->j:LI4/h;

    :cond_6
    invoke-virtual/range {p0 .. p0}, LX3/L;->m()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v4, v1}, LX3/L;->J(Ljava/util/Collection;)V

    move-object/from16 v1, p1

    if-nez v1, :cond_7

    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    sget-object v2, LV3/g;->a:LV3/f;

    invoke-static {v0, v1, v2}, Lv4/p;->i(LU3/a;LJ4/C;LV3/h;)LX3/O;

    move-result-object v3

    :goto_5
    invoke-virtual/range {p0 .. p0}, LX3/L;->q()Ljava/util/List;

    move-result-object v1

    iget-object v0, v0, LX3/L;->u:LU3/J;

    move-object/from16 v2, p3

    invoke-virtual {v4, v2, v1, v0, v3}, LX3/L;->L0(LJ4/C;Ljava/util/List;LU3/J;LX3/O;)V

    return-object v4

    :cond_8
    const/16 v0, 0x14

    invoke-static {v0}, Lf4/g;->z0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final H0(LU3/j;ILU3/n;LX3/L;ILs4/f;)LX3/L;
    .locals 13

    move-object v0, p0

    sget-object v7, LU3/L;->a:LU3/M;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    new-instance v12, Lf4/g;

    invoke-virtual {p0}, LD4/a;->p()LV3/h;

    move-result-object v2

    iget-object v11, v0, Lf4/g;->C:Lq3/f;

    iget-boolean v5, v0, LX3/L;->i:Z

    iget-boolean v10, v0, Lf4/g;->B:Z

    move-object v0, v12

    move-object v1, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p6

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v11}, Lf4/g;-><init>(LU3/j;LV3/h;ILU3/n;ZLs4/f;LU3/L;LX3/L;IZLq3/f;)V

    return-object v12

    :cond_0
    const/16 v0, 0x11

    invoke-static {v0}, Lf4/g;->z0(I)V

    throw v1

    :cond_1
    const/16 v0, 0x10

    invoke-static {v0}, Lf4/g;->z0(I)V

    throw v1

    :cond_2
    const/16 v0, 0xf

    invoke-static {v0}, Lf4/g;->z0(I)V

    throw v1

    :cond_3
    const/16 v0, 0xe

    invoke-static {v0}, Lf4/g;->z0(I)V

    throw v1

    :cond_4
    const/16 v0, 0xd

    invoke-static {v0}, Lf4/g;->z0(I)V

    throw v1
.end method

.method public final N()Z
    .locals 3

    invoke-virtual {p0}, LX3/X;->j()LJ4/C;

    move-result-object v0

    iget-boolean p0, p0, Lf4/g;->B:Z

    if-eqz p0, :cond_4

    const-string p0, "type"

    invoke-static {v0, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LR3/j;->E(LJ4/C;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0}, LR3/t;->a(LJ4/C;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {v0}, LJ4/Z;->e(LJ4/C;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    sget-object p0, LR3/o;->f:Ls4/e;

    invoke-static {v0, p0}, LR3/j;->C(LJ4/C;Ls4/e;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    sget-object p0, Lk4/v;->a:LV3/i;

    sget-object p0, LK4/f;->e:LK4/f;

    sget-object v1, Ld4/x;->o:Ls4/c;

    const-string v2, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, LK4/h;->v(LK4/c;LJ4/C;Ls4/c;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, LR3/o;->f:Ls4/e;

    invoke-static {v0, p0}, LR3/j;->C(LJ4/C;Ls4/e;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
