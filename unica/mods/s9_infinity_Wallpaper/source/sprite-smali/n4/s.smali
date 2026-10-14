.class public final Ln4/s;
.super Lt4/l;
.source "SourceFile"


# instance fields
.field public g:I

.field public h:I


# virtual methods
.method public final c()Lt4/b;
    .locals 3

    new-instance v0, Ln4/t;

    invoke-direct {v0, p0}, Ln4/t;-><init>(Ln4/s;)V

    iget v1, p0, Ln4/s;->g:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget p0, p0, Ln4/s;->h:I

    iput p0, v0, Ln4/t;->g:I

    iput v2, v0, Ln4/t;->f:I

    invoke-virtual {v0}, Ln4/t;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, LW4/m;

    invoke-direct {p0}, LW4/m;-><init>()V

    throw p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Ln4/s;

    invoke-direct {v0}, Lt4/l;-><init>()V

    new-instance v1, Ln4/t;

    invoke-direct {v1, p0}, Ln4/t;-><init>(Ln4/s;)V

    iget v2, p0, Ln4/s;->g:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget p0, p0, Ln4/s;->h:I

    iput p0, v1, Ln4/t;->g:I

    iput v3, v1, Ln4/t;->f:I

    invoke-virtual {v0, v1}, Ln4/s;->g(Ln4/t;)V

    return-object v0
.end method

.method public final d(Lt4/f;Lt4/i;)Lt4/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln4/t;->k:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ln4/t;

    invoke-direct {v1, p1, p2}, Ln4/t;-><init>(Lt4/f;Lt4/i;)V
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Ln4/s;->g(Ln4/t;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lt4/s;->d:Lt4/b;

    check-cast p2, Ln4/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ln4/s;->g(Ln4/t;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(Lt4/p;)Lt4/k;
    .locals 0

    check-cast p1, Ln4/t;

    invoke-virtual {p0, p1}, Ln4/s;->g(Ln4/t;)V

    return-object p0
.end method

.method public final g(Ln4/t;)V
    .locals 3

    sget-object v0, Ln4/t;->j:Ln4/t;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Ln4/t;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p1, Ln4/t;->g:I

    iget v2, p0, Ln4/s;->g:I

    or-int/2addr v1, v2

    iput v1, p0, Ln4/s;->g:I

    iput v0, p0, Ln4/s;->h:I

    :cond_1
    invoke-virtual {p0, p1}, Lt4/l;->f(Lt4/m;)V

    iget-object v0, p0, Lt4/k;->d:Lt4/e;

    iget-object p1, p1, Ln4/t;->e:Lt4/e;

    invoke-virtual {v0, p1}, Lt4/e;->h(Lt4/e;)Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lt4/k;->d:Lt4/e;

    return-void
.end method
