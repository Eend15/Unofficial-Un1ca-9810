.class public final Ln4/u;
.super Lt4/k;
.source "SourceFile"

# interfaces
.implements Lt4/x;


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:Ln4/v;

.field public i:Ln4/Q;

.field public j:I

.field public k:Ljava/util/List;

.field public l:Ljava/util/List;


# direct methods
.method public static g()Ln4/u;
    .locals 2

    new-instance v0, Ln4/u;

    invoke-direct {v0}, Lt4/k;-><init>()V

    sget-object v1, Ln4/v;->e:Ln4/v;

    iput-object v1, v0, Ln4/u;->h:Ln4/v;

    sget-object v1, Ln4/Q;->w:Ln4/Q;

    iput-object v1, v0, Ln4/u;->i:Ln4/Q;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/u;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/u;->l:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final c()Lt4/b;
    .locals 1

    invoke-virtual {p0}, Ln4/u;->f()Ln4/w;

    move-result-object p0

    invoke-virtual {p0}, Ln4/w;->b()Z

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

    invoke-static {}, Ln4/u;->g()Ln4/u;

    move-result-object v0

    invoke-virtual {p0}, Ln4/u;->f()Ln4/w;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln4/u;->h(Ln4/w;)V

    return-object v0
.end method

.method public final d(Lt4/f;Lt4/i;)Lt4/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln4/w;->p:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ln4/w;

    invoke-direct {v1, p1, p2}, Ln4/w;-><init>(Lt4/f;Lt4/i;)V
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Ln4/u;->h(Ln4/w;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lt4/s;->d:Lt4/b;

    check-cast p2, Ln4/w;
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

    invoke-virtual {p0, v0}, Ln4/u;->h(Ln4/w;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(Lt4/p;)Lt4/k;
    .locals 0

    check-cast p1, Ln4/w;

    invoke-virtual {p0, p1}, Ln4/u;->h(Ln4/w;)V

    return-object p0
.end method

.method public final f()Ln4/w;
    .locals 5

    new-instance v0, Ln4/w;

    invoke-direct {v0, p0}, Ln4/w;-><init>(Ln4/u;)V

    iget v1, p0, Ln4/u;->e:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Ln4/u;->f:I

    iput v2, v0, Ln4/w;->f:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Ln4/u;->g:I

    iput v2, v0, Ln4/w;->g:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, Ln4/u;->h:Ln4/v;

    iput-object v2, v0, Ln4/w;->h:Ln4/v;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-object v2, p0, Ln4/u;->i:Ln4/Q;

    iput-object v2, v0, Ln4/w;->i:Ln4/Q;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget v2, p0, Ln4/u;->j:I

    iput v2, v0, Ln4/w;->j:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Ln4/u;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/u;->k:Ljava/util/List;

    iget v1, p0, Ln4/u;->e:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Ln4/u;->e:I

    :cond_5
    iget-object v1, p0, Ln4/u;->k:Ljava/util/List;

    iput-object v1, v0, Ln4/w;->k:Ljava/util/List;

    iget v1, p0, Ln4/u;->e:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Ln4/u;->l:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/u;->l:Ljava/util/List;

    iget v1, p0, Ln4/u;->e:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Ln4/u;->e:I

    :cond_6
    iget-object p0, p0, Ln4/u;->l:Ljava/util/List;

    iput-object p0, v0, Ln4/w;->l:Ljava/util/List;

    iput v3, v0, Ln4/w;->e:I

    return-object v0
.end method

.method public final h(Ln4/w;)V
    .locals 4

    sget-object v0, Ln4/w;->o:Ln4/w;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Ln4/w;->e:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, Ln4/w;->f:I

    iget v3, p0, Ln4/u;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Ln4/u;->e:I

    iput v1, p0, Ln4/u;->f:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p1, Ln4/w;->g:I

    iget v3, p0, Ln4/u;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Ln4/u;->e:I

    iput v1, p0, Ln4/u;->g:I

    :cond_2
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Ln4/w;->h:Ln4/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Ln4/u;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Ln4/u;->e:I

    iput-object v0, p0, Ln4/u;->h:Ln4/v;

    :cond_3
    iget v0, p1, Ln4/w;->e:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Ln4/w;->i:Ln4/Q;

    iget v2, p0, Ln4/u;->e:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Ln4/u;->i:Ln4/Q;

    sget-object v3, Ln4/Q;->w:Ln4/Q;

    if-eq v2, v3, :cond_4

    invoke-static {v2}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v2

    invoke-virtual {v2, v0}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    invoke-virtual {v2}, Ln4/P;->g()Ln4/Q;

    move-result-object v0

    iput-object v0, p0, Ln4/u;->i:Ln4/Q;

    goto :goto_0

    :cond_4
    iput-object v0, p0, Ln4/u;->i:Ln4/Q;

    :goto_0
    iget v0, p0, Ln4/u;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/u;->e:I

    :cond_5
    iget v0, p1, Ln4/w;->e:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    iget v0, p1, Ln4/w;->j:I

    iget v2, p0, Ln4/u;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Ln4/u;->e:I

    iput v0, p0, Ln4/u;->j:I

    :cond_6
    iget-object v0, p1, Ln4/w;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Ln4/u;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Ln4/w;->k:Ljava/util/List;

    iput-object v0, p0, Ln4/u;->k:Ljava/util/List;

    iget v0, p0, Ln4/u;->e:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Ln4/u;->e:I

    goto :goto_1

    :cond_7
    iget v0, p0, Ln4/u;->e:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ln4/u;->k:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/u;->k:Ljava/util/List;

    iget v0, p0, Ln4/u;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/u;->e:I

    :cond_8
    iget-object v0, p0, Ln4/u;->k:Ljava/util/List;

    iget-object v1, p1, Ln4/w;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    :goto_1
    iget-object v0, p1, Ln4/w;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Ln4/u;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Ln4/w;->l:Ljava/util/List;

    iput-object v0, p0, Ln4/u;->l:Ljava/util/List;

    iget v0, p0, Ln4/u;->e:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Ln4/u;->e:I

    goto :goto_2

    :cond_a
    iget v0, p0, Ln4/u;->e:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ln4/u;->l:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/u;->l:Ljava/util/List;

    iget v0, p0, Ln4/u;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/u;->e:I

    :cond_b
    iget-object v0, p0, Ln4/u;->l:Ljava/util/List;

    iget-object v1, p1, Ln4/w;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    :goto_2
    iget-object v0, p0, Lt4/k;->d:Lt4/e;

    iget-object p1, p1, Ln4/w;->d:Lt4/e;

    invoke-virtual {v0, p1}, Lt4/e;->h(Lt4/e;)Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lt4/k;->d:Lt4/e;

    return-void
.end method
