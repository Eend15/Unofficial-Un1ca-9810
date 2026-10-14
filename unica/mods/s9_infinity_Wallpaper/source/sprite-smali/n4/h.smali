.class public final Ln4/h;
.super Lt4/l;
.source "SourceFile"


# instance fields
.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/util/List;

.field public l:Ljava/util/List;

.field public m:Ljava/util/List;

.field public n:Ljava/util/List;

.field public o:Ljava/util/List;

.field public p:Ljava/util/List;

.field public q:Ljava/util/List;

.field public r:Ljava/util/List;

.field public s:Ljava/util/List;

.field public t:Ljava/util/List;

.field public u:I

.field public v:Ln4/Q;

.field public w:I

.field public x:Ln4/X;

.field public y:Ljava/util/List;

.field public z:Ln4/e0;


# direct methods
.method public static h()Ln4/h;
    .locals 2

    new-instance v0, Ln4/h;

    invoke-direct {v0}, Lt4/l;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Ln4/h;->h:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/h;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/h;->l:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/h;->m:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/h;->n:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/h;->o:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/h;->p:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/h;->q:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/h;->r:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/h;->s:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/h;->t:Ljava/util/List;

    sget-object v1, Ln4/Q;->w:Ln4/Q;

    iput-object v1, v0, Ln4/h;->v:Ln4/Q;

    sget-object v1, Ln4/X;->j:Ln4/X;

    iput-object v1, v0, Ln4/h;->x:Ln4/X;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/h;->y:Ljava/util/List;

    sget-object v1, Ln4/e0;->h:Ln4/e0;

    iput-object v1, v0, Ln4/h;->z:Ln4/e0;

    return-object v0
.end method


# virtual methods
.method public final c()Lt4/b;
    .locals 1

    invoke-virtual {p0}, Ln4/h;->g()Ln4/j;

    move-result-object p0

    invoke-virtual {p0}, Ln4/j;->b()Z

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

    invoke-static {}, Ln4/h;->h()Ln4/h;

    move-result-object v0

    invoke-virtual {p0}, Ln4/h;->g()Ln4/j;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln4/h;->i(Ln4/j;)V

    return-object v0
.end method

.method public final d(Lt4/f;Lt4/i;)Lt4/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln4/j;->F:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ln4/j;

    invoke-direct {v1, p1, p2}, Ln4/j;-><init>(Lt4/f;Lt4/i;)V
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Ln4/h;->i(Ln4/j;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lt4/s;->d:Lt4/b;

    check-cast p2, Ln4/j;
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

    invoke-virtual {p0, v0}, Ln4/h;->i(Ln4/j;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(Lt4/p;)Lt4/k;
    .locals 0

    check-cast p1, Ln4/j;

    invoke-virtual {p0, p1}, Ln4/h;->i(Ln4/j;)V

    return-object p0
.end method

.method public final g()Ln4/j;
    .locals 5

    new-instance v0, Ln4/j;

    invoke-direct {v0, p0}, Ln4/j;-><init>(Ln4/h;)V

    iget v1, p0, Ln4/h;->g:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Ln4/h;->h:I

    iput v2, v0, Ln4/j;->g:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Ln4/h;->i:I

    iput v2, v0, Ln4/j;->h:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget v2, p0, Ln4/h;->j:I

    iput v2, v0, Ln4/j;->i:I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Ln4/h;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/h;->k:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Ln4/h;->g:I

    :cond_3
    iget-object v2, p0, Ln4/h;->k:Ljava/util/List;

    iput-object v2, v0, Ln4/j;->j:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Ln4/h;->l:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/h;->l:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Ln4/h;->g:I

    :cond_4
    iget-object v2, p0, Ln4/h;->l:Ljava/util/List;

    iput-object v2, v0, Ln4/j;->k:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Ln4/h;->m:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/h;->m:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Ln4/h;->g:I

    :cond_5
    iget-object v2, p0, Ln4/h;->m:Ljava/util/List;

    iput-object v2, v0, Ln4/j;->l:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Ln4/h;->n:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/h;->n:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Ln4/h;->g:I

    :cond_6
    iget-object v2, p0, Ln4/h;->n:Ljava/util/List;

    iput-object v2, v0, Ln4/j;->n:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    const/16 v4, 0x80

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Ln4/h;->o:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/h;->o:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Ln4/h;->g:I

    :cond_7
    iget-object v2, p0, Ln4/h;->o:Ljava/util/List;

    iput-object v2, v0, Ln4/j;->p:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    const/16 v4, 0x100

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Ln4/h;->p:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/h;->p:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Ln4/h;->g:I

    :cond_8
    iget-object v2, p0, Ln4/h;->p:Ljava/util/List;

    iput-object v2, v0, Ln4/j;->q:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    const/16 v4, 0x200

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9

    iget-object v2, p0, Ln4/h;->q:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/h;->q:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Ln4/h;->g:I

    :cond_9
    iget-object v2, p0, Ln4/h;->q:Ljava/util/List;

    iput-object v2, v0, Ln4/j;->r:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    const/16 v4, 0x400

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_a

    iget-object v2, p0, Ln4/h;->r:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/h;->r:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Ln4/h;->g:I

    :cond_a
    iget-object v2, p0, Ln4/h;->r:Ljava/util/List;

    iput-object v2, v0, Ln4/j;->s:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    const/16 v4, 0x800

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Ln4/h;->s:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/h;->s:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    and-int/lit16 v2, v2, -0x801

    iput v2, p0, Ln4/h;->g:I

    :cond_b
    iget-object v2, p0, Ln4/h;->s:Ljava/util/List;

    iput-object v2, v0, Ln4/j;->t:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    const/16 v4, 0x1000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_c

    iget-object v2, p0, Ln4/h;->t:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/h;->t:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    and-int/lit16 v2, v2, -0x1001

    iput v2, p0, Ln4/h;->g:I

    :cond_c
    iget-object v2, p0, Ln4/h;->t:Ljava/util/List;

    iput-object v2, v0, Ln4/j;->u:Ljava/util/List;

    and-int/lit16 v2, v1, 0x2000

    const/16 v4, 0x2000

    if-ne v2, v4, :cond_d

    or-int/lit8 v3, v3, 0x8

    :cond_d
    iget v2, p0, Ln4/h;->u:I

    iput v2, v0, Ln4/j;->w:I

    and-int/lit16 v2, v1, 0x4000

    const/16 v4, 0x4000

    if-ne v2, v4, :cond_e

    or-int/lit8 v3, v3, 0x10

    :cond_e
    iget-object v2, p0, Ln4/h;->v:Ln4/Q;

    iput-object v2, v0, Ln4/j;->x:Ln4/Q;

    const v2, 0x8000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_f

    or-int/lit8 v3, v3, 0x20

    :cond_f
    iget v2, p0, Ln4/h;->w:I

    iput v2, v0, Ln4/j;->y:I

    const/high16 v2, 0x10000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_10

    or-int/lit8 v3, v3, 0x40

    :cond_10
    iget-object v2, p0, Ln4/h;->x:Ln4/X;

    iput-object v2, v0, Ln4/j;->z:Ln4/X;

    iget v2, p0, Ln4/h;->g:I

    const/high16 v4, 0x20000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_11

    iget-object v2, p0, Ln4/h;->y:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/h;->y:Ljava/util/List;

    iget v2, p0, Ln4/h;->g:I

    const v4, -0x20001

    and-int/2addr v2, v4

    iput v2, p0, Ln4/h;->g:I

    :cond_11
    iget-object v2, p0, Ln4/h;->y:Ljava/util/List;

    iput-object v2, v0, Ln4/j;->A:Ljava/util/List;

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    or-int/lit16 v3, v3, 0x80

    :cond_12
    iget-object p0, p0, Ln4/h;->z:Ln4/e0;

    iput-object p0, v0, Ln4/j;->B:Ln4/e0;

    iput v3, v0, Ln4/j;->f:I

    return-object v0
.end method

.method public final i(Ln4/j;)V
    .locals 8

    sget-object v0, Ln4/j;->E:Ln4/j;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Ln4/j;->f:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, Ln4/j;->g:I

    iget v3, p0, Ln4/h;->g:I

    or-int/2addr v2, v3

    iput v2, p0, Ln4/h;->g:I

    iput v1, p0, Ln4/h;->h:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p1, Ln4/j;->h:I

    iget v3, p0, Ln4/h;->g:I

    or-int/2addr v2, v3

    iput v2, p0, Ln4/h;->g:I

    iput v1, p0, Ln4/h;->i:I

    :cond_2
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget v0, p1, Ln4/j;->i:I

    iget v2, p0, Ln4/h;->g:I

    or-int/2addr v1, v2

    iput v1, p0, Ln4/h;->g:I

    iput v0, p0, Ln4/h;->j:I

    :cond_3
    iget-object v0, p1, Ln4/j;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    iget-object v0, p0, Ln4/h;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Ln4/j;->j:Ljava/util/List;

    iput-object v0, p0, Ln4/h;->k:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Ln4/h;->g:I

    goto :goto_0

    :cond_4
    iget v0, p0, Ln4/h;->g:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ln4/h;->k:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/h;->k:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/h;->g:I

    :cond_5
    iget-object v0, p0, Ln4/h;->k:Ljava/util/List;

    iget-object v2, p1, Ln4/j;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    :goto_0
    iget-object v0, p1, Ln4/j;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v2, 0x10

    if-nez v0, :cond_9

    iget-object v0, p0, Ln4/h;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Ln4/j;->k:Ljava/util/List;

    iput-object v0, p0, Ln4/h;->l:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Ln4/h;->g:I

    goto :goto_1

    :cond_7
    iget v0, p0, Ln4/h;->g:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Ln4/h;->l:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/h;->l:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    or-int/2addr v0, v2

    iput v0, p0, Ln4/h;->g:I

    :cond_8
    iget-object v0, p0, Ln4/h;->l:Ljava/util/List;

    iget-object v3, p1, Ln4/j;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    :goto_1
    iget-object v0, p1, Ln4/j;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v3, 0x20

    if-nez v0, :cond_c

    iget-object v0, p0, Ln4/h;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Ln4/j;->l:Ljava/util/List;

    iput-object v0, p0, Ln4/h;->m:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Ln4/h;->g:I

    goto :goto_2

    :cond_a
    iget v0, p0, Ln4/h;->g:I

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Ln4/h;->m:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/h;->m:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    or-int/2addr v0, v3

    iput v0, p0, Ln4/h;->g:I

    :cond_b
    iget-object v0, p0, Ln4/h;->m:Ljava/util/List;

    iget-object v4, p1, Ln4/j;->l:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    :goto_2
    iget-object v0, p1, Ln4/j;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v4, 0x40

    if-nez v0, :cond_f

    iget-object v0, p0, Ln4/h;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Ln4/j;->n:Ljava/util/List;

    iput-object v0, p0, Ln4/h;->n:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Ln4/h;->g:I

    goto :goto_3

    :cond_d
    iget v0, p0, Ln4/h;->g:I

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Ln4/h;->n:Ljava/util/List;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/h;->n:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    or-int/2addr v0, v4

    iput v0, p0, Ln4/h;->g:I

    :cond_e
    iget-object v0, p0, Ln4/h;->n:Ljava/util/List;

    iget-object v5, p1, Ln4/j;->n:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_f
    :goto_3
    iget-object v0, p1, Ln4/j;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v5, 0x80

    if-nez v0, :cond_12

    iget-object v0, p0, Ln4/h;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Ln4/j;->p:Ljava/util/List;

    iput-object v0, p0, Ln4/h;->o:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Ln4/h;->g:I

    goto :goto_4

    :cond_10
    iget v0, p0, Ln4/h;->g:I

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, p0, Ln4/h;->o:Ljava/util/List;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/h;->o:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    or-int/2addr v0, v5

    iput v0, p0, Ln4/h;->g:I

    :cond_11
    iget-object v0, p0, Ln4/h;->o:Ljava/util/List;

    iget-object v6, p1, Ln4/j;->p:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_12
    :goto_4
    iget-object v0, p1, Ln4/j;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Ln4/h;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p1, Ln4/j;->q:Ljava/util/List;

    iput-object v0, p0, Ln4/h;->p:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Ln4/h;->g:I

    goto :goto_5

    :cond_13
    iget v0, p0, Ln4/h;->g:I

    const/16 v6, 0x100

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Ln4/h;->p:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/h;->p:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    or-int/2addr v0, v6

    iput v0, p0, Ln4/h;->g:I

    :cond_14
    iget-object v0, p0, Ln4/h;->p:Ljava/util/List;

    iget-object v6, p1, Ln4/j;->q:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_15
    :goto_5
    iget-object v0, p1, Ln4/j;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Ln4/h;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Ln4/j;->r:Ljava/util/List;

    iput-object v0, p0, Ln4/h;->q:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Ln4/h;->g:I

    goto :goto_6

    :cond_16
    iget v0, p0, Ln4/h;->g:I

    const/16 v6, 0x200

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Ln4/h;->q:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/h;->q:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    or-int/2addr v0, v6

    iput v0, p0, Ln4/h;->g:I

    :cond_17
    iget-object v0, p0, Ln4/h;->q:Ljava/util/List;

    iget-object v6, p1, Ln4/j;->r:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_18
    :goto_6
    iget-object v0, p1, Ln4/j;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Ln4/h;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p1, Ln4/j;->s:Ljava/util/List;

    iput-object v0, p0, Ln4/h;->r:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Ln4/h;->g:I

    goto :goto_7

    :cond_19
    iget v0, p0, Ln4/h;->g:I

    const/16 v6, 0x400

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Ln4/h;->r:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/h;->r:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    or-int/2addr v0, v6

    iput v0, p0, Ln4/h;->g:I

    :cond_1a
    iget-object v0, p0, Ln4/h;->r:Ljava/util/List;

    iget-object v6, p1, Ln4/j;->s:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1b
    :goto_7
    iget-object v0, p1, Ln4/j;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Ln4/h;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p1, Ln4/j;->t:Ljava/util/List;

    iput-object v0, p0, Ln4/h;->s:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Ln4/h;->g:I

    goto :goto_8

    :cond_1c
    iget v0, p0, Ln4/h;->g:I

    const/16 v6, 0x800

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Ln4/h;->s:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/h;->s:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    or-int/2addr v0, v6

    iput v0, p0, Ln4/h;->g:I

    :cond_1d
    iget-object v0, p0, Ln4/h;->s:Ljava/util/List;

    iget-object v6, p1, Ln4/j;->t:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1e
    :goto_8
    iget-object v0, p1, Ln4/j;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Ln4/h;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p1, Ln4/j;->u:Ljava/util/List;

    iput-object v0, p0, Ln4/h;->t:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Ln4/h;->g:I

    goto :goto_9

    :cond_1f
    iget v0, p0, Ln4/h;->g:I

    const/16 v6, 0x1000

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_20

    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Ln4/h;->t:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/h;->t:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    or-int/2addr v0, v6

    iput v0, p0, Ln4/h;->g:I

    :cond_20
    iget-object v0, p0, Ln4/h;->t:Ljava/util/List;

    iget-object v6, p1, Ln4/j;->u:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_21
    :goto_9
    iget v0, p1, Ln4/j;->f:I

    and-int/lit8 v6, v0, 0x8

    if-ne v6, v1, :cond_22

    iget v1, p1, Ln4/j;->w:I

    iget v6, p0, Ln4/h;->g:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, p0, Ln4/h;->g:I

    iput v1, p0, Ln4/h;->u:I

    :cond_22
    and-int/2addr v0, v2

    if-ne v0, v2, :cond_24

    iget-object v0, p1, Ln4/j;->x:Ln4/Q;

    iget v1, p0, Ln4/h;->g:I

    const/16 v2, 0x4000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Ln4/h;->v:Ln4/Q;

    sget-object v6, Ln4/Q;->w:Ln4/Q;

    if-eq v1, v6, :cond_23

    invoke-static {v1}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v1

    invoke-virtual {v1, v0}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    invoke-virtual {v1}, Ln4/P;->g()Ln4/Q;

    move-result-object v0

    iput-object v0, p0, Ln4/h;->v:Ln4/Q;

    goto :goto_a

    :cond_23
    iput-object v0, p0, Ln4/h;->v:Ln4/Q;

    :goto_a
    iget v0, p0, Ln4/h;->g:I

    or-int/2addr v0, v2

    iput v0, p0, Ln4/h;->g:I

    :cond_24
    iget v0, p1, Ln4/j;->f:I

    and-int/lit8 v1, v0, 0x20

    if-ne v1, v3, :cond_25

    iget v1, p1, Ln4/j;->y:I

    iget v2, p0, Ln4/h;->g:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, p0, Ln4/h;->g:I

    iput v1, p0, Ln4/h;->w:I

    :cond_25
    and-int/2addr v0, v4

    if-ne v0, v4, :cond_27

    iget-object v0, p1, Ln4/j;->z:Ln4/X;

    iget v1, p0, Ln4/h;->g:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_26

    iget-object v1, p0, Ln4/h;->x:Ln4/X;

    sget-object v3, Ln4/X;->j:Ln4/X;

    if-eq v1, v3, :cond_26

    invoke-static {v1}, Ln4/X;->i(Ln4/X;)Ln4/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Ln4/f;->l(Ln4/X;)V

    invoke-virtual {v1}, Ln4/f;->h()Ln4/X;

    move-result-object v0

    iput-object v0, p0, Ln4/h;->x:Ln4/X;

    goto :goto_b

    :cond_26
    iput-object v0, p0, Ln4/h;->x:Ln4/X;

    :goto_b
    iget v0, p0, Ln4/h;->g:I

    or-int/2addr v0, v2

    iput v0, p0, Ln4/h;->g:I

    :cond_27
    iget-object v0, p1, Ln4/j;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Ln4/h;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p1, Ln4/j;->A:Ljava/util/List;

    iput-object v0, p0, Ln4/h;->y:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Ln4/h;->g:I

    goto :goto_c

    :cond_28
    iget v0, p0, Ln4/h;->g:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_29

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ln4/h;->y:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/h;->y:Ljava/util/List;

    iget v0, p0, Ln4/h;->g:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/h;->g:I

    :cond_29
    iget-object v0, p0, Ln4/h;->y:Ljava/util/List;

    iget-object v1, p1, Ln4/j;->A:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2a
    :goto_c
    iget v0, p1, Ln4/j;->f:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_2c

    iget-object v0, p1, Ln4/j;->B:Ln4/e0;

    iget v1, p0, Ln4/h;->g:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2b

    iget-object v1, p0, Ln4/h;->z:Ln4/e0;

    sget-object v3, Ln4/e0;->h:Ln4/e0;

    if-eq v1, v3, :cond_2b

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

    iput-object v0, p0, Ln4/h;->z:Ln4/e0;

    goto :goto_d

    :cond_2b
    iput-object v0, p0, Ln4/h;->z:Ln4/e0;

    :goto_d
    iget v0, p0, Ln4/h;->g:I

    or-int/2addr v0, v2

    iput v0, p0, Ln4/h;->g:I

    :cond_2c
    invoke-virtual {p0, p1}, Lt4/l;->f(Lt4/m;)V

    iget-object v0, p0, Lt4/k;->d:Lt4/e;

    iget-object p1, p1, Ln4/j;->e:Lt4/e;

    invoke-virtual {v0, p1}, Lt4/e;->h(Lt4/e;)Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lt4/k;->d:Lt4/e;

    return-void
.end method
