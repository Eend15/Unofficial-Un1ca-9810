.class public abstract LW4/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements LW4/C;


# instance fields
.field private volatile _heap:Ljava/lang/Object;

.field public d:J

.field public e:I


# virtual methods
.method public final declared-synchronized a(JLW4/H;LW4/I;)I
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LW4/G;->_heap:Ljava/lang/Object;

    sget-object v1, LW4/u;->a:LU3/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    const/4 p0, 0x2

    return p0

    :cond_0
    :try_start_1
    monitor-enter p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p3, Lkotlinx/coroutines/internal/r;->a:[LW4/G;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p4}, LW4/I;->f0(LW4/I;)Z

    move-result p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p4, :cond_2

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    const-wide/16 v2, 0x0

    if-nez v0, :cond_3

    :try_start_4
    iput-wide p1, p3, LW4/H;->b:J

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    iget-wide v4, v0, LW4/G;->d:J

    sub-long v6, v4, p1

    cmp-long p4, v6, v2

    if-ltz p4, :cond_4

    goto :goto_1

    :cond_4
    move-wide p1, v4

    :goto_1
    iget-wide v4, p3, LW4/H;->b:J

    sub-long v4, p1, v4

    cmp-long p4, v4, v2

    if-lez p4, :cond_5

    iput-wide p1, p3, LW4/H;->b:J

    :cond_5
    :goto_2
    iget-wide p1, p0, LW4/G;->d:J

    iget-wide v4, p3, LW4/H;->b:J

    sub-long/2addr p1, v4

    cmp-long p1, p1, v2

    if-gez p1, :cond_6

    iput-wide v4, p0, LW4/G;->d:J

    :cond_6
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/internal/r;->a(LW4/G;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v1

    :goto_3
    :try_start_6
    monitor-exit p3

    throw p1

    :goto_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LW4/G;->_heap:Ljava/lang/Object;

    sget-object v1, LW4/u;->a:LU3/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    instance-of v2, v0, LW4/H;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v0, LW4/H;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_4

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, LW4/G;->_heap:Ljava/lang/Object;

    instance-of v4, v2, Lkotlinx/coroutines/internal/r;

    if-eqz v4, :cond_2

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/internal/r;

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget v2, p0, LW4/G;->e:I

    invoke-virtual {v0, v2}, Lkotlinx/coroutines/internal/r;->c(I)LW4/G;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_4
    :goto_2
    iput-object v1, p0, LW4/G;->_heap:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, LW4/G;

    iget-wide v0, p0, LW4/G;->d:J

    iget-wide p0, p1, LW4/G;->d:J

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-gez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d(LW4/H;)V
    .locals 2

    iget-object v0, p0, LW4/G;->_heap:Ljava/lang/Object;

    sget-object v1, LW4/u;->a:LU3/w;

    if-eq v0, v1, :cond_0

    iput-object p1, p0, LW4/G;->_heap:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Delayed[nanos="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, LW4/G;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
