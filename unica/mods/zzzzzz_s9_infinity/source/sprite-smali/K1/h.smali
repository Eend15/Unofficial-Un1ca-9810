.class public final LK1/h;
.super LK1/a;
.source "SourceFile"


# instance fields
.field public j:LH1/a;


# virtual methods
.method public final declared-synchronized b()LH1/a;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, LK1/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LH1/a;->e:LH1/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, LK1/d;->b:Landroid/content/Context;

    invoke-static {v0}, LM1/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, LH1/a;->f:LH1/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    iget-object v0, p0, LK1/d;->b:Landroid/content/Context;

    invoke-static {v0}, LM1/g;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, LH1/a;->e:LH1/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    iget-object v0, p0, LK1/h;->j:LH1/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final declared-synchronized e(ILjava/lang/String;)V
    .locals 5

    const-string v0, "onCommand : unexpected state. x="

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5d68d75a

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x4943dbf9

    if-eq v1, v2, :cond_1

    const v2, 0x69401ccd

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.wallpaper.goingtosleep"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    const-string v1, "android.wallpaper.wakingup"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "android.wallpaper.aodstate"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_e

    const/4 v1, 0x4

    const/16 v2, 0x10

    if-eq p2, v4, :cond_b

    if-eq p2, v3, :cond_4

    goto :goto_3

    :cond_4
    iget-object p2, p0, LK1/d;->b:Landroid/content/Context;

    invoke-static {p2}, LM1/i;->c(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    move v1, v2

    :cond_5
    invoke-static {v1}, LK/I;->b0(I)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    iget-object p2, p0, LK1/d;->b:Landroid/content/Context;

    invoke-static {p2}, LM1/h;->c(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    if-nez p1, :cond_8

    sget-object p1, LH1/a;->e:LH1/a;

    goto :goto_2

    :cond_8
    if-ne p1, v4, :cond_9

    sget-object p1, LH1/a;->h:LH1/a;

    goto :goto_2

    :cond_9
    if-ne p1, v3, :cond_a

    sget-object p1, LH1/a;->g:LH1/a;

    goto :goto_2

    :cond_a
    const-string p2, "SeamlessAodDisplayStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_f

    iput-object p1, p0, LK1/h;->j:LH1/a;

    invoke-virtual {p0, p1}, LK1/d;->d(LH1/a;)V

    goto :goto_3

    :cond_b
    iget-object p1, p0, LK1/d;->b:Landroid/content/Context;

    invoke-static {p1}, LM1/i;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    move v1, v2

    :cond_c
    invoke-static {v1}, LK/I;->b0(I)Z

    move-result p1

    if-nez p1, :cond_d

    sget-object p1, LH1/a;->e:LH1/a;

    invoke-virtual {p0, p1}, LK1/d;->d(LH1/a;)V

    :cond_d
    sget-object p1, LH1/a;->e:LH1/a;

    iput-object p1, p0, LK1/h;->j:LH1/a;

    goto :goto_3

    :cond_e
    sget-object p1, LH1/a;->f:LH1/a;

    invoke-virtual {p0, p1}, LK1/d;->d(LH1/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i(Z)V
    .locals 3

    iget-object p1, p0, LK1/d;->b:Landroid/content/Context;

    invoke-static {p1}, LM1/i;->c(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x4

    const/16 v1, 0x10

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, LK/I;->b0(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, LK1/d;->b:Landroid/content/Context;

    invoke-static {p1}, LM1/g;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, LK1/a;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LK1/d;->b:Landroid/content/Context;

    invoke-static {p1}, LM1/i;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, LK/I;->b0(I)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, LH1/a;->g:LH1/a;

    invoke-virtual {p0, p1}, LK1/d;->d(LH1/a;)V

    goto :goto_1

    :cond_3
    sget-object p1, LH1/a;->h:LH1/a;

    invoke-virtual {p0, p1}, LK1/d;->d(LH1/a;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, LM1/h;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, LH1/a;->e:LH1/a;

    invoke-virtual {p0, p1}, LK1/d;->d(LH1/a;)V

    :cond_5
    :goto_1
    return-void
.end method
