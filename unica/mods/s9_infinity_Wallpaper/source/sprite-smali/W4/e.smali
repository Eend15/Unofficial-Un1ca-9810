.class public final LW4/e;
.super LW4/A;
.source "SourceFile"

# interfaces
.implements LW4/d;
.implements Lw3/d;


# static fields
.field public static final synthetic j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I

.field private volatile synthetic _state:Ljava/lang/Object;

.field public final g:Lu3/d;

.field public final h:Lu3/i;

.field public i:LW4/C;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_decision"

    const-class v1, LW4/e;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, LW4/e;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LW4/e;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lu3/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LW4/A;-><init>(I)V

    iput-object p1, p0, LW4/e;->g:Lu3/d;

    invoke-interface {p1}, Lu3/d;->getContext()Lu3/i;

    move-result-object p1

    iput-object p1, p0, LW4/e;->h:Lu3/i;

    const/4 p1, 0x0

    iput p1, p0, LW4/e;->_decision:I

    sget-object p1, LW4/b;->d:LW4/b;

    iput-object p1, p0, LW4/e;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static p(LE3/b;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", already has "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static q(LW4/e;Ljava/lang/Object;I)V
    .locals 9

    :cond_0
    iget-object v0, p0, LW4/e;->_state:Ljava/lang/Object;

    instance-of v1, v0, LW4/b0;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, LW4/b0;

    instance-of v2, p1, LW4/k;

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p2}, LW4/u;->g(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    instance-of v2, v1, LW4/D;

    if-eqz v2, :cond_4

    new-instance v2, LW4/j;

    instance-of v3, v1, LW4/D;

    if-eqz v3, :cond_3

    check-cast v1, LW4/D;

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const/16 v8, 0x10

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, LW4/j;-><init>(Ljava/lang/Object;LW4/D;LE3/b;Ljava/util/concurrent/CancellationException;I)V

    goto :goto_3

    :cond_4
    :goto_2
    move-object v2, p1

    :goto_3
    sget-object v1, LW4/e;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LW4/e;->o()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, LW4/e;->i:LW4/C;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {p1}, LW4/C;->b()V

    sget-object p1, LW4/a0;->d:LW4/a0;

    iput-object p1, p0, LW4/e;->i:LW4/C;

    :cond_6
    :goto_4
    invoke-virtual {p0, p2}, LW4/e;->j(I)V

    goto :goto_5

    :cond_7
    instance-of p0, v0, LW4/f;

    if-eqz p0, :cond_8

    check-cast v0, LW4/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LW4/f;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p0

    if-eqz p0, :cond_8

    :goto_5
    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Already resumed, but proposed with update "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 8

    :cond_0
    iget-object p1, p0, LW4/e;->_state:Ljava/lang/Object;

    instance-of v0, p1, LW4/b0;

    if-nez v0, :cond_6

    instance-of v0, p1, LW4/k;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    instance-of v0, p1, LW4/j;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, LW4/j;

    iget-object v1, v0, LW4/j;->e:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, v1}, LW4/j;->a(LW4/j;LW4/D;Ljava/util/concurrent/CancellationException;I)LW4/j;

    move-result-object v1

    sget-object v2, LW4/e;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, LW4/j;->b:LW4/D;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1, p2}, LW4/e;->h(LW4/D;Ljava/lang/Throwable;)V

    :cond_2
    iget-object p1, v0, LW4/j;->c:LE3/b;

    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1, p2}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, LW4/m;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in resume onCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, LW4/e;->h:Lu3/i;

    invoke-static {p0, p2}, LW4/u;->e(Lu3/i;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be called at most once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    sget-object v6, LW4/e;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v7, LW4/j;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0xe

    move-object v0, v7

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, LW4/j;-><init>(Ljava/lang/Object;LW4/D;LE3/b;Ljava/util/concurrent/CancellationException;I)V

    invoke-virtual {v6, p0, p1, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not completed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Lu3/d;
    .locals 0

    iget-object p0, p0, LW4/e;->g:Lu3/d;

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    invoke-super {p0, p1}, LW4/A;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    instance-of p0, p1, LW4/j;

    if-eqz p0, :cond_0

    check-cast p1, LW4/j;

    iget-object p1, p1, LW4/j;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final f()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LW4/e;->_state:Ljava/lang/Object;

    return-object p0
.end method

.method public final g(LE3/b;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    invoke-interface {p1, p2}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, LW4/m;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, LW4/e;->h:Lu3/i;

    invoke-static {p0, p2}, LW4/u;->e(Lu3/i;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final getCallerFrame()Lw3/d;
    .locals 1

    iget-object p0, p0, LW4/e;->g:Lu3/d;

    instance-of v0, p0, Lw3/d;

    if-eqz v0, :cond_0

    check-cast p0, Lw3/d;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getContext()Lu3/i;
    .locals 0

    iget-object p0, p0, LW4/e;->h:Lu3/i;

    return-object p0
.end method

.method public final h(LW4/D;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2}, LW4/D;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, LW4/m;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, LW4/e;->h:Lu3/i;

    invoke-static {p0, p2}, LW4/u;->e(Lu3/i;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final i(Ljava/lang/Throwable;)V
    .locals 4

    :cond_0
    iget-object v0, p0, LW4/e;->_state:Ljava/lang/Object;

    instance-of v1, v0, LW4/b0;

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, LW4/f;

    instance-of v2, v0, LW4/D;

    invoke-direct {v1, p0, p1, v2}, LW4/f;-><init>(LW4/e;Ljava/lang/Throwable;Z)V

    sget-object v3, LW4/e;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_2

    check-cast v0, LW4/D;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0, p1}, LW4/e;->h(LW4/D;Ljava/lang/Throwable;)V

    :cond_3
    invoke-virtual {p0}, LW4/e;->o()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, LW4/e;->i:LW4/C;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1}, LW4/C;->b()V

    sget-object p1, LW4/a0;->d:LW4/a0;

    iput-object p1, p0, LW4/e;->i:LW4/C;

    :cond_5
    :goto_1
    iget p1, p0, LW4/A;->f:I

    invoke-virtual {p0, p1}, LW4/e;->j(I)V

    return-void
.end method

.method public final j(I)V
    .locals 5

    :cond_0
    iget v0, p0, LW4/e;->_decision:I

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    iget-object v0, p0, LW4/e;->g:Lu3/d;

    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    move v1, v2

    :cond_1
    if-nez v1, :cond_5

    instance-of v3, v0, Lkotlinx/coroutines/internal/d;

    if-eqz v3, :cond_5

    invoke-static {p1}, LW4/u;->g(I)Z

    move-result p1

    iget v3, p0, LW4/A;->f:I

    invoke-static {v3}, LW4/u;->g(I)Z

    move-result v3

    if-ne p1, v3, :cond_5

    move-object p1, v0

    check-cast p1, Lkotlinx/coroutines/internal/d;

    iget-object p1, p1, Lkotlinx/coroutines/internal/d;->g:LW4/q;

    check-cast v0, Lkotlinx/coroutines/internal/d;

    iget-object v0, v0, Lkotlinx/coroutines/internal/d;->h:Lw3/c;

    invoke-interface {v0}, Lu3/d;->getContext()Lu3/i;

    move-result-object v0

    invoke-virtual {p1}, LW4/q;->Y()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0, p0}, LW4/q;->X(Lu3/i;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    invoke-static {}, LW4/e0;->a()LW4/J;

    move-result-object p1

    iget-wide v0, p1, LW4/J;->f:J

    const-wide v3, 0x100000000L

    cmp-long v0, v0, v3

    if-ltz v0, :cond_3

    invoke-virtual {p1, p0}, LW4/J;->a0(LW4/A;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, LW4/J;->c0(Z)V

    :try_start_0
    iget-object v0, p0, LW4/e;->g:Lu3/d;

    invoke-static {p0, v0, v2}, LW4/u;->j(LW4/e;Lu3/d;Z)V

    :cond_4
    invoke-virtual {p1}, LW4/J;->d0()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    :goto_0
    invoke-virtual {p1}, LW4/J;->Z()V

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1}, LW4/A;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1}, LW4/J;->Z()V

    throw p0

    :cond_5
    invoke-static {p0, v0, v1}, LW4/u;->j(LW4/e;Lu3/d;Z)V

    :goto_1
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already resumed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    sget-object v0, LW4/e;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final k()Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, LW4/e;->o()Z

    move-result v0

    :cond_0
    iget v1, p0, LW4/e;->_decision:I

    sget-object v2, LW4/a0;->d:LW4/a0;

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    const/4 v4, 0x2

    if-ne v1, v4, :cond_8

    if-eqz v0, :cond_4

    iget-object v0, p0, LW4/e;->g:Lu3/d;

    instance-of v1, v0, Lkotlinx/coroutines/internal/d;

    if-eqz v1, :cond_1

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/internal/d;

    :cond_1
    if-eqz v3, :cond_4

    invoke-virtual {v3, p0}, Lkotlinx/coroutines/internal/d;->j(LW4/e;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, LW4/e;->i:LW4/C;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, LW4/C;->b()V

    iput-object v2, p0, LW4/e;->i:LW4/C;

    :goto_0
    invoke-virtual {p0, v0}, LW4/e;->i(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    iget-object v0, p0, LW4/e;->_state:Ljava/lang/Object;

    instance-of v1, v0, LW4/k;

    if-nez v1, :cond_7

    iget v1, p0, LW4/A;->f:I

    invoke-static {v1}, LW4/u;->g(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, LW4/e;->h:Lu3/i;

    sget-object v2, LW4/r;->e:LW4/r;

    invoke-interface {v1, v2}, Lu3/i;->W(Lu3/h;)Lu3/g;

    move-result-object v1

    check-cast v1, LW4/P;

    if-eqz v1, :cond_6

    invoke-interface {v1}, LW4/P;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    check-cast v1, LW4/Y;

    invoke-virtual {v1}, LW4/Y;->m()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LW4/e;->a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    throw v1

    :cond_6
    :goto_2
    invoke-virtual {p0, v0}, LW4/e;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    check-cast v0, LW4/k;

    iget-object p0, v0, LW4/k;->a:Ljava/lang/Throwable;

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already suspended"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    sget-object v1, LW4/e;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, p0, v5, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LW4/e;->i:LW4/C;

    if-nez v1, :cond_a

    invoke-virtual {p0}, LW4/e;->m()LW4/C;

    :cond_a
    if-eqz v0, :cond_e

    iget-object v0, p0, LW4/e;->g:Lu3/d;

    instance-of v1, v0, Lkotlinx/coroutines/internal/d;

    if-eqz v1, :cond_b

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/internal/d;

    :cond_b
    if-eqz v3, :cond_e

    invoke-virtual {v3, p0}, Lkotlinx/coroutines/internal/d;->j(LW4/e;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_4

    :cond_c
    iget-object v1, p0, LW4/e;->i:LW4/C;

    if-nez v1, :cond_d

    goto :goto_3

    :cond_d
    invoke-interface {v1}, LW4/C;->b()V

    iput-object v2, p0, LW4/e;->i:LW4/C;

    :goto_3
    invoke-virtual {p0, v0}, LW4/e;->i(Ljava/lang/Throwable;)V

    :cond_e
    :goto_4
    sget-object p0, Lv3/a;->d:Lv3/a;

    return-object p0
.end method

.method public final l()V
    .locals 2

    invoke-virtual {p0}, LW4/e;->m()LW4/C;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, LW4/e;->_state:Ljava/lang/Object;

    instance-of v1, v1, LW4/b0;

    if-nez v1, :cond_1

    invoke-interface {v0}, LW4/C;->b()V

    sget-object v0, LW4/a0;->d:LW4/a0;

    iput-object v0, p0, LW4/e;->i:LW4/C;

    :cond_1
    return-void
.end method

.method public final m()LW4/C;
    .locals 4

    sget-object v0, LW4/r;->e:LW4/r;

    iget-object v1, p0, LW4/e;->h:Lu3/i;

    invoke-interface {v1, v0}, Lu3/i;->W(Lu3/h;)Lu3/g;

    move-result-object v0

    check-cast v0, LW4/P;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, LW4/g;

    invoke-direct {v1, p0}, LW4/g;-><init>(LW4/e;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, LW4/u;->f(LW4/P;ZLW4/U;I)LW4/C;

    move-result-object v0

    iput-object v0, p0, LW4/e;->i:LW4/C;

    return-object v0
.end method

.method public final n(LE3/b;)V
    .locals 9

    instance-of v0, p1, LW4/D;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LW4/D;

    goto :goto_0

    :cond_0
    new-instance v0, LW4/D;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, LW4/D;-><init>(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v1, p0, LW4/e;->_state:Ljava/lang/Object;

    instance-of v2, v1, LW4/b;

    if-eqz v2, :cond_2

    sget-object v2, LW4/e;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_2
    instance-of v2, v1, LW4/D;

    const/4 v3, 0x0

    if-nez v2, :cond_b

    instance-of v2, v1, LW4/k;

    if-eqz v2, :cond_7

    move-object v0, v1

    check-cast v0, LW4/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    sget-object v4, LW4/k;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_6

    instance-of v2, v1, LW4/f;

    if-eqz v2, :cond_5

    instance-of v1, v1, LW4/k;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_4

    iget-object v3, v0, LW4/k;->a:Ljava/lang/Throwable;

    :cond_4
    invoke-virtual {p0, p1, v3}, LW4/e;->g(LE3/b;Ljava/lang/Throwable;)V

    :cond_5
    return-void

    :cond_6
    invoke-static {p1, v1}, LW4/e;->p(LE3/b;Ljava/lang/Object;)V

    throw v3

    :cond_7
    instance-of v2, v1, LW4/j;

    if-eqz v2, :cond_a

    move-object v2, v1

    check-cast v2, LW4/j;

    iget-object v4, v2, LW4/j;->b:LW4/D;

    if-nez v4, :cond_9

    iget-object v4, v2, LW4/j;->e:Ljava/lang/Throwable;

    if-eqz v4, :cond_8

    invoke-virtual {p0, p1, v4}, LW4/e;->g(LE3/b;Ljava/lang/Throwable;)V

    return-void

    :cond_8
    const/16 v4, 0x1d

    invoke-static {v2, v0, v3, v4}, LW4/j;->a(LW4/j;LW4/D;Ljava/util/concurrent/CancellationException;I)LW4/j;

    move-result-object v2

    sget-object v3, LW4/e;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_9
    invoke-static {p1, v1}, LW4/e;->p(LE3/b;Ljava/lang/Object;)V

    throw v3

    :cond_a
    new-instance v8, LW4/j;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    move-object v2, v8

    move-object v3, v1

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, LW4/j;-><init>(Ljava/lang/Object;LW4/D;LE3/b;Ljava/util/concurrent/CancellationException;I)V

    sget-object v2, LW4/e;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_b
    invoke-static {p1, v1}, LW4/e;->p(LE3/b;Ljava/lang/Object;)V

    throw v3
.end method

.method public final o()Z
    .locals 2

    iget v0, p0, LW4/A;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, LW4/e;->g:Lu3/d;

    check-cast p0, Lkotlinx/coroutines/internal/d;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/d;->g()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final r(LW4/q;)V
    .locals 4

    sget-object v0, Lq3/m;->a:Lq3/m;

    iget-object v1, p0, LW4/e;->g:Lu3/d;

    instance-of v2, v1, Lkotlinx/coroutines/internal/d;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lkotlinx/coroutines/internal/d;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Lkotlinx/coroutines/internal/d;->g:LW4/q;

    :cond_1
    if-ne v3, p1, :cond_2

    const/4 p1, 0x4

    goto :goto_1

    :cond_2
    iget p1, p0, LW4/A;->f:I

    :goto_1
    invoke-static {p0, v0, p1}, LW4/e;->q(LW4/e;Ljava/lang/Object;I)V

    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, LW4/k;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, LW4/k;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    iget v0, p0, LW4/A;->f:I

    invoke-static {p0, p1, v0}, LW4/e;->q(LW4/e;Ljava/lang/Object;I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CancellableContinuation("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LW4/e;->g:Lu3/d;

    invoke-static {v1}, LW4/u;->k(Lu3/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LW4/e;->_state:Ljava/lang/Object;

    instance-of v2, v1, LW4/b0;

    if-eqz v2, :cond_0

    const-string v1, "Active"

    goto :goto_0

    :cond_0
    instance-of v1, v1, LW4/f;

    if-eqz v1, :cond_1

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v1, "Completed"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, LW4/u;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
