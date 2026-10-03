.class public final Lq4/e;
.super Lt4/k;
.source "SourceFile"

# interfaces
.implements Lt4/x;


# instance fields
.field public e:I

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;


# direct methods
.method public static g()Lq4/e;
    .locals 2

    new-instance v0, Lq4/e;

    invoke-direct {v0}, Lt4/k;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq4/e;->f:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq4/e;->g:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final c()Lt4/b;
    .locals 1

    invoke-virtual {p0}, Lq4/e;->f()Lq4/i;

    move-result-object p0

    invoke-virtual {p0}, Lq4/i;->b()Z

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

    invoke-static {}, Lq4/e;->g()Lq4/e;

    move-result-object v0

    invoke-virtual {p0}, Lq4/e;->f()Lq4/i;

    move-result-object p0

    invoke-virtual {v0, p0}, Lq4/e;->h(Lq4/i;)V

    return-object v0
.end method

.method public final d(Lt4/f;Lt4/i;)Lt4/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lq4/i;->k:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lq4/i;

    invoke-direct {v1, p1, p2}, Lq4/i;-><init>(Lt4/f;Lt4/i;)V
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lq4/e;->h(Lq4/i;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lt4/s;->d:Lt4/b;

    check-cast p2, Lq4/i;
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

    invoke-virtual {p0, v0}, Lq4/e;->h(Lq4/i;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(Lt4/p;)Lt4/k;
    .locals 0

    check-cast p1, Lq4/i;

    invoke-virtual {p0, p1}, Lq4/e;->h(Lq4/i;)V

    return-object p0
.end method

.method public final f()Lq4/i;
    .locals 3

    new-instance v0, Lq4/i;

    invoke-direct {v0, p0}, Lq4/i;-><init>(Lq4/e;)V

    iget v1, p0, Lq4/e;->e:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lq4/e;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lq4/e;->f:Ljava/util/List;

    iget v1, p0, Lq4/e;->e:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lq4/e;->e:I

    :cond_0
    iget-object v1, p0, Lq4/e;->f:Ljava/util/List;

    iput-object v1, v0, Lq4/i;->e:Ljava/util/List;

    iget v1, p0, Lq4/e;->e:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lq4/e;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lq4/e;->g:Ljava/util/List;

    iget v1, p0, Lq4/e;->e:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lq4/e;->e:I

    :cond_1
    iget-object p0, p0, Lq4/e;->g:Ljava/util/List;

    iput-object p0, v0, Lq4/i;->f:Ljava/util/List;

    return-object v0
.end method

.method public final h(Lq4/i;)V
    .locals 3

    sget-object v0, Lq4/i;->j:Lq4/i;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lq4/i;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lq4/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lq4/i;->e:Ljava/util/List;

    iput-object v0, p0, Lq4/e;->f:Ljava/util/List;

    iget v0, p0, Lq4/e;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lq4/e;->e:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lq4/e;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lq4/e;->f:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lq4/e;->f:Ljava/util/List;

    iget v0, p0, Lq4/e;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lq4/e;->e:I

    :cond_2
    iget-object v0, p0, Lq4/e;->f:Ljava/util/List;

    iget-object v1, p1, Lq4/i;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    iget-object v0, p1, Lq4/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lq4/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lq4/i;->f:Ljava/util/List;

    iput-object v0, p0, Lq4/e;->g:Ljava/util/List;

    iget v0, p0, Lq4/e;->e:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lq4/e;->e:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lq4/e;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lq4/e;->g:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lq4/e;->g:Ljava/util/List;

    iget v0, p0, Lq4/e;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Lq4/e;->e:I

    :cond_5
    iget-object v0, p0, Lq4/e;->g:Ljava/util/List;

    iget-object v1, p1, Lq4/i;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    :goto_1
    iget-object v0, p0, Lt4/k;->d:Lt4/e;

    iget-object p1, p1, Lq4/i;->d:Lt4/e;

    invoke-virtual {v0, p1}, Lt4/e;->h(Lt4/e;)Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lt4/k;->d:Lt4/e;

    return-void
.end method
