.class public final Le5/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# virtual methods
.method public final run()V
    .locals 2

    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    const-class p0, Le5/e;

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Le5/e;->Companion:Le5/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Le5/a;->a()Le5/e;

    move-result-object v0

    invoke-static {}, Le5/e;->access$getHead$cp()Le5/e;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Le5/e;->access$setHead$cp(Le5/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    monitor-exit p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le5/e;->timedOut()V

    goto :goto_0

    :goto_1
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
.end method
