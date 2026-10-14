.class public final LX3/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LU3/j;

.field public b:I

.field public c:LU3/n;

.field public d:LX3/L;

.field public e:I

.field public f:LJ4/U;

.field public g:Z

.field public final h:LU3/J;

.field public final i:Ls4/f;

.field public final j:LJ4/C;

.field public final synthetic k:LX3/L;


# direct methods
.method public constructor <init>(LX3/L;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX3/K;->k:LX3/L;

    invoke-virtual {p1}, LX3/q;->g()LU3/j;

    move-result-object v0

    iput-object v0, p0, LX3/K;->a:LU3/j;

    invoke-virtual {p1}, LX3/L;->e()I

    move-result v0

    iput v0, p0, LX3/K;->b:I

    invoke-virtual {p1}, LX3/L;->b()LU3/n;

    move-result-object v0

    iput-object v0, p0, LX3/K;->c:LU3/n;

    const/4 v0, 0x0

    iput-object v0, p0, LX3/K;->d:LX3/L;

    invoke-virtual {p1}, LX3/L;->f0()I

    move-result v0

    iput v0, p0, LX3/K;->e:I

    sget-object v0, LJ4/U;->a:LJ4/S;

    iput-object v0, p0, LX3/K;->f:LJ4/U;

    const/4 v0, 0x1

    iput-boolean v0, p0, LX3/K;->g:Z

    iget-object v0, p1, LX3/L;->u:LU3/J;

    iput-object v0, p0, LX3/K;->h:LU3/J;

    invoke-virtual {p1}, LX3/p;->r()Ls4/f;

    move-result-object v0

    iput-object v0, p0, LX3/K;->i:Ls4/f;

    invoke-virtual {p1}, LX3/X;->j()LJ4/C;

    move-result-object p1

    iput-object p1, p0, LX3/K;->j:LJ4/C;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 24

    move/from16 v0, p0

    const/16 v1, 0x11

    const/16 v2, 0x10

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0x13

    const/16 v6, 0xb

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v0, v12, :cond_0

    if-eq v0, v11, :cond_0

    if-eq v0, v10, :cond_0

    if-eq v0, v9, :cond_0

    if-eq v0, v8, :cond_0

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const-string v13, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v13, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq v0, v12, :cond_1

    if-eq v0, v11, :cond_1

    if-eq v0, v10, :cond_1

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    move v14, v10

    goto :goto_1

    :cond_1
    move v14, v11

    :goto_1
    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration"

    const/16 v16, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v17, "owner"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_0
    const-string v17, "name"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_1
    const-string v17, "substitution"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_2
    const-string v17, "typeParameters"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_3
    const-string v17, "kind"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_4
    const-string v17, "visibility"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_5
    const-string v17, "modality"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_6
    const-string v17, "type"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_7
    aput-object v15, v14, v16

    :goto_2
    const-string v16, "setOwner"

    const-string v17, "setReturnType"

    const-string v18, "setModality"

    const-string v19, "setVisibility"

    const-string v20, "setKind"

    const-string v21, "setTypeParameters"

    const-string v22, "setSubstitution"

    const-string v23, "setName"

    if-eq v0, v12, :cond_d

    if-eq v0, v11, :cond_c

    if-eq v0, v10, :cond_b

    if-eq v0, v9, :cond_a

    if-eq v0, v8, :cond_9

    if-eq v0, v7, :cond_8

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    aput-object v15, v14, v12

    goto :goto_3

    :cond_2
    const-string v15, "setCopyOverrides"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_3
    aput-object v22, v14, v12

    goto :goto_3

    :cond_4
    const-string v15, "setDispatchReceiverParameter"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_5
    aput-object v21, v14, v12

    goto :goto_3

    :cond_6
    aput-object v23, v14, v12

    goto :goto_3

    :cond_7
    aput-object v20, v14, v12

    goto :goto_3

    :cond_8
    aput-object v19, v14, v12

    goto :goto_3

    :cond_9
    aput-object v18, v14, v12

    goto :goto_3

    :cond_a
    aput-object v17, v14, v12

    goto :goto_3

    :cond_b
    const-string v15, "setPreserveSourceElement"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_c
    const-string v15, "setOriginal"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_d
    aput-object v16, v14, v12

    :goto_3
    packed-switch v0, :pswitch_data_1

    aput-object v16, v14, v11

    goto :goto_4

    :pswitch_8
    aput-object v23, v14, v11

    goto :goto_4

    :pswitch_9
    aput-object v22, v14, v11

    goto :goto_4

    :pswitch_a
    aput-object v21, v14, v11

    goto :goto_4

    :pswitch_b
    aput-object v20, v14, v11

    goto :goto_4

    :pswitch_c
    aput-object v19, v14, v11

    goto :goto_4

    :pswitch_d
    aput-object v18, v14, v11

    goto :goto_4

    :pswitch_e
    aput-object v17, v14, v11

    :goto_4
    :pswitch_f
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-eq v0, v12, :cond_e

    if-eq v0, v11, :cond_e

    if-eq v0, v10, :cond_e

    if-eq v0, v9, :cond_e

    if-eq v0, v8, :cond_e

    if-eq v0, v7, :cond_e

    if-eq v0, v6, :cond_e

    if-eq v0, v5, :cond_e

    if-eq v0, v4, :cond_e

    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_e

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_f
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_f
        :pswitch_a
        :pswitch_f
        :pswitch_f
        :pswitch_9
        :pswitch_f
        :pswitch_f
        :pswitch_8
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public final b()LX3/L;
    .locals 21

    move-object/from16 v0, p0

    iget-object v8, v0, LX3/K;->k:LX3/L;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, LX3/K;->a:LU3/j;

    iget v3, v0, LX3/K;->b:I

    iget-object v4, v0, LX3/K;->c:LU3/n;

    iget-object v5, v0, LX3/K;->d:LX3/L;

    iget v6, v0, LX3/K;->e:I

    sget-object v20, LU3/L;->a:LU3/M;

    iget-object v7, v0, LX3/K;->i:Ls4/f;

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, LX3/L;->H0(LU3/j;ILU3/n;LX3/L;ILs4/f;)LX3/L;

    move-result-object v1

    invoke-virtual {v8}, LX3/L;->q()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, v0, LX3/K;->f:LJ4/U;

    invoke-static {v2, v4, v1, v3}, LJ4/c;->u(Ljava/util/List;LJ4/U;LU3/j;Ljava/util/ArrayList;)LJ4/X;

    move-result-object v2

    iget-object v4, v0, LX3/K;->j:LJ4/C;

    const/4 v5, 0x3

    invoke-virtual {v2, v5, v4}, LJ4/X;->i(ILJ4/C;)LJ4/C;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_c

    :cond_0
    iget-object v7, v0, LX3/K;->h:LU3/J;

    if-eqz v7, :cond_1

    check-cast v7, LX3/d;

    invoke-virtual {v7, v2}, LX3/d;->G0(LJ4/X;)LX3/d;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :cond_2
    iget-object v9, v8, LX3/L;->v:LX3/O;

    const/4 v15, 0x2

    if-eqz v9, :cond_4

    invoke-virtual {v9}, LX3/d;->j()LJ4/C;

    move-result-object v9

    invoke-virtual {v2, v15, v9}, LJ4/X;->i(ILJ4/C;)LJ4/C;

    move-result-object v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    new-instance v10, LX3/O;

    new-instance v11, LD4/b;

    iget-object v12, v8, LX3/L;->v:LX3/O;

    invoke-virtual {v12}, LX3/O;->getValue()LD4/d;

    invoke-direct {v11, v1, v9}, LD4/b;-><init>(LU3/a;LJ4/C;)V

    iget-object v9, v8, LX3/L;->v:LX3/O;

    invoke-virtual {v9}, LD4/a;->p()LV3/h;

    move-result-object v9

    invoke-direct {v10, v1, v11, v9}, LX3/O;-><init>(LU3/j;LD4/a;LV3/h;)V

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v1, v4, v3, v7, v10}, LX3/L;->L0(LJ4/C;Ljava/util/List;LU3/J;LX3/O;)V

    iget-object v3, v8, LX3/L;->x:LX3/M;

    if-nez v3, :cond_5

    move v6, v15

    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    new-instance v4, LX3/M;

    invoke-virtual {v3}, LD4/a;->p()LV3/h;

    move-result-object v11

    iget v12, v0, LX3/K;->b:I

    iget-object v3, v8, LX3/L;->x:LX3/M;

    invoke-virtual {v3}, LX3/J;->b()LU3/n;

    move-result-object v3

    iget v7, v0, LX3/K;->e:I

    if-ne v7, v15, :cond_6

    iget-object v7, v3, LU3/n;->a:LU3/b0;

    invoke-virtual {v7}, LU3/b0;->e()LU3/b0;

    move-result-object v7

    invoke-static {v7}, LU3/o;->f(LU3/b0;)LU3/n;

    move-result-object v7

    invoke-static {v7}, LU3/o;->e(LU3/n;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v3, LU3/o;->h:LU3/n;

    :cond_6
    move-object v13, v3

    iget-object v3, v8, LX3/L;->x:LX3/M;

    iget-boolean v14, v3, LX3/J;->h:Z

    iget v7, v0, LX3/K;->e:I

    iget-object v9, v0, LX3/K;->d:LX3/L;

    if-nez v9, :cond_7

    const/16 v18, 0x0

    goto :goto_2

    :cond_7
    iget-object v9, v9, LX3/L;->x:LX3/M;

    move-object/from16 v18, v9

    :goto_2
    iget-boolean v10, v3, LX3/J;->i:Z

    iget-boolean v3, v3, LX3/J;->l:Z

    move-object v9, v4

    move/from16 v16, v10

    move-object v10, v1

    move v6, v15

    move/from16 v15, v16

    move/from16 v16, v3

    move/from16 v17, v7

    move-object/from16 v19, v20

    invoke-direct/range {v9 .. v19}, LX3/M;-><init>(LX3/L;LV3/h;ILU3/n;ZZZILX3/M;LU3/L;)V

    :goto_3
    if-eqz v4, :cond_9

    iget-object v3, v8, LX3/L;->x:LX3/M;

    iget-object v7, v3, LX3/M;->p:LJ4/C;

    invoke-static {v2, v3}, LX3/L;->J0(LJ4/X;LU3/I;)LU3/s;

    move-result-object v3

    iput-object v3, v4, LX3/J;->o:LU3/s;

    if-eqz v7, :cond_8

    invoke-virtual {v2, v5, v7}, LJ4/X;->i(ILJ4/C;)LJ4/C;

    move-result-object v3

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v4, v3}, LX3/M;->K0(LJ4/C;)V

    :cond_9
    iget-object v3, v8, LX3/L;->y:LX3/N;

    if-nez v3, :cond_a

    const/4 v5, 0x0

    goto :goto_6

    :cond_a
    new-instance v5, LX3/N;

    invoke-virtual {v3}, LD4/a;->p()LV3/h;

    move-result-object v11

    iget v12, v0, LX3/K;->b:I

    iget-object v3, v8, LX3/L;->y:LX3/N;

    invoke-virtual {v3}, LX3/J;->b()LU3/n;

    move-result-object v3

    iget v7, v0, LX3/K;->e:I

    if-ne v7, v6, :cond_b

    iget-object v6, v3, LU3/n;->a:LU3/b0;

    invoke-virtual {v6}, LU3/b0;->e()LU3/b0;

    move-result-object v6

    invoke-static {v6}, LU3/o;->f(LU3/b0;)LU3/n;

    move-result-object v6

    invoke-static {v6}, LU3/o;->e(LU3/n;)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v3, LU3/o;->h:LU3/n;

    :cond_b
    move-object v13, v3

    iget-object v3, v8, LX3/L;->y:LX3/N;

    iget-boolean v14, v3, LX3/J;->h:Z

    iget v6, v0, LX3/K;->e:I

    iget-object v7, v0, LX3/K;->d:LX3/L;

    if-nez v7, :cond_c

    const/16 v18, 0x0

    goto :goto_5

    :cond_c
    iget-object v7, v7, LX3/L;->y:LX3/N;

    move-object/from16 v18, v7

    :goto_5
    iget-boolean v15, v3, LX3/J;->i:Z

    iget-boolean v3, v3, LX3/J;->l:Z

    move-object v9, v5

    move-object v10, v1

    move/from16 v16, v3

    move/from16 v17, v6

    move-object/from16 v19, v20

    invoke-direct/range {v9 .. v19}, LX3/N;-><init>(LX3/L;LV3/h;ILU3/n;ZZZILX3/N;LU3/L;)V

    :goto_6
    if-eqz v5, :cond_e

    iget-object v3, v8, LX3/L;->y:LX3/N;

    invoke-virtual {v3}, LX3/N;->n0()Ljava/util/List;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v5

    move-object v11, v2

    invoke-static/range {v9 .. v14}, LX3/w;->L0(LU3/s;Ljava/util/List;LJ4/X;ZZ[Z)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v6, 0x0

    if-nez v3, :cond_d

    iget-object v3, v0, LX3/K;->a:LU3/j;

    invoke-static {v3}, Lz4/e;->e(LU3/j;)LR3/j;

    move-result-object v3

    invoke-virtual {v3}, LR3/j;->m()LJ4/G;

    move-result-object v3

    iget-object v7, v8, LX3/L;->y:LX3/N;

    invoke-virtual {v7}, LX3/N;->n0()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LX3/W;

    check-cast v7, LD4/a;

    invoke-virtual {v7}, LD4/a;->p()LV3/h;

    move-result-object v7

    invoke-static {v5, v3, v7}, LX3/N;->J0(LX3/N;LJ4/C;LV3/h;)LX3/W;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_10

    iget-object v7, v8, LX3/L;->y:LX3/N;

    invoke-static {v2, v7}, LX3/L;->J0(LJ4/X;LU3/I;)LU3/s;

    move-result-object v7

    iput-object v7, v5, LX3/J;->o:LU3/s;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LX3/W;

    if-eqz v3, :cond_f

    iput-object v3, v5, LX3/N;->p:LX3/W;

    :cond_e
    const/4 v3, 0x0

    goto :goto_7

    :cond_f
    const/4 v0, 0x6

    invoke-static {v0}, LX3/N;->z0(I)V

    const/4 v3, 0x0

    throw v3

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :goto_7
    iget-object v6, v8, LX3/L;->z:LX3/u;

    if-nez v6, :cond_11

    move-object v7, v3

    goto :goto_8

    :cond_11
    new-instance v7, LX3/u;

    invoke-virtual {v6}, LD4/a;->p()LV3/h;

    move-result-object v6

    invoke-direct {v7, v6, v1}, LX3/u;-><init>(LV3/h;LX3/L;)V

    :goto_8
    iget-object v6, v8, LX3/L;->A:LX3/u;

    if-nez v6, :cond_12

    :goto_9
    move-object v6, v3

    goto :goto_a

    :cond_12
    new-instance v3, LX3/u;

    invoke-virtual {v6}, LD4/a;->p()LV3/h;

    move-result-object v6

    invoke-direct {v3, v6, v1}, LX3/u;-><init>(LV3/h;LX3/L;)V

    goto :goto_9

    :goto_a
    invoke-virtual {v1, v4, v5, v7, v6}, LX3/L;->K0(LX3/M;LX3/N;LX3/u;LX3/u;)V

    iget-boolean v0, v0, LX3/K;->g:Z

    if-eqz v0, :cond_14

    new-instance v0, LS4/j;

    invoke-direct {v0}, LS4/j;-><init>()V

    invoke-virtual {v8}, LX3/L;->m()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LX3/L;

    invoke-virtual {v4, v2}, LX3/L;->M0(LJ4/X;)LX3/L;

    move-result-object v4

    invoke-virtual {v0, v4}, LS4/j;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_13
    iput-object v0, v1, LX3/L;->m:Ljava/util/Collection;

    :cond_14
    invoke-virtual {v8}, LX3/L;->N()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v8, LX3/L;->j:LI4/h;

    if-eqz v0, :cond_15

    iput-object v0, v1, LX3/L;->j:LI4/h;

    :cond_15
    :goto_c
    return-object v1
.end method
