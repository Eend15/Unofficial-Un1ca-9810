.class public final Ln4/F;
.super Lt4/l;
.source "SourceFile"


# instance fields
.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Ln4/Q;

.field public l:I

.field public m:Ljava/util/List;

.field public n:Ln4/Q;

.field public o:I

.field public p:Ln4/Z;

.field public q:I

.field public r:I

.field public s:Ljava/util/List;


# direct methods
.method public static h()Ln4/F;
    .locals 3

    new-instance v0, Ln4/F;

    invoke-direct {v0}, Lt4/l;-><init>()V

    const/16 v1, 0x206

    iput v1, v0, Ln4/F;->h:I

    const/16 v1, 0x806

    iput v1, v0, Ln4/F;->i:I

    sget-object v1, Ln4/Q;->w:Ln4/Q;

    iput-object v1, v0, Ln4/F;->k:Ln4/Q;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Ln4/F;->m:Ljava/util/List;

    iput-object v1, v0, Ln4/F;->n:Ln4/Q;

    sget-object v1, Ln4/Z;->o:Ln4/Z;

    iput-object v1, v0, Ln4/F;->p:Ln4/Z;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/F;->s:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final c()Lt4/b;
    .locals 1

    invoke-virtual {p0}, Ln4/F;->g()Ln4/G;

    move-result-object p0

    invoke-virtual {p0}, Ln4/G;->b()Z

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

    invoke-static {}, Ln4/F;->h()Ln4/F;

    move-result-object v0

    invoke-virtual {p0}, Ln4/F;->g()Ln4/G;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln4/F;->i(Ln4/G;)V

    return-object v0
.end method

.method public final d(Lt4/f;Lt4/i;)Lt4/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln4/G;->v:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ln4/G;

    invoke-direct {v1, p1, p2}, Ln4/G;-><init>(Lt4/f;Lt4/i;)V
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Ln4/F;->i(Ln4/G;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lt4/s;->d:Lt4/b;

    check-cast p2, Ln4/G;
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

    invoke-virtual {p0, v0}, Ln4/F;->i(Ln4/G;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(Lt4/p;)Lt4/k;
    .locals 0

    check-cast p1, Ln4/G;

    invoke-virtual {p0, p1}, Ln4/F;->i(Ln4/G;)V

    return-object p0
.end method

.method public final g()Ln4/G;
    .locals 5

    new-instance v0, Ln4/G;

    invoke-direct {v0, p0}, Ln4/G;-><init>(Ln4/F;)V

    iget v1, p0, Ln4/F;->g:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Ln4/F;->h:I

    iput v2, v0, Ln4/G;->g:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Ln4/F;->i:I

    iput v2, v0, Ln4/G;->h:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget v2, p0, Ln4/F;->j:I

    iput v2, v0, Ln4/G;->i:I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-object v2, p0, Ln4/F;->k:Ln4/Q;

    iput-object v2, v0, Ln4/G;->j:Ln4/Q;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget v2, p0, Ln4/F;->l:I

    iput v2, v0, Ln4/G;->k:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Ln4/F;->m:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/F;->m:Ljava/util/List;

    iget v2, p0, Ln4/F;->g:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Ln4/F;->g:I

    :cond_5
    iget-object v2, p0, Ln4/F;->m:Ljava/util/List;

    iput-object v2, v0, Ln4/G;->l:Ljava/util/List;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x20

    :cond_6
    iget-object v2, p0, Ln4/F;->n:Ln4/Q;

    iput-object v2, v0, Ln4/G;->m:Ln4/Q;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    :cond_7
    iget v2, p0, Ln4/F;->o:I

    iput v2, v0, Ln4/G;->n:I

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x80

    :cond_8
    iget-object v2, p0, Ln4/F;->p:Ln4/Z;

    iput-object v2, v0, Ln4/G;->o:Ln4/Z;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x100

    :cond_9
    iget v2, p0, Ln4/F;->q:I

    iput v2, v0, Ln4/G;->p:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    or-int/lit16 v3, v3, 0x200

    :cond_a
    iget v1, p0, Ln4/F;->r:I

    iput v1, v0, Ln4/G;->q:I

    iget v1, p0, Ln4/F;->g:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Ln4/F;->s:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/F;->s:Ljava/util/List;

    iget v1, p0, Ln4/F;->g:I

    and-int/lit16 v1, v1, -0x801

    iput v1, p0, Ln4/F;->g:I

    :cond_b
    iget-object p0, p0, Ln4/F;->s:Ljava/util/List;

    iput-object p0, v0, Ln4/G;->r:Ljava/util/List;

    iput v3, v0, Ln4/G;->f:I

    return-object v0
.end method

.method public final i(Ln4/G;)V
    .locals 5

    sget-object v0, Ln4/G;->u:Ln4/G;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Ln4/G;->f:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, Ln4/G;->g:I

    iget v3, p0, Ln4/F;->g:I

    or-int/2addr v2, v3

    iput v2, p0, Ln4/F;->g:I

    iput v1, p0, Ln4/F;->h:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p1, Ln4/G;->h:I

    iget v3, p0, Ln4/F;->g:I

    or-int/2addr v2, v3

    iput v2, p0, Ln4/F;->g:I

    iput v1, p0, Ln4/F;->i:I

    :cond_2
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    iget v1, p1, Ln4/G;->i:I

    iget v3, p0, Ln4/F;->g:I

    or-int/2addr v2, v3

    iput v2, p0, Ln4/F;->g:I

    iput v1, p0, Ln4/F;->j:I

    :cond_3
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Ln4/G;->j:Ln4/Q;

    iget v2, p0, Ln4/F;->g:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Ln4/F;->k:Ln4/Q;

    sget-object v3, Ln4/Q;->w:Ln4/Q;

    if-eq v2, v3, :cond_4

    invoke-static {v2}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v2

    invoke-virtual {v2, v0}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    invoke-virtual {v2}, Ln4/P;->g()Ln4/Q;

    move-result-object v0

    iput-object v0, p0, Ln4/F;->k:Ln4/Q;

    goto :goto_0

    :cond_4
    iput-object v0, p0, Ln4/F;->k:Ln4/Q;

    :goto_0
    iget v0, p0, Ln4/F;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/F;->g:I

    :cond_5
    iget v0, p1, Ln4/G;->f:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    iget v0, p1, Ln4/G;->k:I

    iget v2, p0, Ln4/F;->g:I

    or-int/2addr v1, v2

    iput v1, p0, Ln4/F;->g:I

    iput v0, p0, Ln4/F;->l:I

    :cond_6
    iget-object v0, p1, Ln4/G;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Ln4/F;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Ln4/G;->l:Ljava/util/List;

    iput-object v0, p0, Ln4/F;->m:Ljava/util/List;

    iget v0, p0, Ln4/F;->g:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Ln4/F;->g:I

    goto :goto_1

    :cond_7
    iget v0, p0, Ln4/F;->g:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ln4/F;->m:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/F;->m:Ljava/util/List;

    iget v0, p0, Ln4/F;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/F;->g:I

    :cond_8
    iget-object v0, p0, Ln4/F;->m:Ljava/util/List;

    iget-object v1, p1, Ln4/G;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    :goto_1
    invoke-virtual {p1}, Ln4/G;->p()Z

    move-result v0

    const/16 v1, 0x40

    if-eqz v0, :cond_b

    iget-object v0, p1, Ln4/G;->m:Ln4/Q;

    iget v2, p0, Ln4/F;->g:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_a

    iget-object v2, p0, Ln4/F;->n:Ln4/Q;

    sget-object v3, Ln4/Q;->w:Ln4/Q;

    if-eq v2, v3, :cond_a

    invoke-static {v2}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v2

    invoke-virtual {v2, v0}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    invoke-virtual {v2}, Ln4/P;->g()Ln4/Q;

    move-result-object v0

    iput-object v0, p0, Ln4/F;->n:Ln4/Q;

    goto :goto_2

    :cond_a
    iput-object v0, p0, Ln4/F;->n:Ln4/Q;

    :goto_2
    iget v0, p0, Ln4/F;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/F;->g:I

    :cond_b
    iget v0, p1, Ln4/G;->f:I

    and-int/lit8 v2, v0, 0x40

    const/16 v3, 0x80

    if-ne v2, v1, :cond_c

    iget v1, p1, Ln4/G;->n:I

    iget v2, p0, Ln4/F;->g:I

    or-int/2addr v2, v3

    iput v2, p0, Ln4/F;->g:I

    iput v1, p0, Ln4/F;->o:I

    :cond_c
    and-int/2addr v0, v3

    const/16 v1, 0x100

    if-ne v0, v3, :cond_e

    iget-object v0, p1, Ln4/G;->o:Ln4/Z;

    iget v2, p0, Ln4/F;->g:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_d

    iget-object v2, p0, Ln4/F;->p:Ln4/Z;

    sget-object v3, Ln4/Z;->o:Ln4/Z;

    if-eq v2, v3, :cond_d

    new-instance v3, Ln4/Y;

    invoke-direct {v3}, Lt4/l;-><init>()V

    sget-object v4, Ln4/Q;->w:Ln4/Q;

    iput-object v4, v3, Ln4/Y;->j:Ln4/Q;

    iput-object v4, v3, Ln4/Y;->l:Ln4/Q;

    invoke-virtual {v3, v2}, Ln4/Y;->h(Ln4/Z;)V

    invoke-virtual {v3, v0}, Ln4/Y;->h(Ln4/Z;)V

    invoke-virtual {v3}, Ln4/Y;->g()Ln4/Z;

    move-result-object v0

    iput-object v0, p0, Ln4/F;->p:Ln4/Z;

    goto :goto_3

    :cond_d
    iput-object v0, p0, Ln4/F;->p:Ln4/Z;

    :goto_3
    iget v0, p0, Ln4/F;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/F;->g:I

    :cond_e
    iget v0, p1, Ln4/G;->f:I

    and-int/lit16 v2, v0, 0x100

    const/16 v3, 0x200

    if-ne v2, v1, :cond_f

    iget v1, p1, Ln4/G;->p:I

    iget v2, p0, Ln4/F;->g:I

    or-int/2addr v2, v3

    iput v2, p0, Ln4/F;->g:I

    iput v1, p0, Ln4/F;->q:I

    :cond_f
    and-int/2addr v0, v3

    if-ne v0, v3, :cond_10

    iget v0, p1, Ln4/G;->q:I

    iget v1, p0, Ln4/F;->g:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Ln4/F;->g:I

    iput v0, p0, Ln4/F;->r:I

    :cond_10
    iget-object v0, p1, Ln4/G;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Ln4/F;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p1, Ln4/G;->r:Ljava/util/List;

    iput-object v0, p0, Ln4/F;->s:Ljava/util/List;

    iget v0, p0, Ln4/F;->g:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Ln4/F;->g:I

    goto :goto_4

    :cond_11
    iget v0, p0, Ln4/F;->g:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ln4/F;->s:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/F;->s:Ljava/util/List;

    iget v0, p0, Ln4/F;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/F;->g:I

    :cond_12
    iget-object v0, p0, Ln4/F;->s:Ljava/util/List;

    iget-object v1, p1, Ln4/G;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_13
    :goto_4
    invoke-virtual {p0, p1}, Lt4/l;->f(Lt4/m;)V

    iget-object v0, p0, Lt4/k;->d:Lt4/e;

    iget-object p1, p1, Ln4/G;->e:Lt4/e;

    invoke-virtual {v0, p1}, Lt4/e;->h(Lt4/e;)Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lt4/k;->d:Lt4/e;

    return-void
.end method
