.class public final Lkotlinx/coroutines/flow/i;
.super LY4/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/a;
.implements Lkotlinx/coroutines/flow/b;


# instance fields
.field private volatile synthetic _state:Ljava/lang/Object;

.field public g:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/i;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lw3/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/i;->j(Ljava/lang/Object;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public final b(Lkotlinx/coroutines/flow/b;Lu3/d;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p2, Lkotlinx/coroutines/flow/h;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/h;

    iget v1, v0, Lkotlinx/coroutines/flow/h;->k:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/h;->k:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/h;

    check-cast p2, Lw3/c;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/h;-><init>(Lkotlinx/coroutines/flow/i;Lw3/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/h;->i:Ljava/lang/Object;

    sget-object v1, Lv3/a;->d:Lv3/a;

    iget v2, v0, Lkotlinx/coroutines/flow/h;->k:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v2, :cond_4

    const/4 p0, 0x1

    if-eq v2, p0, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/flow/h;->h:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/flow/h;->g:LW4/P;

    iget-object v2, v0, Lkotlinx/coroutines/flow/h;->f:Lkotlinx/coroutines/flow/j;

    iget-object v6, v0, Lkotlinx/coroutines/flow/h;->e:Lkotlinx/coroutines/flow/b;

    iget-object v7, v0, Lkotlinx/coroutines/flow/h;->d:Lkotlinx/coroutines/flow/i;

    :try_start_0
    invoke-static {p2}, Lp4/g;->X(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/flow/h;->h:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/flow/h;->g:LW4/P;

    iget-object v2, v0, Lkotlinx/coroutines/flow/h;->f:Lkotlinx/coroutines/flow/j;

    iget-object v6, v0, Lkotlinx/coroutines/flow/h;->e:Lkotlinx/coroutines/flow/b;

    iget-object v7, v0, Lkotlinx/coroutines/flow/h;->d:Lkotlinx/coroutines/flow/i;

    :try_start_1
    invoke-static {p2}, Lp4/g;->X(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :cond_3
    iget-object v2, v0, Lkotlinx/coroutines/flow/h;->f:Lkotlinx/coroutines/flow/j;

    iget-object p1, v0, Lkotlinx/coroutines/flow/h;->e:Lkotlinx/coroutines/flow/b;

    iget-object p0, v0, Lkotlinx/coroutines/flow/h;->d:Lkotlinx/coroutines/flow/i;

    :try_start_2
    invoke-static {p2}, Lp4/g;->X(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v7, p0

    move-object p0, p1

    goto/16 :goto_6

    :cond_4
    invoke-static {p2}, Lp4/g;->X(Ljava/lang/Object;)V

    invoke-virtual {p0}, LY4/a;->c()LY4/c;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/j;

    move-object v2, p2

    :goto_1
    :try_start_3
    invoke-interface {v0}, Lu3/d;->getContext()Lu3/i;

    move-result-object p2

    sget-object v6, LW4/r;->e:LW4/r;

    invoke-interface {p2, v6}, Lu3/i;->W(Lu3/h;)Lu3/g;

    move-result-object p2

    check-cast p2, LW4/P;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v7, p0

    move-object v6, p1

    move-object p1, p2

    move-object p0, v3

    :cond_5
    :goto_2
    :try_start_4
    iget-object p2, v7, Lkotlinx/coroutines/flow/i;->_state:Ljava/lang/Object;

    if-eqz p1, :cond_7

    invoke-interface {p1}, LW4/P;->a()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    check-cast p1, LW4/Y;

    invoke-virtual {p1}, LW4/Y;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_7
    :goto_3
    if-eqz p0, :cond_8

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    :cond_8
    sget-object p0, LY4/b;->b:LU3/w;

    if-ne p2, p0, :cond_9

    move-object p0, v3

    goto :goto_4

    :cond_9
    move-object p0, p2

    :goto_4
    iput-object v7, v0, Lkotlinx/coroutines/flow/h;->d:Lkotlinx/coroutines/flow/i;

    iput-object v6, v0, Lkotlinx/coroutines/flow/h;->e:Lkotlinx/coroutines/flow/b;

    iput-object v2, v0, Lkotlinx/coroutines/flow/h;->f:Lkotlinx/coroutines/flow/j;

    iput-object p1, v0, Lkotlinx/coroutines/flow/h;->g:LW4/P;

    iput-object p2, v0, Lkotlinx/coroutines/flow/h;->h:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/flow/h;->k:I

    invoke-interface {v6, p0, v0}, Lkotlinx/coroutines/flow/b;->a(Ljava/lang/Object;Lw3/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    return-object v1

    :cond_a
    move-object p0, p2

    :cond_b
    :goto_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lkotlinx/coroutines/flow/f;->b:LU3/w;

    sget-object v8, Lkotlinx/coroutines/flow/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v8, v2, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, LF3/k;->c(Ljava/lang/Object;)V

    sget-object v10, Lkotlinx/coroutines/flow/f;->c:LU3/w;

    if-ne v9, v10, :cond_c

    goto :goto_2

    :cond_c
    iput-object v7, v0, Lkotlinx/coroutines/flow/h;->d:Lkotlinx/coroutines/flow/i;

    iput-object v6, v0, Lkotlinx/coroutines/flow/h;->e:Lkotlinx/coroutines/flow/b;

    iput-object v2, v0, Lkotlinx/coroutines/flow/h;->f:Lkotlinx/coroutines/flow/j;

    iput-object p1, v0, Lkotlinx/coroutines/flow/h;->g:LW4/P;

    iput-object p0, v0, Lkotlinx/coroutines/flow/h;->h:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/h;->k:I

    new-instance v9, LW4/e;

    invoke-static {v0}, Lp4/g;->F(Lu3/d;)Lu3/d;

    move-result-object v10

    invoke-direct {v9, v10}, LW4/e;-><init>(Lu3/d;)V

    invoke-virtual {v9}, LW4/e;->l()V

    invoke-virtual {v8, v2, p2, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    sget-object v8, Lq3/m;->a:Lq3/m;

    if-nez p2, :cond_d

    invoke-virtual {v9, v8}, LW4/e;->resumeWith(Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {v9}, LW4/e;->k()Ljava/lang/Object;

    move-result-object p2

    sget-object v9, Lv3/a;->d:Lv3/a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p2, v9, :cond_e

    move-object v8, p2

    :cond_e
    if-ne v8, v1, :cond_5

    return-object v1

    :goto_6
    invoke-virtual {v7, v2}, LY4/a;->g(LY4/c;)V

    throw p0
.end method

.method public final d()LY4/c;
    .locals 1

    new-instance p0, Lkotlinx/coroutines/flow/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/flow/j;->_state:Ljava/lang/Object;

    return-object p0
.end method

.method public final e()[LY4/c;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [Lkotlinx/coroutines/flow/j;

    return-object p0
.end method

.method public final i()Ljava/lang/Object;
    .locals 1

    sget-object v0, LY4/b;->b:LU3/w;

    iget-object p0, p0, Lkotlinx/coroutines/flow/i;->_state:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 8

    if-nez p1, :cond_0

    sget-object p1, LY4/b;->b:LU3/w;

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/i;->_state:Ljava/lang/Object;

    invoke-static {v0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    monitor-exit p0

    goto/16 :goto_4

    :cond_1
    :try_start_1
    iput-object p1, p0, Lkotlinx/coroutines/flow/i;->_state:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/i;->g:I

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_9

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlinx/coroutines/flow/i;->g:I

    iget-object v0, p0, LY4/a;->f:[Ljava/lang/Object;

    check-cast v0, [LY4/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    :goto_0
    check-cast v0, [Lkotlinx/coroutines/flow/j;

    if-eqz v0, :cond_7

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    aget-object v3, v0, v2

    if-eqz v3, :cond_6

    :cond_2
    iget-object v4, v3, Lkotlinx/coroutines/flow/j;->_state:Ljava/lang/Object;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    sget-object v5, Lkotlinx/coroutines/flow/f;->c:LU3/w;

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    sget-object v6, Lkotlinx/coroutines/flow/f;->b:LU3/w;

    if-ne v4, v6, :cond_5

    sget-object v6, Lkotlinx/coroutines/flow/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_5
    sget-object v5, Lkotlinx/coroutines/flow/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, v3, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    check-cast v4, LW4/e;

    sget-object v3, Lq3/m;->a:Lq3/m;

    invoke-virtual {v4, v3}, LW4/e;->resumeWith(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    monitor-enter p0

    :try_start_2
    iget v0, p0, Lkotlinx/coroutines/flow/i;->g:I

    if-ne v0, p1, :cond_8

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlinx/coroutines/flow/i;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_8
    :try_start_3
    iget-object p1, p0, LY4/a;->f:[Ljava/lang/Object;

    check-cast p1, [LY4/c;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    move v7, v0

    move-object v0, p1

    move p1, v7

    goto :goto_0

    :goto_3
    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_9
    add-int/lit8 p1, p1, 0x2

    :try_start_4
    iput p1, p0, Lkotlinx/coroutines/flow/i;->g:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    :goto_4
    return-void

    :goto_5
    monitor-exit p0

    throw p1
.end method
