.class public final Ln4/D;
.super Lt4/l;
.source "SourceFile"


# instance fields
.field public g:I

.field public h:Ln4/L;

.field public i:Ln4/K;

.field public j:Ln4/C;

.field public k:Ljava/util/List;


# direct methods
.method public static h()Ln4/D;
    .locals 2

    new-instance v0, Ln4/D;

    invoke-direct {v0}, Lt4/l;-><init>()V

    sget-object v1, Ln4/L;->h:Ln4/L;

    iput-object v1, v0, Ln4/D;->h:Ln4/L;

    sget-object v1, Ln4/K;->h:Ln4/K;

    iput-object v1, v0, Ln4/D;->i:Ln4/K;

    sget-object v1, Ln4/C;->n:Ln4/C;

    iput-object v1, v0, Ln4/D;->j:Ln4/C;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/D;->k:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final c()Lt4/b;
    .locals 1

    invoke-virtual {p0}, Ln4/D;->g()Ln4/E;

    move-result-object p0

    invoke-virtual {p0}, Ln4/E;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, LW4/m;

    invoke-direct {p0}, LW4/m;-><init>()V

    throw p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ln4/D;->h()Ln4/D;

    move-result-object v0

    invoke-virtual {p0}, Ln4/D;->g()Ln4/E;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln4/D;->i(Ln4/E;)V

    return-object v0
.end method

.method public final d(Lt4/f;Lt4/i;)Lt4/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln4/E;->n:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ln4/E;

    invoke-direct {v1, p1, p2}, Ln4/E;-><init>(Lt4/f;Lt4/i;)V
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Ln4/D;->i(Ln4/E;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lt4/s;->d:Lt4/b;

    check-cast p2, Ln4/E;
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

    invoke-virtual {p0, v0}, Ln4/D;->i(Ln4/E;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(Lt4/p;)Lt4/k;
    .locals 0

    check-cast p1, Ln4/E;

    invoke-virtual {p0, p1}, Ln4/D;->i(Ln4/E;)V

    return-object p0
.end method

.method public final g()Ln4/E;
    .locals 5

    new-instance v0, Ln4/E;

    invoke-direct {v0, p0}, Ln4/E;-><init>(Ln4/D;)V

    iget v1, p0, Ln4/D;->g:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Ln4/D;->h:Ln4/L;

    iput-object v2, v0, Ln4/E;->g:Ln4/L;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, Ln4/D;->i:Ln4/K;

    iput-object v2, v0, Ln4/E;->h:Ln4/K;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, Ln4/D;->j:Ln4/C;

    iput-object v2, v0, Ln4/E;->i:Ln4/C;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Ln4/D;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/D;->k:Ljava/util/List;

    iget v1, p0, Ln4/D;->g:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Ln4/D;->g:I

    :cond_3
    iget-object p0, p0, Ln4/D;->k:Ljava/util/List;

    iput-object p0, v0, Ln4/E;->j:Ljava/util/List;

    iput v3, v0, Ln4/E;->f:I

    return-object v0
.end method

.method public final i(Ln4/E;)V
    .locals 5

    sget-object v0, Ln4/E;->m:Ln4/E;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Ln4/E;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Ln4/E;->g:Ln4/L;

    iget v2, p0, Ln4/D;->g:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Ln4/D;->h:Ln4/L;

    sget-object v3, Ln4/L;->h:Ln4/L;

    if-eq v2, v3, :cond_1

    new-instance v3, Ln4/m;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ln4/m;-><init>(I)V

    sget-object v4, Lt4/t;->e:Lt4/J;

    iput-object v4, v3, Ln4/m;->g:Ljava/util/List;

    invoke-virtual {v3, v2}, Ln4/m;->l(Ln4/L;)V

    invoke-virtual {v3, v0}, Ln4/m;->l(Ln4/L;)V

    invoke-virtual {v3}, Ln4/m;->h()Ln4/L;

    move-result-object v0

    iput-object v0, p0, Ln4/D;->h:Ln4/L;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Ln4/D;->h:Ln4/L;

    :goto_0
    iget v0, p0, Ln4/D;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/D;->g:I

    :cond_2
    iget v0, p1, Ln4/E;->f:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Ln4/E;->h:Ln4/K;

    iget v2, p0, Ln4/D;->g:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Ln4/D;->i:Ln4/K;

    sget-object v3, Ln4/K;->h:Ln4/K;

    if-eq v2, v3, :cond_3

    new-instance v3, Ln4/m;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ln4/m;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Ln4/m;->g:Ljava/util/List;

    invoke-virtual {v3, v2}, Ln4/m;->k(Ln4/K;)V

    invoke-virtual {v3, v0}, Ln4/m;->k(Ln4/K;)V

    invoke-virtual {v3}, Ln4/m;->g()Ln4/K;

    move-result-object v0

    iput-object v0, p0, Ln4/D;->i:Ln4/K;

    goto :goto_1

    :cond_3
    iput-object v0, p0, Ln4/D;->i:Ln4/K;

    :goto_1
    iget v0, p0, Ln4/D;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/D;->g:I

    :cond_4
    iget v0, p1, Ln4/E;->f:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    iget-object v0, p1, Ln4/E;->i:Ln4/C;

    iget v2, p0, Ln4/D;->g:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Ln4/D;->j:Ln4/C;

    sget-object v3, Ln4/C;->n:Ln4/C;

    if-eq v2, v3, :cond_5

    invoke-static {}, Ln4/B;->h()Ln4/B;

    move-result-object v3

    invoke-virtual {v3, v2}, Ln4/B;->i(Ln4/C;)V

    invoke-virtual {v3, v0}, Ln4/B;->i(Ln4/C;)V

    invoke-virtual {v3}, Ln4/B;->g()Ln4/C;

    move-result-object v0

    iput-object v0, p0, Ln4/D;->j:Ln4/C;

    goto :goto_2

    :cond_5
    iput-object v0, p0, Ln4/D;->j:Ln4/C;

    :goto_2
    iget v0, p0, Ln4/D;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/D;->g:I

    :cond_6
    iget-object v0, p1, Ln4/E;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Ln4/D;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Ln4/E;->j:Ljava/util/List;

    iput-object v0, p0, Ln4/D;->k:Ljava/util/List;

    iget v0, p0, Ln4/D;->g:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Ln4/D;->g:I

    goto :goto_3

    :cond_7
    iget v0, p0, Ln4/D;->g:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ln4/D;->k:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/D;->k:Ljava/util/List;

    iget v0, p0, Ln4/D;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/D;->g:I

    :cond_8
    iget-object v0, p0, Ln4/D;->k:Ljava/util/List;

    iget-object v1, p1, Ln4/E;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    :goto_3
    invoke-virtual {p0, p1}, Lt4/l;->f(Lt4/m;)V

    iget-object v0, p0, Lt4/k;->d:Lt4/e;

    iget-object p1, p1, Ln4/E;->e:Lt4/e;

    invoke-virtual {v0, p1}, Lt4/e;->h(Lt4/e;)Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lt4/k;->d:Lt4/e;

    return-void
.end method
