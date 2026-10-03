.class public abstract LX3/w;
.super LX3/q;
.source "SourceFile"

# interfaces
.implements LU3/s;


# instance fields
.field public volatile A:LX3/i;

.field public final B:LU3/s;

.field public final C:I

.field public D:LU3/s;

.field public E:Ljava/util/Map;

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:LJ4/C;

.field public k:LX3/O;

.field public l:LU3/J;

.field public m:I

.field public n:LU3/n;

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Ljava/util/Collection;


# direct methods
.method public constructor <init>(ILU3/j;LU3/s;LU3/L;LV3/h;Ls4/f;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    const/4 v2, 0x1

    if-eqz p5, :cond_4

    if-eqz p6, :cond_3

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    invoke-direct {p0, p2, p5, p6, p4}, LX3/q;-><init>(LU3/j;LV3/h;Ls4/f;LU3/L;)V

    sget-object p2, LU3/o;->i:LU3/n;

    iput-object p2, p0, LX3/w;->n:LU3/n;

    iput-boolean v1, p0, LX3/w;->o:Z

    iput-boolean v1, p0, LX3/w;->p:Z

    iput-boolean v1, p0, LX3/w;->q:Z

    iput-boolean v1, p0, LX3/w;->r:Z

    iput-boolean v1, p0, LX3/w;->s:Z

    iput-boolean v1, p0, LX3/w;->t:Z

    iput-boolean v1, p0, LX3/w;->u:Z

    iput-boolean v1, p0, LX3/w;->v:Z

    iput-boolean v1, p0, LX3/w;->w:Z

    iput-boolean v2, p0, LX3/w;->x:Z

    iput-boolean v1, p0, LX3/w;->y:Z

    iput-object v0, p0, LX3/w;->z:Ljava/util/Collection;

    iput-object v0, p0, LX3/w;->A:LX3/i;

    iput-object v0, p0, LX3/w;->D:LU3/s;

    iput-object v0, p0, LX3/w;->E:Ljava/util/Map;

    if-nez p3, :cond_0

    move-object p3, p0

    :cond_0
    iput-object p3, p0, LX3/w;->B:LU3/s;

    iput p1, p0, LX3/w;->C:I

    return-void

    :cond_1
    const/4 p0, 0x4

    invoke-static {p0}, LX3/w;->z0(I)V

    throw v0

    :cond_2
    const/4 p0, 0x3

    invoke-static {p0}, LX3/w;->z0(I)V

    throw v0

    :cond_3
    const/4 p0, 0x2

    invoke-static {p0}, LX3/w;->z0(I)V

    throw v0

    :cond_4
    invoke-static {v2}, LX3/w;->z0(I)V

    throw v0

    :cond_5
    invoke-static {v1}, LX3/w;->z0(I)V

    throw v0
.end method

.method public static L0(LU3/s;Ljava/util/List;LJ4/X;ZZ[Z)Ljava/util/ArrayList;
    .locals 22

    move-object/from16 v0, p2

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LX3/W;

    move-object v5, v4

    check-cast v5, LX3/X;

    invoke-virtual {v5}, LX3/X;->j()LJ4/C;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v6}, LJ4/X;->i(ILJ4/C;)LJ4/C;

    move-result-object v14

    iget-object v6, v4, LX3/W;->m:LJ4/C;

    if-nez v6, :cond_0

    move-object v7, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v7, v6}, LJ4/X;->i(ILJ4/C;)LJ4/C;

    move-result-object v7

    :goto_1
    if-nez v14, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v5}, LX3/X;->j()LJ4/C;

    move-result-object v5

    if-ne v14, v5, :cond_2

    if-eq v6, v7, :cond_3

    :cond_2
    if-eqz p5, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-boolean v6, p5, v5

    :cond_3
    instance-of v5, v4, LX3/V;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, LX3/V;

    iget-object v5, v5, LX3/V;->o:Lq3/j;

    invoke-virtual {v5}, Lq3/j;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v6, LX3/h;

    const/4 v8, 0x2

    invoke-direct {v6, v8, v5}, LX3/h;-><init>(ILjava/lang/Object;)V

    move-object/from16 v20, v6

    goto :goto_2

    :cond_4
    move-object/from16 v20, v1

    :goto_2
    if-eqz p3, :cond_5

    move-object v10, v1

    goto :goto_3

    :cond_5
    move-object v10, v4

    :goto_3
    move-object v5, v4

    check-cast v5, LD4/a;

    invoke-virtual {v5}, LD4/a;->p()LV3/h;

    move-result-object v12

    move-object v5, v4

    check-cast v5, LX3/p;

    invoke-virtual {v5}, LX3/p;->r()Ls4/f;

    move-result-object v13

    invoke-virtual {v4}, LX3/W;->I0()Z

    move-result v15

    if-eqz p4, :cond_6

    move-object v5, v4

    check-cast v5, LX3/q;

    invoke-virtual {v5}, LX3/q;->i()LU3/L;

    move-result-object v5

    goto :goto_4

    :cond_6
    sget-object v5, LU3/L;->a:LU3/M;

    :goto_4
    const-string v6, "annotations"

    invoke-static {v12, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "name"

    invoke-static {v13, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "source"

    invoke-static {v5, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v11, v4, LX3/W;->i:I

    iget-boolean v6, v4, LX3/W;->k:Z

    iget-boolean v4, v4, LX3/W;->l:Z

    if-nez v20, :cond_7

    new-instance v20, LX3/W;

    move-object/from16 v8, v20

    move-object/from16 v9, p0

    move/from16 v16, v6

    move/from16 v17, v4

    move-object/from16 v18, v7

    move-object/from16 v19, v5

    invoke-direct/range {v8 .. v19}, LX3/W;-><init>(LU3/a;LX3/W;ILV3/h;Ls4/f;LJ4/C;ZZZLJ4/C;LU3/L;)V

    move-object/from16 v4, v20

    goto :goto_5

    :cond_7
    new-instance v21, LX3/V;

    move-object/from16 v8, v21

    move-object/from16 v9, p0

    move/from16 v16, v6

    move/from16 v17, v4

    move-object/from16 v18, v7

    move-object/from16 v19, v5

    invoke-direct/range {v8 .. v20}, LX3/V;-><init>(LU3/s;LX3/W;ILV3/h;Ls4/f;LJ4/C;ZZZLJ4/C;LU3/L;LE3/a;)V

    move-object/from16 v4, v21

    :goto_5
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    return-object v2

    :cond_9
    const/16 v0, 0x1c

    invoke-static {v0}, LX3/w;->z0(I)V

    throw v1
.end method

.method public static synthetic z0(I)V
    .locals 7

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_1
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_3
    move v2, v1

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v5, "containingDeclaration"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_4
    const-string v5, "configuration"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    const-string v5, "substitutor"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_6
    const-string v5, "originalSubstitutor"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "overriddenDescriptors"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "extensionReceiverParameter"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_9
    const-string v5, "unsubstitutedReturnType"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_a
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_b
    const-string v5, "visibility"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_c
    const-string v5, "unsubstitutedValueParameters"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_d
    const-string v5, "typeParameters"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_e
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_f
    const-string v5, "kind"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_10
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_11
    const-string v5, "annotations"

    aput-object v5, v2, v4

    :goto_2
    const-string v4, "initialize"

    const-string v5, "newCopyBuilder"

    const/4 v6, 0x1

    packed-switch p0, :pswitch_data_3

    :pswitch_12
    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_13
    const-string v3, "getSourceToUseForCopy"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_14
    const-string v3, "copy"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_15
    aput-object v5, v2, v6

    goto :goto_3

    :pswitch_16
    const-string v3, "getKind"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_17
    const-string v3, "getOriginal"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_18
    const-string v3, "getValueParameters"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_19
    const-string v3, "getTypeParameters"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_1a
    const-string v3, "getVisibility"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_1b
    const-string v3, "getModality"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_1c
    const-string v3, "getOverriddenDescriptors"

    aput-object v3, v2, v6

    goto :goto_3

    :pswitch_1d
    aput-object v4, v2, v6

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_1e
    const-string v3, "getSubstitutedValueParameters"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_1f
    const-string v3, "doSubstitute"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_20
    aput-object v5, v2, v1

    goto :goto_4

    :pswitch_21
    const-string v3, "substitute"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_22
    const-string v3, "setOverriddenDescriptors"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_23
    const-string v3, "setExtensionReceiverParameter"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_24
    const-string v3, "setReturnType"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_25
    const-string v3, "setVisibility"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_26
    aput-object v4, v2, v1

    :goto_4
    :pswitch_27
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_29
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_5
        :pswitch_c
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_1d
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_12
        :pswitch_15
        :pswitch_12
        :pswitch_12
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_27
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_22
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_21
        :pswitch_27
        :pswitch_20
        :pswitch_1f
        :pswitch_27
        :pswitch_27
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x8
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method


# virtual methods
.method public final A()LU3/s;
    .locals 0

    iget-object p0, p0, LX3/w;->D:LU3/s;

    return-object p0
.end method

.method public B()Z
    .locals 0

    iget-boolean p0, p0, LX3/w;->q:Z

    return p0
.end method

.method public final C()LU3/J;
    .locals 0

    iget-object p0, p0, LX3/w;->l:LU3/J;

    return-object p0
.end method

.method public final F()Z
    .locals 0

    iget-boolean p0, p0, LX3/w;->u:Z

    return p0
.end method

.method public G()Z
    .locals 0

    iget-boolean p0, p0, LX3/w;->w:Z

    return p0
.end method

.method public final H0(LU3/e;ILU3/n;)LU3/s;
    .locals 0

    invoke-virtual {p0}, LX3/w;->Z()LU3/r;

    move-result-object p0

    invoke-interface {p0, p1}, LU3/r;->m(LU3/e;)LU3/r;

    move-result-object p0

    invoke-interface {p0, p2}, LU3/r;->w(I)LU3/r;

    move-result-object p0

    invoke-interface {p0, p3}, LU3/r;->y(LU3/n;)LU3/r;

    move-result-object p0

    const/4 p1, 0x2

    invoke-interface {p0, p1}, LU3/r;->b(I)LU3/r;

    move-result-object p0

    invoke-interface {p0}, LU3/r;->e()LU3/r;

    move-result-object p0

    invoke-interface {p0}, LU3/r;->build()LU3/s;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x18

    invoke-static {p0}, LX3/w;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public I0(LU3/e;ILU3/n;)LX3/P;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LX3/w;->H0(LU3/e;ILU3/n;)LU3/s;

    move-result-object p0

    check-cast p0, LX3/P;

    return-object p0
.end method

.method public J(Ljava/util/Collection;)V
    .locals 1

    if-eqz p1, :cond_2

    iput-object p1, p0, LX3/w;->z:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU3/s;

    invoke-interface {v0}, LU3/s;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LX3/w;->v:Z

    :cond_1
    return-void

    :cond_2
    const/16 p0, 0xf

    invoke-static {p0}, LX3/w;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract J0(ILU3/j;LU3/s;LU3/L;LV3/h;Ls4/f;)LX3/w;
.end method

.method public K0(LX3/v;)LX3/w;
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    if-eqz v8, :cond_1c

    const/4 v10, 0x1

    new-array v11, v10, [Z

    iget-object v0, v8, LX3/v;->u:LV3/h;

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, LD4/a;->p()LV3/h;

    move-result-object v0

    iget-object v1, v8, LX3/v;->u:LV3/h;

    invoke-static {v0, v1}, LR3/f;->l(LV3/h;LV3/h;)LV3/h;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, LD4/a;->p()LV3/h;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v2, v8, LX3/v;->e:LU3/j;

    iget-object v3, v8, LX3/v;->h:LU3/s;

    iget v1, v8, LX3/v;->i:I

    iget-object v6, v8, LX3/v;->n:Ls4/f;

    iget-boolean v0, v8, LX3/v;->q:Z

    if-eqz v0, :cond_2

    if-eqz v3, :cond_1

    move-object v0, v3

    goto :goto_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, LX3/w;->a()LU3/s;

    move-result-object v0

    :goto_2
    check-cast v0, LX3/q;

    invoke-virtual {v0}, LX3/q;->i()LU3/L;

    move-result-object v0

    :goto_3
    move-object v4, v0

    goto :goto_4

    :cond_2
    sget-object v0, LU3/L;->a:LU3/M;

    goto :goto_3

    :goto_4
    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, LX3/w;->J0(ILU3/j;LU3/s;LU3/L;LV3/h;Ls4/f;)LX3/w;

    move-result-object v6

    iget-object v0, v8, LX3/v;->t:Lr3/r;

    if-nez v0, :cond_3

    invoke-virtual/range {p0 .. p0}, LX3/w;->q()Ljava/util/List;

    move-result-object v0

    :cond_3
    const/4 v12, 0x0

    aget-boolean v1, v11, v12

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v10

    or-int/2addr v1, v2

    aput-boolean v1, v11, v12

    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, v8, LX3/v;->d:LJ4/U;

    invoke-static {v0, v1, v6, v15, v11}, LJ4/c;->v(Ljava/util/List;LJ4/U;LU3/j;Ljava/util/ArrayList;[Z)LJ4/X;

    move-result-object v14

    if-nez v14, :cond_4

    return-object v9

    :cond_4
    iget-object v0, v8, LX3/v;->k:LX3/O;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, LX3/d;->j()LJ4/C;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v14, v1, v0}, LJ4/X;->i(ILJ4/C;)LJ4/C;

    move-result-object v0

    if-nez v0, :cond_5

    return-object v9

    :cond_5
    new-instance v1, LX3/O;

    new-instance v2, LD4/b;

    iget-object v3, v8, LX3/v;->k:LX3/O;

    invoke-virtual {v3}, LX3/O;->getValue()LD4/d;

    invoke-direct {v2, v6, v0}, LD4/b;-><init>(LU3/a;LJ4/C;)V

    iget-object v3, v8, LX3/v;->k:LX3/O;

    invoke-virtual {v3}, LD4/a;->p()LV3/h;

    move-result-object v3

    invoke-direct {v1, v6, v2, v3}, LX3/O;-><init>(LU3/j;LD4/a;LV3/h;)V

    aget-boolean v2, v11, v12

    iget-object v3, v8, LX3/v;->k:LX3/O;

    invoke-virtual {v3}, LX3/d;->j()LJ4/C;

    move-result-object v3

    if-eq v0, v3, :cond_6

    move v0, v10

    goto :goto_5

    :cond_6
    move v0, v12

    :goto_5
    or-int/2addr v0, v2

    aput-boolean v0, v11, v12

    move-object v13, v1

    goto :goto_6

    :cond_7
    move-object v13, v9

    :goto_6
    iget-object v0, v8, LX3/v;->l:LU3/J;

    if-eqz v0, :cond_a

    check-cast v0, LX3/d;

    invoke-virtual {v0, v14}, LX3/d;->G0(LJ4/X;)LX3/d;

    move-result-object v0

    if-nez v0, :cond_8

    return-object v9

    :cond_8
    aget-boolean v1, v11, v12

    iget-object v2, v8, LX3/v;->l:LU3/J;

    if-eq v0, v2, :cond_9

    move v2, v10

    goto :goto_7

    :cond_9
    move v2, v12

    :goto_7
    or-int/2addr v1, v2

    aput-boolean v1, v11, v12

    move-object/from16 v16, v0

    goto :goto_8

    :cond_a
    move-object/from16 v16, v9

    :goto_8
    iget-object v1, v8, LX3/v;->j:Ljava/util/List;

    iget-boolean v3, v8, LX3/v;->r:Z

    iget-boolean v4, v8, LX3/v;->q:Z

    move-object v0, v6

    move-object v2, v14

    move-object v5, v11

    invoke-static/range {v0 .. v5}, LX3/w;->L0(LU3/s;Ljava/util/List;LJ4/X;ZZ[Z)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v9

    :cond_b
    iget-object v1, v8, LX3/v;->m:LJ4/C;

    const/4 v2, 0x3

    invoke-virtual {v14, v2, v1}, LJ4/X;->i(ILJ4/C;)LJ4/C;

    move-result-object v1

    if-nez v1, :cond_c

    return-object v9

    :cond_c
    aget-boolean v2, v11, v12

    iget-object v3, v8, LX3/v;->m:LJ4/C;

    if-eq v1, v3, :cond_d

    move v3, v10

    goto :goto_9

    :cond_d
    move v3, v12

    :goto_9
    or-int/2addr v2, v3

    aput-boolean v2, v11, v12

    if-nez v2, :cond_e

    iget-boolean v2, v8, LX3/v;->y:Z

    if-eqz v2, :cond_e

    return-object v7

    :cond_e
    iget v2, v8, LX3/v;->f:I

    iget-object v3, v8, LX3/v;->g:LU3/n;

    move-object v12, v6

    move-object v4, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    invoke-virtual/range {v12 .. v19}, LX3/w;->M0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;)V

    iget-boolean v0, v7, LX3/w;->o:Z

    iput-boolean v0, v6, LX3/w;->o:Z

    iget-boolean v0, v7, LX3/w;->p:Z

    iput-boolean v0, v6, LX3/w;->p:Z

    iget-boolean v0, v7, LX3/w;->q:Z

    iput-boolean v0, v6, LX3/w;->q:Z

    iget-boolean v0, v7, LX3/w;->r:Z

    iput-boolean v0, v6, LX3/w;->r:Z

    iget-boolean v0, v7, LX3/w;->s:Z

    iput-boolean v0, v6, LX3/w;->s:Z

    iget-boolean v0, v7, LX3/w;->w:Z

    iput-boolean v0, v6, LX3/w;->w:Z

    iget-boolean v0, v7, LX3/w;->t:Z

    iput-boolean v0, v6, LX3/w;->t:Z

    iget-boolean v0, v7, LX3/w;->x:Z

    invoke-virtual {v6, v0}, LX3/w;->O0(Z)V

    iget-boolean v0, v8, LX3/v;->s:Z

    iput-boolean v0, v6, LX3/w;->u:Z

    iget-boolean v0, v8, LX3/v;->v:Z

    iput-boolean v0, v6, LX3/w;->v:Z

    iget-object v0, v8, LX3/v;->x:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_a

    :cond_f
    iget-boolean v0, v7, LX3/w;->y:Z

    :goto_a
    invoke-virtual {v6, v0}, LX3/w;->P0(Z)V

    iget-object v0, v8, LX3/v;->w:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v7, LX3/w;->E:Ljava/util/Map;

    if-eqz v0, :cond_14

    :cond_10
    iget-object v0, v8, LX3/v;->w:Ljava/util/LinkedHashMap;

    iget-object v1, v7, LX3/w;->E:Ljava/util/Map;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_12
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v10, :cond_13

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v6, LX3/w;->E:Ljava/util/Map;

    goto :goto_c

    :cond_13
    iput-object v0, v6, LX3/w;->E:Ljava/util/Map;

    :cond_14
    :goto_c
    iget-boolean v0, v8, LX3/v;->p:Z

    if-nez v0, :cond_15

    iget-object v0, v7, LX3/w;->D:LU3/s;

    if-eqz v0, :cond_17

    :cond_15
    iget-object v0, v7, LX3/w;->D:LU3/s;

    if-eqz v0, :cond_16

    goto :goto_d

    :cond_16
    move-object v0, v7

    :goto_d
    invoke-interface {v0, v4}, LU3/s;->l(LJ4/X;)LU3/s;

    move-result-object v0

    iput-object v0, v6, LX3/w;->D:LU3/s;

    :cond_17
    iget-boolean v0, v8, LX3/v;->o:Z

    if-eqz v0, :cond_1a

    invoke-virtual/range {p0 .. p0}, LX3/w;->a()LU3/s;

    move-result-object v0

    invoke-interface {v0}, LU3/b;->m()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v8, LX3/v;->d:LJ4/U;

    invoke-virtual {v0}, LJ4/U;->e()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v7, LX3/w;->A:LX3/i;

    if-eqz v0, :cond_18

    iput-object v0, v6, LX3/w;->A:LX3/i;

    goto :goto_e

    :cond_18
    invoke-virtual/range {p0 .. p0}, LX3/w;->m()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v6, v0}, LX3/w;->J(Ljava/util/Collection;)V

    goto :goto_e

    :cond_19
    new-instance v0, LX3/i;

    const/4 v1, 0x1

    invoke-direct {v0, v7, v4, v1}, LX3/i;-><init>(LX3/q;Ljava/lang/Object;I)V

    iput-object v0, v6, LX3/w;->A:LX3/i;

    :cond_1a
    :goto_e
    return-object v6

    :cond_1b
    const/16 v0, 0x19

    invoke-static {v0}, LX3/w;->z0(I)V

    throw v9

    :cond_1c
    const/16 v0, 0x17

    invoke-static {v0}, LX3/w;->z0(I)V

    throw v9
.end method

.method public L(LU3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, LU3/l;->g(LU3/s;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public M()Z
    .locals 0

    iget-boolean p0, p0, LX3/w;->s:Z

    return p0
.end method

.method public M0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    if-eqz p4, :cond_5

    if-eqz p7, :cond_4

    invoke-static {p3}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LX3/w;->h:Ljava/util/List;

    invoke-static {p4}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LX3/w;->i:Ljava/util/List;

    iput-object p5, p0, LX3/w;->j:LJ4/C;

    iput p6, p0, LX3/w;->m:I

    iput-object p7, p0, LX3/w;->n:LU3/n;

    iput-object p1, p0, LX3/w;->k:LX3/O;

    iput-object p2, p0, LX3/w;->l:LU3/J;

    const/4 p0, 0x0

    move p1, p0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    const-string p5, " but position is "

    if-ge p1, p2, :cond_1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LU3/O;

    invoke-interface {p2}, LU3/O;->r0()I

    move-result p6

    if-ne p6, p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " index is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, LU3/O;->r0()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_3

    invoke-interface {p4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LX3/W;

    iget p2, p1, LX3/W;->i:I

    if-ne p2, p0, :cond_2

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "index is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, LX3/W;->i:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    return-void

    :cond_4
    const/4 p0, 0x7

    invoke-static {p0}, LX3/w;->z0(I)V

    throw v0

    :cond_5
    const/4 p0, 0x6

    invoke-static {p0}, LX3/w;->z0(I)V

    throw v0

    :cond_6
    const/4 p0, 0x5

    invoke-static {p0}, LX3/w;->z0(I)V

    throw v0
.end method

.method public final N0(LJ4/X;)LX3/v;
    .locals 11

    if-eqz p1, :cond_0

    new-instance v10, LX3/v;

    invoke-virtual {p1}, LJ4/X;->f()LJ4/U;

    move-result-object v2

    invoke-virtual {p0}, LX3/q;->g()LU3/j;

    move-result-object v3

    invoke-virtual {p0}, LX3/w;->e()I

    move-result v4

    invoke-virtual {p0}, LX3/w;->b()LU3/n;

    move-result-object v5

    invoke-virtual {p0}, LX3/w;->f0()I

    move-result v6

    invoke-virtual {p0}, LX3/w;->n0()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, LX3/w;->k:LX3/O;

    invoke-virtual {p0}, LX3/w;->k()LJ4/C;

    move-result-object v9

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, LX3/v;-><init>(LX3/w;LJ4/U;LU3/j;ILU3/n;ILjava/util/List;LX3/O;LJ4/C;)V

    return-object v10

    :cond_0
    const/16 p0, 0x16

    invoke-static {p0}, LX3/w;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final O()Z
    .locals 2

    iget-boolean v0, p0, LX3/w;->o:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, LX3/w;->a()LU3/s;

    move-result-object p0

    invoke-interface {p0}, LU3/b;->m()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU3/s;

    invoke-interface {v0}, LU3/s;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public O0(Z)V
    .locals 0

    iput-boolean p1, p0, LX3/w;->x:Z

    return-void
.end method

.method public P0(Z)V
    .locals 0

    iput-boolean p1, p0, LX3/w;->y:Z

    return-void
.end method

.method public final Q0(LJ4/G;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, LX3/w;->j:LJ4/C;

    return-void

    :cond_0
    const/16 p0, 0xa

    invoke-static {p0}, LX3/w;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final X()Z
    .locals 0

    iget-boolean p0, p0, LX3/w;->v:Z

    return p0
.end method

.method public final Y()LU3/J;
    .locals 0

    iget-object p0, p0, LX3/w;->k:LX3/O;

    return-object p0
.end method

.method public Z()LU3/r;
    .locals 1

    sget-object v0, LJ4/X;->b:LJ4/X;

    invoke-virtual {p0, v0}, LX3/w;->N0(LJ4/X;)LX3/v;

    move-result-object p0

    return-object p0
.end method

.method public a()LU3/s;
    .locals 1

    iget-object v0, p0, LX3/w;->B:LU3/s;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, LU3/s;->a()LU3/s;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/16 p0, 0x12

    invoke-static {p0}, LX3/w;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b()LU3/n;
    .locals 0

    iget-object p0, p0, LX3/w;->n:LU3/n;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0xe

    invoke-static {p0}, LX3/w;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, LX3/w;->m:I

    if-eqz p0, :cond_0

    return p0

    :cond_0
    const/16 p0, 0xd

    invoke-static {p0}, LX3/w;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, LX3/w;->r:Z

    return p0
.end method

.method public final f0()I
    .locals 0

    iget p0, p0, LX3/w;->C:I

    if-eqz p0, :cond_0

    return p0

    :cond_0
    const/16 p0, 0x13

    invoke-static {p0}, LX3/w;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public j0()Z
    .locals 0

    iget-boolean p0, p0, LX3/w;->y:Z

    return p0
.end method

.method public k()LJ4/C;
    .locals 0

    iget-object p0, p0, LX3/w;->j:LJ4/C;

    return-object p0
.end method

.method public bridge synthetic l(LJ4/X;)LU3/k;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LX3/w;->l(LJ4/X;)LU3/s;

    move-result-object p0

    return-object p0
.end method

.method public l(LJ4/X;)LU3/s;
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p1, LJ4/X;->a:LJ4/U;

    .line 3
    invoke-virtual {v0}, LJ4/U;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, LX3/w;->N0(LJ4/X;)LX3/v;

    move-result-object p1

    invoke-virtual {p0}, LX3/w;->a()LU3/s;

    move-result-object p0

    .line 5
    iput-object p0, p1, LX3/v;->h:LU3/s;

    const/4 p0, 0x1

    .line 6
    iput-boolean p0, p1, LX3/v;->q:Z

    .line 7
    iput-boolean p0, p1, LX3/v;->y:Z

    .line 8
    iget-object p0, p1, LX3/v;->z:LX3/w;

    invoke-virtual {p0, p1}, LX3/w;->K0(LX3/v;)LX3/w;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0x14

    .line 9
    invoke-static {p0}, LX3/w;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public m()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, LX3/w;->A:LX3/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX3/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, LX3/w;->z:Ljava/util/Collection;

    iput-object v1, p0, LX3/w;->A:LX3/i;

    :cond_0
    iget-object p0, p0, LX3/w;->z:Ljava/util/Collection;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const/16 p0, 0xc

    invoke-static {p0}, LX3/w;->z0(I)V

    throw v1
.end method

.method public final n0()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LX3/w;->i:Ljava/util/List;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x11

    invoke-static {p0}, LX3/w;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final o0()Z
    .locals 2

    iget-boolean v0, p0, LX3/w;->p:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, LX3/w;->a()LU3/s;

    move-result-object p0

    invoke-interface {p0}, LU3/b;->m()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU3/s;

    invoke-interface {v0}, LU3/s;->o0()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final q()Ljava/util/List;
    .locals 3

    iget-object v0, p0, LX3/w;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "typeParameters == null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final w()Z
    .locals 0

    iget-boolean p0, p0, LX3/w;->t:Z

    return p0
.end method

.method public bridge synthetic x(LU3/e;ILU3/n;)LU3/b;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LX3/w;->I0(LU3/e;ILU3/n;)LX3/P;

    move-result-object p0

    return-object p0
.end method

.method public x0()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lf4/f;->H:Lf4/e;

    iget-object p0, p0, LX3/w;->E:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
