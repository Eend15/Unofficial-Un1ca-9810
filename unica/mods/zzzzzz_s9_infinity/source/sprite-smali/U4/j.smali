.class public abstract LU4/j;
.super LU4/k;
.source "SourceFile"


# direct methods
.method public static c0(LU4/i;I)LU4/i;
    .locals 1

    if-ltz p1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, LU4/d;

    if-eqz v0, :cond_1

    check-cast p0, LU4/d;

    invoke-interface {p0, p1}, LU4/d;->a(I)LU4/i;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, LU4/c;

    invoke-direct {v0, p0, p1}, LU4/c;-><init>(LU4/i;I)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_2
    const-string p0, "Requested element count "

    const-string v0, " is less than zero."

    invoke-static {p1, p0, v0}, LB/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final d0(LU4/i;)LU4/g;
    .locals 3

    sget-object v0, LU4/m;->e:LU4/m;

    instance-of v1, p0, LU4/q;

    if-eqz v1, :cond_0

    check-cast p0, LU4/q;

    new-instance v1, LU4/g;

    iget-object v2, p0, LU4/q;->a:LU4/i;

    iget-object p0, p0, LU4/q;->b:LE3/b;

    invoke-direct {v1, v2, p0, v0}, LU4/g;-><init>(LU4/i;LE3/b;LE3/b;)V

    goto :goto_0

    :cond_0
    new-instance v1, LU4/g;

    sget-object v2, LU4/m;->f:LU4/m;

    invoke-direct {v1, p0, v2, v0}, LU4/g;-><init>(LU4/i;LE3/b;LE3/b;)V

    :goto_0
    return-object v1
.end method

.method public static e0(LE3/b;Ljava/lang/Object;)LU4/i;
    .locals 3

    if-nez p1, :cond_0

    sget-object p0, LU4/e;->a:LU4/e;

    goto :goto_0

    :cond_0
    new-instance v0, LB3/h;

    new-instance v1, LC4/g;

    const/16 v2, 0x1b

    invoke-direct {v1, v2, p1}, LC4/g;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1, p0}, LB3/h;-><init>(LE3/a;LE3/b;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static f0(LU4/i;LE3/b;)LU4/q;
    .locals 1

    const-string v0, "transform"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LU4/q;

    invoke-direct {v0, p0, p1}, LU4/q;-><init>(LU4/i;LE3/b;)V

    return-object v0
.end method

.method public static g0(LU4/i;LE3/b;)LU4/f;
    .locals 2

    new-instance v0, LU4/q;

    invoke-direct {v0, p0, p1}, LU4/q;-><init>(LU4/i;LE3/b;)V

    sget-object p0, LU4/m;->g:LU4/m;

    new-instance p1, LU4/f;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, LU4/f;-><init>(LU4/i;ZLE3/b;)V

    return-object p1
.end method

.method public static h0(LU4/i;)Ljava/util/List;
    .locals 2

    invoke-interface {p0}, LU4/i;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method
