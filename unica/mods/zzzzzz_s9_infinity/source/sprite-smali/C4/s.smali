.class public final LC4/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC4/o;


# instance fields
.field public final b:LC4/o;

.field public final c:LJ4/X;

.field public d:Ljava/util/HashMap;

.field public final e:Lq3/j;


# direct methods
.method public constructor <init>(LC4/o;LJ4/X;)V
    .locals 1

    const-string v0, "workerScope"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "givenSubstitutor"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC4/s;->b:LC4/o;

    invoke-virtual {p2}, LJ4/X;->f()LJ4/U;

    move-result-object p1

    const-string p2, "givenSubstitutor.substitution"

    invoke-static {p1, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lp4/g;->a0(LJ4/U;)LJ4/U;

    move-result-object p1

    new-instance p2, LJ4/X;

    invoke-direct {p2, p1}, LJ4/X;-><init>(LJ4/U;)V

    iput-object p2, p0, LC4/s;->c:LJ4/X;

    new-instance p1, LC4/g;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    new-instance p2, Lq3/j;

    invoke-direct {p2, p1}, Lq3/j;-><init>(LE3/a;)V

    iput-object p2, p0, LC4/s;->e:Lq3/j;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, LC4/s;->b:LC4/o;

    invoke-interface {p0}, LC4/o;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, LC4/s;->b:LC4/o;

    invoke-interface {p0}, LC4/o;->b()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ls4/f;Lc4/b;)LU3/g;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LC4/s;->b:LC4/o;

    invoke-interface {v0, p1, p2}, LC4/q;->c(Ls4/f;Lc4/b;)LU3/g;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LC4/s;->h(LU3/j;)LU3/j;

    move-result-object p0

    check-cast p0, LU3/g;

    :goto_0
    return-object p0
.end method

.method public final d(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LC4/s;->b:LC4/o;

    invoke-interface {v0, p1, p2}, LC4/o;->d(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, LC4/s;->i(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final e(LC4/f;LE3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LC4/s;->e:Lq3/j;

    invoke-virtual {p0}, Lq3/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final f()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, LC4/s;->b:LC4/o;

    invoke-interface {p0}, LC4/o;->f()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LC4/s;->b:LC4/o;

    invoke-interface {v0, p1, p2}, LC4/o;->g(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, LC4/s;->i(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final h(LU3/j;)LU3/j;
    .locals 2

    iget-object v0, p0, LC4/s;->c:LJ4/X;

    iget-object v1, v0, LJ4/X;->a:LJ4/U;

    invoke-virtual {v1}, LJ4/U;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    iget-object v1, p0, LC4/s;->d:Ljava/util/HashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, LC4/s;->d:Ljava/util/HashMap;

    :cond_1
    iget-object p0, p0, LC4/s;->d:Ljava/util/HashMap;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    instance-of v1, p1, LU3/N;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, LU3/N;

    invoke-interface {v1, v0}, LU3/N;->l(LJ4/X;)LU3/k;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "We expect that no conflict should happen while substitution is guaranteed to generate invariant projection, but "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " substitution fails"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    const-string p0, "Unknown descriptor in scope: "

    invoke-static {p1, p0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    check-cast v1, LU3/j;

    return-object v1
.end method

.method public final i(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3

    iget-object v0, p0, LC4/s;->c:LJ4/X;

    iget-object v0, v0, LJ4/X;->a:LJ4/U;

    invoke-virtual {v0}, LJ4/U;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-instance v1, Ljava/util/LinkedHashSet;

    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    goto :goto_0

    :cond_2
    div-int/lit8 v2, v0, 0x3

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    :goto_0
    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU3/j;

    invoke-virtual {p0, v0}, LC4/s;->h(LU3/j;)LU3/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v1
.end method
