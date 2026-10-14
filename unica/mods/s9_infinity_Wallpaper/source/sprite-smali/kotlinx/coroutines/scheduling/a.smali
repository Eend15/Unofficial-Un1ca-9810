.class public final Lkotlinx/coroutines/scheduling/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final synthetic k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final d:Lkotlinx/coroutines/scheduling/l;

.field public e:I

.field public f:J

.field public g:J

.field public h:I

.field public i:Z

.field private volatile indexInArray:I

.field public final synthetic j:Lkotlinx/coroutines/scheduling/b;

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field volatile synthetic workerCtl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/scheduling/a;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/a;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/scheduling/b;I)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    new-instance p1, Lkotlinx/coroutines/scheduling/l;

    invoke-direct {p1}, Lkotlinx/coroutines/scheduling/l;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/a;->d:Lkotlinx/coroutines/scheduling/l;

    const/4 p1, 0x4

    iput p1, p0, Lkotlinx/coroutines/scheduling/a;->e:I

    const/4 p1, 0x0

    iput p1, p0, Lkotlinx/coroutines/scheduling/a;->workerCtl:I

    sget-object p1, Lkotlinx/coroutines/scheduling/b;->m:LU3/w;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/a;->nextParkedWorker:Ljava/lang/Object;

    sget-object p1, LI3/e;->d:LI3/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, LI3/e;->e:LI3/a;

    invoke-virtual {p1}, LI3/a;->a()Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    iput p1, p0, Lkotlinx/coroutines/scheduling/a;->h:I

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/scheduling/a;->f(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)Lkotlinx/coroutines/scheduling/h;
    .locals 9

    iget v0, p0, Lkotlinx/coroutines/scheduling/a;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    :cond_1
    iget-wide v5, v0, Lkotlinx/coroutines/scheduling/b;->controlState:J

    const-wide v3, 0x7ffffc0000000000L

    and-long/2addr v3, v5

    const/16 v7, 0x2a

    shr-long/2addr v3, v7

    long-to-int v3, v3

    if-nez v3, :cond_6

    if-eqz p1, :cond_3

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a;->d:Lkotlinx/coroutines/scheduling/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/coroutines/scheduling/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/l;->c()Lkotlinx/coroutines/scheduling/h;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_4

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    iget-object p1, p1, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/e;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/h;->d()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    iget-object p1, p1, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/e;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/h;->d()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    :cond_4
    :goto_0
    if-nez v0, :cond_5

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/scheduling/a;->i(Z)Lkotlinx/coroutines/scheduling/h;

    move-result-object v0

    :cond_5
    return-object v0

    :cond_6
    const-wide v3, 0x40000000000L

    sub-long v7, v5, v3

    sget-object v3, Lkotlinx/coroutines/scheduling/b;->k:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v2, p0, Lkotlinx/coroutines/scheduling/a;->e:I

    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    iget p1, p1, Lkotlinx/coroutines/scheduling/b;->d:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/a;->d(I)I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    move v2, v0

    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/a;->e()Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a;->d:Lkotlinx/coroutines/scheduling/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lkotlinx/coroutines/scheduling/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/scheduling/h;

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/l;->c()Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    goto :goto_3

    :cond_9
    move-object p1, v1

    :goto_3
    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    if-nez v2, :cond_c

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/a;->e()Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/a;->e()Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/a;->i(Z)Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    :goto_4
    return-object p1
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lkotlinx/coroutines/scheduling/a;->indexInArray:I

    return p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/a;->nextParkedWorker:Ljava/lang/Object;

    return-object p0
.end method

.method public final d(I)I
    .locals 2

    iget v0, p0, Lkotlinx/coroutines/scheduling/a;->h:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/scheduling/a;->h:I

    add-int/lit8 p0, p1, -0x1

    and-int v1, p0, p1

    if-nez v1, :cond_0

    and-int/2addr p0, v0

    return p0

    :cond_0
    const p0, 0x7fffffff

    and-int/2addr p0, v0

    rem-int/2addr p0, p1

    return p0
.end method

.method public final e()Lkotlinx/coroutines/scheduling/h;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/a;->d(I)I

    move-result v0

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/e;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/h;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/e;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/h;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/scheduling/h;

    return-object p0

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/e;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/h;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/e;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/h;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/scheduling/h;

    return-object p0
.end method

.method public final f(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DefaultDispatcher-worker-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput p1, p0, Lkotlinx/coroutines/scheduling/a;->indexInArray:I

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/a;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final h(I)Z
    .locals 6

    iget v0, p0, Lkotlinx/coroutines/scheduling/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Lkotlinx/coroutines/scheduling/b;->k:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v3, 0x40000000000L

    iget-object v5, p0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    invoke-virtual {v2, v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_1
    if-eq v0, p1, :cond_2

    iput p1, p0, Lkotlinx/coroutines/scheduling/a;->e:I

    :cond_2
    return v1
.end method

.method public final i(Z)Lkotlinx/coroutines/scheduling/h;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    iget-wide v1, v1, Lkotlinx/coroutines/scheduling/b;->controlState:J

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/a;->d(I)I

    move-result v2

    iget-object v4, v0, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    const/4 v5, 0x0

    move v8, v5

    const-wide v9, 0x7fffffffffffffffL

    :goto_0
    const-wide/16 v11, 0x0

    if-ge v8, v1, :cond_8

    const/4 v13, 0x1

    add-int/2addr v2, v13

    if-le v2, v1, :cond_1

    move v2, v13

    :cond_1
    iget-object v13, v4, Lkotlinx/coroutines/scheduling/b;->i:Lkotlinx/coroutines/internal/n;

    invoke-virtual {v13, v2}, Lkotlinx/coroutines/internal/n;->b(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlinx/coroutines/scheduling/a;

    if-eqz v13, :cond_7

    if-eq v13, v0, :cond_7

    const-wide/16 v14, -0x1

    if-eqz p1, :cond_2

    iget-object v6, v0, Lkotlinx/coroutines/scheduling/a;->d:Lkotlinx/coroutines/scheduling/l;

    iget-object v7, v13, Lkotlinx/coroutines/scheduling/a;->d:Lkotlinx/coroutines/scheduling/l;

    invoke-virtual {v6, v7}, Lkotlinx/coroutines/scheduling/l;->d(Lkotlinx/coroutines/scheduling/l;)J

    move-result-wide v6

    goto :goto_2

    :cond_2
    iget-object v6, v0, Lkotlinx/coroutines/scheduling/a;->d:Lkotlinx/coroutines/scheduling/l;

    iget-object v7, v13, Lkotlinx/coroutines/scheduling/a;->d:Lkotlinx/coroutines/scheduling/l;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Lkotlinx/coroutines/scheduling/l;->c()Lkotlinx/coroutines/scheduling/h;

    move-result-object v13

    if-eqz v13, :cond_4

    sget-object v7, Lkotlinx/coroutines/scheduling/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v7, v6, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlinx/coroutines/scheduling/h;

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v7}, Lkotlinx/coroutines/scheduling/l;->a(Lkotlinx/coroutines/scheduling/h;)Lkotlinx/coroutines/scheduling/h;

    :goto_1
    move-wide v6, v14

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v7, v5}, Lkotlinx/coroutines/scheduling/l;->e(Lkotlinx/coroutines/scheduling/l;Z)J

    move-result-wide v6

    :goto_2
    cmp-long v13, v6, v14

    if-nez v13, :cond_6

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/a;->d:Lkotlinx/coroutines/scheduling/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/scheduling/l;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/scheduling/h;

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/l;->c()Lkotlinx/coroutines/scheduling/h;

    move-result-object v1

    :cond_5
    return-object v1

    :cond_6
    cmp-long v11, v6, v11

    if-lez v11, :cond_7

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_8
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v1, v9, v6

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    move-wide v9, v11

    :goto_3
    iput-wide v9, v0, Lkotlinx/coroutines/scheduling/a;->g:J

    return-object v3
.end method

.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    move v0, v2

    :cond_1
    :goto_1
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    invoke-virtual {v3}, Lkotlinx/coroutines/scheduling/b;->isTerminated()Z

    move-result v3

    const/4 v4, 0x5

    if-nez v3, :cond_13

    iget v3, v1, Lkotlinx/coroutines/scheduling/a;->e:I

    if-eq v3, v4, :cond_13

    iget-boolean v3, v1, Lkotlinx/coroutines/scheduling/a;->i:Z

    invoke-virtual {v1, v3}, Lkotlinx/coroutines/scheduling/a;->a(Z)Lkotlinx/coroutines/scheduling/h;

    move-result-object v3

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_8

    iput-wide v6, v1, Lkotlinx/coroutines/scheduling/a;->g:J

    iget-object v0, v3, Lkotlinx/coroutines/scheduling/h;->e:Le3/a;

    iget v8, v0, Le3/a;->e:I

    iput-wide v6, v1, Lkotlinx/coroutines/scheduling/a;->f:J

    iget v0, v1, Lkotlinx/coroutines/scheduling/a;->e:I

    const/4 v6, 0x2

    if-ne v0, v5, :cond_2

    iput v6, v1, Lkotlinx/coroutines/scheduling/a;->e:I

    :cond_2
    iget-object v5, v1, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v6}, Lkotlinx/coroutines/scheduling/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v5}, Lkotlinx/coroutines/scheduling/b;->W()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-wide v6, v5, Lkotlinx/coroutines/scheduling/b;->controlState:J

    invoke-virtual {v5, v6, v7}, Lkotlinx/coroutines/scheduling/b;->K(J)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Lkotlinx/coroutines/scheduling/b;->W()Z

    :cond_6
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v6

    invoke-interface {v6, v0, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_3
    if-nez v8, :cond_7

    goto :goto_0

    :cond_7
    sget-object v0, Lkotlinx/coroutines/scheduling/b;->k:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v6, -0x200000

    invoke-virtual {v0, v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    iget v0, v1, Lkotlinx/coroutines/scheduling/a;->e:I

    if-eq v0, v4, :cond_0

    const/4 v0, 0x4

    iput v0, v1, Lkotlinx/coroutines/scheduling/a;->e:I

    goto :goto_0

    :cond_8
    iput-boolean v2, v1, Lkotlinx/coroutines/scheduling/a;->i:Z

    iget-wide v8, v1, Lkotlinx/coroutines/scheduling/a;->g:J

    cmp-long v3, v8, v6

    const/4 v8, 0x1

    if-eqz v3, :cond_a

    if-nez v0, :cond_9

    move v0, v8

    goto :goto_1

    :cond_9
    invoke-virtual {v1, v5}, Lkotlinx/coroutines/scheduling/a;->h(I)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v3, v1, Lkotlinx/coroutines/scheduling/a;->g:J

    invoke-static {v3, v4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    iput-wide v6, v1, Lkotlinx/coroutines/scheduling/a;->g:J

    goto/16 :goto_0

    :cond_a
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/a;->nextParkedWorker:Ljava/lang/Object;

    sget-object v9, Lkotlinx/coroutines/scheduling/b;->m:LU3/w;

    if-eq v3, v9, :cond_12

    const/4 v3, -0x1

    iput v3, v1, Lkotlinx/coroutines/scheduling/a;->workerCtl:I

    :cond_b
    :goto_4
    iget-object v9, v1, Lkotlinx/coroutines/scheduling/a;->nextParkedWorker:Ljava/lang/Object;

    sget-object v10, Lkotlinx/coroutines/scheduling/b;->m:LU3/w;

    if-eq v9, v10, :cond_1

    iget v9, v1, Lkotlinx/coroutines/scheduling/a;->workerCtl:I

    if-ne v9, v3, :cond_1

    iget-object v9, v1, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    invoke-virtual {v9}, Lkotlinx/coroutines/scheduling/b;->isTerminated()Z

    move-result v9

    if-nez v9, :cond_1

    iget v9, v1, Lkotlinx/coroutines/scheduling/a;->e:I

    if-ne v9, v4, :cond_c

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v1, v5}, Lkotlinx/coroutines/scheduling/a;->h(I)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v9, v1, Lkotlinx/coroutines/scheduling/a;->f:J

    cmp-long v9, v9, v6

    if-nez v9, :cond_d

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iget-object v11, v1, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    iget-wide v11, v11, Lkotlinx/coroutines/scheduling/b;->f:J

    add-long/2addr v9, v11

    iput-wide v9, v1, Lkotlinx/coroutines/scheduling/a;->f:J

    :cond_d
    iget-object v9, v1, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    iget-wide v9, v9, Lkotlinx/coroutines/scheduling/b;->f:J

    invoke-static {v9, v10}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iget-wide v11, v1, Lkotlinx/coroutines/scheduling/a;->f:J

    sub-long/2addr v9, v11

    cmp-long v9, v9, v6

    if-ltz v9, :cond_b

    iput-wide v6, v1, Lkotlinx/coroutines/scheduling/a;->f:J

    iget-object v9, v1, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    iget-object v10, v9, Lkotlinx/coroutines/scheduling/b;->i:Lkotlinx/coroutines/internal/n;

    monitor-enter v10

    :try_start_1
    invoke-virtual {v9}, Lkotlinx/coroutines/scheduling/b;->isTerminated()Z

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v11, :cond_e

    monitor-exit v10

    goto :goto_4

    :cond_e
    :try_start_2
    iget-wide v11, v9, Lkotlinx/coroutines/scheduling/b;->controlState:J

    const-wide/32 v13, 0x1fffff

    and-long/2addr v11, v13

    long-to-int v11, v11

    iget v12, v9, Lkotlinx/coroutines/scheduling/b;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-gt v11, v12, :cond_f

    monitor-exit v10

    goto :goto_4

    :cond_f
    :try_start_3
    sget-object v11, Lkotlinx/coroutines/scheduling/a;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v11, v1, v3, v8}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v11, :cond_10

    monitor-exit v10

    goto :goto_4

    :cond_10
    :try_start_4
    iget v11, v1, Lkotlinx/coroutines/scheduling/a;->indexInArray:I

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/scheduling/a;->f(I)V

    invoke-virtual {v9, v1, v11, v2}, Lkotlinx/coroutines/scheduling/b;->j(Lkotlinx/coroutines/scheduling/a;II)V

    sget-object v12, Lkotlinx/coroutines/scheduling/b;->k:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v12, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v15

    and-long v12, v15, v13

    long-to-int v12, v12

    if-eq v12, v11, :cond_11

    iget-object v13, v9, Lkotlinx/coroutines/scheduling/b;->i:Lkotlinx/coroutines/internal/n;

    invoke-virtual {v13, v12}, Lkotlinx/coroutines/internal/n;->b(I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast v13, Lkotlinx/coroutines/scheduling/a;

    iget-object v14, v9, Lkotlinx/coroutines/scheduling/b;->i:Lkotlinx/coroutines/internal/n;

    invoke-virtual {v14, v11, v13}, Lkotlinx/coroutines/internal/n;->c(ILkotlinx/coroutines/scheduling/a;)V

    invoke-virtual {v13, v11}, Lkotlinx/coroutines/scheduling/a;->f(I)V

    invoke-virtual {v9, v13, v12, v11}, Lkotlinx/coroutines/scheduling/b;->j(Lkotlinx/coroutines/scheduling/a;II)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_11
    :goto_5
    iget-object v9, v9, Lkotlinx/coroutines/scheduling/b;->i:Lkotlinx/coroutines/internal/n;

    const/4 v11, 0x0

    invoke-virtual {v9, v12, v11}, Lkotlinx/coroutines/internal/n;->c(ILkotlinx/coroutines/scheduling/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v10

    iput v4, v1, Lkotlinx/coroutines/scheduling/a;->e:I

    goto/16 :goto_4

    :goto_6
    monitor-exit v10

    throw v0

    :cond_12
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/a;->j:Lkotlinx/coroutines/scheduling/b;

    invoke-virtual {v3, v1}, Lkotlinx/coroutines/scheduling/b;->h(Lkotlinx/coroutines/scheduling/a;)V

    goto/16 :goto_1

    :cond_13
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/scheduling/a;->h(I)Z

    return-void
.end method
