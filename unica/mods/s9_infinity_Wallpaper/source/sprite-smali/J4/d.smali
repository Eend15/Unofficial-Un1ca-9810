.class public final LJ4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final b(LK4/c;LK4/b;LM4/d;LM4/d;Z)Z
    .locals 4

    invoke-interface {p0, p2}, LK4/c;->D(LM4/d;)Ljava/util/Set;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM4/c;

    invoke-interface {p0, v1}, LK4/c;->U(LM4/c;)LM4/f;

    move-result-object v2

    invoke-interface {p0, p3}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v3

    invoke-static {v2, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p4, :cond_1

    invoke-static {p1, p3, v1}, LJ4/d;->m(LK4/b;LM4/c;LM4/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method public static c(LK4/b;LM4/d;LM4/f;)Ljava/util/List;
    .locals 10

    iget-object v0, p0, LK4/b;->g:LK4/c;

    invoke-interface {v0, p1, p2}, LK4/c;->m(LM4/d;LM4/f;)V

    invoke-interface {v0, p2}, LK4/c;->s(LM4/f;)Z

    move-result v1

    sget-object v2, Lr3/r;->d:Lr3/r;

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, LK4/c;->w(LM4/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v0, p2}, LK4/c;->F(LM4/f;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0, p1}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object p0

    invoke-interface {v0, p0, p2}, LK4/c;->J(LM4/f;LM4/f;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v0, p1}, LK4/c;->X(LM4/d;)LJ4/G;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    invoke-static {p1}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_2
    return-object v2

    :cond_3
    new-instance v1, LS4/g;

    invoke-direct {v1}, LS4/g;-><init>()V

    invoke-virtual {p0}, LK4/b;->b()V

    iget-object v2, p0, LK4/b;->b:Ljava/util/ArrayDeque;

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v3, p0, LK4/b;->c:LS4/j;

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    iget v4, v3, LS4/j;->e:I

    const/16 v5, 0x3e8

    if-gt v4, v5, :cond_c

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM4/d;

    const-string v5, "current"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, LS4/j;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v0, v4}, LK4/c;->X(LM4/d;)LJ4/G;

    move-result-object v5

    if-nez v5, :cond_6

    move-object v5, v4

    :cond_6
    invoke-interface {v0, v5}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v6

    invoke-interface {v0, v6, p2}, LK4/c;->J(LM4/f;LM4/f;)Z

    move-result v6

    sget-object v7, LJ4/e;->c:LJ4/e;

    iget-object v8, p0, LK4/b;->g:LK4/c;

    if-eqz v6, :cond_7

    invoke-virtual {v1, v5}, LS4/g;->add(Ljava/lang/Object;)Z

    move-object v5, v7

    goto :goto_2

    :cond_7
    invoke-interface {v0, v5}, LK4/c;->v(LM4/c;)I

    move-result v6

    if-nez v6, :cond_8

    sget-object v5, LJ4/e;->b:LJ4/e;

    goto :goto_2

    :cond_8
    instance-of v6, v5, LJ4/G;

    if-eqz v6, :cond_b

    sget-object v6, LJ4/O;->b:LJ4/d;

    check-cast v5, LJ4/C;

    invoke-virtual {v5}, LJ4/C;->q0()LJ4/M;

    move-result-object v9

    invoke-virtual {v5}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v6, v9, v5}, LJ4/d;->e(LJ4/M;Ljava/util/List;)LJ4/U;

    move-result-object v5

    new-instance v6, LJ4/X;

    invoke-direct {v6, v5}, LJ4/X;-><init>(LJ4/U;)V

    new-instance v5, LK4/a;

    invoke-direct {v5, v8, v6}, LK4/a;-><init>(LK4/c;LJ4/X;)V

    :goto_2
    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_a

    goto :goto_1

    :cond_a
    invoke-interface {v8, v4}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v4

    invoke-interface {v8, v4}, LK4/c;->K(LM4/f;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LM4/c;

    invoke-virtual {v5, p0, v6}, LJ4/c;->w(LK4/b;LM4/c;)LM4/d;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-static {v5}, LK4/h;->b(LM4/c;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Too many supertypes for type: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Supertypes = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x3f

    invoke-static/range {v3 .. v8}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    invoke-virtual {p0}, LK4/b;->a()V

    return-object v1
.end method

.method public static d(LK4/b;LM4/d;LM4/f;)Ljava/util/List;
    .locals 7

    invoke-static {p0, p1, p2}, LJ4/d;->c(LK4/b;LM4/d;LM4/f;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LM4/d;

    iget-object v3, p0, LK4/b;->g:LK4/c;

    invoke-interface {v3, v2}, LK4/c;->t(LM4/d;)LM4/e;

    move-result-object v2

    invoke-interface {v3, v2}, LK4/c;->h(LM4/e;)I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    invoke-interface {v3, v2, v5}, LK4/c;->I(LM4/e;I)LJ4/P;

    move-result-object v6

    invoke-interface {v3, v6}, LK4/c;->W(LJ4/P;)LJ4/b0;

    move-result-object v6

    invoke-interface {v3, v6}, LK4/c;->e(LM4/c;)LJ4/w;

    move-result-object v6

    if-nez v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    move-object p1, p2

    :cond_4
    :goto_2
    return-object p1
.end method

.method public static f(LK4/b;LM4/c;LM4/c;)Z
    .locals 8

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "a"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, LK4/b;->g:LK4/c;

    invoke-static {v1, p1}, LJ4/d;->k(LK4/c;LM4/c;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-static {v1, p2}, LJ4/d;->k(LK4/c;LM4/c;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, LK4/b;->d(LM4/c;)LJ4/C;

    move-result-object v2

    invoke-virtual {p0, v2}, LK4/b;->c(LM4/c;)LJ4/b0;

    move-result-object v2

    invoke-virtual {p0, p2}, LK4/b;->d(LM4/c;)LJ4/C;

    move-result-object v4

    invoke-virtual {p0, v4}, LK4/b;->c(LM4/c;)LJ4/b0;

    move-result-object v4

    invoke-interface {v1, v2}, LK4/c;->r(LM4/c;)LM4/d;

    move-result-object v5

    invoke-interface {v1, v2}, LK4/c;->U(LM4/c;)LM4/f;

    move-result-object v6

    invoke-interface {v1, v4}, LK4/c;->U(LM4/c;)LM4/f;

    move-result-object v7

    invoke-interface {v1, v6, v7}, LK4/c;->J(LM4/f;LM4/f;)Z

    move-result v6

    if-nez v6, :cond_1

    return v3

    :cond_1
    invoke-interface {v1, v5}, LK4/c;->v(LM4/c;)I

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v1, v2}, LK4/c;->V(LJ4/b0;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-interface {v1, v4}, LK4/c;->V(LJ4/b0;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1, v5}, LK4/c;->d0(LM4/d;)Z

    move-result p0

    invoke-interface {v1, v4}, LK4/c;->r(LM4/c;)LM4/d;

    move-result-object p1

    invoke-interface {v1, p1}, LK4/c;->d0(LM4/d;)Z

    move-result p1

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    :cond_4
    :goto_0
    return v0

    :cond_5
    invoke-static {p0, p1, p2}, LJ4/d;->m(LK4/b;LM4/c;LM4/c;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0, p2, p1}, LJ4/d;->m(LK4/b;LM4/c;LM4/c;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    move v0, v3

    :goto_1
    return v0
.end method

.method public static final i(LJ4/G;LJ4/G;)LJ4/b0;
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LJ4/C;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, LJ4/x;

    invoke-direct {v0, p0, p1}, LJ4/x;-><init>(LJ4/G;LJ4/G;)V

    return-object v0
.end method

.method public static j(LK4/c;LM4/c;LM4/d;)LU3/O;
    .locals 8

    invoke-interface {p0, p1}, LK4/c;->v(LM4/c;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_8

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, p1, v3}, LK4/c;->c(LM4/c;I)LJ4/P;

    move-result-object v5

    invoke-interface {p0, v5}, LK4/c;->N(LJ4/P;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    move-object v5, v1

    :goto_1
    if-nez v5, :cond_1

    move-object v5, v1

    goto :goto_2

    :cond_1
    invoke-interface {p0, v5}, LK4/c;->W(LJ4/P;)LJ4/b0;

    move-result-object v5

    :goto_2
    if-nez v5, :cond_2

    goto :goto_4

    :cond_2
    invoke-interface {p0, v5}, LK4/c;->r(LM4/c;)LM4/d;

    move-result-object v6

    invoke-interface {p0, v6}, LK4/c;->q(LM4/d;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p0, p2}, LK4/c;->r(LM4/c;)LM4/d;

    move-result-object v6

    invoke-interface {p0, v6}, LK4/c;->q(LM4/d;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_3
    invoke-virtual {v5, p2}, LJ4/C;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v6, :cond_4

    invoke-interface {p0, v5}, LK4/c;->U(LM4/c;)LM4/f;

    move-result-object v6

    invoke-interface {p0, p2}, LK4/c;->U(LM4/c;)LM4/f;

    move-result-object v7

    invoke-static {v6, v7}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_5

    :cond_4
    invoke-static {p0, v5, p2}, LJ4/d;->j(LK4/c;LM4/c;LM4/d;)LU3/O;

    move-result-object v3

    if-nez v3, :cond_6

    :goto_4
    if-lt v4, v0, :cond_5

    goto :goto_6

    :cond_5
    move v3, v4

    goto :goto_0

    :cond_6
    return-object v3

    :cond_7
    :goto_5
    invoke-interface {p0, p1}, LK4/c;->U(LM4/c;)LM4/f;

    move-result-object p1

    invoke-interface {p0, p1, v3}, LK4/c;->p0(LM4/f;I)LU3/O;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_6
    return-object v1
.end method

.method public static k(LK4/c;LM4/c;)Z
    .locals 1

    invoke-interface {p0, p1}, LK4/c;->U(LM4/c;)LM4/f;

    move-result-object v0

    invoke-interface {p0, v0}, LK4/c;->P(LM4/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, LK4/c;->y(LM4/c;)V

    invoke-interface {p0, p1}, LK4/c;->o(LM4/c;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, LK4/c;->r(LM4/c;)LM4/d;

    move-result-object v0

    invoke-interface {p0, v0}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v0

    invoke-interface {p0, p1}, LK4/c;->S(LM4/c;)LM4/d;

    move-result-object p1

    invoke-interface {p0, p1}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object p0

    invoke-static {v0, p0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static l(LK4/b;LM4/e;LM4/d;)Z
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capturedSubArguments"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LK4/b;->g:LK4/c;

    invoke-interface {v0, p2}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v1

    invoke-interface {v0, p1}, LK4/c;->h(LM4/e;)I

    move-result v2

    invoke-interface {v0, v1}, LK4/c;->L(LM4/f;)I

    move-result v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_e

    invoke-interface {v0, p2}, LK4/c;->v(LM4/c;)I

    move-result v5

    if-eq v2, v5, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x1

    if-lez v3, :cond_d

    move v5, v4

    :goto_0
    add-int/lit8 v6, v5, 0x1

    invoke-interface {v0, p2, v5}, LK4/c;->c(LM4/c;I)LJ4/P;

    move-result-object v7

    invoke-interface {v0, v7}, LK4/c;->N(LJ4/P;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-interface {v0, v7}, LK4/c;->W(LJ4/P;)LJ4/b0;

    move-result-object v8

    invoke-interface {v0, p1, v5}, LK4/c;->I(LM4/e;I)LJ4/P;

    move-result-object v9

    invoke-interface {v0, v9}, LK4/c;->f(LJ4/P;)I

    invoke-interface {v0, v9}, LK4/c;->W(LJ4/P;)LJ4/b0;

    move-result-object v9

    invoke-interface {v0, v1, v5}, LK4/c;->p0(LM4/f;I)LU3/O;

    move-result-object v5

    invoke-interface {v0, v5}, LK4/c;->A(LU3/O;)I

    move-result v5

    invoke-interface {v0, v7}, LK4/c;->f(LJ4/P;)I

    move-result v7

    const-string v10, "declared"

    invoke-static {v5, v10}, LB/a;->t(ILjava/lang/String;)V

    const-string v10, "useSite"

    invoke-static {v7, v10}, LB/a;->t(ILjava/lang/String;)V

    const/4 v10, 0x3

    if-ne v5, v10, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    if-ne v7, v10, :cond_3

    goto :goto_1

    :cond_3
    if-ne v5, v7, :cond_4

    goto :goto_1

    :cond_4
    move v5, v4

    :goto_1
    if-nez v5, :cond_5

    iget-boolean p0, p0, LK4/b;->d:Z

    return p0

    :cond_5
    if-ne v5, v10, :cond_6

    invoke-static {v0, v9, v8}, LJ4/d;->n(LK4/c;LM4/c;LM4/c;)V

    invoke-static {v0, v8, v9}, LJ4/d;->n(LK4/c;LM4/c;LM4/c;)V

    :cond_6
    iget v7, p0, LK4/b;->a:I

    const/16 v10, 0x64

    if-gt v7, v10, :cond_c

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, LK4/b;->a:I

    invoke-static {v5}, Lq/e;->c(I)I

    move-result v5

    if-eqz v5, :cond_9

    if-eq v5, v2, :cond_8

    const/4 v7, 0x2

    if-ne v5, v7, :cond_7

    invoke-static {p0, v9, v8}, LJ4/d;->f(LK4/b;LM4/c;LM4/c;)Z

    move-result v5

    goto :goto_2

    :cond_7
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_8
    invoke-static {p0, v9, v8}, LJ4/d;->m(LK4/b;LM4/c;LM4/c;)Z

    move-result v5

    goto :goto_2

    :cond_9
    invoke-static {p0, v8, v9}, LJ4/d;->m(LK4/b;LM4/c;LM4/c;)Z

    move-result v5

    :goto_2
    iget v7, p0, LK4/b;->a:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, LK4/b;->a:I

    if-nez v5, :cond_a

    return v4

    :cond_a
    :goto_3
    if-lt v6, v3, :cond_b

    goto :goto_4

    :cond_b
    move v5, v6

    goto/16 :goto_0

    :cond_c
    const-string p0, "Arguments depth is too high. Some related argument: "

    invoke-static {v9, p0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_4
    return v2

    :cond_e
    :goto_5
    return v4
.end method

.method public static m(LK4/b;LM4/c;LM4/c;)Z
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "context"

    invoke-static {v0, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "subType"

    invoke-static {v1, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "superType"

    invoke-static {v2, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v1, v2, :cond_0

    :goto_0
    const/4 v5, 0x1

    goto/16 :goto_2a

    :cond_0
    invoke-virtual/range {p0 .. p1}, LK4/b;->d(LM4/c;)LJ4/C;

    move-result-object v1

    invoke-virtual {v0, v1}, LK4/b;->c(LM4/c;)LJ4/b0;

    move-result-object v1

    invoke-virtual {v0, v2}, LK4/b;->d(LM4/c;)LJ4/C;

    move-result-object v2

    invoke-virtual {v0, v2}, LK4/b;->c(LM4/c;)LJ4/b0;

    move-result-object v2

    iget-object v6, v0, LK4/b;->g:LK4/c;

    invoke-interface {v6, v1}, LK4/c;->r(LM4/c;)LM4/d;

    move-result-object v7

    invoke-interface {v6, v2}, LK4/c;->S(LM4/c;)LM4/d;

    move-result-object v8

    invoke-interface {v6, v7}, LK4/c;->b0(LM4/d;)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_10

    invoke-interface {v6, v8}, LK4/c;->b0(LM4/d;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-interface {v6, v7}, LK4/c;->u(LM4/d;)V

    invoke-interface {v6, v7}, LK4/c;->G(LM4/d;)V

    invoke-interface {v6, v8}, LK4/c;->G(LM4/d;)V

    invoke-interface {v6, v8}, LK4/c;->i0(LM4/d;)LJ4/l;

    move-result-object v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v6, v9}, LK4/c;->p(LJ4/l;)LJ4/G;

    move-result-object v9

    if-nez v9, :cond_3

    :goto_1
    move-object v9, v8

    :cond_3
    invoke-interface {v6, v9}, LK4/c;->T(LM4/d;)LM4/b;

    move-result-object v9

    if-nez v9, :cond_4

    const/4 v12, 0x0

    goto :goto_2

    :cond_4
    invoke-interface {v6, v9}, LK4/c;->l(LM4/b;)LJ4/b0;

    move-result-object v12

    :goto_2
    if-eqz v9, :cond_7

    if-eqz v12, :cond_7

    invoke-interface {v6, v8}, LK4/c;->d0(LM4/d;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6, v12}, LK4/c;->n0(LM4/c;)LM4/c;

    move-result-object v12

    goto :goto_3

    :cond_5
    invoke-interface {v6, v8}, LK4/c;->o(LM4/c;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6, v12}, LK4/c;->a0(LM4/c;)LJ4/b0;

    move-result-object v12

    :cond_6
    :goto_3
    invoke-static {v7, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7, v12}, LJ4/d;->m(LK4/b;LM4/c;LM4/c;)Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_8

    :cond_7
    invoke-interface {v6, v8}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v9

    invoke-interface {v6, v9}, LK4/c;->q0(LM4/f;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v6, v8}, LK4/c;->d0(LM4/d;)Z

    invoke-interface {v6, v9}, LK4/c;->K(LM4/f;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    const/4 v7, 0x1

    goto :goto_4

    :cond_9
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LM4/c;

    invoke-static {v0, v7, v9}, LJ4/d;->m(LK4/b;LM4/c;LM4/c;)Z

    move-result v9

    if-nez v9, :cond_a

    move v7, v10

    :goto_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_8

    :cond_b
    invoke-interface {v6, v7}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v9

    instance-of v12, v7, LM4/b;

    if-nez v12, :cond_e

    invoke-interface {v6, v9}, LK4/c;->q0(LM4/f;)Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v6, v9}, LK4/c;->K(LM4/f;)Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_c

    goto :goto_5

    :cond_c
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LM4/c;

    instance-of v12, v12, LM4/b;

    if-nez v12, :cond_d

    goto :goto_6

    :cond_e
    :goto_5
    invoke-static {v6, v8, v7}, LJ4/d;->j(LK4/c;LM4/c;LM4/d;)LU3/O;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-interface {v6, v8}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v8

    invoke-interface {v6, v7, v8}, LK4/c;->x(LU3/O;LM4/f;)Z

    move-result v7

    if-eqz v7, :cond_f

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_f
    :goto_6
    const/4 v7, 0x0

    goto :goto_8

    :cond_10
    :goto_7
    iget-boolean v9, v0, LK4/b;->d:Z

    if-eqz v9, :cond_11

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_11
    invoke-interface {v6, v7}, LK4/c;->d0(LM4/d;)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v6, v8}, LK4/c;->d0(LM4/d;)Z

    move-result v9

    if-nez v9, :cond_12

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_12
    invoke-interface {v6, v7, v10}, LK4/c;->E(LM4/d;Z)LJ4/G;

    move-result-object v7

    invoke-interface {v6, v8, v10}, LK4/c;->E(LM4/d;Z)LJ4/G;

    move-result-object v8

    const-string v9, "a"

    invoke-static {v7, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "b"

    invoke-static {v8, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v7, v8}, LJ4/c;->t(LK4/c;LM4/c;LM4/c;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :goto_8
    if-nez v7, :cond_54

    invoke-interface {v6, v1}, LK4/c;->r(LM4/c;)LM4/d;

    move-result-object v1

    invoke-interface {v6, v2}, LK4/c;->S(LM4/c;)LM4/d;

    move-result-object v2

    invoke-static {v1, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v2}, LK4/c;->d0(LM4/d;)Z

    move-result v3

    sget-object v4, LJ4/e;->c:LJ4/e;

    sget-object v7, LJ4/e;->b:LJ4/e;

    const-string v8, ". Supertypes = "

    const-string v9, "Too many supertypes for type: "

    const-string v12, "current"

    const/16 v13, 0x3e8

    if-eqz v3, :cond_13

    goto/16 :goto_e

    :cond_13
    invoke-interface {v6, v1}, LK4/c;->o(LM4/c;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto/16 :goto_e

    :cond_14
    instance-of v3, v1, LM4/b;

    if-eqz v3, :cond_15

    move-object v3, v1

    check-cast v3, LM4/b;

    invoke-interface {v6, v3}, LK4/c;->Z(LM4/b;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto/16 :goto_e

    :cond_15
    invoke-static {v0, v1, v7}, LJ4/c;->f(LK4/b;LM4/d;LJ4/c;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto/16 :goto_e

    :cond_16
    invoke-interface {v6, v2}, LK4/c;->o(LM4/c;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto/16 :goto_24

    :cond_17
    sget-object v3, LJ4/e;->d:LJ4/e;

    invoke-static {v0, v2, v3}, LJ4/c;->f(LK4/b;LM4/d;LJ4/c;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto/16 :goto_24

    :cond_18
    invoke-interface {v6, v1}, LK4/c;->w(LM4/d;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto/16 :goto_24

    :cond_19
    invoke-interface {v6, v2}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v3

    const-string v14, "end"

    invoke-static {v3, v14}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v3}, LJ4/c;->h(LK4/b;LM4/d;LM4/f;)Z

    move-result v14

    if-eqz v14, :cond_1a

    goto :goto_e

    :cond_1a
    invoke-virtual/range {p0 .. p0}, LK4/b;->b()V

    iget-object v14, v0, LK4/b;->b:Ljava/util/ArrayDeque;

    invoke-static {v14}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v15, v0, LK4/b;->c:LS4/j;

    invoke-static {v15}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :goto_9
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_53

    iget v11, v15, LS4/j;->e:I

    if-gt v11, v13, :cond_52

    invoke-virtual {v14}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LM4/d;

    invoke-static {v11, v12}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v11}, LS4/j;->add(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    goto :goto_9

    :cond_1b
    invoke-interface {v6, v11}, LK4/c;->d0(LM4/d;)Z

    move-result v16

    if-eqz v16, :cond_1c

    move-object v13, v4

    goto :goto_a

    :cond_1c
    move-object v13, v7

    :goto_a
    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1d

    goto :goto_b

    :cond_1d
    const/4 v13, 0x0

    :goto_b
    if-nez v13, :cond_1e

    :goto_c
    const/16 v13, 0x3e8

    goto :goto_9

    :cond_1e
    invoke-interface {v6, v11}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v11

    invoke-interface {v6, v11}, LK4/c;->K(LM4/f;)Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_51

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, LM4/c;

    invoke-virtual {v13, v0, v5}, LJ4/c;->w(LK4/b;LM4/c;)LM4/d;

    move-result-object v5

    invoke-static {v0, v5, v3}, LJ4/c;->h(LK4/b;LM4/d;LM4/f;)Z

    move-result v16

    if-eqz v16, :cond_50

    invoke-virtual/range {p0 .. p0}, LK4/b;->a()V

    :goto_e
    invoke-interface {v6, v1}, LK4/c;->r(LM4/c;)LM4/d;

    move-result-object v3

    invoke-interface {v6, v2}, LK4/c;->S(LM4/c;)LM4/d;

    move-result-object v5

    invoke-interface {v6, v3}, LK4/c;->k0(LM4/d;)Z

    move-result v11

    if-nez v11, :cond_20

    invoke-interface {v6, v5}, LK4/c;->k0(LM4/d;)Z

    move-result v11

    if-nez v11, :cond_20

    :cond_1f
    const/4 v3, 0x0

    goto :goto_12

    :cond_20
    invoke-interface {v6, v3}, LK4/c;->k0(LM4/d;)Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-interface {v6, v5}, LK4/c;->k0(LM4/d;)Z

    move-result v11

    if-eqz v11, :cond_21

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_12

    :cond_21
    invoke-interface {v6, v3}, LK4/c;->k0(LM4/d;)Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-static {v6, v0, v3, v5, v10}, LJ4/d;->b(LK4/c;LK4/b;LM4/d;LM4/d;Z)Z

    move-result v3

    if-eqz v3, :cond_1f

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_12

    :cond_22
    invoke-interface {v6, v5}, LK4/c;->k0(LM4/d;)Z

    move-result v11

    if-eqz v11, :cond_1f

    invoke-interface {v6, v3}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v11

    instance-of v13, v11, LJ4/B;

    if-eqz v13, :cond_26

    invoke-interface {v6, v11}, LK4/c;->K(LM4/f;)Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_23

    goto :goto_10

    :cond_23
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_24
    :goto_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_26

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LM4/c;

    invoke-interface {v6, v13}, LK4/c;->i(LM4/c;)LJ4/G;

    move-result-object v13

    if-nez v13, :cond_25

    const/4 v14, 0x1

    goto :goto_f

    :cond_25
    invoke-interface {v6, v13}, LK4/c;->k0(LM4/d;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_24

    goto :goto_11

    :cond_26
    :goto_10
    const/4 v14, 0x1

    invoke-static {v6, v0, v5, v3, v14}, LJ4/d;->b(LK4/c;LK4/b;LM4/d;LM4/d;Z)Z

    move-result v3

    if-eqz v3, :cond_1f

    :goto_11
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_12
    if-nez v3, :cond_4f

    invoke-interface {v6, v2}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v3

    invoke-interface {v6, v1}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v5

    invoke-interface {v6, v5, v3}, LK4/c;->J(LM4/f;LM4/f;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v6, v3}, LK4/c;->L(LM4/f;)I

    move-result v5

    if-nez v5, :cond_27

    goto/16 :goto_0

    :cond_27
    invoke-interface {v6, v2}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v5

    invoke-interface {v6, v5}, LK4/c;->g0(LM4/f;)Z

    move-result v5

    if-eqz v5, :cond_28

    goto/16 :goto_0

    :cond_28
    const-string v5, "superConstructor"

    invoke-static {v3, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v1}, LK4/c;->w(LM4/d;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-static {v0, v1, v3}, LJ4/d;->d(LK4/b;LM4/d;LM4/f;)Ljava/util/List;

    move-result-object v5

    goto/16 :goto_18

    :cond_29
    invoke-interface {v6, v3}, LK4/c;->s(LM4/f;)Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-interface {v6, v3}, LK4/c;->B(LM4/f;)Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-static {v0, v1, v3}, LJ4/d;->c(LK4/b;LM4/d;LM4/f;)Ljava/util/List;

    move-result-object v5

    goto/16 :goto_18

    :cond_2a
    new-instance v5, LS4/g;

    invoke-direct {v5}, LS4/g;-><init>()V

    invoke-virtual/range {p0 .. p0}, LK4/b;->b()V

    iget-object v11, v0, LK4/b;->b:Ljava/util/ArrayDeque;

    invoke-static {v11}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v13, v0, LK4/b;->c:LS4/j;

    invoke-static {v13}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_2b
    :goto_13
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_31

    iget v14, v13, LS4/j;->e:I

    const/16 v15, 0x3e8

    if-gt v14, v15, :cond_30

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LM4/d;

    invoke-static {v14, v12}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, LS4/j;->add(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2c

    goto :goto_13

    :cond_2c
    invoke-interface {v6, v14}, LK4/c;->w(LM4/d;)Z

    move-result v15

    if-eqz v15, :cond_2d

    invoke-virtual {v5, v14}, LS4/g;->add(Ljava/lang/Object;)Z

    move-object v15, v4

    goto :goto_14

    :cond_2d
    move-object v15, v7

    :goto_14
    invoke-virtual {v15, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2e

    goto :goto_15

    :cond_2e
    const/4 v15, 0x0

    :goto_15
    if-nez v15, :cond_2f

    goto :goto_13

    :cond_2f
    invoke-interface {v6, v14}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v14

    invoke-interface {v6, v14}, LK4/c;->K(LM4/f;)Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_16
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, LM4/c;

    invoke-virtual {v15, v0, v10}, LJ4/c;->w(LK4/b;LM4/c;)LM4/d;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    goto :goto_16

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x3f

    move-object/from16 v18, v13

    invoke-static/range {v18 .. v23}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_31
    invoke-virtual/range {p0 .. p0}, LK4/b;->a()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, LS4/g;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_32

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LM4/d;

    const-string v13, "it"

    invoke-static {v11, v13}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v11, v3}, LJ4/d;->d(LK4/b;LM4/d;LM4/f;)Ljava/util/List;

    move-result-object v11

    invoke-static {v10, v11}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_17

    :cond_32
    move-object v5, v10

    :goto_18
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v5}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_34

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LM4/d;

    invoke-virtual {v0, v11}, LK4/b;->c(LM4/c;)LJ4/b0;

    move-result-object v13

    invoke-interface {v6, v13}, LK4/c;->i(LM4/c;)LJ4/G;

    move-result-object v13

    if-nez v13, :cond_33

    goto :goto_1a

    :cond_33
    move-object v11, v13

    :goto_1a
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_34
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_44

    const/4 v11, 0x1

    if-eq v5, v11, :cond_43

    new-instance v4, LM4/a;

    invoke-interface {v6, v3}, LK4/c;->L(LM4/f;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6, v3}, LK4/c;->L(LM4/f;)I

    move-result v5

    if-lez v5, :cond_3e

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1b
    add-int/lit8 v9, v7, 0x1

    if-nez v8, :cond_36

    invoke-interface {v6, v3, v7}, LK4/c;->p0(LM4/f;I)LU3/O;

    move-result-object v8

    invoke-interface {v6, v8}, LK4/c;->A(LU3/O;)I

    move-result v8

    const/4 v12, 0x2

    if-eq v8, v12, :cond_35

    goto :goto_1c

    :cond_35
    const/4 v8, 0x0

    goto :goto_1d

    :cond_36
    :goto_1c
    move v8, v11

    :goto_1d
    if-eqz v8, :cond_37

    move-object/from16 v16, v3

    goto/16 :goto_22

    :cond_37
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v10}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LM4/d;

    invoke-interface {v6, v14, v7}, LK4/c;->j0(LM4/d;I)LJ4/P;

    move-result-object v15

    if-nez v15, :cond_38

    move-object/from16 v16, v3

    :goto_1f
    const/4 v3, 0x0

    goto :goto_21

    :cond_38
    invoke-interface {v6, v15}, LK4/c;->f(LJ4/P;)I

    move-result v11

    move-object/from16 v16, v3

    const/4 v3, 0x3

    if-ne v11, v3, :cond_39

    goto :goto_20

    :cond_39
    const/4 v15, 0x0

    :goto_20
    if-nez v15, :cond_3a

    goto :goto_1f

    :cond_3a
    invoke-interface {v6, v15}, LK4/c;->W(LJ4/P;)LJ4/b0;

    move-result-object v3

    :goto_21
    if-eqz v3, :cond_3b

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v16

    const/4 v11, 0x1

    goto :goto_1e

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Incorrect type: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", subType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", superType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3c
    move-object/from16 v16, v3

    invoke-interface {v6, v12}, LK4/c;->M(Ljava/util/ArrayList;)LJ4/b0;

    move-result-object v3

    invoke-interface {v6, v3}, LK4/c;->e0(LM4/c;)LJ4/Q;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_22
    if-lt v9, v5, :cond_3d

    goto :goto_23

    :cond_3d
    move v7, v9

    move-object/from16 v3, v16

    const/4 v11, 0x1

    goto/16 :goto_1b

    :cond_3e
    const/4 v8, 0x0

    :goto_23
    if-nez v8, :cond_3f

    invoke-static {v0, v4, v2}, LJ4/d;->l(LK4/b;LM4/e;LM4/d;)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto/16 :goto_0

    :cond_3f
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    :cond_40
    :goto_24
    const/4 v5, 0x0

    goto/16 :goto_2a

    :cond_41
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LM4/d;

    invoke-interface {v6, v3}, LK4/c;->t(LM4/d;)LM4/e;

    move-result-object v3

    invoke-static {v0, v3, v2}, LJ4/d;->l(LK4/b;LM4/e;LM4/d;)Z

    move-result v3

    if-eqz v3, :cond_42

    goto/16 :goto_0

    :cond_43
    invoke-static {v10}, Lr3/j;->t0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM4/d;

    invoke-interface {v6, v1}, LK4/c;->t(LM4/d;)LM4/e;

    move-result-object v1

    invoke-static {v0, v1, v2}, LJ4/d;->l(LK4/b;LM4/e;LM4/d;)Z

    move-result v5

    goto/16 :goto_2a

    :cond_44
    invoke-interface {v6, v1}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v2

    invoke-interface {v6, v2}, LK4/c;->s(LM4/f;)Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v6, v2}, LK4/c;->Y(LM4/f;)Z

    move-result v0

    :goto_25
    move v5, v0

    goto/16 :goto_2a

    :cond_45
    invoke-interface {v6, v1}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v2

    invoke-interface {v6, v2}, LK4/c;->Y(LM4/f;)Z

    move-result v2

    if-eqz v2, :cond_46

    goto/16 :goto_0

    :cond_46
    invoke-virtual/range {p0 .. p0}, LK4/b;->b()V

    iget-object v2, v0, LK4/b;->b:Ljava/util/ArrayDeque;

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v3, v0, LK4/b;->c:LS4/j;

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_47
    :goto_26
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4e

    iget v5, v3, LS4/j;->e:I

    const/16 v10, 0x3e8

    if-gt v5, v10, :cond_4d

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LM4/d;

    invoke-static {v5, v12}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, LS4/j;->add(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_48

    goto :goto_26

    :cond_48
    invoke-interface {v6, v5}, LK4/c;->w(LM4/d;)Z

    move-result v11

    if-eqz v11, :cond_49

    move-object v11, v4

    goto :goto_27

    :cond_49
    move-object v11, v7

    :goto_27
    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4a

    goto :goto_28

    :cond_4a
    const/4 v11, 0x0

    :goto_28
    if-nez v11, :cond_4b

    goto :goto_26

    :cond_4b
    invoke-interface {v6, v5}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v5

    invoke-interface {v6, v5}, LK4/c;->K(LM4/f;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_29
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LM4/c;

    invoke-virtual {v11, v0, v13}, LJ4/c;->w(LK4/b;LM4/c;)LM4/d;

    move-result-object v13

    invoke-interface {v6, v13}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v14

    invoke-interface {v6, v14}, LK4/c;->Y(LM4/f;)Z

    move-result v14

    if-eqz v14, :cond_4c

    invoke-virtual/range {p0 .. p0}, LK4/b;->a()V

    goto/16 :goto_0

    :cond_4c
    invoke-virtual {v2, v13}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x3f

    move-object/from16 v19, v3

    invoke-static/range {v19 .. v24}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4e
    invoke-virtual/range {p0 .. p0}, LK4/b;->a()V

    goto/16 :goto_24

    :cond_4f
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_2a

    :cond_50
    const/16 v10, 0x3e8

    const/16 v16, 0x1

    invoke-virtual {v14, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    goto/16 :goto_d

    :cond_51
    const/4 v10, 0x0

    goto/16 :goto_c

    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x3f

    invoke-static/range {v15 .. v20}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_53
    invoke-virtual/range {p0 .. p0}, LK4/b;->a()V

    goto/16 :goto_24

    :cond_54
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_25

    :goto_2a
    return v5
.end method

.method public static n(LK4/c;LM4/c;LM4/c;)V
    .locals 1

    invoke-interface {p0, p1}, LK4/c;->i(LM4/c;)LJ4/G;

    move-result-object p1

    instance-of v0, p1, LM4/b;

    if-eqz v0, :cond_2

    check-cast p1, LM4/b;

    invoke-interface {p0, p1}, LK4/c;->c0(LM4/b;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0, p1}, LK4/c;->l0(LM4/b;)LK4/j;

    move-result-object v0

    invoke-interface {p0, v0}, LK4/c;->f0(Lw4/b;)LJ4/P;

    move-result-object v0

    invoke-interface {p0, v0}, LK4/c;->N(LJ4/P;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, LK4/c;->d(LM4/b;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p2}, LK4/c;->U(LM4/c;)LM4/f;

    :cond_2
    :goto_0
    return-void
.end method

.method public static final o(LV3/h;LU3/e;Ljava/util/List;)LJ4/G;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LU3/g;->E()LJ4/M;

    move-result-object p1

    const-string v0, "descriptor.typeConstructor"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0}, LJ4/d;->p(LJ4/M;LV3/h;Ljava/util/List;Z)LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public static p(LJ4/M;LV3/h;Ljava/util/List;Z)LJ4/G;
    .locals 7

    const-string v0, "annotations"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LV3/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-interface {p0}, LU3/g;->n()LJ4/G;

    move-result-object p0

    const-string p1, "constructor.declarationDescriptor!!.defaultType"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    instance-of v1, v0, LU3/O;

    if-eqz v1, :cond_1

    check-cast v0, LU3/O;

    invoke-interface {v0}, LU3/g;->n()LJ4/G;

    move-result-object v0

    invoke-virtual {v0}, LJ4/C;->l0()LC4/o;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, LU3/e;

    if-eqz v1, :cond_7

    invoke-static {v0}, Lz4/e;->j(LU3/j;)LU3/x;

    move-result-object v1

    invoke-static {v1}, Lz4/e;->i(LU3/x;)LK4/g;

    sget-object v1, LK4/g;->a:LK4/g;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "<this>"

    if-eqz v2, :cond_4

    check-cast v0, LU3/e;

    invoke-static {v0, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, v0, LX3/B;

    if-eqz v2, :cond_2

    move-object v3, v0

    check-cast v3, LX3/B;

    :cond_2
    if-nez v3, :cond_3

    invoke-interface {v0}, LU3/e;->a0()LC4/o;

    move-result-object v0

    const-string v1, "this.unsubstitutedMemberScope"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v1}, LX3/B;->j(LK4/g;)LC4/o;

    move-result-object v0

    goto :goto_0

    :cond_4
    check-cast v0, LU3/e;

    sget-object v2, LJ4/O;->b:LJ4/d;

    invoke-virtual {v2, p0, p2}, LJ4/d;->e(LJ4/M;Ljava/util/List;)LJ4/U;

    move-result-object v2

    invoke-static {v0, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v4, v0, LX3/B;

    if-eqz v4, :cond_5

    move-object v3, v0

    check-cast v3, LX3/B;

    :cond_5
    if-nez v3, :cond_6

    invoke-interface {v0, v2}, LU3/e;->p0(LJ4/U;)LC4/o;

    move-result-object v0

    const-string v1, "this.getMemberScope(\n   \u2026ubstitution\n            )"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v3, v2, v1}, LX3/B;->h(LJ4/U;LK4/g;)LC4/o;

    move-result-object v0

    goto :goto_0

    :cond_7
    instance-of v1, v0, LH4/v;

    if-eqz v1, :cond_8

    check-cast v0, LH4/v;

    check-cast v0, LX3/p;

    invoke-virtual {v0}, LX3/p;->r()Ls4/f;

    move-result-object v0

    const-string v1, "Scope for abbreviation: "

    invoke-static {v0, v1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, LJ4/v;->b(Ljava/lang/String;Z)LC4/o;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_8
    instance-of v1, p0, LJ4/B;

    if-eqz v1, :cond_9

    move-object v0, p0

    check-cast v0, LJ4/B;

    iget-object v0, v0, LJ4/B;->b:Ljava/util/LinkedHashSet;

    const-string v1, "member scope for intersection type"

    invoke-static {v1, v0}, Lw0/f;->o(Ljava/lang/String;Ljava/util/SequencedCollection;)LC4/o;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v6, LJ4/D;

    invoke-direct {v6, p0, p1, p2, p3}, LJ4/D;-><init>(LJ4/M;LV3/h;Ljava/util/List;Z)V

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, LJ4/d;->r(LV3/h;LJ4/M;Ljava/util/List;ZLC4/o;LE3/b;)LJ4/G;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported classifier: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " for constructor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final q(LC4/o;LJ4/M;LV3/h;Ljava/util/List;Z)LJ4/G;
    .locals 8

    const-string v0, "annotations"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LJ4/H;

    new-instance v7, LJ4/D;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, LJ4/D;-><init>(LC4/o;LJ4/M;LV3/h;Ljava/util/List;Z)V

    move-object v1, v0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, LJ4/H;-><init>(LJ4/M;Ljava/util/List;ZLC4/o;LE3/b;)V

    invoke-interface {p2}, LV3/h;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, LJ4/i;

    invoke-direct {p0, v0, p2}, LJ4/i;-><init>(LJ4/G;LV3/h;)V

    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static final r(LV3/h;LJ4/M;Ljava/util/List;ZLC4/o;LE3/b;)LJ4/G;
    .locals 7

    const-string v0, "annotations"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LJ4/H;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, LJ4/H;-><init>(LJ4/M;Ljava/util/List;ZLC4/o;LE3/b;)V

    invoke-interface {p0}, LV3/h;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, LJ4/i;

    invoke-direct {p1, v0, p0}, LJ4/i;-><init>(LJ4/G;LV3/h;)V

    move-object v0, p1

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(LV3/h;LV3/h;)V
    .locals 1

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV3/b;

    invoke-interface {v0}, LV3/b;->a()Ls4/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LV3/b;

    invoke-interface {p2}, LV3/b;->a()Ls4/c;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public e(LJ4/M;Ljava/util/List;)LJ4/U;
    .locals 4

    const-string p0, "typeConstructor"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "arguments"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LJ4/M;->g()Ljava/util/List;

    move-result-object p0

    const-string v0, "typeConstructor.parameters"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lr3/j;->D0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU3/O;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, LU3/O;->h0()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    invoke-interface {p1}, LJ4/M;->g()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU3/O;

    invoke-interface {v0}, LU3/g;->E()LJ4/M;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Lr3/j;->U0(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lr3/v;->h0(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    new-instance p1, LJ4/N;

    invoke-direct {p1, p0, v2}, LJ4/N;-><init>(Ljava/util/Map;Z)V

    return-object p1

    :cond_2
    :goto_1
    new-instance p1, LJ4/z;

    new-array v0, v2, [LU3/O;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    if-eqz p0, :cond_4

    check-cast p0, [LU3/O;

    new-array v1, v2, [LJ4/P;

    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, [LJ4/P;

    invoke-direct {p1, p0, p2, v2}, LJ4/z;-><init>([LU3/O;[LJ4/P;Z)V

    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g(Lw0/i;LV3/h;ZIZ)LJ4/G;
    .locals 5

    new-instance v0, LJ4/Q;

    iget-object v1, p1, Lw0/i;->f:Ljava/lang/Object;

    check-cast v1, LH4/v;

    invoke-virtual {v1}, LH4/v;->J0()LJ4/G;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2}, LJ4/Q;-><init>(ILJ4/C;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, p4}, LJ4/d;->h(LJ4/P;Lw0/i;LU3/O;I)LJ4/P;

    move-result-object p4

    invoke-virtual {p4}, LJ4/P;->b()LJ4/C;

    move-result-object v0

    const-string v4, "expandedProjection.type"

    invoke-static {v0, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LJ4/c;->b(LJ4/C;)LJ4/G;

    move-result-object v0

    invoke-static {v0}, LJ4/c;->i(LJ4/C;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p4}, LJ4/P;->a()I

    invoke-interface {v0}, LV3/a;->p()LV3/h;

    move-result-object p4

    invoke-virtual {p0, p4, p2}, LJ4/d;->a(LV3/h;LV3/h;)V

    invoke-static {v0}, LJ4/c;->i(LJ4/C;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, LJ4/c;->i(LJ4/C;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v0}, LV3/a;->p()LV3/h;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, LV3/a;->p()LV3/h;

    move-result-object p0

    invoke-static {p2, p0}, LR3/f;->l(LV3/h;LV3/h;)LV3/h;

    move-result-object p0

    :goto_0
    invoke-static {v0, v2, p0, v3}, LJ4/c;->q(LJ4/G;Ljava/util/List;LV3/h;I)LJ4/G;

    move-result-object v0

    :goto_1
    invoke-static {v0, p3}, LJ4/Z;->i(LJ4/G;Z)LJ4/G;

    move-result-object p0

    if-eqz p5, :cond_3

    iget-object p4, v1, LH4/v;->j:LX3/f;

    const-string p5, "descriptor.typeConstructor"

    invoke-static {p4, p5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p5, LC4/n;->b:LC4/n;

    iget-object p1, p1, Lw0/i;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p5, p4, p2, p1, p3}, LJ4/d;->q(LC4/o;LJ4/M;LV3/h;Ljava/util/List;Z)LJ4/G;

    move-result-object p1

    invoke-static {p0, p1}, LJ4/c;->y(LJ4/G;LJ4/G;)LJ4/G;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public h(LJ4/P;Lw0/i;LU3/O;I)LJ4/P;
    .locals 13

    move-object v6, p0

    move-object v7, p2

    move/from16 v8, p4

    const/16 v0, 0x64

    iget-object v1, v7, Lw0/i;->f:Ljava/lang/Object;

    check-cast v1, LH4/v;

    if-gt v8, v0, :cond_19

    invoke-virtual {p1}, LJ4/P;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p3 .. p3}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, LJ4/Z;->j(LU3/O;)LJ4/K;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, LJ4/P;->b()LJ4/C;

    move-result-object v0

    const-string v2, "underlyingProjection.type"

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v2

    const-string v3, "constructor"

    invoke-static {v2, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, LJ4/M;->e()LU3/g;

    move-result-object v2

    instance-of v3, v2, LU3/O;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v7, Lw0/i;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJ4/P;

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    const/4 v3, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_d

    invoke-virtual {p1}, LJ4/P;->b()LJ4/C;

    move-result-object v0

    invoke-virtual {v0}, LJ4/C;->B0()LJ4/b0;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LJ4/c;->b(LJ4/C;)LJ4/G;

    move-result-object v9

    invoke-static {v9}, LJ4/c;->i(LJ4/C;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, LN4/a;->f:LN4/a;

    invoke-static {v9, v0, v4, v4}, LJ4/Z;->c(LJ4/C;LE3/b;Lk4/o;LS4/j;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v9}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->e()LU3/g;

    move-result-object v1

    invoke-interface {v0}, LJ4/M;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    invoke-virtual {v9}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    instance-of v2, v1, LU3/O;

    if-eqz v2, :cond_3

    move-object v1, p1

    goto/16 :goto_4

    :cond_3
    instance-of v2, v1, LH4/v;

    if-eqz v2, :cond_8

    move-object v2, v1

    check-cast v2, LH4/v;

    invoke-virtual {p2, v2}, Lw0/i;->C(LH4/v;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, LJ4/Q;

    check-cast v2, LX3/p;

    invoke-virtual {v2}, LX3/p;->r()Ls4/f;

    move-result-object v1

    const-string v2, "Recursive type alias: "

    invoke-static {v1, v2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object v1

    invoke-direct {v0, v3, v1}, LJ4/Q;-><init>(ILJ4/C;)V

    goto/16 :goto_6

    :cond_4
    invoke-virtual {v9}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v5, 0x1

    if-ltz v5, :cond_5

    check-cast v10, LJ4/P;

    invoke-interface {v0}, LJ4/M;->g()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LU3/O;

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {p0, v10, p2, v5, v12}, LJ4/d;->h(LJ4/P;Lw0/i;LU3/O;I)LJ4/P;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v11

    goto :goto_1

    :cond_5
    invoke-static {}, Lr3/k;->i0()V

    throw v4

    :cond_6
    iget-object v0, v2, LH4/v;->j:LX3/f;

    invoke-virtual {v0}, LX3/f;->g()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LU3/O;

    invoke-interface {v4}, LU3/O;->a()LU3/O;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-static {v1, v3}, Lr3/j;->U0(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lr3/v;->h0(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v4

    new-instance v10, Lw0/i;

    const/4 v5, 0x3

    move-object v0, v10

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lw0/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v9}, LV3/a;->p()LV3/h;

    move-result-object v2

    invoke-virtual {v9}, LJ4/C;->z0()Z

    move-result v3

    add-int/lit8 v4, v8, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    invoke-virtual/range {v0 .. v5}, LJ4/d;->g(Lw0/i;LV3/h;ZIZ)LJ4/G;

    move-result-object v0

    invoke-virtual {p0, v9, p2, v8}, LJ4/d;->s(LJ4/G;Lw0/i;I)LJ4/G;

    move-result-object v1

    invoke-static {v0, v1}, LJ4/c;->y(LJ4/G;LJ4/G;)LJ4/G;

    move-result-object v0

    new-instance v1, LJ4/Q;

    invoke-virtual {p1}, LJ4/P;->a()I

    move-result v2

    invoke-direct {v1, v2, v0}, LJ4/Q;-><init>(ILJ4/C;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v9, p2, v8}, LJ4/d;->s(LJ4/G;Lw0/i;I)LJ4/G;

    move-result-object v0

    invoke-static {v0}, LJ4/X;->d(LJ4/C;)LJ4/X;

    invoke-virtual {v0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v5, 0x1

    if-ltz v5, :cond_a

    check-cast v2, LJ4/P;

    invoke-virtual {v2}, LJ4/P;->c()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v2}, LJ4/P;->b()LJ4/C;

    move-result-object v2

    const-string v6, "substitutedArgument.type"

    invoke-static {v2, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, LN4/a;->e:LN4/a;

    invoke-static {v2, v6, v4, v4}, LJ4/Z;->c(LJ4/C;LE3/b;Lk4/o;LS4/j;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v9}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJ4/P;

    invoke-virtual {v9}, LJ4/C;->q0()LJ4/M;

    move-result-object v2

    invoke-interface {v2}, LJ4/M;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU3/O;

    :cond_9
    move v5, v3

    goto :goto_3

    :cond_a
    invoke-static {}, Lr3/k;->i0()V

    throw v4

    :cond_b
    new-instance v1, LJ4/Q;

    invoke-virtual {p1}, LJ4/P;->a()I

    move-result v2

    invoke-direct {v1, v2, v0}, LJ4/Q;-><init>(ILJ4/C;)V

    :goto_4
    move-object v0, v1

    goto :goto_6

    :cond_c
    :goto_5
    move-object v0, p1

    :goto_6
    return-object v0

    :cond_d
    invoke-virtual {v2}, LJ4/P;->c()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static/range {p3 .. p3}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, LJ4/Z;->j(LU3/O;)LJ4/K;

    move-result-object v0

    return-object v0

    :cond_e
    invoke-virtual {v2}, LJ4/P;->b()LJ4/C;

    move-result-object v7

    invoke-virtual {v7}, LJ4/C;->B0()LJ4/b0;

    move-result-object v7

    invoke-virtual {v2}, LJ4/P;->a()I

    move-result v2

    const-string v8, "argument.projectionKind"

    invoke-static {v2, v8}, LB/a;->y(ILjava/lang/String;)V

    invoke-virtual {p1}, LJ4/P;->a()I

    move-result v8

    const-string v9, "underlyingProjection.projectionKind"

    invoke-static {v8, v9}, LB/a;->y(ILjava/lang/String;)V

    const-string v9, "substitutedArgument"

    const-string v10, "typeAlias"

    if-ne v8, v2, :cond_f

    goto :goto_7

    :cond_f
    if-ne v8, v3, :cond_10

    goto :goto_7

    :cond_10
    if-ne v2, v3, :cond_11

    move v2, v8

    goto :goto_7

    :cond_11
    invoke-static {v1, v10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_7
    if-nez p3, :cond_12

    goto :goto_8

    :cond_12
    invoke-interface/range {p3 .. p3}, LU3/O;->z()I

    move-result v5

    :goto_8
    if-nez v5, :cond_13

    move v5, v3

    :cond_13
    if-ne v5, v2, :cond_14

    goto :goto_9

    :cond_14
    if-ne v5, v3, :cond_15

    goto :goto_9

    :cond_15
    if-ne v2, v3, :cond_16

    move v2, v3

    goto :goto_9

    :cond_16
    invoke-static {v1, v10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_9
    invoke-interface {v0}, LV3/a;->p()LV3/h;

    move-result-object v1

    invoke-interface {v7}, LV3/a;->p()LV3/h;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, LJ4/d;->a(LV3/h;LV3/h;)V

    invoke-static {v7}, LJ4/c;->b(LJ4/C;)LJ4/G;

    move-result-object v1

    invoke-virtual {v0}, LJ4/C;->z0()Z

    move-result v5

    invoke-static {v1, v5}, LJ4/Z;->i(LJ4/G;Z)LJ4/G;

    move-result-object v1

    invoke-interface {v0}, LV3/a;->p()LV3/h;

    move-result-object v0

    invoke-static {v1}, LJ4/c;->i(LJ4/C;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_b

    :cond_17
    invoke-static {v1}, LJ4/c;->i(LJ4/C;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v1}, LV3/a;->p()LV3/h;

    move-result-object v0

    goto :goto_a

    :cond_18
    invoke-interface {v1}, LV3/a;->p()LV3/h;

    move-result-object v5

    invoke-static {v0, v5}, LR3/f;->l(LV3/h;LV3/h;)LV3/h;

    move-result-object v0

    :goto_a
    invoke-static {v1, v4, v0, v3}, LJ4/c;->q(LJ4/G;Ljava/util/List;LV3/h;I)LJ4/G;

    move-result-object v1

    :goto_b
    new-instance v0, LJ4/Q;

    invoke-direct {v0, v2, v1}, LJ4/Q;-><init>(ILJ4/C;)V

    return-object v0

    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    check-cast v1, LX3/p;

    invoke-virtual {v1}, LX3/p;->r()Ls4/f;

    move-result-object v1

    const-string v2, "Too deep recursion while expanding type alias "

    invoke-static {v1, v2}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public s(LJ4/G;Lw0/i;I)LJ4/G;
    .locals 8

    invoke-virtual {p1}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-virtual {p1}, LJ4/C;->m0()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    if-ltz v3, :cond_1

    check-cast v4, LJ4/P;

    invoke-interface {v0}, LJ4/M;->g()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LU3/O;

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p0, v4, p2, v3, v5}, LJ4/d;->h(LJ4/P;Lw0/i;LU3/O;I)LJ4/P;

    move-result-object v3

    invoke-virtual {v3}, LJ4/P;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, LJ4/Q;

    invoke-virtual {v3}, LJ4/P;->a()I

    move-result v7

    invoke-virtual {v3}, LJ4/P;->b()LJ4/C;

    move-result-object v3

    invoke-virtual {v4}, LJ4/P;->b()LJ4/C;

    move-result-object v4

    invoke-virtual {v4}, LJ4/C;->z0()Z

    move-result v4

    invoke-static {v3, v4}, LJ4/Z;->h(LJ4/C;Z)LJ4/C;

    move-result-object v3

    invoke-direct {v5, v7, v3}, LJ4/Q;-><init>(ILJ4/C;)V

    move-object v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_0

    :cond_1
    invoke-static {}, Lr3/k;->i0()V

    throw v5

    :cond_2
    const/4 p0, 0x2

    invoke-static {p1, v2, v5, p0}, LJ4/c;->q(LJ4/G;Ljava/util/List;LV3/h;I)LJ4/G;

    move-result-object p0

    return-object p0
.end method
