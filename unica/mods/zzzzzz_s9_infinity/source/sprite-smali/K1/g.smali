.class public final LK1/g;
.super LK1/d;
.source "SourceFile"


# virtual methods
.method public final declared-synchronized b()LH1/a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LK1/d;->b:Landroid/content/Context;

    invoke-static {v0}, LM1/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LH1/a;->f:LH1/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v0, LH1/a;->e:LH1/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized e(ILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x4943dbf9

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x69401ccd

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "android.wallpaper.goingtosleep"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const-string p1, "android.wallpaper.wakingup"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    goto :goto_2

    :cond_3
    sget-object p1, LH1/a;->e:LH1/a;

    invoke-virtual {p0, p1}, LK1/d;->d(LH1/a;)V

    goto :goto_2

    :cond_4
    sget-object p1, LH1/a;->f:LH1/a;

    invoke-virtual {p0, p1}, LK1/d;->d(LH1/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
