.class public final LC4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC4/o;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:[LC4/o;


# direct methods
.method public constructor <init>(Ljava/lang/String;[LC4/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC4/a;->b:Ljava/lang/String;

    iput-object p2, p0, LC4/a;->c:[LC4/o;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object p0, p0, LC4/a;->c:[LC4/o;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-interface {v3}, LC4/o;->a()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0, v3}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final b()Ljava/util/Set;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object p0, p0, LC4/a;->c:[LC4/o;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-interface {v3}, LC4/o;->b()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0, v3}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final c(Ls4/f;Lc4/b;)LU3/g;
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LC4/a;->c:[LC4/o;

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v3, p1, p2}, LC4/q;->c(Ls4/f;Lc4/b;)LU3/g;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v4, v3, LU3/h;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, LU3/h;

    invoke-interface {v4}, LU3/v;->w()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v1, v3

    :cond_2
    return-object v1
.end method

.method public final d(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LC4/a;->c:[LC4/o;

    array-length v0, p0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v3, p1, p2}, LC4/o;->d(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v1, v3}, LR3/f;->n(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_3

    sget-object v1, Lr3/t;->d:Lr3/t;

    goto :goto_1

    :cond_1
    aget-object p0, p0, v2

    invoke-interface {p0, p1, p2}, LC4/o;->d(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object v1, Lr3/r;->d:Lr3/r;

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final e(LC4/f;LE3/b;)Ljava/util/Collection;
    .locals 4

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LC4/a;->c:[LC4/o;

    array-length v0, p0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v3, p1, p2}, LC4/q;->e(LC4/f;LE3/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v1, v3}, LR3/f;->n(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_3

    sget-object v1, Lr3/t;->d:Lr3/t;

    goto :goto_1

    :cond_1
    aget-object p0, p0, v2

    invoke-interface {p0, p1, p2}, LC4/q;->e(LC4/f;LE3/b;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object v1, Lr3/r;->d:Lr3/r;

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final f()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, LC4/a;->c:[LC4/o;

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Lr3/r;->d:Lr3/r;

    goto :goto_0

    :cond_0
    new-instance v0, LU4/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LU4/n;-><init>(ILjava/lang/Object;)V

    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lw0/f;->r(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LC4/a;->c:[LC4/o;

    array-length v0, p0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v3, p1, p2}, LC4/o;->g(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v1, v3}, LR3/f;->n(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_3

    sget-object v1, Lr3/t;->d:Lr3/t;

    goto :goto_1

    :cond_1
    aget-object p0, p0, v2

    invoke-interface {p0, p1, p2}, LC4/o;->g(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object v1, Lr3/r;->d:Lr3/r;

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LC4/a;->b:Ljava/lang/String;

    return-object p0
.end method
