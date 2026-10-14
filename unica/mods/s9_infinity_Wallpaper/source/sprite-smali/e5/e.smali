.class public Le5/e;
.super Le5/G;
.source "SourceFile"


# static fields
.field public static final Companion:Le5/a;

.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field private static head:Le5/e;


# instance fields
.field private inQueue:Z

.field private next:Le5/e;

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Le5/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le5/e;->Companion:Le5/a;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Le5/e;->IDLE_TIMEOUT_MILLIS:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Le5/e;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public static final synthetic access$getHead$cp()Le5/e;
    .locals 1

    sget-object v0, Le5/e;->head:Le5/e;

    return-object v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_MILLIS$cp()J
    .locals 2

    sget-wide v0, Le5/e;->IDLE_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_NANOS$cp()J
    .locals 2

    sget-wide v0, Le5/e;->IDLE_TIMEOUT_NANOS:J

    return-wide v0
.end method

.method public static final synthetic access$getInQueue$p(Le5/e;)Z
    .locals 0

    iget-boolean p0, p0, Le5/e;->inQueue:Z

    return p0
.end method

.method public static final synthetic access$getNext$p(Le5/e;)Le5/e;
    .locals 0

    iget-object p0, p0, Le5/e;->next:Le5/e;

    return-object p0
.end method

.method public static final access$remainingNanos(Le5/e;J)J
    .locals 2

    iget-wide v0, p0, Le5/e;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public static final synthetic access$setHead$cp(Le5/e;)V
    .locals 0

    sput-object p0, Le5/e;->head:Le5/e;

    return-void
.end method

.method public static final synthetic access$setInQueue$p(Le5/e;Z)V
    .locals 0

    iput-boolean p1, p0, Le5/e;->inQueue:Z

    return-void
.end method

.method public static final synthetic access$setNext$p(Le5/e;Le5/e;)V
    .locals 0

    iput-object p1, p0, Le5/e;->next:Le5/e;

    return-void
.end method

.method public static final synthetic access$setTimeoutAt$p(Le5/e;J)V
    .locals 0

    iput-wide p1, p0, Le5/e;->timeoutAt:J

    return-void
.end method


# virtual methods
.method public final access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    invoke-virtual {p0, p1}, Le5/e;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method public final enter()V
    .locals 9

    invoke-virtual {p0}, Le5/G;->timeoutNanos()J

    move-result-wide v0

    invoke-virtual {p0}, Le5/G;->hasDeadline()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v4, Le5/e;->Companion:Le5/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v4, Le5/e;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Le5/e;->access$getInQueue$p(Le5/e;)Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v5, 0x1

    invoke-static {p0, v5}, Le5/e;->access$setInQueue$p(Le5/e;Z)V

    invoke-static {}, Le5/e;->access$getHead$cp()Le5/e;

    move-result-object v6

    if-nez v6, :cond_1

    new-instance v6, Le5/e;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-static {v6}, Le5/e;->access$setHead$cp(Le5/e;)V

    new-instance v6, Le5/b;

    const-string v7, "Okio Watchdog"

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Le5/G;->deadlineNanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v0, v5

    invoke-static {p0, v0, v1}, Le5/e;->access$setTimeoutAt$p(Le5/e;J)V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    add-long/2addr v0, v5

    invoke-static {p0, v0, v1}, Le5/e;->access$setTimeoutAt$p(Le5/e;J)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_7

    invoke-virtual {p0}, Le5/G;->deadlineNanoTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Le5/e;->access$setTimeoutAt$p(Le5/e;J)V

    :goto_1
    invoke-static {p0, v5, v6}, Le5/e;->access$remainingNanos(Le5/e;J)J

    move-result-wide v0

    invoke-static {}, Le5/e;->access$getHead$cp()Le5/e;

    move-result-object v2

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    :goto_2
    invoke-static {v2}, Le5/e;->access$getNext$p(Le5/e;)Le5/e;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Le5/e;->access$getNext$p(Le5/e;)Le5/e;

    move-result-object v3

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {v3, v5, v6}, Le5/e;->access$remainingNanos(Le5/e;J)J

    move-result-wide v7

    cmp-long v3, v0, v7

    if-gez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v2}, Le5/e;->access$getNext$p(Le5/e;)Le5/e;

    move-result-object v2

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    :goto_3
    invoke-static {v2}, Le5/e;->access$getNext$p(Le5/e;)Le5/e;

    move-result-object v0

    invoke-static {p0, v0}, Le5/e;->access$setNext$p(Le5/e;Le5/e;)V

    invoke-static {v2, p0}, Le5/e;->access$setNext$p(Le5/e;Le5/e;)V

    invoke-static {}, Le5/e;->access$getHead$cp()Le5/e;

    move-result-object p0

    if-ne v2, p0, :cond_6

    const-class p0, Le5/e;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit v4

    return-void

    :cond_7
    :try_start_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_8
    const-string p0, "Unbalanced enter/exit"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    monitor-exit v4

    throw p0
.end method

.method public final exit()Z
    .locals 4

    sget-object v0, Le5/e;->Companion:Le5/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Le5/e;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Le5/e;->access$getInQueue$p(Le5/e;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-static {p0, v2}, Le5/e;->access$setInQueue$p(Le5/e;Z)V

    invoke-static {}, Le5/e;->access$getHead$cp()Le5/e;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v1}, Le5/e;->access$getNext$p(Le5/e;)Le5/e;

    move-result-object v3

    if-ne v3, p0, :cond_1

    invoke-static {p0}, Le5/e;->access$getNext$p(Le5/e;)Le5/e;

    move-result-object v3

    invoke-static {v1, v3}, Le5/e;->access$setNext$p(Le5/e;Le5/e;)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Le5/e;->access$setNext$p(Le5/e;Le5/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_2
    invoke-static {v1}, Le5/e;->access$getNext$p(Le5/e;)Le5/e;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit v0

    const/4 v2, 0x1

    :goto_1
    return v2

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    new-instance p0, Ljava/io/InterruptedIOException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object p0
.end method

.method public final sink(Le5/B;)Le5/B;
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le5/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Le5/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v0
.end method

.method public final source(Le5/D;)Le5/D;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le5/d;

    invoke-direct {v0, p0, p1}, Le5/d;-><init>(Le5/e;Le5/D;)V

    return-object v0
.end method

.method public timedOut()V
    .locals 0

    return-void
.end method

.method public final withTimeout(LE3/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LE3/a;",
            ")TT;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Le5/e;->enter()V

    :try_start_0
    invoke-interface {p1}, LE3/a;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Le5/e;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Le5/e;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0}, Le5/e;->exit()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Le5/e;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_0
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0}, Le5/e;->exit()Z

    throw p1
.end method
