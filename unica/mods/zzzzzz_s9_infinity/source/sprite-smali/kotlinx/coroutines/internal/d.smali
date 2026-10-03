.class public final Lkotlinx/coroutines/internal/d;
.super LW4/A;
.source "SourceFile"

# interfaces
.implements Lw3/d;
.implements Lu3/d;


# static fields
.field public static final synthetic k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _reusableCancellableContinuation:Ljava/lang/Object;

.field public final g:LW4/q;

.field public final h:Lw3/c;

.field public i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_reusableCancellableContinuation"

    const-class v2, Lkotlinx/coroutines/internal/d;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/d;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(LW4/q;Lw3/c;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, LW4/A;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/internal/d;->g:LW4/q;

    iput-object p2, p0, Lkotlinx/coroutines/internal/d;->h:Lw3/c;

    sget-object p1, Lkotlinx/coroutines/internal/a;->b:LU3/w;

    iput-object p1, p0, Lkotlinx/coroutines/internal/d;->i:Ljava/lang/Object;

    invoke-interface {p2}, Lu3/d;->getContext()Lu3/i;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Lkotlinx/coroutines/internal/q;->e:Lkotlinx/coroutines/internal/q;

    invoke-interface {p1, p2, v0}, Lu3/i;->h(Ljava/lang/Object;LE3/c;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    iput-object p1, p0, Lkotlinx/coroutines/internal/d;->j:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/coroutines/internal/d;->_reusableCancellableContinuation:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 0

    instance-of p0, p1, LW4/l;

    if-eqz p0, :cond_0

    check-cast p1, LW4/l;

    iget-object p0, p1, LW4/l;->b:LE3/b;

    invoke-interface {p0, p2}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final b()Lu3/d;
    .locals 0

    return-object p0
.end method

.method public final f()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/d;->i:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/internal/a;->b:LU3/w;

    iput-object v1, p0, Lkotlinx/coroutines/internal/d;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public final g()Z
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/d;->_reusableCancellableContinuation:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getCallerFrame()Lw3/d;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/d;->h:Lw3/c;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getContext()Lu3/i;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/d;->h:Lw3/c;

    invoke-interface {p0}, Lu3/d;->getContext()Lu3/i;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/util/concurrent/CancellationException;)Z
    .locals 4

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/d;->_reusableCancellableContinuation:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/internal/a;->c:LU3/w;

    invoke-static {v0, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sget-object v0, Lkotlinx/coroutines/internal/d;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_1
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    return v3

    :cond_2
    sget-object v1, Lkotlinx/coroutines/internal/d;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method public final i()V
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/d;->_reusableCancellableContinuation:Ljava/lang/Object;

    instance-of v0, p0, LW4/e;

    if-eqz v0, :cond_0

    check-cast p0, LW4/e;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    iget-object v0, p0, LW4/e;->i:LW4/C;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, LW4/C;->b()V

    sget-object v0, LW4/a0;->d:LW4/a0;

    iput-object v0, p0, LW4/e;->i:LW4/C;

    :cond_2
    :goto_1
    return-void
.end method

.method public final j(LW4/e;)Ljava/lang/Throwable;
    .locals 3

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/d;->_reusableCancellableContinuation:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/internal/a;->c:LU3/w;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    sget-object v0, Lkotlinx/coroutines/internal/d;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_1
    instance-of p1, v0, Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    sget-object p1, Lkotlinx/coroutines/internal/d;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent state "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lkotlinx/coroutines/internal/d;->h:Lw3/c;

    invoke-interface {v0}, Lu3/d;->getContext()Lu3/i;

    move-result-object v1

    invoke-static {p1}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, p1

    goto :goto_0

    :cond_0
    new-instance v4, LW4/k;

    invoke-direct {v4, v2, v3}, LW4/k;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/internal/d;->g:LW4/q;

    invoke-virtual {v2}, LW4/q;->Y()Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object v4, p0, Lkotlinx/coroutines/internal/d;->i:Ljava/lang/Object;

    iput v3, p0, LW4/A;->f:I

    invoke-virtual {v2, v1, p0}, LW4/q;->X(Lu3/i;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_1
    invoke-static {}, LW4/e0;->a()LW4/J;

    move-result-object v1

    iget-wide v5, v1, LW4/J;->f:J

    const-wide v7, 0x100000000L

    cmp-long v2, v5, v7

    if-ltz v2, :cond_2

    iput-object v4, p0, Lkotlinx/coroutines/internal/d;->i:Ljava/lang/Object;

    iput v3, p0, LW4/A;->f:I

    invoke-virtual {v1, p0}, LW4/J;->a0(LW4/A;)V

    goto :goto_3

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LW4/J;->c0(Z)V

    :try_start_0
    invoke-interface {v0}, Lu3/d;->getContext()Lu3/i;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/coroutines/internal/d;->j:Ljava/lang/Object;

    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/a;->e(Lu3/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p1}, Lu3/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/a;->a(Lu3/i;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v1}, LW4/J;->d0()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {v1}, LW4/J;->Z()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/a;->a(Lu3/i;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, LW4/A;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :goto_3
    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {v1}, LW4/J;->Z()V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DispatchedContinuation["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlinx/coroutines/internal/d;->g:LW4/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/coroutines/internal/d;->h:Lw3/c;

    invoke-static {p0}, LW4/u;->k(Lu3/d;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
