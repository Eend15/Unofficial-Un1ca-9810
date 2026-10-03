.class public abstract Lkotlinx/coroutines/scheduling/g;
.super LW4/K;
.source "SourceFile"


# instance fields
.field public f:Lkotlinx/coroutines/scheduling/b;


# virtual methods
.method public final X(Lu3/i;Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/g;->f:Lkotlinx/coroutines/scheduling/b;

    sget-object p1, Lkotlinx/coroutines/scheduling/b;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object p1, Lkotlinx/coroutines/scheduling/j;->f:Le3/a;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lkotlinx/coroutines/scheduling/b;->g(Ljava/lang/Runnable;Le3/a;Z)V

    return-void
.end method
