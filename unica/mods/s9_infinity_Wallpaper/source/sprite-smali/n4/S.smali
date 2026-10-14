.class public final Ln4/S;
.super Lt4/l;
.source "SourceFile"


# instance fields
.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/util/List;

.field public k:Ln4/Q;

.field public l:I

.field public m:Ln4/Q;

.field public n:I

.field public o:Ljava/util/List;

.field public p:Ljava/util/List;


# direct methods
.method public static h()Ln4/S;
    .locals 2

    new-instance v0, Ln4/S;

    invoke-direct {v0}, Lt4/l;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Ln4/S;->h:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/S;->j:Ljava/util/List;

    sget-object v1, Ln4/Q;->w:Ln4/Q;

    iput-object v1, v0, Ln4/S;->k:Ln4/Q;

    iput-object v1, v0, Ln4/S;->m:Ln4/Q;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/S;->o:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/S;->p:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final c()Lt4/b;
    .locals 1

    invoke-virtual {p0}, Ln4/S;->g()Ln4/T;

    move-result-object p0

    invoke-virtual {p0}, Ln4/T;->b()Z

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

    invoke-static {}, Ln4/S;->h()Ln4/S;

    move-result-object v0

    invoke-virtual {p0}, Ln4/S;->g()Ln4/T;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln4/S;->i(Ln4/T;)V

    return-object v0
.end method

.method public final d(Lt4/f;Lt4/i;)Lt4/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln4/T;->s:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ln4/T;

    invoke-direct {v1, p1, p2}, Ln4/T;-><init>(Lt4/f;Lt4/i;)V
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Ln4/S;->i(Ln4/T;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lt4/s;->d:Lt4/b;

    check-cast p2, Ln4/T;
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

    invoke-virtual {p0, v0}, Ln4/S;->i(Ln4/T;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(Lt4/p;)Lt4/k;
    .locals 0

    check-cast p1, Ln4/T;

    invoke-virtual {p0, p1}, Ln4/S;->i(Ln4/T;)V

    return-object p0
.end method

.method public final g()Ln4/T;
    .locals 5

    new-instance v0, Ln4/T;

    invoke-direct {v0, p0}, Ln4/T;-><init>(Ln4/S;)V

    iget v1, p0, Ln4/S;->g:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Ln4/S;->h:I

    iput v2, v0, Ln4/T;->g:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Ln4/S;->i:I

    iput v2, v0, Ln4/T;->h:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Ln4/S;->j:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/S;->j:Ljava/util/List;

    iget v2, p0, Ln4/S;->g:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Ln4/S;->g:I

    :cond_2
    iget-object v2, p0, Ln4/S;->j:Ljava/util/List;

    iput-object v2, v0, Ln4/T;->i:Ljava/util/List;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x4

    :cond_3
    iget-object v2, p0, Ln4/S;->k:Ln4/Q;

    iput-object v2, v0, Ln4/T;->j:Ln4/Q;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    :cond_4
    iget v2, p0, Ln4/S;->l:I

    iput v2, v0, Ln4/T;->k:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x10

    :cond_5
    iget-object v2, p0, Ln4/S;->m:Ln4/Q;

    iput-object v2, v0, Ln4/T;->l:Ln4/Q;

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    or-int/lit8 v3, v3, 0x20

    :cond_6
    iget v1, p0, Ln4/S;->n:I

    iput v1, v0, Ln4/T;->m:I

    iget v1, p0, Ln4/S;->g:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Ln4/S;->o:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/S;->o:Ljava/util/List;

    iget v1, p0, Ln4/S;->g:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Ln4/S;->g:I

    :cond_7
    iget-object v1, p0, Ln4/S;->o:Ljava/util/List;

    iput-object v1, v0, Ln4/T;->n:Ljava/util/List;

    iget v1, p0, Ln4/S;->g:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Ln4/S;->p:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/S;->p:Ljava/util/List;

    iget v1, p0, Ln4/S;->g:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Ln4/S;->g:I

    :cond_8
    iget-object p0, p0, Ln4/S;->p:Ljava/util/List;

    iput-object p0, v0, Ln4/T;->o:Ljava/util/List;

    iput v3, v0, Ln4/T;->f:I

    return-object v0
.end method

.method public final i(Ln4/T;)V
    .locals 4

    sget-object v0, Ln4/T;->r:Ln4/T;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Ln4/T;->f:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, Ln4/T;->g:I

    iget v3, p0, Ln4/S;->g:I

    or-int/2addr v2, v3

    iput v2, p0, Ln4/S;->g:I

    iput v1, p0, Ln4/S;->h:I

    :cond_1
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget v0, p1, Ln4/T;->h:I

    iget v2, p0, Ln4/S;->g:I

    or-int/2addr v1, v2

    iput v1, p0, Ln4/S;->g:I

    iput v0, p0, Ln4/S;->i:I

    :cond_2
    iget-object v0, p1, Ln4/T;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_5

    iget-object v0, p0, Ln4/S;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Ln4/T;->i:Ljava/util/List;

    iput-object v0, p0, Ln4/S;->j:Ljava/util/List;

    iget v0, p0, Ln4/S;->g:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Ln4/S;->g:I

    goto :goto_0

    :cond_3
    iget v0, p0, Ln4/S;->g:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ln4/S;->j:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/S;->j:Ljava/util/List;

    iget v0, p0, Ln4/S;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/S;->g:I

    :cond_4
    iget-object v0, p0, Ln4/S;->j:Ljava/util/List;

    iget-object v2, p1, Ln4/T;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_0
    iget v0, p1, Ln4/T;->f:I

    and-int/2addr v0, v1

    const/16 v2, 0x8

    if-ne v0, v1, :cond_7

    iget-object v0, p1, Ln4/T;->j:Ln4/Q;

    iget v1, p0, Ln4/S;->g:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Ln4/S;->k:Ln4/Q;

    sget-object v3, Ln4/Q;->w:Ln4/Q;

    if-eq v1, v3, :cond_6

    invoke-static {v1}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v1

    invoke-virtual {v1, v0}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    invoke-virtual {v1}, Ln4/P;->g()Ln4/Q;

    move-result-object v0

    iput-object v0, p0, Ln4/S;->k:Ln4/Q;

    goto :goto_1

    :cond_6
    iput-object v0, p0, Ln4/S;->k:Ln4/Q;

    :goto_1
    iget v0, p0, Ln4/S;->g:I

    or-int/2addr v0, v2

    iput v0, p0, Ln4/S;->g:I

    :cond_7
    iget v0, p1, Ln4/T;->f:I

    and-int/lit8 v1, v0, 0x8

    const/16 v3, 0x10

    if-ne v1, v2, :cond_8

    iget v1, p1, Ln4/T;->k:I

    iget v2, p0, Ln4/S;->g:I

    or-int/2addr v2, v3

    iput v2, p0, Ln4/S;->g:I

    iput v1, p0, Ln4/S;->l:I

    :cond_8
    and-int/2addr v0, v3

    const/16 v1, 0x20

    if-ne v0, v3, :cond_a

    iget-object v0, p1, Ln4/T;->l:Ln4/Q;

    iget v2, p0, Ln4/S;->g:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_9

    iget-object v2, p0, Ln4/S;->m:Ln4/Q;

    sget-object v3, Ln4/Q;->w:Ln4/Q;

    if-eq v2, v3, :cond_9

    invoke-static {v2}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v2

    invoke-virtual {v2, v0}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    invoke-virtual {v2}, Ln4/P;->g()Ln4/Q;

    move-result-object v0

    iput-object v0, p0, Ln4/S;->m:Ln4/Q;

    goto :goto_2

    :cond_9
    iput-object v0, p0, Ln4/S;->m:Ln4/Q;

    :goto_2
    iget v0, p0, Ln4/S;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/S;->g:I

    :cond_a
    iget v0, p1, Ln4/T;->f:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    iget v0, p1, Ln4/T;->m:I

    iget v1, p0, Ln4/S;->g:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Ln4/S;->g:I

    iput v0, p0, Ln4/S;->n:I

    :cond_b
    iget-object v0, p1, Ln4/T;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Ln4/S;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Ln4/T;->n:Ljava/util/List;

    iput-object v0, p0, Ln4/S;->o:Ljava/util/List;

    iget v0, p0, Ln4/S;->g:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Ln4/S;->g:I

    goto :goto_3

    :cond_c
    iget v0, p0, Ln4/S;->g:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ln4/S;->o:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/S;->o:Ljava/util/List;

    iget v0, p0, Ln4/S;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/S;->g:I

    :cond_d
    iget-object v0, p0, Ln4/S;->o:Ljava/util/List;

    iget-object v1, p1, Ln4/T;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_e
    :goto_3
    iget-object v0, p1, Ln4/T;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Ln4/S;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p1, Ln4/T;->o:Ljava/util/List;

    iput-object v0, p0, Ln4/S;->p:Ljava/util/List;

    iget v0, p0, Ln4/S;->g:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Ln4/S;->g:I

    goto :goto_4

    :cond_f
    iget v0, p0, Ln4/S;->g:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ln4/S;->p:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/S;->p:Ljava/util/List;

    iget v0, p0, Ln4/S;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/S;->g:I

    :cond_10
    iget-object v0, p0, Ln4/S;->p:Ljava/util/List;

    iget-object v1, p1, Ln4/T;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_11
    :goto_4
    invoke-virtual {p0, p1}, Lt4/l;->f(Lt4/m;)V

    iget-object v0, p0, Lt4/k;->d:Lt4/e;

    iget-object p1, p1, Ln4/T;->e:Lt4/e;

    invoke-virtual {v0, p1}, Lt4/e;->h(Lt4/e;)Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lt4/k;->d:Lt4/e;

    return-void
.end method
