.class public final LP3/b;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:Ljava/lang/Class;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, LP3/b;->d:Ljava/lang/Class;

    iput-object p2, p0, LP3/b;->e:Ljava/util/List;

    iput-object p3, p0, LP3/b;->f:Ljava/util/Map;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Ljava/lang/annotation/Annotation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/lang/annotation/Annotation;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lw0/f;->u(Ljava/lang/annotation/Annotation;)LL3/b;

    move-result-object v0

    invoke-static {v0}, Lw0/f;->x(LL3/b;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iget-object v2, p0, LP3/b;->d:Ljava/lang/Class;

    invoke-static {v0, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    iget-object v3, p0, LP3/b;->e:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move p0, v0

    goto/16 :goto_3

    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, LP3/b;->f:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v6, v5, [Z

    if-eqz v6, :cond_6

    check-cast v5, [Z

    if-eqz v4, :cond_5

    check-cast v4, [Z

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v4

    goto/16 :goto_2

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.BooleanArray"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    instance-of v6, v5, [C

    if-eqz v6, :cond_8

    check-cast v5, [C

    if-eqz v4, :cond_7

    check-cast v4, [C

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v4

    goto/16 :goto_2

    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.CharArray"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    instance-of v6, v5, [B

    if-eqz v6, :cond_a

    check-cast v5, [B

    if-eqz v4, :cond_9

    check-cast v4, [B

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    goto/16 :goto_2

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.ByteArray"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    instance-of v6, v5, [S

    if-eqz v6, :cond_c

    check-cast v5, [S

    if-eqz v4, :cond_b

    check-cast v4, [S

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v4

    goto/16 :goto_2

    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.ShortArray"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    instance-of v6, v5, [I

    if-eqz v6, :cond_e

    check-cast v5, [I

    if-eqz v4, :cond_d

    check-cast v4, [I

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    goto :goto_2

    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.IntArray"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    instance-of v6, v5, [F

    if-eqz v6, :cond_10

    check-cast v5, [F

    if-eqz v4, :cond_f

    check-cast v4, [F

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v4

    goto :goto_2

    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.FloatArray"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    instance-of v6, v5, [J

    if-eqz v6, :cond_12

    check-cast v5, [J

    if-eqz v4, :cond_11

    check-cast v4, [J

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v4

    goto :goto_2

    :cond_11
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.LongArray"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    instance-of v6, v5, [D

    if-eqz v6, :cond_14

    check-cast v5, [D

    if-eqz v4, :cond_13

    check-cast v4, [D

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v4

    goto :goto_2

    :cond_13
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.DoubleArray"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    instance-of v6, v5, [Ljava/lang/Object;

    if-eqz v6, :cond_16

    check-cast v5, [Ljava/lang/Object;

    if-eqz v4, :cond_15

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    goto :goto_2

    :cond_15
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<*>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    invoke-static {v5, v4}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_2
    if-nez v4, :cond_4

    move p0, v2

    :goto_3
    if-eqz p0, :cond_17

    move v2, v0

    :cond_17
    return v2
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LP3/b;->b(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
