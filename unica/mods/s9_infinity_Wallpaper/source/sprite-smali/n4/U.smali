.class public final Ln4/U;
.super Lt4/l;
.source "SourceFile"


# instance fields
.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Ln4/V;

.field public l:Ljava/util/List;

.field public m:Ljava/util/List;


# direct methods
.method public static h()Ln4/U;
    .locals 2

    new-instance v0, Ln4/U;

    invoke-direct {v0}, Lt4/l;-><init>()V

    sget-object v1, Ln4/V;->g:Ln4/V;

    iput-object v1, v0, Ln4/U;->k:Ln4/V;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/U;->l:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/U;->m:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final c()Lt4/b;
    .locals 1

    invoke-virtual {p0}, Ln4/U;->g()Ln4/W;

    move-result-object p0

    invoke-virtual {p0}, Ln4/W;->b()Z

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

    invoke-static {}, Ln4/U;->h()Ln4/U;

    move-result-object v0

    invoke-virtual {p0}, Ln4/U;->g()Ln4/W;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln4/U;->i(Ln4/W;)V

    return-object v0
.end method

.method public final d(Lt4/f;Lt4/i;)Lt4/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln4/W;->q:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ln4/W;

    invoke-direct {v1, p1, p2}, Ln4/W;-><init>(Lt4/f;Lt4/i;)V
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Ln4/U;->i(Ln4/W;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lt4/s;->d:Lt4/b;

    check-cast p2, Ln4/W;
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

    invoke-virtual {p0, v0}, Ln4/U;->i(Ln4/W;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(Lt4/p;)Lt4/k;
    .locals 0

    check-cast p1, Ln4/W;

    invoke-virtual {p0, p1}, Ln4/U;->i(Ln4/W;)V

    return-object p0
.end method

.method public final g()Ln4/W;
    .locals 5

    new-instance v0, Ln4/W;

    invoke-direct {v0, p0}, Ln4/W;-><init>(Ln4/U;)V

    iget v1, p0, Ln4/U;->g:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Ln4/U;->h:I

    iput v2, v0, Ln4/W;->g:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Ln4/U;->i:I

    iput v2, v0, Ln4/W;->h:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-boolean v2, p0, Ln4/U;->j:Z

    iput-boolean v2, v0, Ln4/W;->i:Z

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-object v2, p0, Ln4/U;->k:Ln4/V;

    iput-object v2, v0, Ln4/W;->j:Ln4/V;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Ln4/U;->l:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/U;->l:Ljava/util/List;

    iget v1, p0, Ln4/U;->g:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Ln4/U;->g:I

    :cond_4
    iget-object v1, p0, Ln4/U;->l:Ljava/util/List;

    iput-object v1, v0, Ln4/W;->k:Ljava/util/List;

    iget v1, p0, Ln4/U;->g:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Ln4/U;->m:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/U;->m:Ljava/util/List;

    iget v1, p0, Ln4/U;->g:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Ln4/U;->g:I

    :cond_5
    iget-object p0, p0, Ln4/U;->m:Ljava/util/List;

    iput-object p0, v0, Ln4/W;->l:Ljava/util/List;

    iput v3, v0, Ln4/W;->f:I

    return-object v0
.end method

.method public final i(Ln4/W;)V
    .locals 4

    sget-object v0, Ln4/W;->p:Ln4/W;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Ln4/W;->f:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, Ln4/W;->g:I

    iget v3, p0, Ln4/U;->g:I

    or-int/2addr v2, v3

    iput v2, p0, Ln4/U;->g:I

    iput v1, p0, Ln4/U;->h:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p1, Ln4/W;->h:I

    iget v3, p0, Ln4/U;->g:I

    or-int/2addr v2, v3

    iput v2, p0, Ln4/U;->g:I

    iput v1, p0, Ln4/U;->i:I

    :cond_2
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    iget-boolean v1, p1, Ln4/W;->i:Z

    iget v3, p0, Ln4/U;->g:I

    or-int/2addr v2, v3

    iput v2, p0, Ln4/U;->g:I

    iput-boolean v1, p0, Ln4/U;->j:Z

    :cond_3
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Ln4/W;->j:Ln4/V;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Ln4/U;->g:I

    or-int/2addr v1, v2

    iput v1, p0, Ln4/U;->g:I

    iput-object v0, p0, Ln4/U;->k:Ln4/V;

    :cond_4
    iget-object v0, p1, Ln4/W;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Ln4/U;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Ln4/W;->k:Ljava/util/List;

    iput-object v0, p0, Ln4/U;->l:Ljava/util/List;

    iget v0, p0, Ln4/U;->g:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Ln4/U;->g:I

    goto :goto_0

    :cond_5
    iget v0, p0, Ln4/U;->g:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ln4/U;->l:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/U;->l:Ljava/util/List;

    iget v0, p0, Ln4/U;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/U;->g:I

    :cond_6
    iget-object v0, p0, Ln4/U;->l:Ljava/util/List;

    iget-object v1, p1, Ln4/W;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    :goto_0
    iget-object v0, p1, Ln4/W;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Ln4/U;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Ln4/W;->l:Ljava/util/List;

    iput-object v0, p0, Ln4/U;->m:Ljava/util/List;

    iget v0, p0, Ln4/U;->g:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Ln4/U;->g:I

    goto :goto_1

    :cond_8
    iget v0, p0, Ln4/U;->g:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ln4/U;->m:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/U;->m:Ljava/util/List;

    iget v0, p0, Ln4/U;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/U;->g:I

    :cond_9
    iget-object v0, p0, Ln4/U;->m:Ljava/util/List;

    iget-object v1, p1, Ln4/W;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a
    :goto_1
    invoke-virtual {p0, p1}, Lt4/l;->f(Lt4/m;)V

    iget-object v0, p0, Lt4/k;->d:Lt4/e;

    iget-object p1, p1, Ln4/W;->e:Lt4/e;

    invoke-virtual {v0, p1}, Lt4/e;->h(Lt4/e;)Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lt4/k;->d:Lt4/e;

    return-void
.end method
