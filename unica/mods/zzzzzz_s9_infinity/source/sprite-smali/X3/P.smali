.class public LX3/P;
.super LX3/w;
.source "SourceFile"


# direct methods
.method public constructor <init>(LU3/j;LX3/P;LV3/h;Ls4/f;ILU3/L;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    move-object v0, p0

    move v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, LX3/w;-><init>(ILU3/j;LU3/s;LU3/L;LV3/h;Ls4/f;)V

    return-void

    :cond_0
    const/4 p0, 0x4

    invoke-static {p0}, LX3/P;->z0(I)V

    throw v0

    :cond_1
    const/4 p0, 0x3

    invoke-static {p0}, LX3/P;->z0(I)V

    throw v0

    :cond_2
    const/4 p0, 0x2

    invoke-static {p0}, LX3/P;->z0(I)V

    throw v0

    :cond_3
    const/4 p0, 0x1

    invoke-static {p0}, LX3/P;->z0(I)V

    throw v0

    :cond_4
    const/4 p0, 0x0

    invoke-static {p0}, LX3/P;->z0(I)V

    throw v0
.end method

.method public static R0(LU3/e;Ls4/f;ILU3/L;)LX3/P;
    .locals 8

    sget-object v3, LV3/g;->a:LV3/f;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    new-instance v7, LX3/P;

    const/4 v2, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, LX3/P;-><init>(LU3/j;LX3/P;LV3/h;Ls4/f;ILU3/L;)V

    return-object v7

    :cond_0
    const/16 p0, 0x9

    invoke-static {p0}, LX3/P;->z0(I)V

    throw v0

    :cond_1
    const/16 p0, 0x8

    invoke-static {p0}, LX3/P;->z0(I)V

    throw v0

    :cond_2
    const/4 p0, 0x7

    invoke-static {p0}, LX3/P;->z0(I)V

    throw v0

    :cond_3
    const/4 p0, 0x5

    invoke-static {p0}, LX3/P;->z0(I)V

    throw v0
.end method

.method public static synthetic z0(I)V
    .locals 11

    const/16 v0, 0x18

    const/16 v1, 0x17

    const/16 v2, 0x12

    const/16 v3, 0x11

    const/16 v4, 0xd

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v6, 0x2

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v7, 0x3

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl"

    const/4 v9, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v10, "containingDeclaration"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_1
    const-string v10, "newOwner"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_2
    aput-object v8, v7, v9

    goto :goto_2

    :pswitch_3
    const-string v10, "visibility"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_4
    const-string v10, "unsubstitutedValueParameters"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_5
    const-string v10, "typeParameters"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_6
    const-string v10, "source"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_7
    const-string v10, "kind"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_8
    const-string v10, "name"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_9
    const-string v10, "annotations"

    aput-object v10, v7, v9

    :goto_2
    const-string v9, "initialize"

    const/4 v10, 0x1

    if-eq p0, v4, :cond_5

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v8, v7, v10

    goto :goto_3

    :cond_2
    const-string v8, "newCopyBuilder"

    aput-object v8, v7, v10

    goto :goto_3

    :cond_3
    const-string v8, "copy"

    aput-object v8, v7, v10

    goto :goto_3

    :cond_4
    const-string v8, "getOriginal"

    aput-object v8, v7, v10

    goto :goto_3

    :cond_5
    aput-object v9, v7, v10

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v8, "<init>"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_a
    const-string v8, "createSubstitutedCopy"

    aput-object v8, v7, v6

    goto :goto_4

    :pswitch_b
    aput-object v9, v7, v6

    goto :goto_4

    :pswitch_c
    const-string v8, "create"

    aput-object v8, v7, v6

    :goto_4
    :pswitch_d
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v4, :cond_6

    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic G0()LU3/k;
    .locals 0

    invoke-virtual {p0}, LX3/P;->S0()LX3/P;

    move-result-object p0

    return-object p0
.end method

.method public J0(ILU3/j;LU3/s;LU3/L;LV3/h;Ls4/f;)LX3/w;
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    if-eqz p5, :cond_1

    new-instance v0, LX3/P;

    move-object v3, p3

    check-cast v3, LX3/P;

    if-eqz p6, :cond_0

    :goto_0
    move-object v5, p6

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object p6

    goto :goto_0

    :goto_1
    move-object v1, v0

    move-object v2, p2

    move-object v4, p5

    move v6, p1

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, LX3/P;-><init>(LU3/j;LX3/P;LV3/h;Ls4/f;ILU3/L;)V

    return-object v0

    :cond_1
    const/16 p0, 0x15

    invoke-static {p0}, LX3/P;->z0(I)V

    throw v0

    :cond_2
    const/16 p0, 0x14

    invoke-static {p0}, LX3/P;->z0(I)V

    throw v0

    :cond_3
    const/16 p0, 0x13

    invoke-static {p0}, LX3/P;->z0(I)V

    throw v0
.end method

.method public final bridge synthetic M0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;)V
    .locals 0

    invoke-virtual/range {p0 .. p7}, LX3/P;->T0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;)LX3/P;

    return-void
.end method

.method public final S0()LX3/P;
    .locals 0

    invoke-super {p0}, LX3/w;->a()LU3/s;

    move-result-object p0

    check-cast p0, LX3/P;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x12

    invoke-static {p0}, LX3/P;->z0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final T0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;)LX3/P;
    .locals 10

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    if-eqz p7, :cond_0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, LX3/P;->U0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;Lr3/s;)LX3/P;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0xc

    invoke-static {v1}, LX3/P;->z0(I)V

    throw v0

    :cond_1
    const/16 v1, 0xb

    invoke-static {v1}, LX3/P;->z0(I)V

    throw v0

    :cond_2
    const/16 v1, 0xa

    invoke-static {v1}, LX3/P;->z0(I)V

    throw v0
.end method

.method public U0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;Lr3/s;)LX3/P;
    .locals 0

    const/4 p8, 0x0

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    if-eqz p7, :cond_0

    invoke-super/range {p0 .. p7}, LX3/w;->M0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;)V

    return-object p0

    :cond_0
    const/16 p0, 0x10

    invoke-static {p0}, LX3/P;->z0(I)V

    throw p8

    :cond_1
    const/16 p0, 0xf

    invoke-static {p0}, LX3/P;->z0(I)V

    throw p8

    :cond_2
    const/16 p0, 0xe

    invoke-static {p0}, LX3/P;->z0(I)V

    throw p8
.end method

.method public Z()LU3/r;
    .locals 1

    sget-object v0, LJ4/X;->b:LJ4/X;

    invoke-virtual {p0, v0}, LX3/w;->N0(LJ4/X;)LX3/v;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LU3/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, LX3/P;->S0()LX3/P;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LU3/b;
    .locals 0

    .line 2
    invoke-virtual {p0}, LX3/P;->S0()LX3/P;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LU3/j;
    .locals 0

    .line 3
    invoke-virtual {p0}, LX3/P;->S0()LX3/P;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LU3/s;
    .locals 0

    .line 4
    invoke-virtual {p0}, LX3/P;->S0()LX3/P;

    move-result-object p0

    return-object p0
.end method
