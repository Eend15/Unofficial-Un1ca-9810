.class public final Lkotlinx/coroutines/internal/e;
.super LW4/q;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements LW4/y;


# instance fields
.field public final f:Lkotlinx/coroutines/scheduling/k;

.field public final g:I

.field public final synthetic h:LW4/y;

.field public final i:Lkotlinx/coroutines/internal/h;

.field public final j:Ljava/lang/Object;

.field private volatile runningWorkers:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/scheduling/k;I)V
    .locals 0

    invoke-direct {p0}, LW4/q;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/e;->f:Lkotlinx/coroutines/scheduling/k;

    iput p2, p0, Lkotlinx/coroutines/internal/e;->g:I

    instance-of p2, p1, LW4/y;

    if-eqz p2, :cond_0

    check-cast p1, LW4/y;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget-object p1, LW4/w;->a:LW4/y;

    :cond_1
    iput-object p1, p0, Lkotlinx/coroutines/internal/e;->h:LW4/y;

    new-instance p1, Lkotlinx/coroutines/internal/h;

    invoke-direct {p1}, Lkotlinx/coroutines/internal/h;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/e;->i:Lkotlinx/coroutines/internal/h;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/e;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final X(Lu3/i;Ljava/lang/Runnable;)V
    .locals 1

    iget-object p1, p0, Lkotlinx/coroutines/internal/e;->i:Lkotlinx/coroutines/internal/h;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/h;->a(Ljava/lang/Runnable;)Z

    iget p1, p0, Lkotlinx/coroutines/internal/e;->runningWorkers:I

    iget p2, p0, Lkotlinx/coroutines/internal/e;->g:I

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/internal/e;->j:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget p2, p0, Lkotlinx/coroutines/internal/e;->runningWorkers:I

    iget v0, p0, Lkotlinx/coroutines/internal/e;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p2, v0, :cond_1

    monitor-exit p1

    goto :goto_0

    :cond_1
    :try_start_1
    iget p2, p0, Lkotlinx/coroutines/internal/e;->runningWorkers:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lkotlinx/coroutines/internal/e;->runningWorkers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    iget-object p1, p0, Lkotlinx/coroutines/internal/e;->f:Lkotlinx/coroutines/scheduling/k;

    invoke-virtual {p1, p0, p0}, Lkotlinx/coroutines/scheduling/k;->X(Lu3/i;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final j(JLW4/e;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/e;->h:LW4/y;

    invoke-interface {p0, p1, p2, p3}, LW4/y;->j(JLW4/e;)V

    return-void
.end method

.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/internal/e;->i:Lkotlinx/coroutines/internal/h;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/h;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    sget-object v3, Lu3/j;->d:Lu3/j;

    invoke-static {v3, v2}, LW4/u;->e(Lu3/i;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/internal/e;->f:Lkotlinx/coroutines/scheduling/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lkotlinx/coroutines/internal/e;->f:Lkotlinx/coroutines/scheduling/k;

    invoke-virtual {v0, p0, p0}, Lkotlinx/coroutines/scheduling/k;->X(Lu3/i;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/internal/e;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v2, p0, Lkotlinx/coroutines/internal/e;->runningWorkers:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lkotlinx/coroutines/internal/e;->runningWorkers:I

    iget-object v2, p0, Lkotlinx/coroutines/internal/e;->i:Lkotlinx/coroutines/internal/h;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/h;->c()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    :try_start_2
    iget v2, p0, Lkotlinx/coroutines/internal/e;->runningWorkers:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lkotlinx/coroutines/internal/e;->runningWorkers:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0
.end method
