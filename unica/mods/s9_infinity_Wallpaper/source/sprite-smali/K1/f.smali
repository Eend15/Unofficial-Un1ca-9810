.class public final LK1/f;
.super LK1/a;
.source "SourceFile"


# instance fields
.field public j:I

.field public k:Z


# virtual methods
.method public final declared-synchronized e(ILjava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, LK1/d;->a()I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, LK/I;->Y(II)Z

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4943dbf9

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v2, v3, :cond_2

    const v3, -0x2a4e26bf

    if-eq v2, v3, :cond_1

    const v3, 0x69401ccd

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "android.wallpaper.goingtosleep"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    const-string v2, "samsung.android.wallpaper.goingtosleep"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v4

    goto :goto_1

    :cond_2
    const-string v2, "android.wallpaper.wakingup"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v5

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_a

    if-eq p2, v0, :cond_7

    if-eq p2, v4, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_b

    invoke-virtual {p0}, LK1/d;->c()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, LK1/d;->b:Landroid/content/Context;

    invoke-static {p2, p1}, LM1/h;->d(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const-string p1, "FullAodDisplayStateMonitor"

    const-string p2, "onCommand: will enter AOD. ignore OFF"

    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, LK1/f;->k:Z

    goto :goto_4

    :cond_6
    :goto_2
    sget-object p1, LH1/a;->e:LH1/a;

    invoke-virtual {p0, p1}, LK1/d;->d(LH1/a;)V

    iput-boolean v5, p0, LK1/f;->k:Z

    goto :goto_4

    :cond_7
    if-nez v1, :cond_b

    invoke-virtual {p0}, LK1/d;->c()Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, LK1/d;->b:Landroid/content/Context;

    invoke-static {p2, p1}, LM1/h;->d(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    const-string p1, "FullAodDisplayStateMonitor"

    const-string p2, "onCommand: will enter AOD. ignore OFF"

    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, LK1/f;->k:Z

    goto :goto_4

    :cond_9
    :goto_3
    sget-object p1, LH1/a;->e:LH1/a;

    invoke-virtual {p0, p1}, LK1/d;->d(LH1/a;)V

    iput-boolean v5, p0, LK1/f;->k:Z

    goto :goto_4

    :cond_a
    sget-object p1, LH1/a;->f:LH1/a;

    invoke-virtual {p0, p1}, LK1/d;->d(LH1/a;)V

    iput-boolean v5, p0, LK1/f;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i(Z)V
    .locals 2

    iget-object p1, p0, LK1/d;->b:Landroid/content/Context;

    invoke-static {p1}, LM1/g;->d(Landroid/content/Context;)Z

    move-result v0

    sget-object v1, LH1/a;->e:LH1/a;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, LK1/f;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LK1/d;->d:LH1/a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "FullAodDisplayStateMonitor"

    const-string v0, "onAodShowStateChanged: going to AOD cancelled"

    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, LK1/a;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, LM1/i;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x10

    goto :goto_1

    :cond_2
    const/4 p1, 0x4

    :goto_1
    iget v0, p0, LK1/f;->j:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    sget-object p1, LH1/a;->g:LH1/a;

    invoke-virtual {p0, p1}, LK1/d;->d(LH1/a;)V

    goto :goto_2

    :cond_3
    sget-object p1, LH1/a;->h:LH1/a;

    invoke-virtual {p0, p1}, LK1/d;->d(LH1/a;)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, LM1/h;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, v1}, LK1/d;->d(LH1/a;)V

    :cond_5
    :goto_2
    const/4 p1, 0x0

    iput-boolean p1, p0, LK1/f;->k:Z

    return-void
.end method
