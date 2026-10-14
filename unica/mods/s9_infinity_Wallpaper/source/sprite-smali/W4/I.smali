.class public abstract LW4/I;
.super LW4/J;
.source "SourceFile"

# interfaces
.implements LW4/y;


# static fields
.field public static final synthetic i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _delayed:Ljava/lang/Object;

.field private volatile synthetic _isCompleted:I

.field private volatile synthetic _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_queue"

    const-class v1, LW4/I;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LW4/I;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_delayed"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LW4/I;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LW4/q;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LW4/I;->_queue:Ljava/lang/Object;

    iput-object v0, p0, LW4/I;->_delayed:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, LW4/I;->_isCompleted:I

    return-void
.end method

.method public static final f0(LW4/I;)Z
    .locals 0

    iget p0, p0, LW4/I;->_isCompleted:I

    return p0
.end method


# virtual methods
.method public final X(Lu3/i;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, LW4/I;->g0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g0(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0, p1}, LW4/I;->h0(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LW4/J;->b0()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-eq p1, p0, :cond_1

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_0

    :cond_0
    sget-object p0, LW4/v;->k:LW4/v;

    invoke-virtual {p0, p1}, LW4/v;->g0(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final h0(Ljava/lang/Runnable;)Z
    .locals 5

    :cond_0
    :goto_0
    iget-object v0, p0, LW4/I;->_queue:Ljava/lang/Object;

    iget v1, p0, LW4/I;->_isCompleted:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_2

    sget-object v0, LW4/I;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_2
    instance-of v3, v0, Lkotlinx/coroutines/internal/j;

    if-eqz v3, :cond_6

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/internal/j;

    invoke-virtual {v3, p1}, Lkotlinx/coroutines/internal/j;->a(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_5

    if-eq v4, v1, :cond_4

    const/4 v0, 0x2

    if-eq v4, v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    sget-object v1, LW4/I;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/j;->e()Lkotlinx/coroutines/internal/j;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    sget-object v3, LW4/u;->b:LU3/w;

    if-ne v0, v3, :cond_7

    return v2

    :cond_7
    new-instance v2, Lkotlinx/coroutines/internal/j;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lkotlinx/coroutines/internal/j;-><init>(IZ)V

    move-object v3, v0

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/internal/j;->a(Ljava/lang/Object;)I

    invoke-virtual {v2, p1}, Lkotlinx/coroutines/internal/j;->a(Ljava/lang/Object;)I

    sget-object v3, LW4/I;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method public final i0()Z
    .locals 4

    iget-object v0, p0, LW4/J;->h:Li5/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v3, v0, Li5/b;->a:I

    iget v0, v0, Li5/b;->b:I

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, LW4/I;->_delayed:Ljava/lang/Object;

    check-cast v0, LW4/H;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->b()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, LW4/I;->_queue:Ljava/lang/Object;

    if-nez p0, :cond_4

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_4
    instance-of v0, p0, Lkotlinx/coroutines/internal/j;

    if-eqz v0, :cond_5

    check-cast p0, Lkotlinx/coroutines/internal/j;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->d()Z

    move-result v1

    goto :goto_3

    :cond_5
    sget-object v0, LW4/u;->b:LU3/w;

    if-ne p0, v0, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    return v1
.end method

.method public final j(JLW4/e;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x8637bd05af6L

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    :goto_0
    const-wide p1, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long p1, v0, p1

    if-gez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    new-instance v2, LW4/F;

    add-long/2addr v0, p1

    invoke-direct {v2, p0, v0, v1, p3}, LW4/F;-><init>(LW4/I;JLW4/e;)V

    invoke-virtual {p0, p1, p2, v2}, LW4/I;->l0(JLW4/G;)V

    new-instance p0, LW4/D;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v2}, LW4/D;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, p0}, LW4/e;->n(LE3/b;)V

    :cond_2
    return-void
.end method

.method public final j0()J
    .locals 10

    invoke-virtual {p0}, LW4/J;->d0()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, LW4/I;->_delayed:Ljava/lang/Object;

    check-cast v0, LW4/H;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->b()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    :cond_1
    monitor-enter v0

    :try_start_0
    iget-object v7, v0, Lkotlinx/coroutines/internal/r;->a:[LW4/G;

    if-eqz v7, :cond_2

    aget-object v7, v7, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    move-object v7, v3

    :goto_0
    if-nez v7, :cond_3

    monitor-exit v0

    move-object v7, v3

    goto :goto_3

    :cond_3
    :try_start_1
    iget-wide v8, v7, LW4/G;->d:J

    sub-long v8, v5, v8

    cmp-long v8, v8, v1

    if-ltz v8, :cond_4

    invoke-virtual {p0, v7}, LW4/I;->h0(Ljava/lang/Runnable;)Z

    move-result v7

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    move v7, v4

    :goto_1
    if-eqz v7, :cond_5

    invoke-virtual {v0, v4}, Lkotlinx/coroutines/internal/r;->c(I)LW4/G;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_5
    move-object v7, v3

    :goto_2
    monitor-exit v0

    :goto_3
    if-nez v7, :cond_1

    goto :goto_5

    :goto_4
    monitor-exit v0

    throw p0

    :cond_6
    :goto_5
    iget-object v0, p0, LW4/I;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_7

    :goto_6
    move-object v6, v3

    goto :goto_7

    :cond_7
    instance-of v5, v0, Lkotlinx/coroutines/internal/j;

    if-eqz v5, :cond_9

    move-object v5, v0

    check-cast v5, Lkotlinx/coroutines/internal/j;

    invoke-virtual {v5}, Lkotlinx/coroutines/internal/j;->f()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lkotlinx/coroutines/internal/j;->g:LU3/w;

    if-eq v6, v7, :cond_8

    check-cast v6, Ljava/lang/Runnable;

    goto :goto_7

    :cond_8
    sget-object v6, LW4/I;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5}, Lkotlinx/coroutines/internal/j;->e()Lkotlinx/coroutines/internal/j;

    move-result-object v5

    invoke-virtual {v6, p0, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    sget-object v5, LW4/u;->b:LU3/w;

    if-ne v0, v5, :cond_a

    goto :goto_6

    :cond_a
    sget-object v5, LW4/I;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v6, v0

    check-cast v6, Ljava/lang/Runnable;

    :goto_7
    if-eqz v6, :cond_b

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    return-wide v1

    :cond_b
    iget-object v0, p0, LW4/J;->h:Li5/b;

    const-wide v5, 0x7fffffffffffffffL

    if-nez v0, :cond_c

    :goto_8
    move-wide v7, v5

    goto :goto_a

    :cond_c
    iget v7, v0, Li5/b;->a:I

    iget v0, v0, Li5/b;->b:I

    if-ne v7, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_9

    :cond_d
    move v0, v4

    :goto_9
    if-eqz v0, :cond_e

    goto :goto_8

    :cond_e
    move-wide v7, v1

    :goto_a
    cmp-long v0, v7, v1

    if-nez v0, :cond_f

    goto :goto_c

    :cond_f
    iget-object v0, p0, LW4/I;->_queue:Ljava/lang/Object;

    if-eqz v0, :cond_12

    instance-of v7, v0, Lkotlinx/coroutines/internal/j;

    if-eqz v7, :cond_10

    check-cast v0, Lkotlinx/coroutines/internal/j;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j;->d()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_c

    :cond_10
    sget-object p0, LW4/u;->b:LU3/w;

    if-ne v0, p0, :cond_16

    :cond_11
    :goto_b
    move-wide v1, v5

    goto :goto_c

    :cond_12
    iget-object p0, p0, LW4/I;->_delayed:Ljava/lang/Object;

    check-cast p0, LW4/H;

    if-eqz p0, :cond_11

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->a:[LW4/G;

    if-eqz v0, :cond_13

    aget-object v3, v0, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_13
    monitor-exit p0

    if-nez v3, :cond_14

    goto :goto_b

    :cond_14
    iget-wide v3, v3, LW4/G;->d:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long p0, v3, v1

    if-gez p0, :cond_15

    goto :goto_c

    :cond_15
    move-wide v1, v3

    goto :goto_c

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_16
    :goto_c
    return-wide v1
.end method

.method public final k0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LW4/I;->_queue:Ljava/lang/Object;

    iput-object v0, p0, LW4/I;->_delayed:Ljava/lang/Object;

    return-void
.end method

.method public final l0(JLW4/G;)V
    .locals 4

    iget v0, p0, LW4/I;->_isCompleted:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, LW4/I;->_delayed:Ljava/lang/Object;

    check-cast v0, LW4/H;

    if-nez v0, :cond_1

    sget-object v0, LW4/I;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v3, LW4/H;

    invoke-direct {v3}, Lkotlinx/coroutines/internal/r;-><init>()V

    iput-wide p1, v3, LW4/H;->b:J

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, LW4/I;->_delayed:Ljava/lang/Object;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast v0, LW4/H;

    :cond_1
    invoke-virtual {p3, p1, p2, v0, p0}, LW4/G;->a(JLW4/H;LW4/I;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 p0, 0x2

    if-ne v0, p0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected result"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, LW4/J;->e0(JLW4/G;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, LW4/I;->_delayed:Ljava/lang/Object;

    check-cast p1, LW4/H;

    if-eqz p1, :cond_6

    monitor-enter p1

    :try_start_0
    iget-object p2, p1, Lkotlinx/coroutines/internal/r;->a:[LW4/G;

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    aget-object v1, p2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_6
    :goto_1
    if-ne v1, p3, :cond_7

    invoke-virtual {p0}, LW4/J;->b0()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-eq p1, p0, :cond_7

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public shutdown()V
    .locals 5

    sget-object v0, LW4/e0;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput v0, p0, LW4/I;->_isCompleted:I

    :cond_0
    iget-object v2, p0, LW4/I;->_queue:Ljava/lang/Object;

    sget-object v3, LW4/u;->b:LU3/w;

    if-nez v2, :cond_1

    sget-object v2, LW4/I;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    instance-of v4, v2, Lkotlinx/coroutines/internal/j;

    if-eqz v4, :cond_2

    check-cast v2, Lkotlinx/coroutines/internal/j;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/j;->b()Z

    goto :goto_0

    :cond_2
    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v3, Lkotlinx/coroutines/internal/j;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v0}, Lkotlinx/coroutines/internal/j;-><init>(IZ)V

    move-object v4, v2

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/internal/j;->a(Ljava/lang/Object;)I

    sget-object v4, LW4/I;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    :goto_0
    invoke-virtual {p0}, LW4/I;->j0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_1
    iget-object v2, p0, LW4/I;->_delayed:Ljava/lang/Object;

    check-cast v2, LW4/H;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/r;->d()LW4/G;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0, v1, v2}, LW4/J;->e0(JLW4/G;)V

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method
