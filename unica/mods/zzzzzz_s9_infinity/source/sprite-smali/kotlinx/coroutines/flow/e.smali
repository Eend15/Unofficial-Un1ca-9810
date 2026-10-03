.class public Lkotlinx/coroutines/flow/e;
.super LY4/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/a;
.implements Lkotlinx/coroutines/flow/b;


# instance fields
.field public final g:I

.field public final h:I

.field public final i:I

.field public j:[Ljava/lang/Object;

.field public k:J

.field public l:J

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/flow/e;->g:I

    iput p2, p0, Lkotlinx/coroutines/flow/e;->h:I

    iput p3, p0, Lkotlinx/coroutines/flow/e;->i:I

    return-void
.end method

.method public static k(Lkotlinx/coroutines/flow/e;Lkotlinx/coroutines/flow/b;Lw3/c;)V
    .locals 8

    instance-of v0, p2, Lkotlinx/coroutines/flow/d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/d;

    iget v1, v0, Lkotlinx/coroutines/flow/d;->j:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/d;->j:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/d;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/d;-><init>(Lkotlinx/coroutines/flow/e;Lw3/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/d;->h:Ljava/lang/Object;

    sget-object v1, Lv3/a;->d:Lv3/a;

    iget v2, v0, Lkotlinx/coroutines/flow/d;->j:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_5

    const/4 p0, 0x1

    if-eq v2, p0, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-object p0, v0, Lkotlinx/coroutines/flow/d;->g:LW4/P;

    iget-object p1, v0, Lkotlinx/coroutines/flow/d;->f:Lkotlinx/coroutines/flow/g;

    iget-object v2, v0, Lkotlinx/coroutines/flow/d;->e:Lkotlinx/coroutines/flow/b;

    iget-object v5, v0, Lkotlinx/coroutines/flow/d;->d:Lkotlinx/coroutines/flow/e;

    :try_start_0
    invoke-static {p2}, Lp4/g;->X(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p2, v2

    move-object v2, p0

    move-object p0, v5

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p0, v0, Lkotlinx/coroutines/flow/d;->g:LW4/P;

    iget-object p1, v0, Lkotlinx/coroutines/flow/d;->f:Lkotlinx/coroutines/flow/g;

    iget-object v2, v0, Lkotlinx/coroutines/flow/d;->e:Lkotlinx/coroutines/flow/b;

    iget-object v5, v0, Lkotlinx/coroutines/flow/d;->d:Lkotlinx/coroutines/flow/e;

    :try_start_1
    invoke-static {p2}, Lp4/g;->X(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_4
    iget-object p1, v0, Lkotlinx/coroutines/flow/d;->f:Lkotlinx/coroutines/flow/g;

    iget-object p0, v0, Lkotlinx/coroutines/flow/d;->e:Lkotlinx/coroutines/flow/b;

    iget-object v2, v0, Lkotlinx/coroutines/flow/d;->d:Lkotlinx/coroutines/flow/e;

    :try_start_2
    invoke-static {p2}, Lp4/g;->X(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p2, p0

    move-object p0, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v5, v2

    goto :goto_5

    :cond_5
    invoke-static {p2}, Lp4/g;->X(Ljava/lang/Object;)V

    invoke-virtual {p0}, LY4/a;->c()LY4/c;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/g;

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_1
    :try_start_3
    invoke-interface {v0}, Lu3/d;->getContext()Lu3/i;

    move-result-object v2

    sget-object v5, LW4/r;->e:LW4/r;

    invoke-interface {v2, v5}, Lu3/i;->W(Lu3/h;)Lu3/g;

    move-result-object v2

    check-cast v2, LW4/P;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    move-object v5, p0

    move-object p0, v2

    move-object v2, p2

    :cond_6
    :goto_3
    :try_start_4
    invoke-virtual {v5, p1}, Lkotlinx/coroutines/flow/e;->s(Lkotlinx/coroutines/flow/g;)Ljava/lang/Object;

    move-result-object p2

    sget-object v6, Lkotlinx/coroutines/flow/f;->a:LU3/w;

    if-ne p2, v6, :cond_7

    iput-object v5, v0, Lkotlinx/coroutines/flow/d;->d:Lkotlinx/coroutines/flow/e;

    iput-object v2, v0, Lkotlinx/coroutines/flow/d;->e:Lkotlinx/coroutines/flow/b;

    iput-object p1, v0, Lkotlinx/coroutines/flow/d;->f:Lkotlinx/coroutines/flow/g;

    iput-object p0, v0, Lkotlinx/coroutines/flow/d;->g:LW4/P;

    iput v4, v0, Lkotlinx/coroutines/flow/d;->j:I

    invoke-virtual {v5, p1, v0}, Lkotlinx/coroutines/flow/e;->i(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/flow/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-void

    :cond_7
    if-eqz p0, :cond_9

    invoke-interface {p0}, LW4/P;->a()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    check-cast p0, LW4/Y;

    invoke-virtual {p0}, LW4/Y;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_9
    :goto_4
    iput-object v5, v0, Lkotlinx/coroutines/flow/d;->d:Lkotlinx/coroutines/flow/e;

    iput-object v2, v0, Lkotlinx/coroutines/flow/d;->e:Lkotlinx/coroutines/flow/b;

    iput-object p1, v0, Lkotlinx/coroutines/flow/d;->f:Lkotlinx/coroutines/flow/g;

    iput-object p0, v0, Lkotlinx/coroutines/flow/d;->g:LW4/P;

    iput v3, v0, Lkotlinx/coroutines/flow/d;->j:I

    invoke-interface {v2, p2, v0}, Lkotlinx/coroutines/flow/b;->a(Ljava/lang/Object;Lw3/c;)Ljava/lang/Object;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p2, v1, :cond_1

    return-void

    :catchall_2
    move-exception p2

    move-object v5, p0

    move-object p0, p2

    :goto_5
    invoke-virtual {v5, p1}, LY4/a;->g(LY4/c;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lw3/c;)Ljava/lang/Object;
    .locals 10

    sget-object v0, LY4/b;->a:[Lu3/d;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/e;->q(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/e;->n([Lu3/d;)[Lu3/d;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    move v1, v3

    :goto_0
    monitor-exit p0

    array-length v4, v0

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    if-eqz v6, :cond_1

    sget-object v7, Lq3/m;->a:Lq3/m;

    invoke-interface {v6, v7}, Lu3/d;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    sget-object p0, Lq3/m;->a:Lq3/m;

    goto/16 :goto_5

    :cond_3
    new-instance v0, LW4/e;

    invoke-static {p2}, Lp4/g;->F(Lu3/d;)Lu3/d;

    move-result-object p2

    invoke-direct {v0, p2}, LW4/e;-><init>(Lu3/d;)V

    invoke-virtual {v0}, LW4/e;->l()V

    sget-object p2, LY4/b;->a:[Lu3/d;

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/e;->q(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p1, Lq3/m;->a:Lq3/m;

    invoke-virtual {v0, p1}, LW4/e;->resumeWith(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/flow/e;->n([Lu3/d;)[Lu3/d;

    move-result-object p1

    const/4 p2, 0x0

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_6

    :cond_4
    new-instance v1, Lkotlinx/coroutines/flow/c;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/e;->o()J

    move-result-wide v4

    iget v6, p0, Lkotlinx/coroutines/flow/e;->m:I

    iget v7, p0, Lkotlinx/coroutines/flow/e;->n:I

    add-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v6, v4

    move-object v4, v1

    move-object v5, p0

    move-object v8, p1

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lkotlinx/coroutines/flow/c;-><init>(Lkotlinx/coroutines/flow/e;JLjava/lang/Object;LW4/e;)V

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/flow/e;->m(Ljava/lang/Object;)V

    iget p1, p0, Lkotlinx/coroutines/flow/e;->n:I

    add-int/2addr p1, v2

    iput p1, p0, Lkotlinx/coroutines/flow/e;->n:I

    iget p1, p0, Lkotlinx/coroutines/flow/e;->h:I

    if-nez p1, :cond_5

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/flow/e;->n([Lu3/d;)[Lu3/d;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    move-object p1, p2

    move-object p2, v1

    :goto_2
    monitor-exit p0

    if-eqz p2, :cond_6

    new-instance p0, LW4/D;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p2}, LW4/D;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p0}, LW4/e;->n(LE3/b;)V

    :cond_6
    array-length p0, p1

    :goto_3
    if-ge v3, p0, :cond_8

    aget-object p2, p1, v3

    if-eqz p2, :cond_7

    sget-object v1, Lq3/m;->a:Lq3/m;

    invoke-interface {p2, v1}, Lu3/d;->resumeWith(Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, LW4/e;->k()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lv3/a;->d:Lv3/a;

    if-ne p0, p1, :cond_9

    goto :goto_4

    :cond_9
    sget-object p0, Lq3/m;->a:Lq3/m;

    :goto_4
    if-ne p0, p1, :cond_a

    goto :goto_5

    :cond_a
    sget-object p0, Lq3/m;->a:Lq3/m;

    :goto_5
    return-object p0

    :goto_6
    monitor-exit p0

    throw p1

    :goto_7
    monitor-exit p0

    throw p1
.end method

.method public final b(Lkotlinx/coroutines/flow/b;Lu3/d;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lw3/c;

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/e;->k(Lkotlinx/coroutines/flow/e;Lkotlinx/coroutines/flow/b;Lw3/c;)V

    sget-object p0, Lv3/a;->d:Lv3/a;

    return-object p0
.end method

.method public final d()LY4/c;
    .locals 2

    new-instance p0, Lkotlinx/coroutines/flow/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lkotlinx/coroutines/flow/g;->a:J

    return-object p0
.end method

.method public final e()[LY4/c;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [Lkotlinx/coroutines/flow/g;

    return-object p0
.end method

.method public final i(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/flow/d;)Ljava/lang/Object;
    .locals 5

    new-instance v0, LW4/e;

    invoke-static {p2}, Lp4/g;->F(Lu3/d;)Lu3/d;

    move-result-object p2

    invoke-direct {v0, p2}, LW4/e;-><init>(Lu3/d;)V

    invoke-virtual {v0}, LW4/e;->l()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/e;->r(Lkotlinx/coroutines/flow/g;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-gez p2, :cond_0

    iput-object v0, p1, Lkotlinx/coroutines/flow/g;->b:LW4/e;

    goto :goto_0

    :cond_0
    sget-object p1, Lq3/m;->a:Lq3/m;

    invoke-virtual {v0, p1}, LW4/e;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    invoke-virtual {v0}, LW4/e;->k()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lv3/a;->d:Lv3/a;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j()V
    .locals 8

    iget v0, p0, Lkotlinx/coroutines/flow/e;->h:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lkotlinx/coroutines/flow/e;->n:I

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/e;->j:[Ljava/lang/Object;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    :goto_0
    iget v2, p0, Lkotlinx/coroutines/flow/e;->n:I

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/e;->o()J

    move-result-wide v2

    iget v4, p0, Lkotlinx/coroutines/flow/e;->m:I

    iget v5, p0, Lkotlinx/coroutines/flow/e;->n:I

    add-int/2addr v4, v5

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    long-to-int v2, v2

    array-length v3, v0

    sub-int/2addr v3, v1

    and-int/2addr v2, v3

    aget-object v2, v0, v2

    sget-object v3, Lkotlinx/coroutines/flow/f;->a:LU3/w;

    if-ne v2, v3, :cond_1

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lkotlinx/coroutines/flow/e;->n:I

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/e;->o()J

    move-result-wide v2

    iget v4, p0, Lkotlinx/coroutines/flow/e;->m:I

    iget v5, p0, Lkotlinx/coroutines/flow/e;->n:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lkotlinx/coroutines/flow/f;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final l()V
    .locals 10

    iget-object v0, p0, Lkotlinx/coroutines/flow/e;->j:[Ljava/lang/Object;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/e;->o()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/f;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    iget v0, p0, Lkotlinx/coroutines/flow/e;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/coroutines/flow/e;->m:I

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/e;->o()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lkotlinx/coroutines/flow/e;->k:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    iput-wide v0, p0, Lkotlinx/coroutines/flow/e;->k:J

    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/flow/e;->l:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_3

    iget v2, p0, LY4/a;->d:I

    if-eqz v2, :cond_2

    iget-object v2, p0, LY4/a;->f:[Ljava/lang/Object;

    check-cast v2, [LY4/c;

    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    check-cast v5, Lkotlinx/coroutines/flow/g;

    iget-wide v6, v5, Lkotlinx/coroutines/flow/g;->a:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_1

    cmp-long v6, v6, v0

    if-gez v6, :cond_1

    iput-wide v0, v5, Lkotlinx/coroutines/flow/g;->a:J

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-wide v0, p0, Lkotlinx/coroutines/flow/e;->l:J

    :cond_3
    return-void
.end method

.method public final m(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lkotlinx/coroutines/flow/e;->m:I

    iget v1, p0, Lkotlinx/coroutines/flow/e;->n:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lkotlinx/coroutines/flow/e;->j:[Ljava/lang/Object;

    const/4 v2, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lkotlinx/coroutines/flow/e;->p([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    array-length v3, v1

    mul-int/2addr v3, v2

    invoke-virtual {p0, v1, v0, v3}, Lkotlinx/coroutines/flow/e;->p([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/e;->o()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3, p1}, Lkotlinx/coroutines/flow/f;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final n([Lu3/d;)[Lu3/d;
    .locals 10

    array-length v0, p1

    iget v1, p0, LY4/a;->d:I

    if-eqz v1, :cond_3

    iget-object v1, p0, LY4/a;->f:[Ljava/lang/Object;

    check-cast v1, [LY4/c;

    if-eqz v1, :cond_3

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    check-cast v4, Lkotlinx/coroutines/flow/g;

    iget-object v5, v4, Lkotlinx/coroutines/flow/g;->b:LW4/e;

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/flow/e;->r(Lkotlinx/coroutines/flow/g;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    array-length v6, p1

    if-lt v0, v6, :cond_1

    array-length v6, p1

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v6, "copyOf(this, newSize)"

    invoke-static {p1, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move-object v6, p1

    check-cast v6, [Lu3/d;

    add-int/lit8 v7, v0, 0x1

    aput-object v5, v6, v0

    const/4 v0, 0x0

    iput-object v0, v4, Lkotlinx/coroutines/flow/g;->b:LW4/e;

    move v0, v7

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    check-cast p1, [Lu3/d;

    return-object p1
.end method

.method public final o()J
    .locals 4

    iget-wide v0, p0, Lkotlinx/coroutines/flow/e;->l:J

    iget-wide v2, p0, Lkotlinx/coroutines/flow/e;->k:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final p([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 6

    if-lez p3, :cond_2

    new-array p3, p3, [Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/flow/e;->j:[Ljava/lang/Object;

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/e;->o()J

    move-result-wide v0

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p2, :cond_1

    int-to-long v2, p0

    add-long/2addr v2, v0

    long-to-int v4, v2

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    aget-object v4, p1, v4

    invoke-static {p3, v2, v3, v4}, Lkotlinx/coroutines/flow/f;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object p3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Buffer size overflow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q(Ljava/lang/Object;)Z
    .locals 12

    iget v1, p0, LY4/a;->d:I

    iget v2, p0, Lkotlinx/coroutines/flow/e;->g:I

    const/4 v9, 0x1

    if-nez v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/e;->m(Ljava/lang/Object;)V

    iget v1, p0, Lkotlinx/coroutines/flow/e;->m:I

    add-int/2addr v1, v9

    iput v1, p0, Lkotlinx/coroutines/flow/e;->m:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/e;->l()V

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/e;->o()J

    move-result-wide v1

    iget v3, p0, Lkotlinx/coroutines/flow/e;->m:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lkotlinx/coroutines/flow/e;->l:J

    :goto_0
    return v9

    :cond_2
    iget v1, p0, Lkotlinx/coroutines/flow/e;->m:I

    iget v3, p0, Lkotlinx/coroutines/flow/e;->h:I

    if-lt v1, v3, :cond_5

    iget-wide v4, p0, Lkotlinx/coroutines/flow/e;->l:J

    iget-wide v6, p0, Lkotlinx/coroutines/flow/e;->k:J

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5

    iget v1, p0, Lkotlinx/coroutines/flow/e;->i:I

    invoke-static {v1}, Lq/e;->c(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    goto :goto_1

    :cond_3
    return v9

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/e;->m(Ljava/lang/Object;)V

    iget v1, p0, Lkotlinx/coroutines/flow/e;->m:I

    add-int/2addr v1, v9

    iput v1, p0, Lkotlinx/coroutines/flow/e;->m:I

    if-le v1, v3, :cond_6

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/e;->l()V

    :cond_6
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/e;->o()J

    move-result-wide v3

    iget v1, p0, Lkotlinx/coroutines/flow/e;->m:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    iget-wide v5, p0, Lkotlinx/coroutines/flow/e;->k:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    if-le v1, v2, :cond_7

    const-wide/16 v1, 0x1

    add-long/2addr v1, v5

    iget-wide v3, p0, Lkotlinx/coroutines/flow/e;->l:J

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/e;->o()J

    move-result-wide v5

    iget v7, p0, Lkotlinx/coroutines/flow/e;->m:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/e;->o()J

    move-result-wide v7

    iget v10, p0, Lkotlinx/coroutines/flow/e;->m:I

    int-to-long v10, v10

    add-long/2addr v7, v10

    iget v10, p0, Lkotlinx/coroutines/flow/e;->n:I

    int-to-long v10, v10

    add-long/2addr v7, v10

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lkotlinx/coroutines/flow/e;->t(JJJJ)V

    :cond_7
    return v9
.end method

.method public final r(Lkotlinx/coroutines/flow/g;)J
    .locals 6

    iget-wide v0, p1, Lkotlinx/coroutines/flow/g;->a:J

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/e;->o()J

    move-result-wide v2

    iget p1, p0, Lkotlinx/coroutines/flow/e;->m:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-wide v0

    :cond_0
    iget p1, p0, Lkotlinx/coroutines/flow/e;->h:I

    const-wide/16 v2, -0x1

    if-lez p1, :cond_1

    return-wide v2

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/e;->o()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-lez p1, :cond_2

    return-wide v2

    :cond_2
    iget p0, p0, Lkotlinx/coroutines/flow/e;->n:I

    if-nez p0, :cond_3

    return-wide v2

    :cond_3
    return-wide v0
.end method

.method public final s(Lkotlinx/coroutines/flow/g;)Ljava/lang/Object;
    .locals 8

    sget-object v0, LY4/b;->a:[Lu3/d;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/e;->r(Lkotlinx/coroutines/flow/g;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    sget-object p1, Lkotlinx/coroutines/flow/f;->a:LU3/w;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-wide v3, p1, Lkotlinx/coroutines/flow/g;->a:J

    iget-object v0, p0, Lkotlinx/coroutines/flow/e;->j:[Ljava/lang/Object;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    long-to-int v5, v1

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    aget-object v0, v0, v5

    instance-of v5, v0, Lkotlinx/coroutines/flow/c;

    if-eqz v5, :cond_1

    check-cast v0, Lkotlinx/coroutines/flow/c;

    iget-object v0, v0, Lkotlinx/coroutines/flow/c;->f:Ljava/lang/Object;

    :cond_1
    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    iput-wide v1, p1, Lkotlinx/coroutines/flow/g;->a:J

    invoke-virtual {p0, v3, v4}, Lkotlinx/coroutines/flow/e;->u(J)[Lu3/d;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_0
    monitor-exit p0

    array-length p0, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_3

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    sget-object v3, Lq3/m;->a:Lq3/m;

    invoke-interface {v2, v3}, Lu3/d;->resumeWith(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p1

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final t(JJJJ)V
    .locals 6

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/e;->o()J

    move-result-wide v2

    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    iget-object v4, p0, Lkotlinx/coroutines/flow/e;->j:[Ljava/lang/Object;

    invoke-static {v4}, LF3/k;->c(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-static {v4, v2, v3, v5}, Lkotlinx/coroutines/flow/f;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lkotlinx/coroutines/flow/e;->k:J

    iput-wide p3, p0, Lkotlinx/coroutines/flow/e;->l:J

    sub-long p1, p5, v0

    long-to-int p1, p1

    iput p1, p0, Lkotlinx/coroutines/flow/e;->m:I

    sub-long/2addr p7, p5

    long-to-int p1, p7

    iput p1, p0, Lkotlinx/coroutines/flow/e;->n:I

    return-void
.end method

.method public final u(J)[Lu3/d;
    .locals 22

    move-object/from16 v9, p0

    iget-wide v0, v9, Lkotlinx/coroutines/flow/e;->l:J

    cmp-long v0, p1, v0

    sget-object v1, LY4/b;->a:[Lu3/d;

    if-lez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/e;->o()J

    move-result-wide v2

    iget v0, v9, Lkotlinx/coroutines/flow/e;->m:I

    int-to-long v4, v0

    add-long/2addr v4, v2

    iget v0, v9, Lkotlinx/coroutines/flow/e;->h:I

    const-wide/16 v6, 0x1

    if-nez v0, :cond_1

    iget v8, v9, Lkotlinx/coroutines/flow/e;->n:I

    if-lez v8, :cond_1

    add-long/2addr v4, v6

    :cond_1
    iget v8, v9, LY4/a;->d:I

    if-eqz v8, :cond_3

    iget-object v8, v9, LY4/a;->f:[Ljava/lang/Object;

    check-cast v8, [LY4/c;

    if-eqz v8, :cond_3

    array-length v11, v8

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_3

    aget-object v13, v8, v12

    if-eqz v13, :cond_2

    check-cast v13, Lkotlinx/coroutines/flow/g;

    iget-wide v13, v13, Lkotlinx/coroutines/flow/g;->a:J

    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-ltz v15, :cond_2

    cmp-long v15, v13, v4

    if-gez v15, :cond_2

    move-wide v4, v13

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    iget-wide v11, v9, Lkotlinx/coroutines/flow/e;->l:J

    cmp-long v8, v4, v11

    if-gtz v8, :cond_4

    return-object v1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/e;->o()J

    move-result-wide v11

    iget v8, v9, Lkotlinx/coroutines/flow/e;->m:I

    int-to-long v13, v8

    add-long/2addr v11, v13

    iget v8, v9, LY4/a;->d:I

    if-lez v8, :cond_5

    sub-long v13, v11, v4

    long-to-int v8, v13

    iget v13, v9, Lkotlinx/coroutines/flow/e;->n:I

    sub-int v8, v0, v8

    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_1

    :cond_5
    iget v8, v9, Lkotlinx/coroutines/flow/e;->n:I

    :goto_1
    iget v13, v9, Lkotlinx/coroutines/flow/e;->n:I

    int-to-long v13, v13

    add-long/2addr v13, v11

    sget-object v15, Lkotlinx/coroutines/flow/f;->a:LU3/w;

    if-lez v8, :cond_a

    new-array v1, v8, [Lu3/d;

    iget-object v10, v9, Lkotlinx/coroutines/flow/e;->j:[Ljava/lang/Object;

    invoke-static {v10}, LF3/k;->c(Ljava/lang/Object;)V

    move-wide/from16 v16, v4

    move-wide v4, v11

    move-wide v6, v4

    const/4 v11, 0x0

    :goto_2
    cmp-long v12, v6, v13

    if-gez v12, :cond_9

    long-to-int v12, v6

    move-wide/from16 v18, v13

    array-length v13, v10

    add-int/lit8 v13, v13, -0x1

    and-int/2addr v12, v13

    aget-object v12, v10, v12

    if-eq v12, v15, :cond_8

    if-eqz v12, :cond_7

    check-cast v12, Lkotlinx/coroutines/flow/c;

    add-int/lit8 v13, v11, 0x1

    iget-object v14, v12, Lkotlinx/coroutines/flow/c;->g:LW4/e;

    aput-object v14, v1, v11

    invoke-static {v10, v6, v7, v15}, Lkotlinx/coroutines/flow/f;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v11, v12, Lkotlinx/coroutines/flow/c;->f:Ljava/lang/Object;

    invoke-static {v10, v4, v5, v11}, Lkotlinx/coroutines/flow/f;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v20, 0x1

    add-long v11, v4, v20

    if-ge v13, v8, :cond_6

    move-wide v4, v11

    move v11, v13

    goto :goto_4

    :cond_6
    :goto_3
    move-object v10, v1

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-wide/16 v20, 0x1

    :goto_4
    add-long v6, v6, v20

    move-wide/from16 v13, v18

    goto :goto_2

    :cond_9
    move-wide/from16 v18, v13

    move-object v10, v1

    move-wide v11, v4

    goto :goto_5

    :cond_a
    move-wide/from16 v16, v4

    move-wide/from16 v18, v13

    goto :goto_3

    :goto_5
    sub-long v1, v11, v2

    long-to-int v1, v1

    iget v2, v9, LY4/a;->d:I

    if-nez v2, :cond_b

    move-wide v3, v11

    goto :goto_6

    :cond_b
    move-wide/from16 v3, v16

    :goto_6
    iget-wide v5, v9, Lkotlinx/coroutines/flow/e;->k:J

    iget v2, v9, Lkotlinx/coroutines/flow/e;->g:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v1, v1

    sub-long v1, v11, v1

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    if-nez v0, :cond_c

    cmp-long v0, v1, v18

    if-gez v0, :cond_c

    iget-object v0, v9, Lkotlinx/coroutines/flow/e;->j:[Ljava/lang/Object;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    long-to-int v5, v1

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    aget-object v0, v0, v5

    invoke-static {v0, v15}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide/16 v5, 0x1

    add-long/2addr v11, v5

    add-long/2addr v1, v5

    :cond_c
    move-wide v5, v11

    move-object/from16 v0, p0

    move-wide/from16 v7, v18

    invoke-virtual/range {v0 .. v8}, Lkotlinx/coroutines/flow/e;->t(JJJJ)V

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/e;->j()V

    array-length v0, v10

    if-nez v0, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {v9, v10}, Lkotlinx/coroutines/flow/e;->n([Lu3/d;)[Lu3/d;

    move-result-object v10

    :goto_7
    return-object v10
.end method
