.class public final Ln4/B;
.super Lt4/l;
.source "SourceFile"


# instance fields
.field public g:I

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:Ln4/X;

.field public l:Ln4/e0;


# direct methods
.method public static h()Ln4/B;
    .locals 2

    new-instance v0, Ln4/B;

    invoke-direct {v0}, Lt4/l;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/B;->h:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/B;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/B;->j:Ljava/util/List;

    sget-object v1, Ln4/X;->j:Ln4/X;

    iput-object v1, v0, Ln4/B;->k:Ln4/X;

    sget-object v1, Ln4/e0;->h:Ln4/e0;

    iput-object v1, v0, Ln4/B;->l:Ln4/e0;

    return-object v0
.end method


# virtual methods
.method public final c()Lt4/b;
    .locals 1

    invoke-virtual {p0}, Ln4/B;->g()Ln4/C;

    move-result-object p0

    invoke-virtual {p0}, Ln4/C;->b()Z

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

    invoke-static {}, Ln4/B;->h()Ln4/B;

    move-result-object v0

    invoke-virtual {p0}, Ln4/B;->g()Ln4/C;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln4/B;->i(Ln4/C;)V

    return-object v0
.end method

.method public final d(Lt4/f;Lt4/i;)Lt4/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln4/C;->o:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ln4/C;

    invoke-direct {v1, p1, p2}, Ln4/C;-><init>(Lt4/f;Lt4/i;)V
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Ln4/B;->i(Ln4/C;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lt4/s;->d:Lt4/b;

    check-cast p2, Ln4/C;
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

    invoke-virtual {p0, v0}, Ln4/B;->i(Ln4/C;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(Lt4/p;)Lt4/k;
    .locals 0

    check-cast p1, Ln4/C;

    invoke-virtual {p0, p1}, Ln4/B;->i(Ln4/C;)V

    return-object p0
.end method

.method public final g()Ln4/C;
    .locals 5

    new-instance v0, Ln4/C;

    invoke-direct {v0, p0}, Ln4/C;-><init>(Ln4/B;)V

    iget v1, p0, Ln4/B;->g:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ln4/B;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/B;->h:Ljava/util/List;

    iget v2, p0, Ln4/B;->g:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Ln4/B;->g:I

    :cond_0
    iget-object v2, p0, Ln4/B;->h:Ljava/util/List;

    iput-object v2, v0, Ln4/C;->g:Ljava/util/List;

    iget v2, p0, Ln4/B;->g:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Ln4/B;->i:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/B;->i:Ljava/util/List;

    iget v2, p0, Ln4/B;->g:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Ln4/B;->g:I

    :cond_1
    iget-object v2, p0, Ln4/B;->i:Ljava/util/List;

    iput-object v2, v0, Ln4/C;->h:Ljava/util/List;

    iget v2, p0, Ln4/B;->g:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Ln4/B;->j:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/B;->j:Ljava/util/List;

    iget v2, p0, Ln4/B;->g:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Ln4/B;->g:I

    :cond_2
    iget-object v2, p0, Ln4/B;->j:Ljava/util/List;

    iput-object v2, v0, Ln4/C;->i:Ljava/util/List;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Ln4/B;->k:Ln4/X;

    iput-object v2, v0, Ln4/C;->j:Ln4/X;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    or-int/lit8 v3, v3, 0x2

    :cond_4
    iget-object p0, p0, Ln4/B;->l:Ln4/e0;

    iput-object p0, v0, Ln4/C;->k:Ln4/e0;

    iput v3, v0, Ln4/C;->f:I

    return-object v0
.end method

.method public final i(Ln4/C;)V
    .locals 5

    sget-object v0, Ln4/C;->n:Ln4/C;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Ln4/C;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Ln4/B;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Ln4/C;->g:Ljava/util/List;

    iput-object v0, p0, Ln4/B;->h:Ljava/util/List;

    iget v0, p0, Ln4/B;->g:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Ln4/B;->g:I

    goto :goto_0

    :cond_1
    iget v0, p0, Ln4/B;->g:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ln4/B;->h:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/B;->h:Ljava/util/List;

    iget v0, p0, Ln4/B;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/B;->g:I

    :cond_2
    iget-object v0, p0, Ln4/B;->h:Ljava/util/List;

    iget-object v2, p1, Ln4/C;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    iget-object v0, p1, Ln4/C;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_6

    iget-object v0, p0, Ln4/B;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Ln4/C;->h:Ljava/util/List;

    iput-object v0, p0, Ln4/B;->i:Ljava/util/List;

    iget v0, p0, Ln4/B;->g:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Ln4/B;->g:I

    goto :goto_1

    :cond_4
    iget v0, p0, Ln4/B;->g:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Ln4/B;->i:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/B;->i:Ljava/util/List;

    iget v0, p0, Ln4/B;->g:I

    or-int/2addr v0, v2

    iput v0, p0, Ln4/B;->g:I

    :cond_5
    iget-object v0, p0, Ln4/B;->i:Ljava/util/List;

    iget-object v3, p1, Ln4/C;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    :goto_1
    iget-object v0, p1, Ln4/C;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Ln4/B;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Ln4/C;->i:Ljava/util/List;

    iput-object v0, p0, Ln4/B;->j:Ljava/util/List;

    iget v0, p0, Ln4/B;->g:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Ln4/B;->g:I

    goto :goto_2

    :cond_7
    iget v0, p0, Ln4/B;->g:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Ln4/B;->j:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/B;->j:Ljava/util/List;

    iget v0, p0, Ln4/B;->g:I

    or-int/2addr v0, v3

    iput v0, p0, Ln4/B;->g:I

    :cond_8
    iget-object v0, p0, Ln4/B;->j:Ljava/util/List;

    iget-object v3, p1, Ln4/C;->i:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    :goto_2
    iget v0, p1, Ln4/C;->f:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    iget-object v0, p1, Ln4/C;->j:Ln4/X;

    iget v1, p0, Ln4/B;->g:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_a

    iget-object v1, p0, Ln4/B;->k:Ln4/X;

    sget-object v4, Ln4/X;->j:Ln4/X;

    if-eq v1, v4, :cond_a

    invoke-static {v1}, Ln4/X;->i(Ln4/X;)Ln4/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Ln4/f;->l(Ln4/X;)V

    invoke-virtual {v1}, Ln4/f;->h()Ln4/X;

    move-result-object v0

    iput-object v0, p0, Ln4/B;->k:Ln4/X;

    goto :goto_3

    :cond_a
    iput-object v0, p0, Ln4/B;->k:Ln4/X;

    :goto_3
    iget v0, p0, Ln4/B;->g:I

    or-int/2addr v0, v3

    iput v0, p0, Ln4/B;->g:I

    :cond_b
    iget v0, p1, Ln4/C;->f:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_d

    iget-object v0, p1, Ln4/C;->k:Ln4/e0;

    iget v1, p0, Ln4/B;->g:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Ln4/B;->l:Ln4/e0;

    sget-object v3, Ln4/e0;->h:Ln4/e0;

    if-eq v1, v3, :cond_c

    new-instance v3, Ln4/m;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ln4/m;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Ln4/m;->g:Ljava/util/List;

    invoke-virtual {v3, v1}, Ln4/m;->m(Ln4/e0;)V

    invoke-virtual {v3, v0}, Ln4/m;->m(Ln4/e0;)V

    invoke-virtual {v3}, Ln4/m;->i()Ln4/e0;

    move-result-object v0

    iput-object v0, p0, Ln4/B;->l:Ln4/e0;

    goto :goto_4

    :cond_c
    iput-object v0, p0, Ln4/B;->l:Ln4/e0;

    :goto_4
    iget v0, p0, Ln4/B;->g:I

    or-int/2addr v0, v2

    iput v0, p0, Ln4/B;->g:I

    :cond_d
    invoke-virtual {p0, p1}, Lt4/l;->f(Lt4/m;)V

    iget-object v0, p0, Lt4/k;->d:Lt4/e;

    iget-object p1, p1, Ln4/C;->e:Lt4/e;

    invoke-virtual {v0, p1}, Lt4/e;->h(Lt4/e;)Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lt4/k;->d:Lt4/e;

    return-void
.end method
