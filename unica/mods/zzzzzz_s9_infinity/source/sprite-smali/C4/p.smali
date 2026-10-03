.class public abstract LC4/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC4/o;


# virtual methods
.method public a()Ljava/util/Set;
    .locals 3

    sget-object v0, LC4/f;->p:LC4/f;

    sget-object v1, LS4/c;->d:LS4/c;

    invoke-virtual {p0, v0, v1}, LC4/p;->e(LC4/f;LE3/b;)Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LX3/P;

    if-eqz v2, :cond_0

    check-cast v1, LX3/P;

    invoke-virtual {v1}, LX3/p;->r()Ls4/f;

    move-result-object v1

    const-string v2, "it.name"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 3

    sget-object v0, LC4/f;->q:LC4/f;

    sget-object v1, LS4/c;->d:LS4/c;

    invoke-virtual {p0, v0, v1}, LC4/p;->e(LC4/f;LE3/b;)Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LX3/P;

    if-eqz v2, :cond_0

    check-cast v1, LX3/P;

    invoke-virtual {v1}, LX3/p;->r()Ls4/f;

    move-result-object v1

    const-string v2, "it.name"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public c(Ls4/f;Lc4/b;)LU3/g;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "location"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public d(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public e(LC4/f;LE3/b;)Ljava/util/Collection;
    .locals 0

    const-string p0, "kindFilter"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "nameFilter"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public f()Ljava/util/Set;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public g(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method
