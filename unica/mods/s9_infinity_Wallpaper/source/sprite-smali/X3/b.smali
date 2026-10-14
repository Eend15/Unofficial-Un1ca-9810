.class public abstract LX3/b;
.super LX3/B;
.source "SourceFile"


# instance fields
.field public final d:Ls4/f;

.field public final e:LI4/i;

.field public final f:LI4/i;

.field public final g:LI4/i;


# direct methods
.method public constructor <init>(LI4/o;Ls4/f;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LX3/b;->d:Ls4/f;

    new-instance p2, LX3/a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, LX3/a;-><init>(LX3/b;I)V

    check-cast p1, LI4/l;

    new-instance v0, LI4/i;

    invoke-direct {v0, p1, p2}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v0, p0, LX3/b;->e:LI4/i;

    new-instance p2, LX3/a;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, LX3/a;-><init>(LX3/b;I)V

    new-instance v0, LI4/i;

    invoke-direct {v0, p1, p2}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v0, p0, LX3/b;->f:LI4/i;

    new-instance p2, LX3/a;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, LX3/a;-><init>(LX3/b;I)V

    new-instance v0, LI4/i;

    invoke-direct {v0, p1, p2}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v0, p0, LX3/b;->g:LI4/i;

    return-void

    :cond_0
    const/4 p0, 0x1

    invoke-static {p0}, LX3/b;->d0(I)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    invoke-static {p0}, LX3/b;->d0(I)V

    throw v0
.end method

.method public static synthetic d0(I)V
    .locals 18

    move/from16 v0, p0

    const/16 v1, 0x13

    const/16 v2, 0x12

    const/16 v3, 0x10

    const/16 v4, 0xf

    const/16 v5, 0xd

    const/16 v6, 0xb

    const/16 v7, 0x8

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

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

    const-string v12, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v12, "@NotNull method %s.%s must not return null"

    :goto_0
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

    move v13, v10

    goto :goto_1

    :cond_1
    move v13, v11

    :goto_1
    new-array v13, v13, [Ljava/lang/Object;

    const-string v14, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor"

    const/4 v15, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v16, "storageManager"

    aput-object v16, v13, v15

    goto :goto_2

    :pswitch_0
    const-string v16, "substitutor"

    aput-object v16, v13, v15

    goto :goto_2

    :pswitch_1
    const-string v16, "typeSubstitution"

    aput-object v16, v13, v15

    goto :goto_2

    :pswitch_2
    const-string v16, "kotlinTypeRefiner"

    aput-object v16, v13, v15

    goto :goto_2

    :pswitch_3
    const-string v16, "typeArguments"

    aput-object v16, v13, v15

    goto :goto_2

    :pswitch_4
    aput-object v14, v13, v15

    goto :goto_2

    :pswitch_5
    const-string v16, "name"

    aput-object v16, v13, v15

    :goto_2
    const-string v15, "getMemberScope"

    const-string v16, "substitute"

    const/16 v17, 0x1

    if-eq v0, v11, :cond_9

    if-eq v0, v10, :cond_8

    if-eq v0, v9, :cond_7

    if-eq v0, v8, :cond_6

    if-eq v0, v7, :cond_5

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    aput-object v14, v13, v17

    goto :goto_3

    :cond_2
    const-string v14, "getDefaultType"

    aput-object v14, v13, v17

    goto :goto_3

    :cond_3
    aput-object v16, v13, v17

    goto :goto_3

    :cond_4
    const-string v14, "getUnsubstitutedMemberScope"

    aput-object v14, v13, v17

    goto :goto_3

    :cond_5
    aput-object v15, v13, v17

    goto :goto_3

    :cond_6
    const-string v14, "getThisAsReceiverParameter"

    aput-object v14, v13, v17

    goto :goto_3

    :cond_7
    const-string v14, "getUnsubstitutedInnerClassesScope"

    aput-object v14, v13, v17

    goto :goto_3

    :cond_8
    const-string v14, "getOriginal"

    aput-object v14, v13, v17

    goto :goto_3

    :cond_9
    const-string v14, "getName"

    aput-object v14, v13, v17

    :goto_3
    packed-switch v0, :pswitch_data_1

    const-string v14, "<init>"

    aput-object v14, v13, v11

    goto :goto_4

    :pswitch_6
    aput-object v16, v13, v11

    goto :goto_4

    :pswitch_7
    aput-object v15, v13, v11

    :goto_4
    :pswitch_8
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    if-eq v0, v11, :cond_a

    if-eq v0, v10, :cond_a

    if-eq v0, v9, :cond_a

    if-eq v0, v8, :cond_a

    if-eq v0, v7, :cond_a

    if-eq v0, v6, :cond_a

    if-eq v0, v5, :cond_a

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_a

    if-eq v0, v2, :cond_a

    if-eq v0, v1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public final L(LU3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, LU3/l;->A(LX3/B;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public Q()LC4/o;
    .locals 0

    iget-object p0, p0, LX3/b;->f:LI4/i;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC4/o;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x4

    invoke-static {p0}, LX3/b;->d0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a()LU3/e;
    .locals 0

    .line 3
    return-object p0
.end method

.method public final a()LU3/g;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a()LU3/j;
    .locals 0

    .line 2
    return-object p0
.end method

.method public a0()LC4/o;
    .locals 1

    invoke-static {p0}, Lv4/f;->d(LU3/j;)LU3/x;

    move-result-object v0

    invoke-static {v0}, Lz4/e;->i(LU3/x;)LK4/g;

    sget-object v0, LK4/g;->a:LK4/g;

    invoke-virtual {p0, v0}, LX3/B;->j(LK4/g;)LC4/o;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x10

    invoke-static {p0}, LX3/b;->d0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public h(LJ4/U;LK4/g;)LC4/o;
    .locals 1

    invoke-virtual {p1}, LJ4/U;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, LX3/B;->j(LK4/g;)LC4/o;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0xb

    invoke-static {p0}, LX3/b;->d0(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance v0, LJ4/X;

    invoke-direct {v0, p1}, LJ4/X;-><init>(LJ4/U;)V

    new-instance p1, LC4/s;

    invoke-virtual {p0, p2}, LX3/B;->j(LK4/g;)LC4/o;

    move-result-object p0

    invoke-direct {p1, p0, v0}, LC4/s;-><init>(LC4/o;LJ4/X;)V

    return-object p1
.end method

.method public k0(LJ4/X;)LU3/e;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p1, LJ4/X;->a:LJ4/U;

    invoke-virtual {v0}, LJ4/U;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, LX3/A;

    invoke-direct {v0, p0, p1}, LX3/A;-><init>(LX3/B;LJ4/X;)V

    return-object v0

    :cond_1
    const/16 p0, 0x11

    invoke-static {p0}, LX3/b;->d0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic l(LJ4/X;)LU3/k;
    .locals 0

    invoke-virtual {p0, p1}, LX3/b;->k0(LJ4/X;)LU3/e;

    move-result-object p0

    return-object p0
.end method

.method public final n()LJ4/G;
    .locals 0

    iget-object p0, p0, LX3/b;->e:LI4/i;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/G;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x13

    invoke-static {p0}, LX3/b;->d0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final p0(LJ4/U;)LC4/o;
    .locals 1

    invoke-static {p0}, Lv4/f;->d(LU3/j;)LU3/x;

    move-result-object v0

    invoke-static {v0}, Lz4/e;->i(LU3/x;)LK4/g;

    sget-object v0, LK4/g;->a:LK4/g;

    invoke-virtual {p0, p1, v0}, LX3/b;->h(LJ4/U;LK4/g;)LC4/o;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0xf

    invoke-static {p0}, LX3/b;->d0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final r()Ls4/f;
    .locals 0

    iget-object p0, p0, LX3/b;->d:Ls4/f;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x2

    invoke-static {p0}, LX3/b;->d0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final y0()LU3/J;
    .locals 0

    iget-object p0, p0, LX3/b;->g:LI4/i;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LU3/J;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x5

    invoke-static {p0}, LX3/b;->d0(I)V

    const/4 p0, 0x0

    throw p0
.end method
