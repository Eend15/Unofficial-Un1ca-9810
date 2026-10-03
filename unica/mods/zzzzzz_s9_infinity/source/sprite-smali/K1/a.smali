.class public abstract LK1/a;
.super LK1/d;
.source "SourceFile"


# instance fields
.field public final i:LE1/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, LK1/d;-><init>(Landroid/content/Context;)V

    new-instance p1, LE1/f;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, LE1/f;-><init>(Ljava/lang/Object;Landroid/os/Handler;I)V

    iput-object p1, p0, LK1/a;->i:LE1/f;

    return-void
.end method


# virtual methods
.method public declared-synchronized b()LH1/a;
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
    invoke-virtual {p0}, LK1/a;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, LH1/a;->g:LH1/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_4
    sget-object v0, LH1/a;->h:LH1/a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final f(Lcom/samsung/android/wallpaper/live/sdk/service/b;)V
    .locals 5

    invoke-super {p0, p1}, LK1/d;->f(Lcom/samsung/android/wallpaper/live/sdk/service/b;)V

    iget-object p1, p0, LK1/d;->b:Landroid/content/Context;

    invoke-static {p1}, LM1/g;->b(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAodDisplayStateMonitor"

    invoke-static {v3, v2}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, LK1/a;->i:LE1/f;

    const-string v2, "aod_show_state"

    if-eq v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v1, Landroid/os/UserHandle;

    const-class v3, Landroid/net/Uri;

    const-class v4, Landroid/database/ContentObserver;

    filled-new-array {v3, v0, v4, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/content/ContentResolver;

    const-string v3, "registerContentObserverAsUser"

    invoke-static {v1, v3, v0}, LK/I;->L(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v3

    filled-new-array {v1, v2, p0, v3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, LK/I;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, LK1/d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, LK1/a;->i:LE1/f;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, LK1/d;->g()V

    return-void
.end method

.method public final h()Z
    .locals 2

    iget-object p0, p0, LK1/d;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "aod_show_lockscreen_wallpaper"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public abstract i(Z)V
.end method
