.class public final LX3/A;
.super LX3/B;
.source "SourceFile"


# instance fields
.field public final d:LX3/B;

.field public final e:LJ4/X;

.field public f:LJ4/X;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/util/ArrayList;

.field public i:LJ4/j;


# direct methods
.method public constructor <init>(LX3/B;LJ4/X;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX3/A;->d:LX3/B;

    iput-object p2, p0, LX3/A;->e:LJ4/X;

    return-void
.end method

.method public static synthetic d0(I)V
    .locals 15

    const/16 v0, 0x16

    const/16 v1, 0xd

    const/16 v2, 0xa

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq p0, v7, :cond_0

    if-eq p0, v6, :cond_0

    if-eq p0, v5, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v8, "@NotNull method %s.%s must not return null"

    goto :goto_0

    :cond_0
    const-string v8, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    :goto_0
    if-eq p0, v7, :cond_1

    if-eq p0, v6, :cond_1

    if-eq p0, v5, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v6

    :goto_1
    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazySubstitutingClassDescriptor"

    const/4 v11, 0x0

    if-eq p0, v7, :cond_5

    if-eq p0, v6, :cond_4

    if-eq p0, v5, :cond_3

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_2

    aput-object v10, v9, v11

    goto :goto_2

    :cond_2
    const-string v12, "substitutor"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_3
    const-string v12, "typeSubstitution"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_4
    const-string v12, "kotlinTypeRefiner"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_5
    const-string v12, "typeArguments"

    aput-object v12, v9, v11

    :goto_2
    const-string v11, "getMemberScope"

    const-string v12, "getUnsubstitutedMemberScope"

    const-string v13, "substitute"

    const/4 v14, 0x1

    packed-switch p0, :pswitch_data_0

    const-string v10, "getTypeConstructor"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_0
    const-string v10, "getSealedSubclasses"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_1
    const-string v10, "getDeclaredTypeParameters"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_2
    const-string v10, "getSource"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_3
    const-string v10, "getUnsubstitutedInnerClassesScope"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_4
    const-string v10, "getVisibility"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_5
    const-string v10, "getModality"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_6
    const-string v10, "getKind"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_7
    aput-object v13, v9, v14

    goto :goto_3

    :pswitch_8
    const-string v10, "getContainingDeclaration"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_9
    const-string v10, "getOriginal"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_a
    const-string v10, "getName"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_b
    const-string v10, "getAnnotations"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_c
    const-string v10, "getConstructors"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_d
    const-string v10, "getDefaultType"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_e
    const-string v10, "getStaticScope"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_f
    aput-object v12, v9, v14

    goto :goto_3

    :pswitch_10
    aput-object v11, v9, v14

    goto :goto_3

    :pswitch_11
    aput-object v10, v9, v14

    :goto_3
    if-eq p0, v7, :cond_8

    if-eq p0, v6, :cond_8

    if-eq p0, v5, :cond_8

    if-eq p0, v4, :cond_8

    if-eq p0, v3, :cond_8

    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_6

    goto :goto_4

    :cond_6
    aput-object v13, v9, v7

    goto :goto_4

    :cond_7
    aput-object v12, v9, v7

    goto :goto_4

    :cond_8
    aput-object v11, v9, v7

    :goto_4
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eq p0, v7, :cond_9

    if-eq p0, v6, :cond_9

    if-eq p0, v5, :cond_9

    if-eq p0, v4, :cond_9

    if-eq p0, v3, :cond_9

    if-eq p0, v2, :cond_9

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_11
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_11
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final B()Z
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LU3/v;->B()Z

    move-result p0

    return p0
.end method

.method public final E()LJ4/M;
    .locals 6

    iget-object v0, p0, LX3/A;->d:LX3/B;

    invoke-interface {v0}, LU3/g;->E()LJ4/M;

    move-result-object v0

    iget-object v1, p0, LX3/A;->e:LJ4/X;

    iget-object v1, v1, LJ4/X;->a:LJ4/U;

    invoke-virtual {v1}, LJ4/U;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, LX3/A;->d0(I)V

    throw v2

    :cond_1
    iget-object v1, p0, LX3/A;->i:LJ4/j;

    const/4 v3, 0x1

    if-nez v1, :cond_3

    invoke-virtual {p0}, LX3/A;->k0()LJ4/X;

    move-result-object v1

    invoke-interface {v0}, LJ4/M;->f()Ljava/util/Collection;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LJ4/C;

    invoke-virtual {v1, v3, v5}, LJ4/X;->i(ILJ4/C;)LJ4/C;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, LJ4/j;

    iget-object v1, p0, LX3/A;->g:Ljava/util/ArrayList;

    sget-object v5, LI4/l;->e:LI4/b;

    invoke-direct {v0, p0, v1, v4, v5}, LJ4/j;-><init>(LX3/B;Ljava/util/List;Ljava/util/Collection;LI4/o;)V

    iput-object v0, p0, LX3/A;->i:LJ4/j;

    :cond_3
    iget-object p0, p0, LX3/A;->i:LJ4/j;

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    invoke-static {v3}, LX3/A;->d0(I)V

    throw v2
.end method

.method public final I()I
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LU3/e;->I()I

    move-result p0

    if-eqz p0, :cond_0

    return p0

    :cond_0
    const/16 p0, 0x18

    invoke-static {p0}, LX3/A;->d0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final K()Z
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LU3/e;->K()Z

    move-result p0

    return p0
.end method

.method public final L(LU3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, LU3/l;->A(LX3/B;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final P()Ljava/util/Collection;
    .locals 5

    iget-object v0, p0, LX3/A;->d:LX3/B;

    invoke-interface {v0}, LU3/e;->P()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU3/d;

    move-object v3, v2

    check-cast v3, LX3/w;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, LJ4/X;->b:LJ4/X;

    invoke-virtual {v3, v4}, LX3/w;->N0(LJ4/X;)LX3/v;

    move-result-object v4

    check-cast v2, LX3/l;

    invoke-virtual {v2}, LX3/l;->T0()LU3/d;

    move-result-object v2

    iput-object v2, v4, LX3/v;->h:LU3/s;

    invoke-virtual {v3}, LX3/w;->e()I

    move-result v2

    invoke-virtual {v4, v2}, LX3/v;->w(I)LU3/r;

    invoke-virtual {v3}, LX3/w;->b()LU3/n;

    move-result-object v2

    invoke-virtual {v4, v2}, LX3/v;->y(LU3/n;)LU3/r;

    invoke-virtual {v3}, LX3/w;->f0()I

    move-result v2

    invoke-virtual {v4, v2}, LX3/v;->b(I)LU3/r;

    const/4 v2, 0x0

    iput-boolean v2, v4, LX3/v;->o:Z

    iget-object v2, v4, LX3/v;->z:LX3/w;

    invoke-virtual {v2, v4}, LX3/w;->K0(LX3/v;)LX3/w;

    move-result-object v2

    check-cast v2, LU3/d;

    invoke-virtual {p0}, LX3/A;->k0()LJ4/X;

    move-result-object v3

    check-cast v2, LX3/l;

    invoke-virtual {v2, v3}, LX3/l;->W0(LJ4/X;)LU3/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final Q()LC4/o;
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LU3/e;->Q()LC4/o;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x1b

    invoke-static {p0}, LX3/A;->d0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final T()LU3/d;
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LU3/e;->T()LU3/d;

    move-result-object p0

    return-object p0
.end method

.method public final U()LC4/o;
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LU3/e;->U()LC4/o;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0xf

    invoke-static {p0}, LX3/A;->d0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a()LU3/e;
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LU3/e;->a()LU3/e;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x14

    invoke-static {p0}, LX3/A;->d0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a0()LC4/o;
    .locals 1

    iget-object v0, p0, LX3/A;->d:LX3/B;

    invoke-static {v0}, Lv4/f;->d(LU3/j;)LU3/x;

    move-result-object v0

    invoke-static {v0}, Lz4/e;->i(LU3/x;)LK4/g;

    sget-object v0, LK4/g;->a:LK4/g;

    invoke-virtual {p0, v0}, LX3/A;->j(LK4/g;)LC4/o;

    move-result-object p0

    return-object p0
.end method

.method public final b()LU3/n;
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LU3/e;->b()LU3/n;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x1a

    invoke-static {p0}, LX3/A;->d0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c0()Z
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LU3/e;->c0()Z

    move-result p0

    return p0
.end method

.method public final e()I
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LU3/e;->e()I

    move-result p0

    if-eqz p0, :cond_0

    return p0

    :cond_0
    const/16 p0, 0x19

    invoke-static {p0}, LX3/A;->d0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e0()Z
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LU3/v;->e0()Z

    move-result p0

    return p0
.end method

.method public final f()Z
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LU3/e;->f()Z

    move-result p0

    return p0
.end method

.method public final g()LU3/j;
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x15

    invoke-static {p0}, LX3/A;->d0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final h(LJ4/U;LK4/g;)LC4/o;
    .locals 1

    iget-object v0, p0, LX3/A;->d:LX3/B;

    invoke-virtual {v0, p1, p2}, LX3/B;->h(LJ4/U;LK4/g;)LC4/o;

    move-result-object p1

    iget-object p2, p0, LX3/A;->e:LJ4/X;

    iget-object p2, p2, LJ4/X;->a:LJ4/U;

    invoke-virtual {p2}, LJ4/U;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p0, 0x7

    invoke-static {p0}, LX3/A;->d0(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p2, LC4/s;

    invoke-virtual {p0}, LX3/A;->k0()LJ4/X;

    move-result-object p0

    invoke-direct {p2, p1, p0}, LC4/s;-><init>(LC4/o;LJ4/X;)V

    return-object p2
.end method

.method public final i()LU3/L;
    .locals 0

    sget-object p0, LU3/L;->a:LU3/M;

    return-object p0
.end method

.method public final j(LK4/g;)LC4/o;
    .locals 1

    iget-object v0, p0, LX3/A;->d:LX3/B;

    invoke-virtual {v0, p1}, LX3/B;->j(LK4/g;)LC4/o;

    move-result-object p1

    iget-object v0, p0, LX3/A;->e:LJ4/X;

    iget-object v0, v0, LJ4/X;->a:LJ4/U;

    invoke-virtual {v0}, LJ4/U;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p0, 0xe

    invoke-static {p0}, LX3/A;->d0(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance v0, LC4/s;

    invoke-virtual {p0}, LX3/A;->k0()LJ4/X;

    move-result-object p0

    invoke-direct {v0, p1, p0}, LC4/s;-><init>(LC4/o;LJ4/X;)V

    return-object v0
.end method

.method public final k0()LJ4/X;
    .locals 4

    iget-object v0, p0, LX3/A;->f:LJ4/X;

    if-nez v0, :cond_3

    iget-object v0, p0, LX3/A;->e:LJ4/X;

    iget-object v1, v0, LJ4/X;->a:LJ4/U;

    invoke-virtual {v1}, LJ4/U;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, LX3/A;->f:LJ4/X;

    goto :goto_1

    :cond_0
    iget-object v1, p0, LX3/A;->d:LX3/B;

    invoke-interface {v1}, LU3/g;->E()LJ4/M;

    move-result-object v1

    invoke-interface {v1}, LJ4/M;->g()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, LX3/A;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, LJ4/X;->f()LJ4/U;

    move-result-object v0

    iget-object v2, p0, LX3/A;->g:Ljava/util/ArrayList;

    invoke-static {v1, v0, p0, v2}, LJ4/c;->u(Ljava/util/List;LJ4/U;LU3/j;Ljava/util/ArrayList;)LJ4/X;

    move-result-object v0

    iput-object v0, p0, LX3/A;->f:LJ4/X;

    iget-object v0, p0, LX3/A;->g:Ljava/util/ArrayList;

    const-string v1, "<this>"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, LU3/O;

    invoke-interface {v3}, LU3/O;->h0()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object v1, p0, LX3/A;->h:Ljava/util/ArrayList;

    :cond_3
    :goto_1
    iget-object p0, p0, LX3/A;->f:LJ4/X;

    return-object p0
.end method

.method public final l(LJ4/X;)LU3/k;
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, LJ4/X;->a:LJ4/U;

    invoke-virtual {v0}, LJ4/U;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LX3/A;

    invoke-virtual {p1}, LJ4/X;->f()LJ4/U;

    move-result-object p1

    invoke-virtual {p0}, LX3/A;->k0()LJ4/X;

    move-result-object v1

    invoke-virtual {v1}, LJ4/X;->f()LJ4/U;

    move-result-object v1

    invoke-static {p1, v1}, LJ4/X;->e(LJ4/U;LJ4/U;)LJ4/X;

    move-result-object p1

    invoke-direct {v0, p0, p1}, LX3/A;-><init>(LX3/B;LJ4/X;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_1
    const/16 p0, 0x16

    invoke-static {p0}, LX3/A;->d0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final n()LJ4/G;
    .locals 4

    invoke-virtual {p0}, LX3/A;->E()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, LJ4/Z;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, LX3/A;->p()LV3/h;

    move-result-object v1

    invoke-virtual {p0}, LX3/A;->E()LJ4/M;

    move-result-object v2

    invoke-virtual {p0}, LX3/A;->a0()LC4/o;

    move-result-object p0

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v0, v3}, LJ4/d;->q(LC4/o;LJ4/M;LV3/h;Ljava/util/List;Z)LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public final o()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, LX3/A;->k0()LJ4/X;

    iget-object p0, p0, LX3/A;->h:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x1d

    invoke-static {p0}, LX3/A;->d0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final p()LV3/h;
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LV3/a;->p()LV3/h;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x12

    invoke-static {p0}, LX3/A;->d0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final p0(LJ4/U;)LC4/o;
    .locals 1

    invoke-static {p0}, Lv4/f;->d(LU3/j;)LU3/x;

    move-result-object v0

    invoke-static {v0}, Lz4/e;->i(LU3/x;)LK4/g;

    sget-object v0, LK4/g;->a:LK4/g;

    invoke-virtual {p0, p1, v0}, LX3/A;->h(LJ4/U;LK4/g;)LC4/o;

    move-result-object p0

    return-object p0
.end method

.method public final r()Ls4/f;
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LU3/j;->r()Ls4/f;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x13

    invoke-static {p0}, LX3/A;->d0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final s()LU3/t;
    .locals 4

    iget-object v0, p0, LX3/A;->d:LX3/B;

    invoke-interface {v0}, LU3/e;->s()LU3/t;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    new-instance v1, LU3/t;

    invoke-virtual {p0}, LX3/A;->s()LU3/t;

    move-result-object v2

    iget-object v2, v2, LU3/t;->b:LJ4/G;

    if-eqz v2, :cond_2

    iget-object v3, p0, LX3/A;->e:LJ4/X;

    iget-object v3, v3, LJ4/X;->a:LJ4/U;

    invoke-virtual {v3}, LJ4/U;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LX3/A;->k0()LJ4/X;

    move-result-object p0

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, LJ4/X;->i(ILJ4/C;)LJ4/C;

    move-result-object p0

    move-object v2, p0

    check-cast v2, LJ4/G;

    :cond_2
    :goto_0
    iget-object p0, v0, LU3/t;->a:Ls4/f;

    invoke-direct {v1, p0, v2}, LU3/t;-><init>(Ls4/f;LJ4/G;)V

    move-object p0, v1

    :goto_1
    return-object p0
.end method

.method public final s0()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LU3/e;->s0()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x1e

    invoke-static {p0}, LX3/A;->d0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final t()Z
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LU3/e;->t()Z

    move-result p0

    return p0
.end method

.method public final v0()Z
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LU3/e;->v0()Z

    move-result p0

    return p0
.end method

.method public final w()Z
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LU3/v;->w()Z

    move-result p0

    return p0
.end method

.method public final y()Z
    .locals 0

    iget-object p0, p0, LX3/A;->d:LX3/B;

    invoke-interface {p0}, LU3/h;->y()Z

    move-result p0

    return p0
.end method

.method public final y0()LU3/J;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
