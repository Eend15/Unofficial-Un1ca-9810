.class public final Ln4/o;
.super Lt4/k;
.source "SourceFile"

# interfaces
.implements Lt4/x;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public g:Ljava/io/Serializable;

.field public h:Ljava/lang/Object;

.field public i:Lt4/p;

.field public j:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ln4/o;->e:I

    invoke-direct {p0}, Lt4/k;-><init>()V

    return-void
.end method

.method public static h()Ln4/o;
    .locals 2

    new-instance v0, Ln4/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln4/o;-><init>(I)V

    sget-object v1, Ln4/p;->e:Ln4/p;

    iput-object v1, v0, Ln4/o;->g:Ljava/io/Serializable;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/o;->h:Ljava/lang/Object;

    sget-object v1, Ln4/w;->o:Ln4/w;

    iput-object v1, v0, Ln4/o;->i:Lt4/p;

    sget-object v1, Ln4/q;->e:Ln4/q;

    iput-object v1, v0, Ln4/o;->j:Ljava/io/Serializable;

    return-object v0
.end method

.method public static i()Ln4/o;
    .locals 2

    new-instance v0, Ln4/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ln4/o;-><init>(I)V

    sget-object v1, Lq4/b;->j:Lq4/b;

    iput-object v1, v0, Ln4/o;->g:Ljava/io/Serializable;

    sget-object v1, Lq4/c;->j:Lq4/c;

    iput-object v1, v0, Ln4/o;->h:Ljava/lang/Object;

    iput-object v1, v0, Ln4/o;->i:Lt4/p;

    iput-object v1, v0, Ln4/o;->j:Ljava/io/Serializable;

    return-object v0
.end method


# virtual methods
.method public final c()Lt4/b;
    .locals 1

    iget v0, p0, Ln4/o;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ln4/o;->g()Lq4/d;

    move-result-object p0

    invoke-virtual {p0}, Lq4/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, LW4/m;

    invoke-direct {p0}, LW4/m;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Ln4/o;->f()Ln4/r;

    move-result-object p0

    invoke-virtual {p0}, Ln4/r;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, LW4/m;

    invoke-direct {p0}, LW4/m;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ln4/o;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Ln4/o;->i()Ln4/o;

    move-result-object v0

    invoke-virtual {p0}, Ln4/o;->g()Lq4/d;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln4/o;->k(Lq4/d;)V

    return-object v0

    :pswitch_0
    invoke-static {}, Ln4/o;->h()Ln4/o;

    move-result-object v0

    invoke-virtual {p0}, Ln4/o;->f()Ln4/r;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln4/o;->j(Ln4/r;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lt4/f;Lt4/i;)Lt4/k;
    .locals 2

    iget v0, p0, Ln4/o;->e:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lq4/d;->m:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lq4/d;

    invoke-direct {v1, p1, p2}, Lq4/d;-><init>(Lt4/f;Lt4/i;)V
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Ln4/o;->k(Lq4/d;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lt4/s;->d:Lt4/b;

    check-cast p2, Lq4/d;
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

    invoke-virtual {p0, v0}, Ln4/o;->k(Lq4/d;)V

    :cond_0
    throw p1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_3
    sget-object v1, Ln4/r;->m:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ln4/r;

    invoke-direct {v1, p1, p2}, Ln4/r;-><init>(Lt4/f;Lt4/i;)V
    :try_end_3
    .catch Lt4/s; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {p0, v1}, Ln4/o;->j(Ln4/r;)V

    return-object p0

    :catchall_2
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    iget-object p2, p1, Lt4/s;->d:Lt4/b;

    check-cast p2, Ln4/r;
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

    invoke-virtual {p0, v0}, Ln4/o;->j(Ln4/r;)V

    :cond_1
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic e(Lt4/p;)Lt4/k;
    .locals 1

    iget v0, p0, Ln4/o;->e:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lq4/d;

    invoke-virtual {p0, p1}, Ln4/o;->k(Lq4/d;)V

    return-object p0

    :pswitch_0
    check-cast p1, Ln4/r;

    invoke-virtual {p0, p1}, Ln4/o;->j(Ln4/r;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public f()Ln4/r;
    .locals 5

    new-instance v0, Ln4/r;

    invoke-direct {v0, p0}, Ln4/r;-><init>(Ln4/o;)V

    iget v1, p0, Ln4/o;->f:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Ln4/o;->g:Ljava/io/Serializable;

    check-cast v2, Ln4/p;

    iput-object v2, v0, Ln4/r;->f:Ln4/p;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Ln4/o;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/o;->h:Ljava/lang/Object;

    iget v2, p0, Ln4/o;->f:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Ln4/o;->f:I

    :cond_1
    iget-object v2, p0, Ln4/o;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iput-object v2, v0, Ln4/r;->g:Ljava/util/List;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x2

    :cond_2
    iget-object v2, p0, Ln4/o;->i:Lt4/p;

    check-cast v2, Ln4/w;

    iput-object v2, v0, Ln4/r;->h:Ln4/w;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x4

    :cond_3
    iget-object p0, p0, Ln4/o;->j:Ljava/io/Serializable;

    check-cast p0, Ln4/q;

    iput-object p0, v0, Ln4/r;->i:Ln4/q;

    iput v3, v0, Ln4/r;->e:I

    return-object v0
.end method

.method public g()Lq4/d;
    .locals 5

    new-instance v0, Lq4/d;

    invoke-direct {v0, p0}, Lq4/d;-><init>(Ln4/o;)V

    iget v1, p0, Ln4/o;->f:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Ln4/o;->g:Ljava/io/Serializable;

    check-cast v2, Lq4/b;

    iput-object v2, v0, Lq4/d;->f:Lq4/b;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, Ln4/o;->h:Ljava/lang/Object;

    check-cast v2, Lq4/c;

    iput-object v2, v0, Lq4/d;->g:Lq4/c;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, Ln4/o;->i:Lt4/p;

    check-cast v2, Lq4/c;

    iput-object v2, v0, Lq4/d;->h:Lq4/c;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-object p0, p0, Ln4/o;->j:Ljava/io/Serializable;

    check-cast p0, Lq4/c;

    iput-object p0, v0, Lq4/d;->i:Lq4/c;

    iput v3, v0, Lq4/d;->e:I

    return-object v0
.end method

.method public j(Ln4/r;)V
    .locals 4

    sget-object v0, Ln4/r;->l:Ln4/r;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Ln4/r;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Ln4/r;->f:Ln4/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Ln4/o;->f:I

    or-int/2addr v2, v1

    iput v2, p0, Ln4/o;->f:I

    iput-object v0, p0, Ln4/o;->g:Ljava/io/Serializable;

    :cond_1
    iget-object v0, p1, Ln4/r;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_4

    iget-object v0, p0, Ln4/o;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Ln4/r;->g:Ljava/util/List;

    iput-object v0, p0, Ln4/o;->h:Ljava/lang/Object;

    iget v0, p0, Ln4/o;->f:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Ln4/o;->f:I

    goto :goto_0

    :cond_2
    iget v0, p0, Ln4/o;->f:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Ln4/o;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln4/o;->h:Ljava/lang/Object;

    iget v0, p0, Ln4/o;->f:I

    or-int/2addr v0, v2

    iput v0, p0, Ln4/o;->f:I

    :cond_3
    iget-object v0, p0, Ln4/o;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v3, p1, Ln4/r;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_0
    iget v0, p1, Ln4/r;->e:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    const/4 v0, 0x4

    if-eqz v1, :cond_7

    iget-object v1, p1, Ln4/r;->h:Ln4/w;

    iget v2, p0, Ln4/o;->f:I

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_6

    iget-object v2, p0, Ln4/o;->i:Lt4/p;

    check-cast v2, Ln4/w;

    sget-object v3, Ln4/w;->o:Ln4/w;

    if-eq v2, v3, :cond_6

    invoke-static {}, Ln4/u;->g()Ln4/u;

    move-result-object v3

    invoke-virtual {v3, v2}, Ln4/u;->h(Ln4/w;)V

    invoke-virtual {v3, v1}, Ln4/u;->h(Ln4/w;)V

    invoke-virtual {v3}, Ln4/u;->f()Ln4/w;

    move-result-object v1

    iput-object v1, p0, Ln4/o;->i:Lt4/p;

    goto :goto_2

    :cond_6
    iput-object v1, p0, Ln4/o;->i:Lt4/p;

    :goto_2
    iget v1, p0, Ln4/o;->f:I

    or-int/2addr v1, v0

    iput v1, p0, Ln4/o;->f:I

    :cond_7
    iget v1, p1, Ln4/r;->e:I

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_8

    iget-object v0, p1, Ln4/r;->i:Ln4/q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Ln4/o;->f:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Ln4/o;->f:I

    iput-object v0, p0, Ln4/o;->j:Ljava/io/Serializable;

    :cond_8
    iget-object v0, p0, Lt4/k;->d:Lt4/e;

    iget-object p1, p1, Ln4/r;->d:Lt4/e;

    invoke-virtual {v0, p1}, Lt4/e;->h(Lt4/e;)Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lt4/k;->d:Lt4/e;

    return-void
.end method

.method public k(Lq4/d;)V
    .locals 5

    sget-object v0, Lq4/d;->l:Lq4/d;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lq4/d;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lq4/d;->f:Lq4/b;

    iget v2, p0, Ln4/o;->f:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Ln4/o;->g:Ljava/io/Serializable;

    check-cast v2, Lq4/b;

    sget-object v3, Lq4/b;->j:Lq4/b;

    if-eq v2, v3, :cond_1

    new-instance v3, Lq4/a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lq4/a;-><init>(I)V

    invoke-virtual {v3, v2}, Lq4/a;->h(Lq4/b;)V

    invoke-virtual {v3, v0}, Lq4/a;->h(Lq4/b;)V

    invoke-virtual {v3}, Lq4/a;->f()Lq4/b;

    move-result-object v0

    iput-object v0, p0, Ln4/o;->g:Ljava/io/Serializable;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Ln4/o;->g:Ljava/io/Serializable;

    :goto_0
    iget v0, p0, Ln4/o;->f:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/o;->f:I

    :cond_2
    iget v0, p1, Lq4/d;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lq4/d;->g:Lq4/c;

    iget v2, p0, Ln4/o;->f:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Ln4/o;->h:Ljava/lang/Object;

    check-cast v2, Lq4/c;

    sget-object v3, Lq4/c;->j:Lq4/c;

    if-eq v2, v3, :cond_3

    invoke-static {v2}, Lq4/c;->i(Lq4/c;)Lq4/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lq4/a;->i(Lq4/c;)V

    invoke-virtual {v2}, Lq4/a;->g()Lq4/c;

    move-result-object v0

    iput-object v0, p0, Ln4/o;->h:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iput-object v0, p0, Ln4/o;->h:Ljava/lang/Object;

    :goto_1
    iget v0, p0, Ln4/o;->f:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/o;->f:I

    :cond_4
    iget v0, p1, Lq4/d;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    iget-object v0, p1, Lq4/d;->h:Lq4/c;

    iget v2, p0, Ln4/o;->f:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Ln4/o;->i:Lt4/p;

    check-cast v2, Lq4/c;

    sget-object v3, Lq4/c;->j:Lq4/c;

    if-eq v2, v3, :cond_5

    invoke-static {v2}, Lq4/c;->i(Lq4/c;)Lq4/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lq4/a;->i(Lq4/c;)V

    invoke-virtual {v2}, Lq4/a;->g()Lq4/c;

    move-result-object v0

    iput-object v0, p0, Ln4/o;->i:Lt4/p;

    goto :goto_2

    :cond_5
    iput-object v0, p0, Ln4/o;->i:Lt4/p;

    :goto_2
    iget v0, p0, Ln4/o;->f:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/o;->f:I

    :cond_6
    iget v0, p1, Lq4/d;->e:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    iget-object v0, p1, Lq4/d;->i:Lq4/c;

    iget v2, p0, Ln4/o;->f:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_7

    iget-object v2, p0, Ln4/o;->j:Ljava/io/Serializable;

    check-cast v2, Lq4/c;

    sget-object v3, Lq4/c;->j:Lq4/c;

    if-eq v2, v3, :cond_7

    invoke-static {v2}, Lq4/c;->i(Lq4/c;)Lq4/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lq4/a;->i(Lq4/c;)V

    invoke-virtual {v2}, Lq4/a;->g()Lq4/c;

    move-result-object v0

    iput-object v0, p0, Ln4/o;->j:Ljava/io/Serializable;

    goto :goto_3

    :cond_7
    iput-object v0, p0, Ln4/o;->j:Ljava/io/Serializable;

    :goto_3
    iget v0, p0, Ln4/o;->f:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/o;->f:I

    :cond_8
    iget-object v0, p0, Lt4/k;->d:Lt4/e;

    iget-object p1, p1, Lq4/d;->d:Lt4/e;

    invoke-virtual {v0, p1}, Lt4/e;->h(Lt4/e;)Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lt4/k;->d:Lt4/e;

    return-void
.end method
