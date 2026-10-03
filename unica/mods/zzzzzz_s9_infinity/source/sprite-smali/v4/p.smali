.class public abstract Lv4/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LU3/w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LU3/w;

    const-string v1, "ResolutionAnchorProvider"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv4/p;->a:LU3/w;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 11

    const/16 v0, 0x19

    const/16 v1, 0x17

    const/16 v2, 0xc

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v4, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v8, "propertyDescriptor"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "owner"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "descriptor"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "enumClass"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    const-string v8, "source"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_5
    const-string v8, "containingClass"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_6
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_7
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_8
    const-string v8, "sourceElement"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_9
    const-string v8, "parameterAnnotations"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_a
    const-string v8, "annotations"

    aput-object v8, v5, v7

    :goto_2
    const-string v7, "createSetter"

    const-string v8, "createEnumValuesMethod"

    const-string v9, "createEnumValueOfMethod"

    const/4 v10, 0x1

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v10

    goto :goto_3

    :cond_2
    aput-object v9, v5, v10

    goto :goto_3

    :cond_3
    aput-object v8, v5, v10

    goto :goto_3

    :cond_4
    aput-object v7, v5, v10

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v6, "createDefaultSetter"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_b
    const-string v6, "createExtensionReceiverParameterForCallable"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_c
    const-string v6, "isEnumSpecialMethod"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_d
    const-string v6, "isEnumValueOfMethod"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_e
    const-string v6, "isEnumValuesMethod"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_f
    aput-object v9, v5, v4

    goto :goto_4

    :pswitch_10
    aput-object v8, v5, v4

    goto :goto_4

    :pswitch_11
    const-string v6, "createPrimaryConstructorForObject"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_12
    const-string v6, "createGetter"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_13
    const-string v6, "createDefaultGetter"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_14
    aput-object v7, v5, v4

    :goto_4
    :pswitch_15
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_15
        :pswitch_f
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public static final c(LU3/e;Ljava/util/LinkedHashSet;LC4/o;Z)V
    .locals 5

    sget-object v0, LC4/f;->o:LC4/f;

    const/4 v1, 0x2

    invoke-static {p2, v0, v1}, Lw0/f;->w(LC4/q;LC4/f;I)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU3/j;

    instance-of v2, v1, LU3/e;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast v1, LU3/e;

    invoke-interface {v1}, LU3/v;->w()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, LU3/j;->r()Ls4/f;

    move-result-object v1

    const-string v2, "descriptor.name"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lc4/b;->g:Lc4/b;

    invoke-interface {p2, v1, v2}, LC4/q;->c(Ls4/f;Lc4/b;)LU3/g;

    move-result-object v1

    instance-of v2, v1, LU3/e;

    if-eqz v2, :cond_2

    check-cast v1, LU3/e;

    goto :goto_1

    :cond_2
    instance-of v2, v1, LH4/v;

    if-eqz v2, :cond_3

    check-cast v1, LH4/v;

    invoke-virtual {v1}, LH4/v;->H0()LU3/e;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v3

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    if-eqz p0, :cond_8

    sget v2, Lv4/f;->a:I

    invoke-interface {v1}, LU3/g;->E()LJ4/M;

    move-result-object v2

    invoke-interface {v2}, LJ4/M;->f()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ4/C;

    invoke-interface {p0}, LU3/e;->a()LU3/e;

    move-result-object v4

    invoke-static {v3, v4}, Lv4/f;->p(LJ4/C;LU3/e;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz p3, :cond_0

    invoke-interface {v1}, LU3/e;->Q()LC4/o;

    move-result-object v1

    const-string v2, "refinedDescriptor.unsubstitutedInnerClassesScope"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1, p3}, Lv4/p;->c(LU3/e;Ljava/util/LinkedHashSet;LC4/o;Z)V

    goto :goto_0

    :cond_8
    const/16 p0, 0x1b

    invoke-static {p0}, Lv4/f;->a(I)V

    throw v3

    :cond_9
    return-void
.end method

.method public static e(LV3/h;LX3/L;)LX3/M;
    .locals 2

    move-object v0, p1

    check-cast v0, LX3/q;

    invoke-virtual {v0}, LX3/q;->i()LU3/L;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, p0, v1, v0}, Lv4/p;->j(LX3/L;LV3/h;ZLU3/L;)LX3/M;

    move-result-object p0

    return-object p0
.end method

.method public static f(LV3/h;LX3/L;)LX3/N;
    .locals 6

    sget-object v2, LV3/g;->a:LV3/f;

    move-object v0, p1

    check-cast v0, LX3/q;

    invoke-virtual {v0}, LX3/q;->i()LU3/L;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, LX3/L;->b()LU3/n;

    move-result-object v4

    const/4 v3, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lv4/p;->k(LX3/L;LV3/h;LV3/h;ZLU3/n;LU3/L;)LX3/N;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0}, Lv4/p;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static g(LU3/e;)LX3/P;
    .locals 14

    if-eqz p0, :cond_0

    sget-object v4, LV3/g;->a:LV3/f;

    sget-object v0, LR3/p;->b:Ls4/f;

    const/4 v1, 0x4

    invoke-interface {p0}, LU3/k;->i()LU3/L;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, LX3/P;->R0(LU3/e;Ls4/f;ILU3/L;)LX3/P;

    move-result-object v12

    new-instance v13, LX3/W;

    const-string v0, "value"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v5

    invoke-static {p0}, Lz4/e;->e(LU3/j;)LR3/j;

    move-result-object v0

    invoke-virtual {v0}, LR3/j;->t()LJ4/G;

    move-result-object v6

    invoke-interface {p0}, LU3/k;->i()LU3/L;

    move-result-object v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v0, v13

    move-object v1, v12

    invoke-direct/range {v0 .. v11}, LX3/W;-><init>(LU3/a;LX3/W;ILV3/h;Ls4/f;LJ4/C;ZZZLJ4/C;LU3/L;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {p0}, LU3/e;->n()LJ4/G;

    move-result-object v10

    sget-object p0, LU3/o;->e:LU3/n;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    move-object v5, v12

    move-object v12, p0

    invoke-virtual/range {v5 .. v12}, LX3/P;->T0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;)LX3/P;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x18

    invoke-static {p0}, Lv4/p;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static h(LU3/e;)LX3/P;
    .locals 11

    if-eqz p0, :cond_0

    sget-object v0, LR3/p;->a:Ls4/f;

    const/4 v1, 0x4

    invoke-interface {p0}, LU3/k;->i()LU3/L;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, LX3/P;->R0(LU3/e;Ls4/f;ILU3/L;)LX3/P;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {p0}, Lz4/e;->e(LU3/j;)LR3/j;

    move-result-object v0

    invoke-interface {p0}, LU3/e;->n()LJ4/G;

    move-result-object p0

    invoke-virtual {v0, p0}, LR3/j;->h(LJ4/b0;)LJ4/G;

    move-result-object v8

    sget-object v10, LU3/o;->e:LU3/n;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v10}, LX3/P;->T0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;)LX3/P;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x16

    invoke-static {p0}, Lv4/p;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static i(LU3/a;LJ4/C;LV3/h;)LX3/O;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, LX3/O;

    new-instance v1, LD4/b;

    invoke-direct {v1, p0, p1}, LD4/b;-><init>(LU3/a;LJ4/C;)V

    invoke-direct {v0, p0, v1, p2}, LX3/O;-><init>(LU3/j;LD4/a;LV3/h;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static j(LX3/L;LV3/h;ZLU3/L;)LX3/M;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    new-instance v0, LX3/M;

    invoke-virtual {p0}, LX3/L;->e()I

    move-result v4

    invoke-virtual {p0}, LX3/L;->b()LU3/n;

    move-result-object v5

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move-object v11, p3

    invoke-direct/range {v1 .. v11}, LX3/M;-><init>(LX3/L;LV3/h;ILU3/n;ZZZILX3/M;LU3/L;)V

    return-object v0

    :cond_0
    const/16 p0, 0x13

    invoke-static {p0}, Lv4/p;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0x12

    invoke-static {p0}, Lv4/p;->a(I)V

    throw v0
.end method

.method public static k(LX3/L;LV3/h;LV3/h;ZLU3/n;LU3/L;)LX3/N;
    .locals 13

    move-object v0, p2

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    new-instance v1, LX3/N;

    invoke-virtual {p0}, LX3/L;->e()I

    move-result v5

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v6, p4

    move/from16 v7, p3

    move-object/from16 v12, p5

    invoke-direct/range {v2 .. v12}, LX3/N;-><init>(LX3/L;LV3/h;ILU3/n;ZZZILX3/N;LU3/L;)V

    invoke-virtual {p0}, LX3/X;->j()LJ4/C;

    move-result-object v2

    invoke-static {v1, v2, p2}, LX3/N;->J0(LX3/N;LJ4/C;LV3/h;)LX3/W;

    move-result-object v0

    iput-object v0, v1, LX3/N;->p:LX3/W;

    return-object v1

    :cond_0
    const/16 v0, 0xb

    invoke-static {v0}, Lv4/p;->a(I)V

    throw v1

    :cond_1
    const/16 v0, 0xa

    invoke-static {v0}, Lv4/p;->a(I)V

    throw v1

    :cond_2
    const/16 v0, 0x9

    invoke-static {v0}, Lv4/p;->a(I)V

    throw v1

    :cond_3
    const/16 v0, 0x8

    invoke-static {v0}, Lv4/p;->a(I)V

    throw v1
.end method

.method public static l(LU3/s;)Z
    .locals 2

    invoke-interface {p0}, LU3/b;->f0()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lv4/f;->n(LU3/j;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final m(Ljava/util/Collection;LE3/b;)Ljava/util/Collection;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    new-instance p0, LS4/j;

    invoke-direct {p0}, LS4/j;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Lr3/j;->t0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, LS4/j;

    invoke-direct {v3}, LS4/j;-><init>()V

    new-instance v4, LF4/a;

    const/16 v5, 0x17

    invoke-direct {v4, v5, v3}, LF4/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, v0, p1, v4}, Lv4/o;->g(Ljava/lang/Object;Ljava/util/LinkedList;LE3/b;LE3/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_1

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Lr3/j;->I0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "overridableGroup.single()"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, LS4/j;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v2, p1}, Lv4/o;->s(Ljava/util/Collection;LE3/b;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LU3/a;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "it"

    invoke-static {v6, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v6}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LU3/a;

    invoke-static {v5, v7}, Lv4/o;->k(LU3/a;LU3/a;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3, v6}, LS4/j;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-virtual {p0, v4}, LS4/j;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object p0
.end method


# virtual methods
.method public abstract b(LU3/b;)V
.end method

.method public abstract d(LU3/b;LU3/b;)V
.end method

.method public n(LU3/b;Ljava/util/Collection;)V
    .locals 0

    const-string p0, "member"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, LU3/b;->J(Ljava/util/Collection;)V

    return-void
.end method
