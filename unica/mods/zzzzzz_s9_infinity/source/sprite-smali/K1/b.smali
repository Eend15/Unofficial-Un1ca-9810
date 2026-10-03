.class public final LK1/b;
.super LK1/a;
.source "SourceFile"


# instance fields
.field public j:Z


# virtual methods
.method public final declared-synchronized e(ILjava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x4943dbf9

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x69401ccd

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "android.wallpaper.goingtosleep"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    const-string p1, "android.wallpaper.wakingup"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, LK1/d;->c()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, LK1/d;->b:Landroid/content/Context;

    invoke-virtual {p0}, LK1/d;->a()I

    move-result p2

    invoke-static {p1, p2}, LM1/h;->d(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "BasicAodDisplayStateMonitor"

    const-string p2, "onCommand: will enter AOD. ignore OFF"

    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, LK1/b;->j:Z

    goto :goto_3

    :cond_5
    :goto_2
    sget-object p1, LH1/a;->e:LH1/a;

    invoke-virtual {p0, p1}, LK1/d;->d(LH1/a;)V

    iput-boolean v1, p0, LK1/b;->j:Z

    goto :goto_3

    :cond_6
    sget-object p1, LH1/a;->f:LH1/a;

    invoke-virtual {p0, p1}, LK1/d;->d(LH1/a;)V

    iput-boolean v1, p0, LK1/b;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    .locals 1

    sget-object v0, LH1/a;->e:LH1/a;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, LK1/b;->j:Z

    if-nez p1, :cond_1

    iget-object p1, p0, LK1/d;->d:LH1/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "BasicAodDisplayStateMonitor"

    const-string v0, "onAodShowStateChanged: going to AOD cancelled"

    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, LH1/a;->h:LH1/a;

    invoke-virtual {p0, p1}, LK1/d;->d(LH1/a;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, LK1/d;->b:Landroid/content/Context;

    invoke-static {p1}, LM1/h;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v0}, LK1/d;->d(LH1/a;)V

    :cond_3
    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, LK1/b;->j:Z

    return-void
.end method
