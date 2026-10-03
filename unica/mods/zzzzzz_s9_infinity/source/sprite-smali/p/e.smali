.class public final Lp/e;
.super Lj0/s;
.source "SourceFile"


# virtual methods
.method public final C(Lp/f;Lp/f;)V
    .locals 0

    iput-object p2, p1, Lp/f;->b:Lp/f;

    return-void
.end method

.method public final D(Lp/f;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lp/f;->a:Ljava/lang/Thread;

    return-void
.end method

.method public final m(Lp/g;Lp/c;Lp/c;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lp/g;->b:Lp/c;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lp/g;->b:Lp/c;

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

.method public final n(Lp/g;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lp/g;->a:Ljava/lang/Object;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lp/g;->a:Ljava/lang/Object;

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

.method public final o(Lp/g;Lp/f;Lp/f;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lp/g;->c:Lp/f;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Lp/g;->c:Lp/f;

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
