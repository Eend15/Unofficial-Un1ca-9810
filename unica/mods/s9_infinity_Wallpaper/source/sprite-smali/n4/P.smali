.class public final Ln4/P;
.super Lt4/l;
.source "SourceFile"


# instance fields
.field public g:I

.field public h:Ljava/util/List;

.field public i:Z

.field public j:I

.field public k:Ln4/Q;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Ln4/Q;

.field public r:I

.field public s:Ln4/Q;

.field public t:I

.field public u:I


# direct methods
.method public static h()Ln4/P;
    .locals 2

    new-instance v0, Ln4/P;

    invoke-direct {v0}, Lt4/l;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/P;->h:Ljava/util/List;

    sget-object v1, Ln4/Q;->w:Ln4/Q;

    iput-object v1, v0, Ln4/P;->k:Ln4/Q;

    iput-object v1, v0, Ln4/P;->q:Ln4/Q;

    iput-object v1, v0, Ln4/P;->s:Ln4/Q;

    return-object v0
.end method


# virtual methods
.method public final c()Lt4/b;
    .locals 1

    invoke-virtual {p0}, Ln4/P;->g()Ln4/Q;

    move-result-object p0

    invoke-virtual {p0}, Ln4/Q;->b()Z

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

    invoke-static {}, Ln4/P;->h()Ln4/P;

    move-result-object v0

    invoke-virtual {p0}, Ln4/P;->g()Ln4/Q;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    return-object v0
.end method

.method public final d(Lt4/f;Lt4/i;)Lt4/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln4/Q;->x:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ln4/Q;

    invoke-direct {v1, p1, p2}, Ln4/Q;-><init>(Lt4/f;Lt4/i;)V
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lt4/s;->d:Lt4/b;

    check-cast p2, Ln4/Q;
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

    invoke-virtual {p0, v0}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(Lt4/p;)Lt4/k;
    .locals 0

    check-cast p1, Ln4/Q;

    invoke-virtual {p0, p1}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    return-object p0
.end method

.method public final g()Ln4/Q;
    .locals 5

    new-instance v0, Ln4/Q;

    invoke-direct {v0, p0}, Ln4/Q;-><init>(Ln4/P;)V

    iget v1, p0, Ln4/P;->g:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ln4/P;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/P;->h:Ljava/util/List;

    iget v2, p0, Ln4/P;->g:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Ln4/P;->g:I

    :cond_0
    iget-object v2, p0, Ln4/P;->h:Ljava/util/List;

    iput-object v2, v0, Ln4/Q;->g:Ljava/util/List;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-boolean v2, p0, Ln4/P;->i:Z

    iput-boolean v2, v0, Ln4/Q;->h:Z

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x2

    :cond_2
    iget v2, p0, Ln4/P;->j:I

    iput v2, v0, Ln4/Q;->i:I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x4

    :cond_3
    iget-object v2, p0, Ln4/P;->k:Ln4/Q;

    iput-object v2, v0, Ln4/Q;->j:Ln4/Q;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    :cond_4
    iget v2, p0, Ln4/P;->l:I

    iput v2, v0, Ln4/Q;->k:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x10

    :cond_5
    iget v2, p0, Ln4/P;->m:I

    iput v2, v0, Ln4/Q;->l:I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x20

    :cond_6
    iget v2, p0, Ln4/P;->n:I

    iput v2, v0, Ln4/Q;->m:I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    :cond_7
    iget v2, p0, Ln4/P;->o:I

    iput v2, v0, Ln4/Q;->n:I

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x80

    :cond_8
    iget v2, p0, Ln4/P;->p:I

    iput v2, v0, Ln4/Q;->o:I

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x100

    :cond_9
    iget-object v2, p0, Ln4/P;->q:Ln4/Q;

    iput-object v2, v0, Ln4/Q;->p:Ln4/Q;

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x200

    :cond_a
    iget v2, p0, Ln4/P;->r:I

    iput v2, v0, Ln4/Q;->q:I

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x400

    :cond_b
    iget-object v2, p0, Ln4/P;->s:Ln4/Q;

    iput-object v2, v0, Ln4/Q;->r:Ln4/Q;

    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_c

    or-int/lit16 v3, v3, 0x800

    :cond_c
    iget v2, p0, Ln4/P;->t:I

    iput v2, v0, Ln4/Q;->s:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    or-int/lit16 v3, v3, 0x1000

    :cond_d
    iget p0, p0, Ln4/P;->u:I

    iput p0, v0, Ln4/Q;->t:I

    iput v3, v0, Ln4/Q;->f:I

    return-object v0
.end method

.method public final i(Ln4/Q;)Ln4/P;
    .locals 6

    sget-object v0, Ln4/Q;->w:Ln4/Q;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p1, Ln4/Q;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Ln4/P;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Ln4/Q;->g:Ljava/util/List;

    iput-object v1, p0, Ln4/P;->h:Ljava/util/List;

    iget v1, p0, Ln4/P;->g:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Ln4/P;->g:I

    goto :goto_0

    :cond_1
    iget v1, p0, Ln4/P;->g:I

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Ln4/P;->h:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Ln4/P;->h:Ljava/util/List;

    iget v1, p0, Ln4/P;->g:I

    or-int/2addr v1, v2

    iput v1, p0, Ln4/P;->g:I

    :cond_2
    iget-object v1, p0, Ln4/P;->h:Ljava/util/List;

    iget-object v3, p1, Ln4/Q;->g:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    iget v1, p1, Ln4/Q;->f:I

    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x2

    if-ne v3, v2, :cond_4

    iget-boolean v3, p1, Ln4/Q;->h:Z

    iget v5, p0, Ln4/P;->g:I

    or-int/2addr v5, v4

    iput v5, p0, Ln4/P;->g:I

    iput-boolean v3, p0, Ln4/P;->i:Z

    :cond_4
    and-int/lit8 v3, v1, 0x2

    const/4 v5, 0x4

    if-ne v3, v4, :cond_5

    iget v3, p1, Ln4/Q;->i:I

    iget v4, p0, Ln4/P;->g:I

    or-int/2addr v4, v5

    iput v4, p0, Ln4/P;->g:I

    iput v3, p0, Ln4/P;->j:I

    :cond_5
    and-int/2addr v1, v5

    const/16 v3, 0x8

    if-ne v1, v5, :cond_7

    iget-object v1, p1, Ln4/Q;->j:Ln4/Q;

    iget v4, p0, Ln4/P;->g:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_6

    iget-object v4, p0, Ln4/P;->k:Ln4/Q;

    if-eq v4, v0, :cond_6

    invoke-static {v4}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v4

    invoke-virtual {v4, v1}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    invoke-virtual {v4}, Ln4/P;->g()Ln4/Q;

    move-result-object v1

    iput-object v1, p0, Ln4/P;->k:Ln4/Q;

    goto :goto_1

    :cond_6
    iput-object v1, p0, Ln4/P;->k:Ln4/Q;

    :goto_1
    iget v1, p0, Ln4/P;->g:I

    or-int/2addr v1, v3

    iput v1, p0, Ln4/P;->g:I

    :cond_7
    iget v1, p1, Ln4/Q;->f:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    iget v1, p1, Ln4/Q;->k:I

    iget v3, p0, Ln4/P;->g:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Ln4/P;->g:I

    iput v1, p0, Ln4/P;->l:I

    :cond_8
    invoke-virtual {p1}, Ln4/Q;->p()Z

    move-result v1

    const/16 v3, 0x20

    if-eqz v1, :cond_9

    iget v1, p1, Ln4/Q;->l:I

    iget v4, p0, Ln4/P;->g:I

    or-int/2addr v4, v3

    iput v4, p0, Ln4/P;->g:I

    iput v1, p0, Ln4/P;->m:I

    :cond_9
    iget v1, p1, Ln4/Q;->f:I

    and-int/lit8 v4, v1, 0x20

    const/16 v5, 0x40

    if-ne v4, v3, :cond_a

    iget v3, p1, Ln4/Q;->m:I

    iget v4, p0, Ln4/P;->g:I

    or-int/2addr v4, v5

    iput v4, p0, Ln4/P;->g:I

    iput v3, p0, Ln4/P;->n:I

    :cond_a
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x80

    if-ne v3, v5, :cond_b

    iget v3, p1, Ln4/Q;->n:I

    iget v5, p0, Ln4/P;->g:I

    or-int/2addr v5, v4

    iput v5, p0, Ln4/P;->g:I

    iput v3, p0, Ln4/P;->o:I

    :cond_b
    and-int/lit16 v3, v1, 0x80

    const/16 v5, 0x100

    if-ne v3, v4, :cond_c

    iget v3, p1, Ln4/Q;->o:I

    iget v4, p0, Ln4/P;->g:I

    or-int/2addr v4, v5

    iput v4, p0, Ln4/P;->g:I

    iput v3, p0, Ln4/P;->p:I

    :cond_c
    and-int/2addr v1, v5

    const/16 v3, 0x200

    if-ne v1, v5, :cond_e

    iget-object v1, p1, Ln4/Q;->p:Ln4/Q;

    iget v4, p0, Ln4/P;->g:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_d

    iget-object v4, p0, Ln4/P;->q:Ln4/Q;

    if-eq v4, v0, :cond_d

    invoke-static {v4}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v4

    invoke-virtual {v4, v1}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    invoke-virtual {v4}, Ln4/P;->g()Ln4/Q;

    move-result-object v1

    iput-object v1, p0, Ln4/P;->q:Ln4/Q;

    goto :goto_2

    :cond_d
    iput-object v1, p0, Ln4/P;->q:Ln4/Q;

    :goto_2
    iget v1, p0, Ln4/P;->g:I

    or-int/2addr v1, v3

    iput v1, p0, Ln4/P;->g:I

    :cond_e
    iget v1, p1, Ln4/Q;->f:I

    and-int/lit16 v4, v1, 0x200

    const/16 v5, 0x400

    if-ne v4, v3, :cond_f

    iget v3, p1, Ln4/Q;->q:I

    iget v4, p0, Ln4/P;->g:I

    or-int/2addr v4, v5

    iput v4, p0, Ln4/P;->g:I

    iput v3, p0, Ln4/P;->r:I

    :cond_f
    and-int/2addr v1, v5

    const/16 v3, 0x800

    if-ne v1, v5, :cond_11

    iget-object v1, p1, Ln4/Q;->r:Ln4/Q;

    iget v4, p0, Ln4/P;->g:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_10

    iget-object v4, p0, Ln4/P;->s:Ln4/Q;

    if-eq v4, v0, :cond_10

    invoke-static {v4}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v0

    invoke-virtual {v0, v1}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    invoke-virtual {v0}, Ln4/P;->g()Ln4/Q;

    move-result-object v0

    iput-object v0, p0, Ln4/P;->s:Ln4/Q;

    goto :goto_3

    :cond_10
    iput-object v1, p0, Ln4/P;->s:Ln4/Q;

    :goto_3
    iget v0, p0, Ln4/P;->g:I

    or-int/2addr v0, v3

    iput v0, p0, Ln4/P;->g:I

    :cond_11
    iget v0, p1, Ln4/Q;->f:I

    and-int/lit16 v1, v0, 0x800

    if-ne v1, v3, :cond_12

    goto :goto_4

    :cond_12
    const/4 v2, 0x0

    :goto_4
    const/16 v1, 0x1000

    if-eqz v2, :cond_13

    iget v2, p1, Ln4/Q;->s:I

    iget v3, p0, Ln4/P;->g:I

    or-int/2addr v3, v1

    iput v3, p0, Ln4/P;->g:I

    iput v2, p0, Ln4/P;->t:I

    :cond_13
    and-int/2addr v0, v1

    if-ne v0, v1, :cond_14

    iget v0, p1, Ln4/Q;->t:I

    iget v1, p0, Ln4/P;->g:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Ln4/P;->g:I

    iput v0, p0, Ln4/P;->u:I

    :cond_14
    invoke-virtual {p0, p1}, Lt4/l;->f(Lt4/m;)V

    iget-object v0, p0, Lt4/k;->d:Lt4/e;

    iget-object p1, p1, Ln4/Q;->e:Lt4/e;

    invoke-virtual {v0, p1}, Lt4/e;->h(Lt4/e;)Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lt4/k;->d:Lt4/e;

    return-object p0
.end method
