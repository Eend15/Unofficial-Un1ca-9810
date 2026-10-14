.class public final Ln4/Y;
.super Lt4/l;
.source "SourceFile"


# instance fields
.field public g:I

.field public h:I

.field public i:I

.field public j:Ln4/Q;

.field public k:I

.field public l:Ln4/Q;

.field public m:I


# virtual methods
.method public final c()Lt4/b;
    .locals 1

    invoke-virtual {p0}, Ln4/Y;->g()Ln4/Z;

    move-result-object p0

    invoke-virtual {p0}, Ln4/Z;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, LW4/m;

    invoke-direct {p0}, LW4/m;-><init>()V

    throw p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ln4/Y;

    invoke-direct {v0}, Lt4/l;-><init>()V

    sget-object v1, Ln4/Q;->w:Ln4/Q;

    iput-object v1, v0, Ln4/Y;->j:Ln4/Q;

    iput-object v1, v0, Ln4/Y;->l:Ln4/Q;

    invoke-virtual {p0}, Ln4/Y;->g()Ln4/Z;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln4/Y;->h(Ln4/Z;)V

    return-object v0
.end method

.method public final d(Lt4/f;Lt4/i;)Lt4/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln4/Z;->p:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ln4/Z;

    invoke-direct {v1, p1, p2}, Ln4/Z;-><init>(Lt4/f;Lt4/i;)V
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Ln4/Y;->h(Ln4/Z;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lt4/s;->d:Lt4/b;

    check-cast p2, Ln4/Z;
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

    invoke-virtual {p0, v0}, Ln4/Y;->h(Ln4/Z;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(Lt4/p;)Lt4/k;
    .locals 0

    check-cast p1, Ln4/Z;

    invoke-virtual {p0, p1}, Ln4/Y;->h(Ln4/Z;)V

    return-object p0
.end method

.method public final g()Ln4/Z;
    .locals 5

    new-instance v0, Ln4/Z;

    invoke-direct {v0, p0}, Ln4/Z;-><init>(Ln4/Y;)V

    iget v1, p0, Ln4/Y;->g:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Ln4/Y;->h:I

    iput v2, v0, Ln4/Z;->g:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Ln4/Y;->i:I

    iput v2, v0, Ln4/Z;->h:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, Ln4/Y;->j:Ln4/Q;

    iput-object v2, v0, Ln4/Z;->i:Ln4/Q;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget v2, p0, Ln4/Y;->k:I

    iput v2, v0, Ln4/Z;->j:I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget-object v2, p0, Ln4/Y;->l:Ln4/Q;

    iput-object v2, v0, Ln4/Z;->k:Ln4/Q;

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    or-int/lit8 v3, v3, 0x20

    :cond_5
    iget p0, p0, Ln4/Y;->m:I

    iput p0, v0, Ln4/Z;->l:I

    iput v3, v0, Ln4/Z;->f:I

    return-object v0
.end method

.method public final h(Ln4/Z;)V
    .locals 4

    sget-object v0, Ln4/Z;->o:Ln4/Z;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Ln4/Z;->f:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, Ln4/Z;->g:I

    iget v3, p0, Ln4/Y;->g:I

    or-int/2addr v2, v3

    iput v2, p0, Ln4/Y;->g:I

    iput v1, p0, Ln4/Y;->h:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p1, Ln4/Z;->h:I

    iget v3, p0, Ln4/Y;->g:I

    or-int/2addr v2, v3

    iput v2, p0, Ln4/Y;->g:I

    iput v1, p0, Ln4/Y;->i:I

    :cond_2
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Ln4/Z;->i:Ln4/Q;

    iget v2, p0, Ln4/Y;->g:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Ln4/Y;->j:Ln4/Q;

    sget-object v3, Ln4/Q;->w:Ln4/Q;

    if-eq v2, v3, :cond_3

    invoke-static {v2}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v2

    invoke-virtual {v2, v0}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    invoke-virtual {v2}, Ln4/P;->g()Ln4/Q;

    move-result-object v0

    iput-object v0, p0, Ln4/Y;->j:Ln4/Q;

    goto :goto_0

    :cond_3
    iput-object v0, p0, Ln4/Y;->j:Ln4/Q;

    :goto_0
    iget v0, p0, Ln4/Y;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/Y;->g:I

    :cond_4
    iget v0, p1, Ln4/Z;->f:I

    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    iget v1, p1, Ln4/Z;->j:I

    iget v3, p0, Ln4/Y;->g:I

    or-int/2addr v2, v3

    iput v2, p0, Ln4/Y;->g:I

    iput v1, p0, Ln4/Y;->k:I

    :cond_5
    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    iget-object v0, p1, Ln4/Z;->k:Ln4/Q;

    iget v2, p0, Ln4/Y;->g:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_6

    iget-object v2, p0, Ln4/Y;->l:Ln4/Q;

    sget-object v3, Ln4/Q;->w:Ln4/Q;

    if-eq v2, v3, :cond_6

    invoke-static {v2}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v2

    invoke-virtual {v2, v0}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    invoke-virtual {v2}, Ln4/P;->g()Ln4/Q;

    move-result-object v0

    iput-object v0, p0, Ln4/Y;->l:Ln4/Q;

    goto :goto_1

    :cond_6
    iput-object v0, p0, Ln4/Y;->l:Ln4/Q;

    :goto_1
    iget v0, p0, Ln4/Y;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/Y;->g:I

    :cond_7
    iget v0, p1, Ln4/Z;->f:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    iget v0, p1, Ln4/Z;->l:I

    iget v2, p0, Ln4/Y;->g:I

    or-int/2addr v1, v2

    iput v1, p0, Ln4/Y;->g:I

    iput v0, p0, Ln4/Y;->m:I

    :cond_8
    invoke-virtual {p0, p1}, Lt4/l;->f(Lt4/m;)V

    iget-object v0, p0, Lt4/k;->d:Lt4/e;

    iget-object p1, p1, Ln4/Z;->e:Lt4/e;

    invoke-virtual {v0, p1}, Lt4/e;->h(Lt4/e;)Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lt4/k;->d:Lt4/e;

    return-void
.end method
