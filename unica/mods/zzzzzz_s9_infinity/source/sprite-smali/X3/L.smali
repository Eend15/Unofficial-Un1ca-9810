.class public LX3/L;
.super LX3/X;
.source "SourceFile"

# interfaces
.implements LU3/b;
.implements LU3/P;


# instance fields
.field public A:LX3/u;

.field public final i:Z

.field public j:LI4/h;

.field public final k:I

.field public l:LU3/n;

.field public m:Ljava/util/Collection;

.field public final n:LX3/L;

.field public final o:I

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public u:LU3/J;

.field public v:LX3/O;

.field public w:Ljava/util/ArrayList;

.field public x:LX3/M;

.field public y:LX3/N;

.field public z:LX3/u;


# direct methods
.method public constructor <init>(LU3/j;LX3/L;LV3/h;ILU3/n;ZLs4/f;ILU3/L;ZZZZZ)V
    .locals 11

    move-object v6, p0

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p8

    const/4 v10, 0x0

    if-eqz p1, :cond_7

    if-eqz p3, :cond_6

    if-eqz v7, :cond_5

    if-eqz v8, :cond_4

    if-eqz p7, :cond_3

    if-eqz v9, :cond_2

    if-eqz p9, :cond_1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v3, p7

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, LX3/X;-><init>(LU3/j;LV3/h;Ls4/f;LJ4/C;LU3/L;)V

    move/from16 v0, p6

    iput-boolean v0, v6, LX3/L;->i:Z

    iput-object v10, v6, LX3/L;->m:Ljava/util/Collection;

    iput v7, v6, LX3/L;->k:I

    iput-object v8, v6, LX3/L;->l:LU3/n;

    if-nez p2, :cond_0

    move-object v0, v6

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, v6, LX3/L;->n:LX3/L;

    iput v9, v6, LX3/L;->o:I

    move/from16 v0, p10

    iput-boolean v0, v6, LX3/L;->p:Z

    move/from16 v0, p11

    iput-boolean v0, v6, LX3/L;->q:Z

    move/from16 v0, p12

    iput-boolean v0, v6, LX3/L;->r:Z

    move/from16 v0, p13

    iput-boolean v0, v6, LX3/L;->s:Z

    move/from16 v0, p14

    iput-boolean v0, v6, LX3/L;->t:Z

    return-void

    :cond_1
    const/4 v0, 0x6

    invoke-static {v0}, LX3/L;->z0(I)V

    throw v10

    :cond_2
    const/4 v0, 0x5

    invoke-static {v0}, LX3/L;->z0(I)V

    throw v10

    :cond_3
    const/4 v0, 0x4

    invoke-static {v0}, LX3/L;->z0(I)V

    throw v10

    :cond_4
    const/4 v0, 0x3

    invoke-static {v0}, LX3/L;->z0(I)V

    throw v10

    :cond_5
    const/4 v0, 0x2

    invoke-static {v0}, LX3/L;->z0(I)V

    throw v10

    :cond_6
    const/4 v0, 0x1

    invoke-static {v0}, LX3/L;->z0(I)V

    throw v10

    :cond_7
    const/4 v0, 0x0

    invoke-static {v0}, LX3/L;->z0(I)V

    throw v10
.end method

.method public static J0(LJ4/X;LU3/I;)LU3/s;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    check-cast p1, LX3/J;

    iget-object p1, p1, LX3/J;->o:LU3/s;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, LU3/s;->l(LJ4/X;)LU3/s;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/16 p0, 0x1a

    invoke-static {p0}, LX3/L;->z0(I)V

    throw v0
.end method

.method public static synthetic z0(I)V
    .locals 11

    const/16 v0, 0x25

    const/16 v1, 0x24

    const/16 v2, 0x22

    const/16 v3, 0x21

    const/16 v4, 0x17

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v6, 0x2

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_1

    const/4 v7, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    move v7, v6

    :goto_1
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl"

    const/4 v9, 0x0

    packed-switch p0, :pswitch_data_2

    :pswitch_2
    const-string v10, "containingDeclaration"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_3
    const-string v10, "overriddenDescriptors"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_4
    const-string v10, "newName"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_5
    const-string v10, "newVisibility"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_6
    const-string v10, "newModality"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_7
    const-string v10, "newOwner"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_8
    const-string v10, "accessorDescriptor"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_9
    const-string v10, "substitutor"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_a
    const-string v10, "copyConfiguration"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_b
    const-string v10, "originalSubstitutor"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_c
    aput-object v8, v7, v9

    goto :goto_2

    :pswitch_d
    const-string v10, "typeParameters"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_e
    const-string v10, "outType"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_f
    const-string v10, "source"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_10
    const-string v10, "kind"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_11
    const-string v10, "name"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_12
    const-string v10, "visibility"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_13
    const-string v10, "modality"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_14
    const-string v10, "annotations"

    aput-object v10, v7, v9

    :goto_2
    const/4 v9, 0x1

    if-eq p0, v4, :cond_6

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_3

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_15
    const-string v8, "getAccessors"

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_16
    const-string v8, "getVisibility"

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_17
    const-string v8, "getModality"

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_18
    const-string v8, "getReturnType"

    aput-object v8, v7, v9

    goto :goto_3

    :pswitch_19
    const-string v8, "getTypeParameters"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_2
    const-string v8, "copy"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_3
    const-string v8, "getOverriddenDescriptors"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_4
    const-string v8, "getKind"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_5
    const-string v8, "getOriginal"

    aput-object v8, v7, v9

    goto :goto_3

    :cond_6
    const-string v8, "getSourceToUseForCopy"

    aput-object v8, v7, v9

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v8, "<init>"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1a
    const-string v8, "setOverriddenDescriptors"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1b
    const-string v8, "createSubstitutedCopy"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1c
    const-string v8, "getSubstitutedInitialSignatureDescriptor"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1d
    const-string v8, "doSubstitute"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1e
    const-string v8, "substitute"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_1f
    const-string v8, "setVisibility"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_20
    const-string v8, "setType"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_21
    const-string v8, "create"

    aput-object v8, v7, v6

    :goto_4
    :pswitch_22
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v4, :cond_7

    if-eq p0, v3, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    :pswitch_23
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_2
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_12
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_10
        :pswitch_4
        :pswitch_f
        :pswitch_c
        :pswitch_c
        :pswitch_3
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x11
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_1e
        :pswitch_22
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_22
        :pswitch_22
        :pswitch_1a
        :pswitch_22
        :pswitch_22
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x11
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public B()Z
    .locals 0

    iget-boolean p0, p0, LX3/L;->s:Z

    return p0
.end method

.method public final C()LU3/J;
    .locals 0

    iget-object p0, p0, LX3/L;->u:LU3/J;

    return-object p0
.end method

.method public final bridge synthetic G0()LU3/k;
    .locals 0

    invoke-virtual {p0}, LX3/L;->I0()LX3/L;

    move-result-object p0

    return-object p0
.end method

.method public H0(LU3/j;ILU3/n;LX3/L;ILs4/f;)LX3/L;
    .locals 16

    move-object/from16 v0, p0

    sget-object v9, LU3/L;->a:LU3/M;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    new-instance v15, LX3/L;

    invoke-virtual/range {p0 .. p0}, LD4/a;->p()LV3/h;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, LX3/L;->N()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, LX3/L;->B()Z

    move-result v13

    iget-boolean v12, v0, LX3/L;->r:Z

    iget-boolean v14, v0, LX3/L;->t:Z

    iget-boolean v6, v0, LX3/L;->i:Z

    iget-boolean v10, v0, LX3/L;->p:Z

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p6

    move/from16 v8, p5

    invoke-direct/range {v0 .. v14}, LX3/L;-><init>(LU3/j;LX3/L;LV3/h;ILU3/n;ZLs4/f;ILU3/L;ZZZZZ)V

    return-object v15

    :cond_0
    const/16 v0, 0x1f

    invoke-static {v0}, LX3/L;->z0(I)V

    throw v1

    :cond_1
    const/16 v0, 0x1e

    invoke-static {v0}, LX3/L;->z0(I)V

    throw v1

    :cond_2
    const/16 v0, 0x1d

    invoke-static {v0}, LX3/L;->z0(I)V

    throw v1

    :cond_3
    const/16 v0, 0x1c

    invoke-static {v0}, LX3/L;->z0(I)V

    throw v1

    :cond_4
    const/16 v0, 0x1b

    invoke-static {v0}, LX3/L;->z0(I)V

    throw v1
.end method

.method public final I0()LX3/L;
    .locals 1

    iget-object v0, p0, LX3/L;->n:LX3/L;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LX3/L;->I0()LX3/L;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/16 p0, 0x21

    invoke-static {p0}, LX3/L;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final J(Ljava/util/Collection;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, LX3/L;->m:Ljava/util/Collection;

    return-void

    :cond_0
    const/16 p0, 0x23

    invoke-static {p0}, LX3/L;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final K0(LX3/M;LX3/N;LX3/u;LX3/u;)V
    .locals 0

    iput-object p1, p0, LX3/L;->x:LX3/M;

    iput-object p2, p0, LX3/L;->y:LX3/N;

    iput-object p3, p0, LX3/L;->z:LX3/u;

    iput-object p4, p0, LX3/L;->A:LX3/u;

    return-void
.end method

.method public final L(LU3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, LU3/l;->L(LX3/L;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final L0(LJ4/C;Ljava/util/List;LU3/J;LX3/O;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, LX3/X;->h:LJ4/C;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, LX3/L;->w:Ljava/util/ArrayList;

    iput-object p4, p0, LX3/L;->v:LX3/O;

    iput-object p3, p0, LX3/L;->u:LU3/J;

    return-void

    :cond_0
    const/16 p0, 0xf

    invoke-static {p0}, LX3/L;->z0(I)V

    throw v0

    :cond_1
    const/16 p0, 0xe

    invoke-static {p0}, LX3/L;->z0(I)V

    throw v0
.end method

.method public final M0(LJ4/X;)LX3/L;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, LJ4/X;->a:LJ4/U;

    invoke-virtual {v1}, LJ4/U;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, LX3/K;

    invoke-direct {v1, p0}, LX3/K;-><init>(LX3/L;)V

    invoke-virtual {p1}, LJ4/X;->f()LJ4/U;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-object p1, v1, LX3/K;->f:LJ4/U;

    invoke-virtual {p0}, LX3/L;->I0()LX3/L;

    move-result-object p0

    iput-object p0, v1, LX3/K;->d:LX3/L;

    invoke-virtual {v1}, LX3/K;->b()LX3/L;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0xf

    invoke-static {p0}, LX3/K;->a(I)V

    throw v0

    :cond_2
    const/16 p0, 0x16

    invoke-static {p0}, LX3/L;->z0(I)V

    throw v0
.end method

.method public N()Z
    .locals 0

    iget-boolean p0, p0, LX3/L;->q:Z

    return p0
.end method

.method public final R()Z
    .locals 0

    iget-boolean p0, p0, LX3/L;->i:Z

    return p0
.end method

.method public final Y()LU3/J;
    .locals 0

    iget-object p0, p0, LX3/L;->v:LX3/O;

    return-object p0
.end method

.method public final bridge synthetic a()LU3/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, LX3/L;->I0()LX3/L;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LU3/b;
    .locals 0

    .line 2
    invoke-virtual {p0}, LX3/L;->I0()LX3/L;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LU3/j;
    .locals 0

    .line 3
    invoke-virtual {p0}, LX3/L;->I0()LX3/L;

    move-result-object p0

    return-object p0
.end method

.method public final b()LU3/n;
    .locals 0

    iget-object p0, p0, LX3/L;->l:LU3/n;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x14

    invoke-static {p0}, LX3/L;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b0()Lx4/g;
    .locals 0

    iget-object p0, p0, LX3/L;->j:LI4/h;

    if-eqz p0, :cond_0

    invoke-interface {p0}, LE3/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx4/g;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, LX3/L;->k:I

    if-eqz p0, :cond_0

    return p0

    :cond_0
    const/16 p0, 0x13

    invoke-static {p0}, LX3/L;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final f0()I
    .locals 0

    iget p0, p0, LX3/L;->o:I

    if-eqz p0, :cond_0

    return p0

    :cond_0
    const/16 p0, 0x22

    invoke-static {p0}, LX3/L;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final k()LJ4/C;
    .locals 0

    invoke-virtual {p0}, LX3/X;->j()LJ4/C;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x12

    invoke-static {p0}, LX3/L;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic l(LJ4/X;)LU3/k;
    .locals 0

    invoke-virtual {p0, p1}, LX3/L;->M0(LJ4/X;)LX3/L;

    move-result-object p0

    return-object p0
.end method

.method public final m()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, LX3/L;->m:Ljava/util/Collection;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/16 p0, 0x24

    invoke-static {p0}, LX3/L;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final q()Ljava/util/List;
    .locals 2

    iget-object v0, p0, LX3/L;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, LX3/p;->F0(LU3/j;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "typeParameters == null for "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final w()Z
    .locals 0

    iget-boolean p0, p0, LX3/L;->r:Z

    return p0
.end method

.method public final x(LU3/e;ILU3/n;)LU3/b;
    .locals 2

    new-instance v0, LX3/K;

    invoke-direct {v0, p0}, LX3/K;-><init>(LX3/L;)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iput-object p1, v0, LX3/K;->a:LU3/j;

    iput-object p0, v0, LX3/K;->d:LX3/L;

    if-eqz p2, :cond_2

    iput p2, v0, LX3/K;->b:I

    if-eqz p3, :cond_1

    iput-object p3, v0, LX3/K;->c:LU3/n;

    const/4 p1, 0x2

    iput p1, v0, LX3/K;->e:I

    iput-boolean v1, v0, LX3/K;->g:Z

    invoke-virtual {v0}, LX3/K;->b()LX3/L;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0x25

    invoke-static {p1}, LX3/L;->z0(I)V

    throw p0

    :cond_1
    const/16 p1, 0x8

    invoke-static {p1}, LX3/K;->a(I)V

    throw p0

    :cond_2
    const/4 p1, 0x6

    invoke-static {p1}, LX3/K;->a(I)V

    throw p0

    :cond_3
    invoke-static {v1}, LX3/K;->a(I)V

    throw p0
.end method
