.class public final LJ4/X;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LJ4/X;


# instance fields
.field public final a:LJ4/U;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LJ4/U;->a:LJ4/S;

    new-instance v1, LJ4/X;

    invoke-direct {v1, v0}, LJ4/X;-><init>(LJ4/U;)V

    sput-object v1, LJ4/X;->b:LJ4/X;

    return-void
.end method

.method public constructor <init>(LJ4/U;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/X;->a:LJ4/U;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 13

    const/16 v0, 0x25

    const/16 v1, 0x22

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq p0, v3, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq p0, v3, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    const/4 v6, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    move v6, v4

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_8

    :pswitch_2
    const-string v9, "substitution"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_3
    const-string v9, "projectionKind"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_4
    const-string v9, "typeParameterVariance"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_5
    const-string v9, "annotations"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_6
    const-string v9, "substituted"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_7
    const-string v9, "originalType"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_8
    const-string v9, "originalProjection"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_9
    const-string v9, "typeProjection"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_a
    const-string v9, "howThisTypeIsUsed"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_b
    const-string v9, "type"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_c
    const-string v9, "context"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_d
    const-string v9, "substitutionContext"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_e
    const-string v9, "second"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_f
    const-string v9, "first"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_10
    aput-object v7, v6, v8

    :goto_2
    const-string v8, "safeSubstitute"

    const-string v9, "unsafeSubstitute"

    const-string v10, "projectedTypeForConflictedTypeWithUnsafeVariance"

    const-string v11, "filterOutUnsafeVariance"

    const-string v12, "combine"

    if-eq p0, v3, :cond_6

    if-eq p0, v4, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_9

    packed-switch p0, :pswitch_data_a

    packed-switch p0, :pswitch_data_b

    packed-switch p0, :pswitch_data_c

    aput-object v7, v6, v3

    goto :goto_3

    :pswitch_11
    aput-object v10, v6, v3

    goto :goto_3

    :pswitch_12
    aput-object v9, v6, v3

    goto :goto_3

    :pswitch_13
    aput-object v8, v6, v3

    goto :goto_3

    :cond_2
    :pswitch_14
    aput-object v12, v6, v3

    goto :goto_3

    :cond_3
    aput-object v11, v6, v3

    goto :goto_3

    :cond_4
    const-string v7, "getSubstitution"

    aput-object v7, v6, v3

    goto :goto_3

    :cond_5
    const-string v7, "replaceWithContravariantApproximatingSubstitution"

    aput-object v7, v6, v3

    goto :goto_3

    :cond_6
    const-string v7, "replaceWithNonApproximatingSubstitution"

    aput-object v7, v6, v3

    :goto_3
    packed-switch p0, :pswitch_data_d

    :pswitch_15
    const-string v7, "create"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_16
    aput-object v12, v6, v4

    goto :goto_4

    :pswitch_17
    aput-object v11, v6, v4

    goto :goto_4

    :pswitch_18
    aput-object v10, v6, v4

    goto :goto_4

    :pswitch_19
    aput-object v9, v6, v4

    goto :goto_4

    :pswitch_1a
    const-string v7, "substituteWithoutApproximation"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_1b
    const-string v7, "substitute"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_1c
    aput-object v8, v6, v4

    goto :goto_4

    :pswitch_1d
    const-string v7, "<init>"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_1e
    const-string v7, "createChainedSubstitutor"

    aput-object v7, v6, v4

    :goto_4
    :pswitch_1f
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v3, :cond_7

    if-eq p0, v4, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    packed-switch p0, :pswitch_data_e

    packed-switch p0, :pswitch_data_f

    packed-switch p0, :pswitch_data_10

    packed-switch p0, :pswitch_data_11

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    :pswitch_20
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x28
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_2
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_5
        :pswitch_10
        :pswitch_4
        :pswitch_9
        :pswitch_10
        :pswitch_4
        :pswitch_3
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xb
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1d
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x28
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_15
        :pswitch_15
        :pswitch_1d
        :pswitch_1f
        :pswitch_1c
        :pswitch_1c
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_17
        :pswitch_1f
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0xb
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x13
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x1d
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x28
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public static b(II)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    if-eqz p1, :cond_0

    return p1

    :cond_0
    const/16 p0, 0x28

    invoke-static {p0}, LJ4/X;->a(I)V

    throw v0

    :cond_1
    if-ne p1, v1, :cond_3

    if-eqz p0, :cond_2

    return p0

    :cond_2
    const/16 p0, 0x29

    invoke-static {p0}, LJ4/X;->a(I)V

    throw v0

    :cond_3
    if-ne p0, p1, :cond_5

    if-eqz p1, :cond_4

    return p1

    :cond_4
    const/16 p0, 0x2a

    invoke-static {p0}, LJ4/X;->a(I)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Variance conflict: type parameter variance \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LB/a;->A(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' and projection kind \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, LB/a;->A(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' cannot be combined"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_6
    const/16 p0, 0x27

    invoke-static {p0}, LJ4/X;->a(I)V

    throw v0

    :cond_7
    const/16 p0, 0x26

    invoke-static {p0}, LJ4/X;->a(I)V

    throw v0
.end method

.method public static c(II)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-ne p0, v0, :cond_0

    if-ne p1, v1, :cond_0

    return v1

    :cond_0
    if-ne p0, v1, :cond_1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static d(LJ4/C;)LJ4/X;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p0

    sget-object v1, LJ4/O;->b:LJ4/d;

    invoke-virtual {v1, v0, p0}, LJ4/d;->e(LJ4/M;Ljava/util/List;)LJ4/U;

    move-result-object p0

    new-instance v0, LJ4/X;

    invoke-direct {v0, p0}, LJ4/X;-><init>(LJ4/U;)V

    return-object v0

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0}, LJ4/X;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static e(LJ4/U;LJ4/U;)LJ4/X;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, LJ4/U;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LJ4/U;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, LJ4/o;

    invoke-direct {v0, p0, p1}, LJ4/o;-><init>(LJ4/U;LJ4/U;)V

    move-object p0, v0

    :goto_0
    new-instance p1, LJ4/X;

    invoke-direct {p1, p0}, LJ4/X;-><init>(LJ4/U;)V

    return-object p1

    :cond_2
    const/4 p0, 0x4

    invoke-static {p0}, LJ4/X;->a(I)V

    throw v0

    :cond_3
    const/4 p0, 0x3

    invoke-static {p0}, LJ4/X;->a(I)V

    throw v0
.end method

.method public static h(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, LS4/m;->h(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Exception while computing toString(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method


# virtual methods
.method public final f()LJ4/U;
    .locals 0

    iget-object p0, p0, LJ4/X;->a:LJ4/U;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x8

    invoke-static {p0}, LJ4/X;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final g(ILJ4/C;)LJ4/C;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    iget-object v1, p0, LJ4/X;->a:LJ4/U;

    invoke-virtual {v1}, LJ4/U;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2

    :cond_0
    :try_start_0
    new-instance v1, LJ4/Q;

    invoke-direct {v1, p1, p2}, LJ4/Q;-><init>(ILJ4/C;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v0, p1}, LJ4/X;->j(LJ4/P;LU3/O;I)LJ4/P;

    move-result-object p0

    invoke-virtual {p0}, LJ4/P;->b()LJ4/C;

    move-result-object p0
    :try_end_0
    .catch LJ4/W; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/16 p0, 0xc

    invoke-static {p0}, LJ4/X;->a(I)V

    throw v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p0, 0xa

    invoke-static {p0}, LJ4/X;->a(I)V

    throw v0

    :cond_3
    const/16 p0, 0x9

    invoke-static {p0}, LJ4/X;->a(I)V

    throw v0
.end method

.method public final i(ILJ4/C;)LJ4/C;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    if-eqz p1, :cond_9

    new-instance v1, LJ4/Q;

    invoke-virtual {p0}, LJ4/X;->f()LJ4/U;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, LJ4/U;->f(ILJ4/C;)LJ4/C;

    move-result-object p2

    invoke-direct {v1, p1, p2}, LJ4/Q;-><init>(ILJ4/C;)V

    iget-object p1, p0, LJ4/X;->a:LJ4/U;

    invoke-virtual {p1}, LJ4/U;->e()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, v1, v0, v2}, LJ4/X;->j(LJ4/P;LU3/O;I)LJ4/P;

    move-result-object v1
    :try_end_0
    .catch LJ4/W; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, LJ4/U;->a()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, LJ4/U;->b()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, LJ4/U;->b()Z

    move-result p0

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, LJ4/P;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, LJ4/P;->b()LJ4/C;

    move-result-object p1

    const-string p2, "typeProjection.type"

    invoke-static {p1, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, LO4/b;->d:LO4/b;

    invoke-static {p1, p2, v0, v0}, LJ4/Z;->c(LJ4/C;LE3/b;Lk4/o;LS4/j;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, LJ4/P;->a()I

    move-result p2

    const-string v3, "typeProjection.projectionKind"

    invoke-static {p2, v3}, LB/a;->y(ILjava/lang/String;)V

    const/4 v3, 0x3

    if-ne p2, v3, :cond_5

    invoke-static {p1}, LK/I;->d(LJ4/C;)LO4/a;

    move-result-object p0

    new-instance v1, LJ4/Q;

    iget-object p0, p0, LO4/a;->b:Ljava/lang/Object;

    check-cast p0, LJ4/C;

    invoke-direct {v1, p2, p0}, LJ4/Q;-><init>(ILJ4/C;)V

    goto :goto_2

    :cond_5
    if-eqz p0, :cond_6

    invoke-static {p1}, LK/I;->d(LJ4/C;)LO4/a;

    move-result-object p0

    iget-object p0, p0, LO4/a;->a:Ljava/lang/Object;

    check-cast p0, LJ4/C;

    new-instance v1, LJ4/Q;

    invoke-direct {v1, p2, p0}, LJ4/Q;-><init>(ILJ4/C;)V

    goto :goto_2

    :cond_6
    new-instance p0, LO4/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LJ4/X;

    invoke-direct {p1, p0}, LJ4/X;-><init>(LJ4/U;)V

    invoke-virtual {p0}, LJ4/U;->e()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    :try_start_1
    invoke-virtual {p1, v1, v0, v2}, LJ4/X;->j(LJ4/P;LU3/O;I)LJ4/P;

    move-result-object v1
    :try_end_1
    .catch LJ4/W; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    :goto_1
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, LJ4/P;->b()LJ4/C;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_9
    const/16 p0, 0xf

    invoke-static {p0}, LJ4/X;->a(I)V

    throw v0

    :cond_a
    const/16 p0, 0xe

    invoke-static {p0}, LJ4/X;->a(I)V

    throw v0
.end method

.method public final j(LJ4/P;LU3/O;I)LJ4/P;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    if-eqz p1, :cond_2e

    iget-object v4, v0, LJ4/X;->a:LJ4/U;

    const/16 v5, 0x64

    if-gt v2, v5, :cond_2d

    invoke-virtual/range {p1 .. p1}, LJ4/P;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    return-object p1

    :cond_0
    invoke-virtual/range {p1 .. p1}, LJ4/P;->b()LJ4/C;

    move-result-object v5

    instance-of v6, v5, LJ4/a0;

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    check-cast v5, LJ4/a0;

    invoke-interface {v5}, LJ4/a0;->h()LJ4/b0;

    move-result-object v3

    invoke-interface {v5}, LJ4/a0;->k0()LJ4/C;

    move-result-object v4

    new-instance v5, LJ4/Q;

    invoke-virtual/range {p1 .. p1}, LJ4/P;->a()I

    move-result v6

    invoke-direct {v5, v6, v3}, LJ4/Q;-><init>(ILJ4/C;)V

    add-int/2addr v2, v7

    invoke-virtual {v0, v5, v1, v2}, LJ4/X;->j(LJ4/P;LU3/O;I)LJ4/P;

    move-result-object v1

    invoke-virtual {v1}, LJ4/P;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual/range {p1 .. p1}, LJ4/P;->a()I

    move-result v2

    invoke-virtual {v0, v2, v4}, LJ4/X;->i(ILJ4/C;)LJ4/C;

    move-result-object v0

    invoke-virtual {v1}, LJ4/P;->b()LJ4/C;

    move-result-object v2

    invoke-virtual {v2}, LJ4/C;->B0()LJ4/b0;

    move-result-object v2

    instance-of v3, v0, LJ4/a0;

    if-eqz v3, :cond_2

    check-cast v0, LJ4/a0;

    invoke-interface {v0}, LJ4/a0;->k0()LJ4/C;

    move-result-object v0

    :cond_2
    invoke-static {v2, v0}, LJ4/c;->z(LJ4/b0;LJ4/C;)LJ4/b0;

    move-result-object v0

    new-instance v2, LJ4/Q;

    invoke-virtual {v1}, LJ4/P;->a()I

    move-result v1

    invoke-direct {v2, v1, v0}, LJ4/Q;-><init>(ILJ4/C;)V

    return-object v2

    :cond_3
    const-string v6, "<this>"

    invoke-static {v5, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, LJ4/C;->B0()LJ4/b0;

    invoke-virtual {v5}, LJ4/C;->B0()LJ4/b0;

    move-result-object v6

    instance-of v6, v6, Li4/g;

    if-eqz v6, :cond_4

    return-object p1

    :cond_4
    invoke-virtual {v4, v5}, LJ4/U;->d(LJ4/C;)LJ4/P;

    move-result-object v6

    const/4 v8, 0x3

    if-eqz v6, :cond_9

    invoke-interface {v5}, LV3/a;->p()LV3/h;

    move-result-object v9

    sget-object v10, LR3/o;->y:Ls4/c;

    invoke-interface {v9, v10}, LV3/h;->e(Ls4/c;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, LJ4/P;->b()LJ4/C;

    move-result-object v9

    invoke-virtual {v9}, LJ4/C;->q0()LJ4/M;

    move-result-object v9

    instance-of v10, v9, LK4/j;

    if-nez v10, :cond_6

    goto :goto_0

    :cond_6
    check-cast v9, LK4/j;

    iget-object v9, v9, LK4/j;->a:LJ4/P;

    invoke-virtual {v9}, LJ4/P;->a()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, LJ4/P;->a()I

    move-result v11

    invoke-static {v11, v10}, LJ4/X;->c(II)I

    move-result v11

    if-ne v11, v8, :cond_7

    new-instance v6, LJ4/Q;

    invoke-virtual {v9}, LJ4/P;->b()LJ4/C;

    move-result-object v9

    invoke-direct {v6, v9}, LJ4/Q;-><init>(LJ4/C;)V

    goto :goto_0

    :cond_7
    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    invoke-interface/range {p2 .. p2}, LU3/O;->z()I

    move-result v11

    invoke-static {v11, v10}, LJ4/X;->c(II)I

    move-result v10

    if-ne v10, v8, :cond_a

    new-instance v6, LJ4/Q;

    invoke-virtual {v9}, LJ4/P;->b()LJ4/C;

    move-result-object v9

    invoke-direct {v6, v9}, LJ4/Q;-><init>(LJ4/C;)V

    goto :goto_0

    :cond_9
    move-object v6, v3

    :cond_a
    :goto_0
    invoke-virtual/range {p1 .. p1}, LJ4/P;->a()I

    move-result v9

    const/4 v10, 0x0

    if-nez v6, :cond_e

    invoke-static {v5}, LJ4/c;->j(LJ4/C;)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v5}, LJ4/C;->B0()LJ4/b0;

    move-result-object v11

    instance-of v12, v11, LJ4/k;

    if-eqz v12, :cond_b

    check-cast v11, LJ4/k;

    goto :goto_1

    :cond_b
    move-object v11, v3

    :goto_1
    if-nez v11, :cond_c

    move v11, v10

    goto :goto_2

    :cond_c
    invoke-interface {v11}, LJ4/k;->d0()Z

    move-result v11

    :goto_2
    if-nez v11, :cond_e

    invoke-virtual {v5}, LJ4/C;->B0()LJ4/b0;

    move-result-object v3

    check-cast v3, LJ4/w;

    new-instance v4, LJ4/Q;

    iget-object v5, v3, LJ4/w;->e:LJ4/G;

    invoke-direct {v4, v9, v5}, LJ4/Q;-><init>(ILJ4/C;)V

    add-int/2addr v2, v7

    invoke-virtual {v0, v4, v1, v2}, LJ4/X;->j(LJ4/P;LU3/O;I)LJ4/P;

    move-result-object v4

    new-instance v5, LJ4/Q;

    iget-object v6, v3, LJ4/w;->f:LJ4/G;

    invoke-direct {v5, v9, v6}, LJ4/Q;-><init>(ILJ4/C;)V

    invoke-virtual {v0, v5, v1, v2}, LJ4/X;->j(LJ4/P;LU3/O;I)LJ4/P;

    move-result-object v0

    invoke-virtual {v4}, LJ4/P;->a()I

    move-result v1

    invoke-virtual {v4}, LJ4/P;->b()LJ4/C;

    move-result-object v2

    iget-object v3, v3, LJ4/w;->e:LJ4/G;

    if-ne v2, v3, :cond_d

    invoke-virtual {v0}, LJ4/P;->b()LJ4/C;

    move-result-object v2

    if-ne v2, v6, :cond_d

    return-object p1

    :cond_d
    invoke-virtual {v4}, LJ4/P;->b()LJ4/C;

    move-result-object v2

    invoke-static {v2}, LJ4/c;->b(LJ4/C;)LJ4/G;

    move-result-object v2

    invoke-virtual {v0}, LJ4/P;->b()LJ4/C;

    move-result-object v0

    invoke-static {v0}, LJ4/c;->b(LJ4/C;)LJ4/G;

    move-result-object v0

    invoke-static {v2, v0}, LJ4/d;->i(LJ4/G;LJ4/G;)LJ4/b0;

    move-result-object v0

    new-instance v2, LJ4/Q;

    invoke-direct {v2, v1, v0}, LJ4/Q;-><init>(ILJ4/C;)V

    return-object v2

    :cond_e
    invoke-static {v5}, LR3/j;->D(LJ4/C;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {v5}, LJ4/c;->i(LJ4/C;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_12

    :cond_f
    const/4 v1, 0x2

    if-eqz v6, :cond_1d

    invoke-virtual {v6}, LJ4/P;->a()I

    move-result v0

    invoke-static {v9, v0}, LJ4/X;->c(II)I

    move-result v0

    invoke-virtual {v5}, LJ4/C;->q0()LJ4/M;

    move-result-object v2

    instance-of v2, v2, Lw4/b;

    if-nez v2, :cond_12

    invoke-static {v0}, Lq/e;->c(I)I

    move-result v2

    if-eq v2, v7, :cond_11

    if-eq v2, v1, :cond_10

    goto :goto_3

    :cond_10
    new-instance v0, LJ4/W;

    const-string v1, "Out-projection in in-position"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, LJ4/Q;

    invoke-virtual {v5}, LJ4/C;->q0()LJ4/M;

    move-result-object v1

    invoke-interface {v1}, LJ4/M;->c()LR3/j;

    move-result-object v1

    invoke-virtual {v1}, LR3/j;->n()LJ4/G;

    move-result-object v1

    invoke-direct {v0, v8, v1}, LJ4/Q;-><init>(ILJ4/C;)V

    return-object v0

    :cond_12
    :goto_3
    invoke-virtual {v5}, LJ4/C;->B0()LJ4/b0;

    move-result-object v1

    instance-of v2, v1, LJ4/k;

    if-eqz v2, :cond_13

    check-cast v1, LJ4/k;

    goto :goto_4

    :cond_13
    move-object v1, v3

    :goto_4
    if-nez v1, :cond_15

    :cond_14
    move-object v1, v3

    goto :goto_5

    :cond_15
    invoke-interface {v1}, LJ4/k;->d0()Z

    move-result v2

    if-eqz v2, :cond_14

    :goto_5
    invoke-virtual {v6}, LJ4/P;->c()Z

    move-result v2

    if-eqz v2, :cond_16

    return-object v6

    :cond_16
    if-eqz v1, :cond_17

    invoke-virtual {v6}, LJ4/P;->b()LJ4/C;

    move-result-object v2

    invoke-interface {v1, v2}, LJ4/k;->j(LJ4/C;)LJ4/b0;

    move-result-object v1

    goto :goto_6

    :cond_17
    invoke-virtual {v6}, LJ4/P;->b()LJ4/C;

    move-result-object v1

    invoke-virtual {v5}, LJ4/C;->z0()Z

    move-result v2

    invoke-static {v1, v2}, LJ4/Z;->h(LJ4/C;Z)LJ4/C;

    move-result-object v1

    :goto_6
    invoke-interface {v5}, LV3/a;->p()LV3/h;

    move-result-object v2

    invoke-interface {v2}, LV3/h;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-interface {v5}, LV3/a;->p()LV3/h;

    move-result-object v2

    invoke-virtual {v4, v2}, LJ4/U;->c(LV3/h;)LV3/h;

    move-result-object v2

    if-eqz v2, :cond_1a

    sget-object v3, LR3/o;->y:Ls4/c;

    invoke-interface {v2, v3}, LV3/h;->e(Ls4/c;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_7

    :cond_18
    new-instance v3, LV3/l;

    new-instance v4, LJ4/V;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-direct {v3, v2, v4}, LV3/l;-><init>(LV3/h;LJ4/V;)V

    move-object v2, v3

    :goto_7
    new-instance v3, LV3/i;

    invoke-interface {v1}, LV3/a;->p()LV3/h;

    move-result-object v4

    filled-new-array {v4, v2}, [LV3/h;

    move-result-object v2

    invoke-direct {v3, v2}, LV3/i;-><init>([LV3/h;)V

    invoke-interface {v1}, LV3/a;->p()LV3/h;

    move-result-object v2

    invoke-interface {v2}, LV3/h;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v3}, LV3/h;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_8

    :cond_19
    invoke-virtual {v1}, LJ4/C;->B0()LJ4/b0;

    move-result-object v1

    invoke-virtual {v1, v3}, LJ4/b0;->E0(LV3/h;)LJ4/b0;

    move-result-object v1

    goto :goto_8

    :cond_1a
    const/16 v0, 0x21

    invoke-static {v0}, LJ4/X;->a(I)V

    throw v3

    :cond_1b
    :goto_8
    if-ne v0, v7, :cond_1c

    invoke-virtual {v6}, LJ4/P;->a()I

    move-result v0

    invoke-static {v9, v0}, LJ4/X;->b(II)I

    move-result v9

    :cond_1c
    new-instance v0, LJ4/Q;

    invoke-direct {v0, v9, v1}, LJ4/Q;-><init>(ILJ4/C;)V

    return-object v0

    :cond_1d
    invoke-virtual/range {p1 .. p1}, LJ4/P;->b()LJ4/C;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, LJ4/P;->a()I

    move-result v6

    invoke-virtual {v5}, LJ4/C;->q0()LJ4/M;

    move-result-object v8

    invoke-interface {v8}, LJ4/M;->e()LU3/g;

    move-result-object v8

    instance-of v8, v8, LU3/O;

    if-eqz v8, :cond_1e

    move-object/from16 v1, p1

    goto/16 :goto_11

    :cond_1e
    invoke-virtual {v5}, LJ4/C;->B0()LJ4/b0;

    move-result-object v8

    instance-of v9, v8, LJ4/a;

    if-eqz v9, :cond_1f

    check-cast v8, LJ4/a;

    goto :goto_9

    :cond_1f
    move-object v8, v3

    :goto_9
    if-nez v8, :cond_20

    move-object v8, v3

    goto :goto_a

    :cond_20
    iget-object v8, v8, LJ4/a;->f:LJ4/G;

    :goto_a
    if-eqz v8, :cond_23

    instance-of v3, v4, LJ4/z;

    if-eqz v3, :cond_22

    invoke-virtual {v4}, LJ4/U;->b()Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_b

    :cond_21
    new-instance v3, LJ4/X;

    new-instance v9, LJ4/z;

    move-object v11, v4

    check-cast v11, LJ4/z;

    iget-object v12, v11, LJ4/z;->b:[LU3/O;

    iget-object v11, v11, LJ4/z;->c:[LJ4/P;

    invoke-direct {v9, v12, v11, v10}, LJ4/z;-><init>([LU3/O;[LJ4/P;Z)V

    invoke-direct {v3, v9}, LJ4/X;-><init>(LJ4/U;)V

    goto :goto_c

    :cond_22
    :goto_b
    move-object v3, v0

    :goto_c
    invoke-virtual {v3, v7, v8}, LJ4/X;->i(ILJ4/C;)LJ4/C;

    move-result-object v3

    :cond_23
    invoke-virtual {v5}, LJ4/C;->q0()LJ4/M;

    move-result-object v8

    invoke-interface {v8}, LJ4/M;->g()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v9

    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move v12, v10

    :goto_d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_29

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LU3/O;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LJ4/P;

    add-int/lit8 v15, v2, 0x1

    invoke-virtual {v0, v14, v13, v15}, LJ4/X;->j(LJ4/P;LU3/O;I)LJ4/P;

    move-result-object v15

    invoke-interface {v13}, LU3/O;->z()I

    move-result v1

    invoke-virtual {v15}, LJ4/P;->a()I

    move-result v7

    invoke-static {v1, v7}, LJ4/X;->c(II)I

    move-result v1

    invoke-static {v1}, Lq/e;->c(I)I

    move-result v1

    if-eqz v1, :cond_26

    const/4 v7, 0x1

    if-eq v1, v7, :cond_24

    const/4 v7, 0x2

    if-eq v1, v7, :cond_25

    goto :goto_e

    :cond_24
    const/4 v7, 0x2

    :cond_25
    invoke-static {v13}, LJ4/Z;->j(LU3/O;)LJ4/K;

    move-result-object v15

    :goto_e
    const/4 v13, 0x1

    goto :goto_f

    :cond_26
    const/4 v7, 0x2

    invoke-interface {v13}, LU3/O;->z()I

    move-result v1

    const/4 v13, 0x1

    if-eq v1, v13, :cond_27

    invoke-virtual {v15}, LJ4/P;->c()Z

    move-result v1

    if-nez v1, :cond_27

    new-instance v1, LJ4/Q;

    invoke-virtual {v15}, LJ4/P;->b()LJ4/C;

    move-result-object v15

    invoke-direct {v1, v13, v15}, LJ4/Q;-><init>(ILJ4/C;)V

    move-object v15, v1

    :cond_27
    :goto_f
    if-eq v15, v14, :cond_28

    move v12, v13

    :cond_28
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move v1, v7

    move v7, v13

    goto :goto_d

    :cond_29
    if-nez v12, :cond_2a

    goto :goto_10

    :cond_2a
    move-object v9, v11

    :goto_10
    invoke-interface {v5}, LV3/a;->p()LV3/h;

    move-result-object v0

    invoke-virtual {v4, v0}, LJ4/U;->c(LV3/h;)LV3/h;

    move-result-object v0

    const-string v1, "newArguments"

    invoke-static {v9, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newAnnotations"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-static {v5, v9, v0, v1}, LJ4/c;->p(LJ4/C;Ljava/util/List;LV3/h;I)LJ4/C;

    move-result-object v0

    instance-of v1, v0, LJ4/G;

    if-eqz v1, :cond_2b

    instance-of v1, v3, LJ4/G;

    if-eqz v1, :cond_2b

    check-cast v0, LJ4/G;

    check-cast v3, LJ4/G;

    invoke-static {v0, v3}, LJ4/c;->y(LJ4/G;LJ4/G;)LJ4/G;

    move-result-object v0

    :cond_2b
    new-instance v1, LJ4/Q;

    invoke-direct {v1, v6, v0}, LJ4/Q;-><init>(ILJ4/C;)V

    :goto_11
    return-object v1

    :cond_2c
    :goto_12
    return-object p1

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recursion too deep. Most likely infinite loop while substituting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, LJ4/X;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; substitution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, LJ4/X;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    const/16 v0, 0x12

    invoke-static {v0}, LJ4/X;->a(I)V

    throw v3
.end method
