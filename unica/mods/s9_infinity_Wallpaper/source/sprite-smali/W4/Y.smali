.class public LW4/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW4/P;
.implements LW4/c0;


# static fields
.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle:Ljava/lang/Object;

.field private volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state"

    const-class v2, LW4/Y;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LW4/Y;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, LW4/u;->i:LW4/E;

    goto :goto_0

    :cond_0
    sget-object p1, LW4/u;->h:LW4/E;

    :goto_0
    iput-object p1, p0, LW4/Y;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, LW4/Y;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method public static A(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, LW4/W;

    const-string v1, "Active"

    if-eqz v0, :cond_1

    check-cast p0, LW4/W;

    invoke-virtual {p0}, LW4/W;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Cancelling"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LW4/W;->f()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string v1, "Completing"

    goto :goto_0

    :cond_1
    instance-of v0, p0, LW4/M;

    if-eqz v0, :cond_3

    check-cast p0, LW4/M;

    invoke-interface {p0}, LW4/M;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "New"

    goto :goto_0

    :cond_3
    instance-of p0, p0, LW4/k;

    if-eqz p0, :cond_4

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_4
    const-string v1, "Completed"

    :cond_5
    :goto_0
    return-object v1
.end method

.method public static v(Lkotlinx/coroutines/internal/g;)LW4/i;
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->j()Lkotlinx/coroutines/internal/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->i()Lkotlinx/coroutines/internal/g;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->k()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, LW4/i;

    if-eqz v0, :cond_1

    check-cast p0, LW4/i;

    return-object p0

    :cond_1
    instance-of v0, p0, LW4/Z;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, LW4/M;

    if-nez v0, :cond_0

    sget-object p0, LW4/u;->c:LU3/w;

    return-object p0

    :cond_0
    instance-of v0, p1, LW4/E;

    if-nez v0, :cond_1

    instance-of v0, p1, LW4/U;

    if-eqz v0, :cond_4

    :cond_1
    instance-of v0, p1, LW4/i;

    if-nez v0, :cond_4

    instance-of v0, p2, LW4/k;

    if-nez v0, :cond_4

    check-cast p1, LW4/M;

    sget-object v0, LW4/Y;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of v1, p2, LW4/M;

    if-eqz v1, :cond_2

    new-instance v1, LW4/r;

    move-object v2, p2

    check-cast v2, LW4/M;

    invoke-direct {v1, v2}, LW4/r;-><init>(LW4/M;)V

    goto :goto_0

    :cond_2
    move-object v1, p2

    :goto_0
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p0, LW4/u;->e:LU3/w;

    return-object p0

    :cond_3
    invoke-virtual {p0, p2}, LW4/Y;->x(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, LW4/Y;->j(LW4/M;Ljava/lang/Object;)V

    return-object p2

    :cond_4
    check-cast p1, LW4/M;

    invoke-virtual {p0, p1}, LW4/Y;->o(LW4/M;)LW4/Z;

    move-result-object v0

    if-nez v0, :cond_5

    sget-object p0, LW4/u;->e:LU3/w;

    goto/16 :goto_6

    :cond_5
    instance-of v1, p1, LW4/W;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, LW4/W;

    goto :goto_1

    :cond_6
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_7

    new-instance v1, LW4/W;

    invoke-direct {v1, v0, v2}, LW4/W;-><init>(LW4/Z;Ljava/lang/Throwable;)V

    :cond_7
    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, LW4/W;->f()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object p0, LW4/u;->c:LU3/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto/16 :goto_6

    :cond_8
    :try_start_1
    invoke-virtual {v1}, LW4/W;->i()V

    if-eq v1, p1, :cond_9

    sget-object v3, LW4/Y;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object p0, LW4/u;->e:LU3/w;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_9
    :try_start_2
    invoke-virtual {v1}, LW4/W;->e()Z

    move-result v3

    instance-of v4, p2, LW4/k;

    if-eqz v4, :cond_a

    move-object v4, p2

    check-cast v4, LW4/k;

    goto :goto_2

    :cond_a
    move-object v4, v2

    :goto_2
    if-eqz v4, :cond_b

    iget-object v4, v4, LW4/k;->a:Ljava/lang/Throwable;

    invoke-virtual {v1, v4}, LW4/W;->b(Ljava/lang/Throwable;)V

    :cond_b
    invoke-virtual {v1}, LW4/W;->c()Ljava/lang/Throwable;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_c

    goto :goto_3

    :cond_c
    move-object v4, v2

    :goto_3
    monitor-exit v1

    if-eqz v4, :cond_d

    invoke-virtual {p0, v0, v4}, LW4/Y;->w(LW4/Z;Ljava/lang/Throwable;)V

    :cond_d
    instance-of v0, p1, LW4/i;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, LW4/i;

    goto :goto_4

    :cond_e
    move-object v0, v2

    :goto_4
    if-nez v0, :cond_f

    invoke-interface {p1}, LW4/M;->d()LW4/Z;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-static {p1}, LW4/Y;->v(Lkotlinx/coroutines/internal/g;)LW4/i;

    move-result-object v2

    goto :goto_5

    :cond_f
    move-object v2, v0

    :cond_10
    :goto_5
    if-eqz v2, :cond_13

    :cond_11
    iget-object p1, v2, LW4/i;->h:LW4/Y;

    new-instance v0, LW4/V;

    invoke-direct {v0, p0, v1, v2, p2}, LW4/V;-><init>(LW4/Y;LW4/W;LW4/i;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v3, v0, v4}, LW4/u;->f(LW4/P;ZLW4/U;I)LW4/C;

    move-result-object p1

    sget-object v0, LW4/a0;->d:LW4/a0;

    if-eq p1, v0, :cond_12

    sget-object p0, LW4/u;->d:LU3/w;

    goto :goto_6

    :cond_12
    invoke-static {v2}, LW4/Y;->v(Lkotlinx/coroutines/internal/g;)LW4/i;

    move-result-object v2

    if-nez v2, :cond_11

    :cond_13
    invoke-virtual {p0, v1, p2}, LW4/Y;->l(LW4/W;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_6
    return-object p0

    :goto_7
    monitor-exit v1

    throw p0
.end method

.method public final K(Lu3/h;)Lu3/i;
    .locals 0

    invoke-static {p0, p1}, Lp4/g;->K(Lu3/g;Lu3/h;)Lu3/i;

    move-result-object p0

    return-object p0
.end method

.method public final W(Lu3/h;)Lu3/g;
    .locals 0

    invoke-static {p0, p1}, Lp4/g;->y(Lu3/g;Lu3/h;)Lu3/g;

    move-result-object p0

    return-object p0
.end method

.method public a()Z
    .locals 1

    invoke-virtual {p0}, LW4/Y;->q()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, LW4/M;

    if-eqz v0, :cond_0

    check-cast p0, LW4/M;

    invoke-interface {p0}, LW4/M;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(LW4/M;LW4/Z;LW4/U;)Z
    .locals 4

    new-instance v0, LW4/X;

    invoke-direct {v0, p3, p0, p1}, LW4/X;-><init>(LW4/U;LW4/Y;LW4/M;)V

    :goto_0
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/g;->j()Lkotlinx/coroutines/internal/g;

    move-result-object p0

    sget-object p1, Lkotlinx/coroutines/internal/g;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lkotlinx/coroutines/internal/g;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, v0, LW4/X;->c:LW4/Z;

    invoke-virtual {p1, p0, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    move p0, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    move p0, v3

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eq p0, v3, :cond_2

    if-eq p0, v1, :cond_3

    goto :goto_0

    :cond_2
    move v2, v3

    :cond_3
    return v2
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 8

    sget-object v0, LW4/u;->c:LU3/w;

    instance-of v1, p0, LW4/T;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {p0}, LW4/Y;->q()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LW4/M;

    if-eqz v1, :cond_2

    instance-of v1, v0, LW4/W;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, LW4/W;

    invoke-virtual {v1}, LW4/W;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, LW4/k;

    invoke-virtual {p0, p1}, LW4/Y;->k(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v1, v4, v2}, LW4/k;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, v0, v1}, LW4/Y;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LW4/u;->e:LU3/w;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, LW4/u;->c:LU3/w;

    :goto_1
    sget-object v1, LW4/u;->d:LU3/w;

    if-ne v0, v1, :cond_3

    return v3

    :cond_3
    sget-object v1, LW4/u;->c:LU3/w;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    move-object v1, v0

    :cond_4
    :goto_2
    invoke-virtual {p0}, LW4/Y;->q()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, LW4/W;

    if-eqz v5, :cond_9

    monitor-enter v4

    :try_start_0
    move-object v5, v4

    check-cast v5, LW4/W;

    invoke-virtual {v5}, LW4/W;->g()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object p0, LW4/u;->f:LU3/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    :goto_3
    move-object v0, p0

    goto/16 :goto_6

    :cond_5
    :try_start_1
    move-object v5, v4

    check-cast v5, LW4/W;

    invoke-virtual {v5}, LW4/W;->e()Z

    move-result v5

    if-nez v1, :cond_6

    invoke-virtual {p0, p1}, LW4/Y;->k(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_6
    :goto_4
    move-object p1, v4

    check-cast p1, LW4/W;

    invoke-virtual {p1, v1}, LW4/W;->b(Ljava/lang/Throwable;)V

    move-object p1, v4

    check-cast p1, LW4/W;

    invoke-virtual {p1}, LW4/W;->c()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_7

    move-object v0, p1

    :cond_7
    monitor-exit v4

    if-eqz v0, :cond_8

    check-cast v4, LW4/W;

    iget-object p1, v4, LW4/W;->d:LW4/Z;

    invoke-virtual {p0, p1, v0}, LW4/Y;->w(LW4/Z;Ljava/lang/Throwable;)V

    :cond_8
    sget-object p0, LW4/u;->c:LU3/w;

    goto :goto_3

    :goto_5
    monitor-exit v4

    throw p0

    :cond_9
    instance-of v5, v4, LW4/M;

    if-eqz v5, :cond_f

    if-nez v1, :cond_a

    invoke-virtual {p0, p1}, LW4/Y;->k(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_a
    move-object v5, v4

    check-cast v5, LW4/M;

    invoke-interface {v5}, LW4/M;->a()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {p0, v5}, LW4/Y;->o(LW4/M;)LW4/Z;

    move-result-object v4

    if-nez v4, :cond_b

    goto :goto_2

    :cond_b
    new-instance v6, LW4/W;

    invoke-direct {v6, v4, v1}, LW4/W;-><init>(LW4/Z;Ljava/lang/Throwable;)V

    sget-object v7, LW4/Y;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v7, p0, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {p0, v4, v1}, LW4/Y;->w(LW4/Z;Ljava/lang/Throwable;)V

    sget-object p0, LW4/u;->c:LU3/w;

    goto :goto_3

    :cond_d
    new-instance v5, LW4/k;

    invoke-direct {v5, v1, v2}, LW4/k;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, v4, v5}, LW4/Y;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, LW4/u;->c:LU3/w;

    if-eq v5, v6, :cond_e

    sget-object v4, LW4/u;->e:LU3/w;

    if-eq v5, v4, :cond_4

    move-object v0, v5

    goto :goto_6

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot happen in "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    sget-object p0, LW4/u;->f:LU3/w;

    goto/16 :goto_3

    :cond_10
    :goto_6
    sget-object p0, LW4/u;->c:LU3/w;

    if-ne v0, p0, :cond_12

    :cond_11
    :goto_7
    move v2, v3

    goto :goto_8

    :cond_12
    sget-object p0, LW4/u;->d:LU3/w;

    if-ne v0, p0, :cond_13

    goto :goto_7

    :cond_13
    sget-object p0, LW4/u;->f:LU3/w;

    if-ne v0, p0, :cond_11

    :goto_8
    return v2
.end method

.method public final f(Ljava/lang/Throwable;)Z
    .locals 3

    instance-of v0, p0, Lkotlinx/coroutines/internal/o;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    iget-object p0, p0, LW4/Y;->_parentHandle:Ljava/lang/Object;

    check-cast p0, LW4/h;

    if-eqz p0, :cond_4

    sget-object v2, LW4/a0;->d:LW4/a0;

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, LW4/h;->c(Ljava/lang/Throwable;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public final g(Lu3/i;)Lu3/i;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lu3/j;->d:Lu3/j;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lu3/b;->f:Lu3/b;

    invoke-interface {p1, p0, v0}, Lu3/i;->h(Ljava/lang/Object;LE3/c;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu3/i;

    :goto_0
    return-object p0
.end method

.method public final getKey()Lu3/h;
    .locals 0

    sget-object p0, LW4/r;->e:LW4/r;

    return-object p0
.end method

.method public final h(Ljava/lang/Object;LE3/c;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, LE3/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 0

    const-string p0, "Job was cancelled"

    return-object p0
.end method

.method public final j(LW4/M;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, LW4/Y;->_parentHandle:Ljava/lang/Object;

    check-cast v0, LW4/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LW4/C;->b()V

    sget-object v0, LW4/a0;->d:LW4/a0;

    iput-object v0, p0, LW4/Y;->_parentHandle:Ljava/lang/Object;

    :cond_0
    instance-of v0, p2, LW4/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, LW4/k;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p2, LW4/k;->a:Ljava/lang/Throwable;

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    instance-of v0, p1, LW4/U;

    const-string v2, " for "

    const-string v3, "Exception in completion handler "

    if-eqz v0, :cond_3

    :try_start_0
    move-object v0, p1

    check-cast v0, LW4/U;

    invoke-virtual {v0, p2}, LW4/U;->n(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p2

    new-instance v0, LW4/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, LW4/Y;->s(LW4/m;)V

    goto :goto_4

    :cond_3
    invoke-interface {p1}, LW4/M;->d()LW4/Z;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/g;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/g;

    :goto_2
    invoke-static {v0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    instance-of v4, v0, LW4/U;

    if-eqz v4, :cond_5

    move-object v4, v0

    check-cast v4, LW4/U;

    :try_start_1
    invoke-virtual {v4, p2}, LW4/U;->n(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v5

    if-eqz v1, :cond_4

    invoke-static {v1, v5}, Lp4/g;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    new-instance v1, LW4/m;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/g;->i()Lkotlinx/coroutines/internal/g;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, LW4/Y;->s(LW4/m;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 3

    instance-of p0, p1, Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_0
    check-cast p1, LW4/c0;

    check-cast p1, LW4/Y;

    invoke-virtual {p1}, LW4/Y;->q()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, LW4/W;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, LW4/W;

    invoke-virtual {v0}, LW4/W;->c()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, LW4/k;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, LW4/k;

    iget-object v0, v0, LW4/k;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_2
    instance-of v0, p0, LW4/M;

    if-nez v0, :cond_5

    move-object v0, v1

    :goto_0
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/CancellationException;

    :cond_3
    if-nez v1, :cond_4

    new-instance v1, LW4/Q;

    invoke-static {p0}, LW4/Y;->A(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Parent job is "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0, p1}, LW4/Q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LW4/Y;)V

    :cond_4
    move-object p1, v1

    :goto_1
    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot be cancelling child in this state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(LW4/W;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, LW4/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LW4/k;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, LW4/k;->a:Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, LW4/W;->e()Z

    invoke-virtual {p1, v0}, LW4/W;->h(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p1}, LW4/W;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, LW4/Q;

    invoke-virtual {p0}, LW4/Y;->i()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v1, p0}, LW4/Q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LW4/Y;)V

    move-object v1, v3

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Throwable;

    instance-of v6, v6, Ljava/util/concurrent/CancellationException;

    if-nez v6, :cond_3

    move-object v1, v5

    :cond_4
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    :cond_6
    :goto_2
    const/4 v3, 0x1

    if-eqz v1, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v3, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6, v5}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v6}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eq v6, v1, :cond_8

    if-eq v6, v1, :cond_8

    instance-of v7, v6, Ljava/util/concurrent/CancellationException;

    if-nez v7, :cond_8

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v1, v6}, Lp4/g;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_9
    :goto_4
    monitor-exit p1

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    if-ne v1, v0, :cond_b

    goto :goto_5

    :cond_b
    new-instance p2, LW4/k;

    invoke-direct {p2, v1, v4}, LW4/k;-><init>(Ljava/lang/Throwable;Z)V

    :goto_5
    if-eqz v1, :cond_e

    invoke-virtual {p0, v1}, LW4/Y;->f(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, v1}, LW4/Y;->r(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    if-eqz p2, :cond_d

    move-object v0, p2

    check-cast v0, LW4/k;

    sget-object v1, LW4/k;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    goto :goto_6

    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_6
    invoke-virtual {p0, p2}, LW4/Y;->x(Ljava/lang/Object;)V

    sget-object v0, LW4/Y;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of v1, p2, LW4/M;

    if-eqz v1, :cond_f

    new-instance v1, LW4/r;

    move-object v2, p2

    check-cast v2, LW4/M;

    invoke-direct {v1, v2}, LW4/r;-><init>(LW4/M;)V

    goto :goto_7

    :cond_f
    move-object v1, p2

    :goto_7
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, LW4/Y;->j(LW4/M;Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final m()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, LW4/Y;->q()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LW4/W;

    const/4 v2, 0x0

    const-string v3, "Job is still new or active: "

    if-eqz v1, :cond_3

    check-cast v0, LW4/W;

    invoke-virtual {v0}, LW4/W;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, " is cancelling"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_0
    if-nez v2, :cond_6

    new-instance v2, LW4/Q;

    if-nez v1, :cond_1

    invoke-virtual {p0}, LW4/Y;->i()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {v2, v1, v0, p0}, LW4/Q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LW4/Y;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v1, v0, LW4/M;

    if-nez v1, :cond_7

    instance-of v1, v0, LW4/k;

    if-eqz v1, :cond_5

    check-cast v0, LW4/k;

    iget-object v0, v0, LW4/k;->a:Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_4

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_4
    if-nez v2, :cond_6

    new-instance v1, LW4/Q;

    invoke-virtual {p0}, LW4/Y;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, LW4/Q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LW4/Y;)V

    move-object v2, v1

    goto :goto_0

    :cond_5
    new-instance v0, LW4/Q;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, LW4/Q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LW4/Y;)V

    move-object v2, v0

    :cond_6
    :goto_0
    return-object v2

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final o(LW4/M;)LW4/Z;
    .locals 2

    invoke-interface {p1}, LW4/M;->d()LW4/Z;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, LW4/E;

    if-eqz v0, :cond_0

    new-instance v0, LW4/Z;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/g;-><init>()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, LW4/U;

    if-eqz v0, :cond_1

    check-cast p1, LW4/U;

    invoke-virtual {p0, p1}, LW4/Y;->z(LW4/U;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State should have list: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final p()LW4/h;
    .locals 0

    iget-object p0, p0, LW4/Y;->_parentHandle:Ljava/lang/Object;

    check-cast p0, LW4/h;

    return-object p0
.end method

.method public final q()Ljava/lang/Object;
    .locals 2

    :goto_0
    iget-object v0, p0, LW4/Y;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/internal/l;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/l;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public r(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public s(LW4/m;)V
    .locals 0

    throw p1
.end method

.method public final t(LW4/P;)V
    .locals 7

    sget-object v0, LW4/a0;->d:LW4/a0;

    if-nez p1, :cond_0

    iput-object v0, p0, LW4/Y;->_parentHandle:Ljava/lang/Object;

    return-void

    :cond_0
    check-cast p1, LW4/Y;

    :goto_0
    invoke-virtual {p1}, LW4/Y;->q()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LW4/E;

    sget-object v3, LW4/Y;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, LW4/E;

    iget-boolean v2, v2, LW4/E;->d:Z

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    sget-object v2, LW4/u;->i:LW4/E;

    invoke-virtual {v3, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    move v5, v6

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    move v5, v4

    goto :goto_3

    :cond_3
    instance-of v2, v1, LW4/L;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, LW4/L;

    iget-object v2, v2, LW4/L;->d:LW4/Z;

    invoke-virtual {v3, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    if-eq v5, v4, :cond_6

    goto :goto_0

    :cond_6
    new-instance v1, LW4/i;

    invoke-direct {v1, p0}, LW4/i;-><init>(LW4/Y;)V

    const/4 v2, 0x2

    invoke-static {p1, v4, v1, v2}, LW4/u;->f(LW4/P;ZLW4/U;I)LW4/C;

    move-result-object p1

    check-cast p1, LW4/h;

    iput-object p1, p0, LW4/Y;->_parentHandle:Ljava/lang/Object;

    invoke-virtual {p0}, LW4/Y;->q()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, LW4/M;

    if-nez v1, :cond_7

    invoke-interface {p1}, LW4/C;->b()V

    iput-object v0, p0, LW4/Y;->_parentHandle:Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LW4/Y;->q()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, LW4/Y;->A(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, LW4/u;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(ZZLE3/b;)LW4/C;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p3, LW4/S;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, LW4/S;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_4

    new-instance v1, LW4/N;

    invoke-direct {v1, p3}, LW4/N;-><init>(LE3/b;)V

    goto :goto_2

    :cond_1
    instance-of v1, p3, LW4/U;

    if-eqz v1, :cond_2

    move-object v1, p3

    check-cast v1, LW4/U;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, LW4/O;

    invoke-direct {v1, p3}, LW4/O;-><init>(LE3/b;)V

    :cond_4
    :goto_2
    iput-object p0, v1, LW4/U;->g:LW4/Y;

    :cond_5
    :goto_3
    invoke-virtual {p0}, LW4/Y;->q()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, LW4/E;

    if-eqz v3, :cond_8

    move-object v3, v2

    check-cast v3, LW4/E;

    iget-boolean v4, v3, LW4/E;->d:Z

    if-eqz v4, :cond_6

    sget-object v3, LW4/Y;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    :cond_6
    new-instance v2, LW4/Z;

    invoke-direct {v2}, Lkotlinx/coroutines/internal/g;-><init>()V

    iget-boolean v4, v3, LW4/E;->d:Z

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    new-instance v4, LW4/L;

    invoke-direct {v4, v2}, LW4/L;-><init>(LW4/Z;)V

    move-object v2, v4

    :goto_4
    sget-object v4, LW4/Y;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    instance-of v3, v2, LW4/M;

    if-eqz v3, :cond_12

    move-object v3, v2

    check-cast v3, LW4/M;

    invoke-interface {v3}, LW4/M;->d()LW4/Z;

    move-result-object v3

    if-nez v3, :cond_a

    if-eqz v2, :cond_9

    check-cast v2, LW4/U;

    invoke-virtual {p0, v2}, LW4/Y;->z(LW4/U;)V

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    sget-object v4, LW4/a0;->d:LW4/a0;

    if-eqz p1, :cond_f

    instance-of v5, v2, LW4/W;

    if-eqz v5, :cond_f

    monitor-enter v2

    :try_start_0
    move-object v5, v2

    check-cast v5, LW4/W;

    invoke-virtual {v5}, LW4/W;->c()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_b

    instance-of v6, p3, LW4/i;

    if-eqz v6, :cond_e

    move-object v6, v2

    check-cast v6, LW4/W;

    invoke-virtual {v6}, LW4/W;->f()Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_b
    :goto_5
    move-object v4, v2

    check-cast v4, LW4/M;

    invoke-virtual {p0, v4, v3, v1}, LW4/Y;->b(LW4/M;LW4/Z;LW4/U;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_c

    monitor-exit v2

    goto :goto_3

    :cond_c
    if-nez v5, :cond_d

    monitor-exit v2

    return-object v1

    :cond_d
    move-object v4, v1

    :cond_e
    monitor-exit v2

    goto :goto_7

    :goto_6
    monitor-exit v2

    throw p0

    :cond_f
    move-object v5, v0

    :goto_7
    if-eqz v5, :cond_11

    if-eqz p2, :cond_10

    invoke-interface {p3, v5}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v4

    :cond_11
    check-cast v2, LW4/M;

    invoke-virtual {p0, v2, v3, v1}, LW4/Y;->b(LW4/M;LW4/Z;LW4/U;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    :cond_12
    if-eqz p2, :cond_15

    instance-of p0, v2, LW4/k;

    if-eqz p0, :cond_13

    check-cast v2, LW4/k;

    goto :goto_8

    :cond_13
    move-object v2, v0

    :goto_8
    if-eqz v2, :cond_14

    iget-object v0, v2, LW4/k;->a:Ljava/lang/Throwable;

    :cond_14
    invoke-interface {p3, v0}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    sget-object p0, LW4/a0;->d:LW4/a0;

    return-object p0
.end method

.method public final w(LW4/Z;Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/g;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/g;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, LW4/S;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, LW4/U;

    :try_start_0
    invoke-virtual {v2, p2}, LW4/U;->n(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, Lp4/g;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v1, LW4/m;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception in completion handler "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/g;->i()Lkotlinx/coroutines/internal/g;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, LW4/Y;->s(LW4/m;)V

    :cond_3
    invoke-virtual {p0, p2}, LW4/Y;->f(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public x(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public y()V
    .locals 0

    return-void
.end method

.method public final z(LW4/U;)V
    .locals 3

    new-instance v0, LW4/Z;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/g;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/internal/g;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/coroutines/internal/g;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/g;->h()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/g;->g(Lkotlinx/coroutines/internal/g;)V

    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/g;->i()Lkotlinx/coroutines/internal/g;

    move-result-object v0

    sget-object v1, LW4/Y;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
