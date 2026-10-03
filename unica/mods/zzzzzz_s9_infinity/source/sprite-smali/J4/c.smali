.class public abstract LJ4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(I)V
    .locals 7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v2, 0x2

    if-eq p0, v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor"

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v6, "typeParameters"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_1
    aput-object v4, v3, v5

    goto :goto_2

    :pswitch_2
    const-string v6, "result"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_3
    const-string v6, "newContainingDeclaration"

    aput-object v6, v3, v5

    goto :goto_2

    :pswitch_4
    const-string v6, "originalSubstitution"

    aput-object v6, v3, v5

    :goto_2
    const-string v5, "substituteTypeParameters"

    const/4 v6, 0x1

    if-eq p0, v0, :cond_2

    aput-object v4, v3, v6

    goto :goto_3

    :cond_2
    aput-object v5, v3, v6

    :goto_3
    if-eq p0, v0, :cond_3

    aput-object v5, v3, v2

    :cond_3
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static final b(LJ4/C;)LJ4/G;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LJ4/C;->B0()LJ4/b0;

    move-result-object v0

    instance-of v1, v0, LJ4/G;

    if-eqz v1, :cond_0

    check-cast v0, LJ4/G;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "This is should be simple type: "

    invoke-static {p0, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final c(Ljava/util/ArrayList;Ljava/util/List;LR3/j;)LJ4/C;
    .locals 1

    new-instance v0, LJ4/L;

    invoke-direct {v0, p0}, LJ4/L;-><init>(Ljava/util/ArrayList;)V

    new-instance p0, LJ4/X;

    invoke-direct {p0, v0}, LJ4/X;-><init>(LJ4/U;)V

    invoke-static {p1}, Lr3/j;->t0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJ4/C;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, LJ4/X;->i(ILJ4/C;)LJ4/C;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, LR3/j;->n()LJ4/G;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final d(LM4/c;Ljava/util/HashSet;)LM4/c;
    .locals 9

    const/4 v0, 0x1

    const-string v1, "receiver"

    const-string v2, ", "

    const-string v3, "ClassicTypeSystemContext couldn\'t handle: "

    sget-object v4, LK4/f;->e:LK4/f;

    invoke-virtual {v4, p0}, LK4/f;->U(LM4/c;)LM4/f;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return-object v7

    :cond_0
    invoke-static {v5, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v6, v5, LJ4/M;

    if-eqz v6, :cond_15

    move-object v6, v5

    check-cast v6, LJ4/M;

    invoke-interface {v6}, LJ4/M;->e()LU3/g;

    move-result-object v6

    instance-of v8, v6, LU3/O;

    if-eqz v8, :cond_1

    check-cast v6, LU3/O;

    goto :goto_0

    :cond_1
    move-object v6, v7

    :goto_0
    if-eqz v6, :cond_3

    invoke-static {v6}, LK/I;->N(LU3/O;)LJ4/C;

    move-result-object v0

    invoke-static {v0, p1}, LJ4/c;->d(LM4/c;Ljava/util/HashSet;)LM4/c;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p0, v7

    goto/16 :goto_6

    :cond_2
    invoke-static {v4, p1}, LK4/h;->K(LK4/c;LM4/c;)Z

    move-result v0

    if-nez v0, :cond_d

    instance-of v0, p0, LM4/d;

    if-eqz v0, :cond_d

    check-cast p0, LM4/d;

    invoke-virtual {v4, p0}, LK4/f;->d0(LM4/d;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {v4, p1}, LK4/f;->a(LM4/c;)LM4/c;

    move-result-object p0

    goto/16 :goto_6

    :cond_3
    invoke-static {v5, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v6, v5, LJ4/M;

    if-eqz v6, :cond_14

    check-cast v5, LJ4/M;

    invoke-interface {v5}, LJ4/M;->e()LU3/g;

    move-result-object v5

    instance-of v6, v5, LU3/e;

    if-eqz v6, :cond_4

    check-cast v5, LU3/e;

    goto :goto_1

    :cond_4
    move-object v5, v7

    :goto_1
    const/4 v6, 0x0

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v5}, Lv4/j;->b(LU3/j;)Z

    move-result v5

    if-ne v5, v0, :cond_6

    move v6, v0

    :cond_6
    :goto_2
    if-eqz v6, :cond_13

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p0, LJ4/C;

    if-eqz v1, :cond_12

    move-object v1, p0

    check-cast v1, LJ4/C;

    sget v5, Lv4/j;->a:I

    invoke-virtual {v1}, LJ4/C;->q0()LJ4/M;

    move-result-object v5

    invoke-interface {v5}, LJ4/M;->e()LU3/g;

    move-result-object v5

    instance-of v6, v5, LU3/e;

    if-nez v6, :cond_7

    move-object v5, v7

    :cond_7
    check-cast v5, LU3/e;

    if-nez v5, :cond_8

    :goto_3
    move-object v5, v7

    goto :goto_4

    :cond_8
    invoke-interface {v5}, LU3/e;->s()LU3/t;

    move-result-object v5

    if-nez v5, :cond_9

    goto :goto_3

    :cond_9
    iget-object v5, v5, LU3/t;->b:LJ4/G;

    :goto_4
    if-nez v5, :cond_a

    move-object v0, v7

    goto :goto_5

    :cond_a
    invoke-static {v1}, LJ4/X;->d(LJ4/C;)LJ4/X;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, LJ4/X;->i(ILJ4/C;)LJ4/C;

    move-result-object v0

    :goto_5
    if-nez v0, :cond_b

    return-object v7

    :cond_b
    invoke-static {v0, p1}, LJ4/c;->d(LM4/c;Ljava/util/HashSet;)LM4/c;

    move-result-object p1

    if-nez p1, :cond_c

    return-object v7

    :cond_c
    invoke-static {v4, p0}, LK4/h;->K(LK4/c;LM4/c;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    move-object p0, p1

    goto :goto_6

    :cond_e
    invoke-static {v4, p1}, LK4/h;->K(LK4/c;LM4/c;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_6

    :cond_f
    instance-of v0, p1, LM4/d;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, LM4/d;

    instance-of v1, v0, LJ4/C;

    if-eqz v1, :cond_10

    check-cast v0, LJ4/C;

    invoke-static {v0}, LR3/j;->E(LJ4/C;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, LF3/t;->a:LF3/u;

    invoke-static {v0, p1, p0}, LB/a;->k(LF3/u;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    invoke-virtual {v4, p1}, LK4/f;->a(LM4/c;)LM4/c;

    move-result-object p0

    goto :goto_6

    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, LF3/t;->a:LF3/u;

    invoke-static {v0, p0, p1}, LB/a;->k(LF3/u;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_6
    return-object p0

    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, LF3/t;->a:LF3/u;

    invoke-static {v0, p1, p0}, LB/a;->k(LF3/u;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, LF3/t;->a:LF3/u;

    invoke-static {v0, p1, p0}, LB/a;->k(LF3/u;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final e(LJ4/C;)LJ4/C;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LJ4/a0;

    if-eqz v0, :cond_0

    check-cast p0, LJ4/a0;

    invoke-interface {p0}, LJ4/a0;->k0()LJ4/C;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static f(LK4/b;LM4/d;LJ4/c;)Z
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LK4/b;->g:LK4/c;

    invoke-interface {v0, p1}, LK4/c;->w(LM4/d;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, LK4/c;->d0(LM4/d;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_0
    invoke-interface {v0, p1}, LK4/c;->o(LM4/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0}, LK4/b;->b()V

    iget-object v1, p0, LK4/b;->b:Ljava/util/ArrayDeque;

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v3, p0, LK4/b;->c:LS4/j;

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    iget v4, v3, LS4/j;->e:I

    const/16 v5, 0x3e8

    if-gt v4, v5, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LM4/d;

    const-string v5, "current"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, LS4/j;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0, v4}, LK4/c;->d0(LM4/d;)Z

    move-result v5

    sget-object v6, LJ4/e;->c:LJ4/e;

    if-eqz v5, :cond_4

    move-object v5, v6

    goto :goto_1

    :cond_4
    move-object v5, p2

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v0, v4}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v4

    invoke-interface {v0, v4}, LK4/c;->K(LM4/f;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LM4/c;

    invoke-virtual {v5, p0, v6}, LJ4/c;->w(LK4/b;LM4/c;)LM4/d;

    move-result-object v6

    invoke-interface {v0, v6}, LK4/c;->w(LM4/d;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0, v6}, LK4/c;->d0(LM4/d;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    invoke-interface {v0, v6}, LK4/c;->o(LM4/c;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    invoke-virtual {p0}, LK4/b;->a()V

    goto :goto_4

    :cond_9
    invoke-virtual {v1, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
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

    :cond_b
    invoke-virtual {p0}, LK4/b;->a()V

    const/4 v2, 0x0

    :cond_c
    :goto_4
    return v2
.end method

.method public static final g(LJ4/b0;LJ4/C;)LJ4/b0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LJ4/c;->e(LJ4/C;)LJ4/C;

    move-result-object p1

    invoke-static {p0, p1}, LJ4/c;->z(LJ4/b0;LJ4/C;)LJ4/b0;

    move-result-object p0

    return-object p0
.end method

.method public static h(LK4/b;LM4/d;LM4/f;)Z
    .locals 2

    iget-object v0, p0, LK4/b;->g:LK4/c;

    invoke-interface {v0, p1}, LK4/c;->z(LM4/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {v0, p1}, LK4/c;->d0(LM4/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-boolean p0, p0, LK4/b;->e:Z

    if-eqz p0, :cond_2

    invoke-interface {v0, p1}, LK4/c;->G(LM4/d;)V

    :cond_2
    invoke-interface {v0, p1}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object p0

    invoke-interface {v0, p0, p2}, LK4/c;->J(LM4/f;LM4/f;)Z

    move-result p0

    return p0
.end method

.method public static final i(LJ4/C;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LJ4/C;->B0()LJ4/b0;

    move-result-object p0

    instance-of v0, p0, LJ4/p;

    if-nez v0, :cond_1

    instance-of v0, p0, LJ4/w;

    if-eqz v0, :cond_0

    check-cast p0, LJ4/w;

    invoke-virtual {p0}, LJ4/w;->F0()LJ4/G;

    move-result-object p0

    instance-of p0, p0, LJ4/p;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final j(LJ4/C;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LJ4/C;->B0()LJ4/b0;

    move-result-object p0

    instance-of p0, p0, LJ4/w;

    return p0
.end method

.method public static final k(LJ4/C;)LJ4/G;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LJ4/C;->B0()LJ4/b0;

    move-result-object p0

    instance-of v0, p0, LJ4/w;

    if-eqz v0, :cond_0

    check-cast p0, LJ4/w;

    iget-object p0, p0, LJ4/w;->e:LJ4/G;

    goto :goto_0

    :cond_0
    instance-of v0, p0, LJ4/G;

    if-eqz v0, :cond_1

    check-cast p0, LJ4/G;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static l(LJ4/b0;Z)LJ4/l;
    .locals 9

    const-string v0, "type"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LJ4/l;

    if-eqz v0, :cond_0

    check-cast p0, LJ4/l;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    instance-of v0, v0, LU3/O;

    if-nez v0, :cond_1

    instance-of v0, p0, LK4/i;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->e()LU3/g;

    move-result-object v0

    instance-of v0, v0, LU3/O;

    if-eqz v0, :cond_2

    invoke-static {p0}, LJ4/Z;->e(LJ4/C;)Z

    move-result v0

    goto :goto_0

    :cond_2
    sget-object v7, LK4/f;->e:LK4/f;

    new-instance v0, LK4/b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v8, 0x1c

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, LK4/b;-><init>(ZZZLK4/g;LK4/f;LK4/c;I)V

    invoke-static {p0}, LJ4/c;->k(LJ4/C;)LJ4/G;

    move-result-object v1

    sget-object v2, LJ4/e;->b:LJ4/e;

    invoke-static {v0, v1, v2}, LJ4/c;->f(LK4/b;LM4/d;LJ4/c;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    instance-of v0, p0, LJ4/w;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, LJ4/w;

    iget-object v1, v0, LJ4/w;->e:LJ4/G;

    invoke-virtual {v1}, LJ4/C;->q0()LJ4/M;

    move-result-object v1

    iget-object v0, v0, LJ4/w;->f:LJ4/G;

    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-static {v1, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, LJ4/l;

    invoke-static {p0}, LJ4/c;->k(LJ4/C;)LJ4/G;

    move-result-object p0

    invoke-direct {v0, p0, p1}, LJ4/l;-><init>(LJ4/G;Z)V

    move-object p0, v0

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static final m(LJ4/b0;Z)LJ4/b0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LJ4/c;->l(LJ4/b0;Z)LJ4/l;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {p0}, LJ4/c;->n(LJ4/b0;)LJ4/G;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LJ4/b0;->C0(Z)LJ4/b0;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static final n(LJ4/b0;)LJ4/G;
    .locals 7

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    instance-of v0, p0, LJ4/B;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, LJ4/B;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, LJ4/B;->b:Ljava/util/LinkedHashSet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LJ4/C;

    invoke-static {v5}, LJ4/Z;->e(LJ4/C;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, LJ4/C;->B0()LJ4/b0;

    move-result-object v4

    invoke-static {v4, v3}, LJ4/c;->m(LJ4/b0;Z)LJ4/b0;

    move-result-object v5

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    move-object v2, v1

    goto :goto_3

    :cond_4
    iget-object p0, p0, LJ4/B;->a:LJ4/C;

    if-nez p0, :cond_5

    move-object p0, v1

    goto :goto_2

    :cond_5
    invoke-static {p0}, LJ4/Z;->e(LJ4/C;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, LJ4/C;->B0()LJ4/b0;

    move-result-object p0

    invoke-static {p0, v3}, LJ4/c;->m(LJ4/b0;Z)LJ4/b0;

    move-result-object p0

    :cond_6
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    new-instance v2, LJ4/B;

    invoke-direct {v2, v0}, LJ4/B;-><init>(Ljava/util/AbstractCollection;)V

    iput-object p0, v2, LJ4/B;->a:LJ4/C;

    :goto_3
    if-nez v2, :cond_7

    return-object v1

    :cond_7
    invoke-virtual {v2}, LJ4/B;->b()LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public static final o(LJ4/G;Ljava/util/List;LV3/h;)LJ4/G;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newArguments"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newAnnotations"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, LV3/a;->p()LV3/h;

    move-result-object v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, LJ4/G;->G0(LV3/h;)LJ4/G;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    invoke-virtual {p0}, LJ4/C;->z0()Z

    move-result p0

    invoke-static {v0, p2, p1, p0}, LJ4/d;->p(LJ4/M;LV3/h;Ljava/util/List;Z)LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public static p(LJ4/C;Ljava/util/List;LV3/h;I)LJ4/C;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-interface {p0}, LV3/a;->p()LV3/h;

    move-result-object p2

    :cond_0
    const-string p3, "<this>"

    invoke-static {p0, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "newAnnotations"

    invoke-static {p2, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p3

    if-ne p1, p3, :cond_2

    :cond_1
    invoke-interface {p0}, LV3/a;->p()LV3/h;

    move-result-object p3

    if-ne p2, p3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LJ4/C;->B0()LJ4/b0;

    move-result-object p0

    instance-of p3, p0, LJ4/w;

    if-eqz p3, :cond_3

    check-cast p0, LJ4/w;

    iget-object p3, p0, LJ4/w;->e:LJ4/G;

    invoke-static {p3, p1, p2}, LJ4/c;->o(LJ4/G;Ljava/util/List;LV3/h;)LJ4/G;

    move-result-object p3

    iget-object p0, p0, LJ4/w;->f:LJ4/G;

    invoke-static {p0, p1, p2}, LJ4/c;->o(LJ4/G;Ljava/util/List;LV3/h;)LJ4/G;

    move-result-object p0

    invoke-static {p3, p0}, LJ4/d;->i(LJ4/G;LJ4/G;)LJ4/b0;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of p3, p0, LJ4/G;

    if-eqz p3, :cond_4

    check-cast p0, LJ4/G;

    invoke-static {p0, p1, p2}, LJ4/c;->o(LJ4/G;Ljava/util/List;LV3/h;)LJ4/G;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_4
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static synthetic q(LJ4/G;Ljava/util/List;LV3/h;I)LJ4/G;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-interface {p0}, LV3/a;->p()LV3/h;

    move-result-object p2

    :cond_1
    invoke-static {p0, p1, p2}, LJ4/c;->o(LJ4/G;Ljava/util/List;LV3/h;)LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public static final r(LU3/O;)LJ4/C;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object v0

    const-string v1, "this.containingDeclaration"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, LU3/h;

    const-string v2, "upperBounds"

    const-string v3, "it.typeConstructor"

    if-eqz v1, :cond_1

    check-cast v0, LU3/h;

    invoke-interface {v0}, LU3/g;->E()LJ4/M;

    move-result-object v0

    invoke-interface {v0}, LJ4/M;->g()Ljava/util/List;

    move-result-object v0

    const-string v1, "descriptor.typeConstructor.parameters"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LU3/O;

    invoke-interface {v4}, LU3/g;->E()LJ4/M;

    move-result-object v4

    invoke-static {v4, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p0}, LU3/O;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lz4/e;->e(LU3/j;)LR3/j;

    move-result-object p0

    invoke-static {v1, v0, p0}, LJ4/c;->c(Ljava/util/ArrayList;Ljava/util/List;LR3/j;)LJ4/C;

    move-result-object p0

    goto :goto_2

    :cond_1
    instance-of v1, v0, LU3/s;

    if-eqz v1, :cond_3

    check-cast v0, LU3/s;

    invoke-interface {v0}, LU3/a;->q()Ljava/util/List;

    move-result-object v0

    const-string v1, "descriptor.typeParameters"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LU3/O;

    invoke-interface {v4}, LU3/g;->E()LJ4/M;

    move-result-object v4

    invoke-static {v4, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p0}, LU3/O;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lz4/e;->e(LU3/j;)LR3/j;

    move-result-object p0

    invoke-static {v1, v0, p0}, LJ4/c;->c(Ljava/util/ArrayList;Ljava/util/List;LR3/j;)LJ4/C;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported descriptor type to build star projection type based on type parameters of it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(LK4/c;LM4/d;LM4/d;)Z
    .locals 8

    invoke-interface {p0, p1}, LK4/c;->v(LM4/c;)I

    move-result v0

    invoke-interface {p0, p2}, LK4/c;->v(LM4/c;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    invoke-interface {p0, p1}, LK4/c;->d0(LM4/d;)Z

    move-result v0

    invoke-interface {p0, p2}, LK4/c;->d0(LM4/d;)Z

    move-result v1

    if-ne v0, v1, :cond_9

    invoke-interface {p0, p1}, LK4/c;->i0(LM4/d;)LJ4/l;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p0, p2}, LK4/c;->i0(LM4/d;)LJ4/l;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-ne v0, v3, :cond_9

    invoke-interface {p0, p1}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v0

    invoke-interface {p0, p2}, LK4/c;->O(LM4/d;)LJ4/M;

    move-result-object v3

    invoke-interface {p0, v0, v3}, LK4/c;->J(LM4/f;LM4/f;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    invoke-interface {p0, p1, p2}, LK4/c;->g(LM4/d;LM4/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-interface {p0, p1}, LK4/c;->v(LM4/c;)I

    move-result v0

    if-lez v0, :cond_8

    move v3, v2

    :goto_2
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, p1, v3}, LK4/c;->c(LM4/c;I)LJ4/P;

    move-result-object v5

    invoke-interface {p0, p2, v3}, LK4/c;->c(LM4/c;I)LJ4/P;

    move-result-object v3

    invoke-interface {p0, v5}, LK4/c;->N(LJ4/P;)Z

    move-result v6

    invoke-interface {p0, v3}, LK4/c;->N(LJ4/P;)Z

    move-result v7

    if-eq v6, v7, :cond_4

    return v2

    :cond_4
    invoke-interface {p0, v5}, LK4/c;->N(LJ4/P;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {p0, v5}, LK4/c;->f(LJ4/P;)I

    move-result v6

    invoke-interface {p0, v3}, LK4/c;->f(LJ4/P;)I

    move-result v7

    if-eq v6, v7, :cond_5

    return v2

    :cond_5
    invoke-interface {p0, v5}, LK4/c;->W(LJ4/P;)LJ4/b0;

    move-result-object v5

    invoke-interface {p0, v3}, LK4/c;->W(LJ4/P;)LJ4/b0;

    move-result-object v3

    invoke-static {p0, v5, v3}, LJ4/c;->t(LK4/c;LM4/c;LM4/c;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    if-lt v4, v0, :cond_7

    goto :goto_3

    :cond_7
    move v3, v4

    goto :goto_2

    :cond_8
    :goto_3
    return v1

    :cond_9
    :goto_4
    return v2
.end method

.method public static t(LK4/c;LM4/c;LM4/c;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    invoke-interface {p0, p1}, LK4/c;->i(LM4/c;)LJ4/G;

    move-result-object v1

    invoke-interface {p0, p2}, LK4/c;->i(LM4/c;)LJ4/G;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-static {p0, v1, v2}, LJ4/c;->s(LK4/c;LM4/d;LM4/d;)Z

    move-result p0

    return p0

    :cond_1
    invoke-interface {p0, p1}, LK4/c;->e(LM4/c;)LJ4/w;

    move-result-object p1

    invoke-interface {p0, p2}, LK4/c;->e(LM4/c;)LJ4/w;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p0, p1}, LK4/c;->Q(LJ4/w;)LJ4/G;

    move-result-object v2

    invoke-interface {p0, p2}, LK4/c;->Q(LJ4/w;)LJ4/G;

    move-result-object v3

    invoke-static {p0, v2, v3}, LJ4/c;->s(LK4/c;LM4/d;LM4/d;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, p1}, LK4/c;->R(LJ4/w;)LJ4/G;

    move-result-object p1

    invoke-interface {p0, p2}, LK4/c;->R(LJ4/w;)LJ4/G;

    move-result-object p2

    invoke-static {p0, p1, p2}, LJ4/c;->s(LK4/c;LM4/d;LM4/d;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    return v1
.end method

.method public static u(Ljava/util/List;LJ4/U;LU3/j;Ljava/util/ArrayList;)LJ4/X;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    invoke-static {p0, p1, p2, p3, v0}, LJ4/c;->v(Ljava/util/List;LJ4/U;LU3/j;Ljava/util/ArrayList;[Z)LJ4/X;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Substitution failed"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    const/4 p0, 0x3

    invoke-static {p0}, LJ4/c;->a(I)V

    throw v0

    :cond_2
    const/4 p0, 0x2

    invoke-static {p0}, LJ4/c;->a(I)V

    throw v0

    :cond_3
    const/4 p0, 0x1

    invoke-static {p0}, LJ4/c;->a(I)V

    throw v0
.end method

.method public static v(Ljava/util/List;LJ4/U;LU3/j;Ljava/util/ArrayList;[Z)LJ4/X;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    if-eqz p2, :cond_a

    if-eqz v1, :cond_9

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    move v8, v13

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v14, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, LU3/O;

    invoke-interface {v15}, LV3/a;->p()LV3/h;

    move-result-object v4

    invoke-interface {v15}, LU3/O;->i0()Z

    move-result v5

    invoke-interface {v15}, LU3/O;->z()I

    move-result v6

    invoke-interface {v15}, LU3/j;->r()Ls4/f;

    move-result-object v7

    add-int/lit8 v16, v8, 0x1

    invoke-interface {v15}, LU3/O;->H()LI4/o;

    move-result-object v9

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v9}, LX3/U;->J0(LU3/j;LV3/h;ZILs4/f;ILI4/o;)LX3/U;

    move-result-object v3

    invoke-interface {v15}, LU3/g;->E()LJ4/M;

    move-result-object v4

    new-instance v5, LJ4/Q;

    invoke-virtual {v3}, LX3/k;->n()LJ4/G;

    move-result-object v6

    invoke-direct {v5, v14, v6}, LJ4/Q;-><init>(ILJ4/C;)V

    invoke-virtual {v10, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v8, v16

    goto :goto_0

    :cond_0
    new-instance v1, LJ4/N;

    invoke-direct {v1, v10, v13}, LJ4/N;-><init>(Ljava/util/Map;Z)V

    invoke-static {v0, v1}, LJ4/X;->e(LJ4/U;LJ4/U;)LJ4/X;

    move-result-object v3

    new-instance v4, LJ4/T;

    invoke-direct {v4, v0}, LJ4/T;-><init>(LJ4/U;)V

    invoke-static {v4, v1}, LJ4/X;->e(LJ4/U;LJ4/U;)LJ4/X;

    move-result-object v0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LU3/O;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LX3/U;

    invoke-interface {v4}, LU3/O;->getUpperBounds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "Type parameter descriptor is already initialized: "

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LJ4/C;

    invoke-virtual {v6}, LJ4/C;->q0()LJ4/M;

    move-result-object v8

    invoke-interface {v8}, LJ4/M;->e()LU3/g;

    move-result-object v8

    instance-of v9, v8, LU3/O;

    if-eqz v9, :cond_1

    check-cast v8, LU3/O;

    const-string v9, "typeParameter"

    invoke-static {v8, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v2, v2}, LK/I;->T(LU3/O;LJ4/M;Ljava/util/Set;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v3

    goto :goto_3

    :cond_1
    move-object v8, v0

    :goto_3
    const/4 v9, 0x3

    invoke-virtual {v8, v9, v6}, LJ4/X;->i(ILJ4/C;)LJ4/C;

    move-result-object v8

    if-nez v8, :cond_2

    return-object v2

    :cond_2
    if-eq v8, v6, :cond_3

    if-eqz p4, :cond_3

    aput-boolean v14, p4, v13

    :cond_3
    iget-boolean v6, v5, LX3/U;->o:Z

    if-nez v6, :cond_5

    invoke-static {v8}, LJ4/c;->i(LJ4/C;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    iget-object v6, v5, LX3/U;->n:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, LX3/U;->L0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-boolean v4, v5, LX3/U;->o:Z

    if-nez v4, :cond_7

    iput-boolean v14, v5, LX3/U;->o:Z

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, LX3/U;->L0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-object v3

    :cond_9
    const/16 v0, 0x8

    invoke-static {v0}, LJ4/c;->a(I)V

    throw v2

    :cond_a
    const/4 v0, 0x7

    invoke-static {v0}, LJ4/c;->a(I)V

    throw v2

    :cond_b
    const/4 v0, 0x6

    invoke-static {v0}, LJ4/c;->a(I)V

    throw v2
.end method

.method public static final x(LJ4/C;)LJ4/G;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LJ4/C;->B0()LJ4/b0;

    move-result-object p0

    instance-of v0, p0, LJ4/w;

    if-eqz v0, :cond_0

    check-cast p0, LJ4/w;

    iget-object p0, p0, LJ4/w;->f:LJ4/G;

    goto :goto_0

    :cond_0
    instance-of v0, p0, LJ4/G;

    if-eqz v0, :cond_1

    check-cast p0, LJ4/G;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static final y(LJ4/G;LJ4/G;)LJ4/G;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abbreviatedType"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LJ4/c;->i(LJ4/C;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, LJ4/a;

    invoke-direct {v0, p0, p1}, LJ4/a;-><init>(LJ4/G;LJ4/G;)V

    return-object v0
.end method

.method public static final z(LJ4/b0;LJ4/C;)LJ4/b0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, LJ4/G;

    if-eqz v0, :cond_1

    new-instance v0, LJ4/I;

    check-cast p0, LJ4/G;

    invoke-direct {v0, p0, p1}, LJ4/I;-><init>(LJ4/G;LJ4/C;)V

    goto :goto_0

    :cond_1
    instance-of v0, p0, LJ4/w;

    if-eqz v0, :cond_2

    new-instance v0, LJ4/y;

    check-cast p0, LJ4/w;

    invoke-direct {v0, p0, p1}, LJ4/y;-><init>(LJ4/w;LJ4/C;)V

    :goto_0
    return-object v0

    :cond_2
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method


# virtual methods
.method public abstract w(LK4/b;LM4/c;)LM4/d;
.end method
