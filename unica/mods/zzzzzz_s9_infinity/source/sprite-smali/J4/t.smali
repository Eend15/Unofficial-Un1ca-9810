.class public final LJ4/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC4/o;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/t;->b:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, LJ4/t;->h(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic h(I)V
    .locals 10

    const/16 v0, 0x12

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v3, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    move v4, v3

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorScope"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v7, "debugMessage"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_2
    const-string v7, "p"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_3
    const-string v7, "nameFilter"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_4
    const-string v7, "kindFilter"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_5
    aput-object v5, v4, v6

    goto :goto_2

    :pswitch_6
    const-string v7, "location"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_7
    const-string v7, "name"

    aput-object v7, v4, v6

    :goto_2
    const-string v6, "getContributedVariables"

    const-string v7, "getContributedFunctions"

    const-string v8, "getContributedDescriptors"

    const/4 v9, 0x1

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_3

    aput-object v5, v4, v9

    goto :goto_3

    :pswitch_8
    const-string v5, "getClassifierNames"

    aput-object v5, v4, v9

    goto :goto_3

    :pswitch_9
    const-string v5, "getVariableNames"

    aput-object v5, v4, v9

    goto :goto_3

    :pswitch_a
    const-string v5, "getFunctionNames"

    aput-object v5, v4, v9

    goto :goto_3

    :pswitch_b
    aput-object v7, v4, v9

    goto :goto_3

    :cond_2
    aput-object v8, v4, v9

    goto :goto_3

    :cond_3
    aput-object v6, v4, v9

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_c
    const-string v5, "printScopeStructure"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_d
    const-string v5, "definitelyDoesNotContainName"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_e
    aput-object v8, v4, v3

    goto :goto_4

    :pswitch_f
    const-string v5, "recordLookup"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_10
    aput-object v7, v4, v3

    goto :goto_4

    :pswitch_11
    aput-object v6, v4, v3

    goto :goto_4

    :pswitch_12
    const-string v5, "getContributedClassifierIncludeDeprecated"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_13
    const-string v5, "getContributedClassifier"

    aput-object v5, v4, v3

    :goto_4
    :pswitch_14
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_4

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    :pswitch_15
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xa
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_14
        :pswitch_10
        :pswitch_10
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_14
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xa
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0xb

    invoke-static {p0}, LJ4/t;->h(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0xc

    invoke-static {p0}, LJ4/t;->h(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(Ls4/f;Lc4/b;)LU3/g;
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p0, LJ4/s;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "<ERROR CLASS: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls4/f;->g(Ljava/lang/String;)Ls4/f;

    move-result-object p1

    invoke-direct {p0, p1}, LJ4/s;-><init>(Ls4/f;)V

    return-object p0

    :cond_0
    invoke-static {p0}, LJ4/v;->a(I)V

    throw v0

    :cond_1
    const/4 p0, 0x2

    invoke-static {p0}, LJ4/t;->h(I)V

    throw v0

    :cond_2
    invoke-static {p0}, LJ4/t;->h(I)V

    throw v0
.end method

.method public final d(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    sget-object p1, LJ4/v;->d:Ljava/util/Set;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x7

    invoke-static {p1}, LJ4/t;->h(I)V

    throw p0

    :cond_1
    const/4 p1, 0x5

    invoke-static {p1}, LJ4/t;->h(I)V

    throw p0
.end method

.method public final e(LC4/f;LE3/b;)Ljava/util/Collection;
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0x12

    invoke-static {p1}, LJ4/t;->h(I)V

    throw p0

    :cond_1
    const/16 p1, 0x11

    invoke-static {p1}, LJ4/t;->h(I)V

    throw p0

    :cond_2
    const/16 p1, 0x10

    invoke-static {p1}, LJ4/t;->h(I)V

    throw p0
.end method

.method public final f()Ljava/util/Set;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0xd

    invoke-static {p0}, LJ4/t;->h(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final g(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 8

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    new-instance p1, LL4/a;

    sget-object v1, LJ4/v;->b:LJ4/s;

    if-eqz v1, :cond_1

    sget-object v3, LV3/g;->a:LV3/f;

    const-string p2, "<ERROR FUNCTION>"

    invoke-static {p2}, Ls4/f;->g(Ljava/lang/String;)Ls4/f;

    move-result-object v4

    sget-object v6, LU3/L;->a:LU3/M;

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, LX3/P;-><init>(LU3/j;LX3/P;LV3/h;Ls4/f;ILU3/L;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const-string p2, "<ERROR FUNCTION RETURN TYPE>"

    invoke-static {p2}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object v5

    sget-object v7, LU3/o;->e:LU3/n;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x3

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, LX3/P;->T0(LX3/O;LU3/J;Ljava/util/List;Ljava/util/List;LJ4/C;ILU3/n;)LX3/P;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0xa

    invoke-static {p1}, LJ4/t;->h(I)V

    throw p0

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1}, LL4/a;->z0(I)V

    throw p0

    :cond_2
    const/16 p1, 0x8

    invoke-static {p1}, LJ4/t;->h(I)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ErrorScope{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LJ4/t;->b:Ljava/lang/String;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Li4/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
