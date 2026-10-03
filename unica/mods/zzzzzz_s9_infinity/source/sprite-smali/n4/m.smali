.class public final Ln4/m;
.super Lt4/k;
.source "SourceFile"

# interfaces
.implements Lt4/x;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public g:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ln4/m;->e:I

    invoke-direct {p0}, Lt4/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lt4/b;
    .locals 1

    iget v0, p0, Ln4/m;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ln4/m;->h()Ln4/L;

    move-result-object p0

    invoke-virtual {p0}, Ln4/L;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, LW4/m;

    invoke-direct {p0}, LW4/m;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Ln4/m;->i()Ln4/e0;

    move-result-object p0

    invoke-virtual {p0}, Ln4/e0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, LW4/m;

    invoke-direct {p0}, LW4/m;-><init>()V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Ln4/m;->g()Ln4/K;

    move-result-object p0

    invoke-virtual {p0}, Ln4/K;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, LW4/m;

    invoke-direct {p0}, LW4/m;-><init>()V

    throw p0

    :pswitch_2
    invoke-virtual {p0}, Ln4/m;->f()Ln4/n;

    move-result-object p0

    invoke-virtual {p0}, Ln4/n;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, LW4/m;

    invoke-direct {p0}, LW4/m;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ln4/m;->e:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ln4/m;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ln4/m;-><init>(I)V

    sget-object v1, Lt4/t;->e:Lt4/J;

    iput-object v1, v0, Ln4/m;->g:Ljava/util/List;

    invoke-virtual {p0}, Ln4/m;->h()Ln4/L;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln4/m;->l(Ln4/L;)V

    return-object v0

    :pswitch_0
    new-instance v0, Ln4/m;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ln4/m;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/m;->g:Ljava/util/List;

    invoke-virtual {p0}, Ln4/m;->i()Ln4/e0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln4/m;->m(Ln4/e0;)V

    return-object v0

    :pswitch_1
    new-instance v0, Ln4/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ln4/m;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/m;->g:Ljava/util/List;

    invoke-virtual {p0}, Ln4/m;->g()Ln4/K;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln4/m;->k(Ln4/K;)V

    return-object v0

    :pswitch_2
    new-instance v0, Ln4/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln4/m;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/m;->g:Ljava/util/List;

    invoke-virtual {p0}, Ln4/m;->f()Ln4/n;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln4/m;->j(Ln4/n;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lt4/f;Lt4/i;)Lt4/k;
    .locals 2

    iget v0, p0, Ln4/m;->e:I

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x0

    :try_start_0
    sget-object v0, Ln4/L;->i:Ln4/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ln4/L;

    invoke-direct {v0, p1}, Ln4/L;-><init>(Lt4/f;)V
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Ln4/m;->l(Ln4/L;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object v0, p1, Lt4/s;->d:Lt4/b;

    check-cast v0, Ln4/L;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ln4/m;->l(Ln4/L;)V

    :cond_0
    throw p1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_3
    sget-object v1, Ln4/e0;->i:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ln4/e0;

    invoke-direct {v1, p1, p2}, Ln4/e0;-><init>(Lt4/f;Lt4/i;)V
    :try_end_3
    .catch Lt4/s; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {p0, v1}, Ln4/m;->m(Ln4/e0;)V

    return-object p0

    :catchall_2
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    iget-object p2, p1, Lt4/s;->d:Lt4/b;

    check-cast p2, Ln4/e0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    move-object v0, p2

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Ln4/m;->m(Ln4/e0;)V

    :cond_1
    throw p1

    :pswitch_1
    const/4 v0, 0x0

    :try_start_6
    sget-object v1, Ln4/K;->i:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ln4/K;

    invoke-direct {v1, p1, p2}, Ln4/K;-><init>(Lt4/f;Lt4/i;)V
    :try_end_6
    .catch Lt4/s; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    invoke-virtual {p0, v1}, Ln4/m;->k(Ln4/K;)V

    return-object p0

    :catchall_4
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    :try_start_7
    iget-object p2, p1, Lt4/s;->d:Lt4/b;

    check-cast p2, Ln4/K;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception p1

    move-object v0, p2

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Ln4/m;->k(Ln4/K;)V

    :cond_2
    throw p1

    :pswitch_2
    const/4 v0, 0x0

    :try_start_9
    sget-object v1, Ln4/n;->i:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ln4/n;

    invoke-direct {v1, p1, p2}, Ln4/n;-><init>(Lt4/f;Lt4/i;)V
    :try_end_9
    .catch Lt4/s; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    invoke-virtual {p0, v1}, Ln4/m;->j(Ln4/n;)V

    return-object p0

    :catchall_6
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    :try_start_a
    iget-object p2, p1, Lt4/s;->d:Lt4/b;

    check-cast p2, Ln4/n;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception p1

    move-object v0, p2

    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Ln4/m;->j(Ln4/n;)V

    :cond_3
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic e(Lt4/p;)Lt4/k;
    .locals 1

    iget v0, p0, Ln4/m;->e:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ln4/L;

    invoke-virtual {p0, p1}, Ln4/m;->l(Ln4/L;)V

    return-object p0

    :pswitch_0
    check-cast p1, Ln4/e0;

    invoke-virtual {p0, p1}, Ln4/m;->m(Ln4/e0;)V

    return-object p0

    :pswitch_1
    check-cast p1, Ln4/K;

    invoke-virtual {p0, p1}, Ln4/m;->k(Ln4/K;)V

    return-object p0

    :pswitch_2
    check-cast p1, Ln4/n;

    invoke-virtual {p0, p1}, Ln4/m;->j(Ln4/n;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f()Ln4/n;
    .locals 3

    new-instance v0, Ln4/n;

    invoke-direct {v0, p0}, Ln4/n;-><init>(Ln4/m;)V

    iget v1, p0, Ln4/m;->f:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Ln4/m;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/m;->g:Ljava/util/List;

    iget v1, p0, Ln4/m;->f:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Ln4/m;->f:I

    :cond_0
    iget-object p0, p0, Ln4/m;->g:Ljava/util/List;

    iput-object p0, v0, Ln4/n;->e:Ljava/util/List;

    return-object v0
.end method

.method public g()Ln4/K;
    .locals 3

    new-instance v0, Ln4/K;

    invoke-direct {v0, p0}, Ln4/K;-><init>(Ln4/m;)V

    iget v1, p0, Ln4/m;->f:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Ln4/m;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/m;->g:Ljava/util/List;

    iget v1, p0, Ln4/m;->f:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Ln4/m;->f:I

    :cond_0
    iget-object p0, p0, Ln4/m;->g:Ljava/util/List;

    iput-object p0, v0, Ln4/K;->e:Ljava/util/List;

    return-object v0
.end method

.method public h()Ln4/L;
    .locals 3

    new-instance v0, Ln4/L;

    invoke-direct {v0, p0}, Ln4/L;-><init>(Ln4/m;)V

    iget v1, p0, Ln4/m;->f:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Ln4/m;->g:Ljava/util/List;

    check-cast v1, Lt4/u;

    invoke-interface {v1}, Lt4/u;->b()Lt4/J;

    move-result-object v1

    iput-object v1, p0, Ln4/m;->g:Ljava/util/List;

    iget v1, p0, Ln4/m;->f:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Ln4/m;->f:I

    :cond_0
    iget-object p0, p0, Ln4/m;->g:Ljava/util/List;

    check-cast p0, Lt4/u;

    iput-object p0, v0, Ln4/L;->e:Lt4/u;

    return-object v0
.end method

.method public i()Ln4/e0;
    .locals 3

    new-instance v0, Ln4/e0;

    invoke-direct {v0, p0}, Ln4/e0;-><init>(Ln4/m;)V

    iget v1, p0, Ln4/m;->f:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Ln4/m;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/m;->g:Ljava/util/List;

    iget v1, p0, Ln4/m;->f:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Ln4/m;->f:I

    :cond_0
    iget-object p0, p0, Ln4/m;->g:Ljava/util/List;

    iput-object p0, v0, Ln4/e0;->e:Ljava/util/List;

    return-object v0
.end method

.method public j(Ln4/n;)V
    .locals 3

    sget-object v0, Ln4/n;->h:Ln4/n;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Ln4/n;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ln4/m;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Ln4/n;->e:Ljava/util/List;

    iput-object v0, p0, Ln4/m;->g:Ljava/util/List;

    iget v0, p0, Ln4/m;->f:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Ln4/m;->f:I

    goto :goto_0

    :cond_1
    iget v0, p0, Ln4/m;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ln4/m;->g:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/m;->g:Ljava/util/List;

    iget v0, p0, Ln4/m;->f:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/m;->f:I

    :cond_2
    iget-object v0, p0, Ln4/m;->g:Ljava/util/List;

    iget-object v1, p1, Ln4/n;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Lt4/k;->d:Lt4/e;

    iget-object p1, p1, Ln4/n;->d:Lt4/e;

    invoke-virtual {v0, p1}, Lt4/e;->h(Lt4/e;)Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lt4/k;->d:Lt4/e;

    return-void
.end method

.method public k(Ln4/K;)V
    .locals 3

    sget-object v0, Ln4/K;->h:Ln4/K;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Ln4/K;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ln4/m;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Ln4/K;->e:Ljava/util/List;

    iput-object v0, p0, Ln4/m;->g:Ljava/util/List;

    iget v0, p0, Ln4/m;->f:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Ln4/m;->f:I

    goto :goto_0

    :cond_1
    iget v0, p0, Ln4/m;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ln4/m;->g:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/m;->g:Ljava/util/List;

    iget v0, p0, Ln4/m;->f:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/m;->f:I

    :cond_2
    iget-object v0, p0, Ln4/m;->g:Ljava/util/List;

    iget-object v1, p1, Ln4/K;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Lt4/k;->d:Lt4/e;

    iget-object p1, p1, Ln4/K;->d:Lt4/e;

    invoke-virtual {v0, p1}, Lt4/e;->h(Lt4/e;)Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lt4/k;->d:Lt4/e;

    return-void
.end method

.method public l(Ln4/L;)V
    .locals 3

    sget-object v0, Ln4/L;->h:Ln4/L;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Ln4/L;->e:Lt4/u;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ln4/m;->g:Ljava/util/List;

    check-cast v0, Lt4/u;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Ln4/L;->e:Lt4/u;

    iput-object v0, p0, Ln4/m;->g:Ljava/util/List;

    iget v0, p0, Ln4/m;->f:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Ln4/m;->f:I

    goto :goto_0

    :cond_1
    iget v0, p0, Ln4/m;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    new-instance v0, Lt4/t;

    iget-object v2, p0, Ln4/m;->g:Ljava/util/List;

    check-cast v2, Lt4/u;

    invoke-direct {v0, v2}, Lt4/t;-><init>(Lt4/u;)V

    iput-object v0, p0, Ln4/m;->g:Ljava/util/List;

    iget v0, p0, Ln4/m;->f:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/m;->f:I

    :cond_2
    iget-object v0, p0, Ln4/m;->g:Ljava/util/List;

    check-cast v0, Lt4/u;

    iget-object v1, p1, Ln4/L;->e:Lt4/u;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Lt4/k;->d:Lt4/e;

    iget-object p1, p1, Ln4/L;->d:Lt4/e;

    invoke-virtual {v0, p1}, Lt4/e;->h(Lt4/e;)Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lt4/k;->d:Lt4/e;

    return-void
.end method

.method public m(Ln4/e0;)V
    .locals 3

    sget-object v0, Ln4/e0;->h:Ln4/e0;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Ln4/e0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ln4/m;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Ln4/e0;->e:Ljava/util/List;

    iput-object v0, p0, Ln4/m;->g:Ljava/util/List;

    iget v0, p0, Ln4/m;->f:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Ln4/m;->f:I

    goto :goto_0

    :cond_1
    iget v0, p0, Ln4/m;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ln4/m;->g:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/m;->g:Ljava/util/List;

    iget v0, p0, Ln4/m;->f:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/m;->f:I

    :cond_2
    iget-object v0, p0, Ln4/m;->g:Ljava/util/List;

    iget-object v1, p1, Ln4/e0;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Lt4/k;->d:Lt4/e;

    iget-object p1, p1, Ln4/e0;->d:Lt4/e;

    invoke-virtual {v0, p1}, Lt4/e;->h(Lt4/e;)Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lt4/k;->d:Lt4/e;

    return-void
.end method
