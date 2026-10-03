.class public final LJ4/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU3/x;


# direct methods
.method public static synthetic h(I)V
    .locals 12

    const/16 v0, 0xe

    const/16 v1, 0xd

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eq p0, v5, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v6, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v6, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v7, 0x2

    if-eq p0, v5, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_1

    const/4 v8, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    move v8, v7

    :goto_1
    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$1"

    const/4 v10, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v11, "capability"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_2
    const-string v11, "targetModule"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_3
    const-string v11, "visitor"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_4
    const-string v11, "nameFilter"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_5
    const-string v11, "fqName"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_6
    aput-object v9, v8, v10

    :goto_2
    const-string v10, "getSubPackagesOf"

    if-eq p0, v5, :cond_7

    if-eq p0, v4, :cond_6

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_3

    aput-object v9, v8, v5

    goto :goto_3

    :pswitch_7
    const-string v9, "getAllExpectedByModules"

    aput-object v9, v8, v5

    goto :goto_3

    :pswitch_8
    const-string v9, "getExpectedByModules"

    aput-object v9, v8, v5

    goto :goto_3

    :pswitch_9
    const-string v9, "getAllDependencyModules"

    aput-object v9, v8, v5

    goto :goto_3

    :cond_2
    const-string v9, "getBuiltIns"

    aput-object v9, v8, v5

    goto :goto_3

    :cond_3
    const-string v9, "getOriginal"

    aput-object v9, v8, v5

    goto :goto_3

    :cond_4
    const-string v9, "getStableName"

    aput-object v9, v8, v5

    goto :goto_3

    :cond_5
    const-string v9, "getName"

    aput-object v9, v8, v5

    goto :goto_3

    :cond_6
    aput-object v10, v8, v5

    goto :goto_3

    :cond_7
    const-string v9, "getAnnotations"

    aput-object v9, v8, v5

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v9, "getCapability"

    aput-object v9, v8, v7

    goto :goto_4

    :pswitch_a
    const-string v9, "shouldSeeInternalsOf"

    aput-object v9, v8, v7

    goto :goto_4

    :pswitch_b
    const-string v9, "accept"

    aput-object v9, v8, v7

    goto :goto_4

    :pswitch_c
    const-string v9, "getPackage"

    aput-object v9, v8, v7

    goto :goto_4

    :pswitch_d
    aput-object v10, v8, v7

    :goto_4
    :pswitch_e
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eq p0, v5, :cond_8

    if-eq p0, v4, :cond_8

    if-eq p0, v3, :cond_8

    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_8

    if-eq p0, v0, :cond_8

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    :pswitch_f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_b
        :pswitch_a
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x8
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public final L(LU3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final S(LU3/x;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0xc

    invoke-static {p0}, LJ4/q;->h(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a()LU3/j;
    .locals 0

    return-object p0
.end method

.method public final c()LR3/j;
    .locals 0

    sget-object p0, LR3/e;->f:LR3/e;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0xe

    invoke-static {p0}, LJ4/q;->h(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(Ls4/c;LE3/b;)Ljava/util/Collection;
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0

    :cond_0
    const/4 p1, 0x3

    invoke-static {p1}, LJ4/q;->h(I)V

    throw p0

    :cond_1
    const/4 p1, 0x2

    invoke-static {p1}, LJ4/q;->h(I)V

    throw p0
.end method

.method public final g()LU3/j;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final p()LV3/h;
    .locals 0

    sget-object p0, LV3/g;->a:LV3/f;

    return-object p0
.end method

.method public final r()Ls4/f;
    .locals 0

    const-string p0, "<ERROR MODULE>"

    invoke-static {p0}, Ls4/f;->g(Ljava/lang/String;)Ls4/f;

    move-result-object p0

    return-object p0
.end method

.method public final u0(LU3/w;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, LJ4/q;->h(I)V

    throw p0
.end method

.method public final v(Ls4/c;)LU3/G;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x7

    invoke-static {p0}, LJ4/q;->h(I)V

    const/4 p0, 0x0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Should not be called!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final w0()Ljava/util/List;
    .locals 0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method
