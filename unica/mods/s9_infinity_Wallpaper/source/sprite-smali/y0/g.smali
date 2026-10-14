.class public final Ly0/g;
.super Lp4/g;
.source "SourceFile"


# virtual methods
.method public final N(Ly0/h;Ly0/h;)V
    .locals 0

    iput-object p2, p1, Ly0/h;->b:Ly0/h;

    return-void
.end method

.method public final O(Ly0/h;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Ly0/h;->a:Ljava/lang/Thread;

    return-void
.end method

.method public final i(Ly0/i;Ly0/d;Ly0/d;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Ly0/i;->b:Ly0/d;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Ly0/i;->b:Ly0/d;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final j(Ly0/i;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Ly0/i;->a:Ljava/lang/Object;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Ly0/i;->a:Ljava/lang/Object;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final k(Ly0/i;Ly0/h;Ly0/h;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Ly0/i;->c:Ly0/h;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Ly0/i;->c:Ly0/h;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
