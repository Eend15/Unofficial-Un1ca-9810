.class public final LE1/f;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LE1/f;->a:I

    iput-object p1, p0, LE1/f;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p3, p0, LE1/f;->a:I

    iput-object p1, p0, LE1/f;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    iget v0, p0, LE1/f;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onChange(Z)V
    .locals 3

    iget v0, p0, LE1/f;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void

    .line 1
    :pswitch_1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object p0, p0, LE1/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "photo_ambient_wallpaper_enable"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 3
    const-string v0, "photo_ambient_wallpaper_enable : "

    .line 4
    invoke-static {p1, v0}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WeatherWallpaperService"

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 6
    iget p1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;->g:I

    if-lez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iget p0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;->g:I

    .line 9
    invoke-virtual {p1, p0}, Landroid/app/WallpaperManager;->clear(I)V

    :cond_0
    return-void

    .line 10
    :pswitch_2
    iget-object p1, p0, LE1/f;->b:Ljava/lang/Object;

    check-cast p1, LK1/a;

    monitor-enter p1

    .line 11
    :try_start_0
    iget-object v0, p0, LE1/f;->b:Ljava/lang/Object;

    check-cast v0, LK1/a;

    .line 12
    invoke-virtual {v0}, LK1/d;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x3c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 13
    :cond_1
    iget-object v0, p0, LE1/f;->b:Ljava/lang/Object;

    check-cast v0, LK1/a;

    invoke-virtual {v0}, LK1/d;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    iget-object p0, p0, LE1/f;->b:Ljava/lang/Object;

    check-cast p0, LK1/a;

    .line 15
    iget-object v0, p0, LK1/d;->b:Landroid/content/Context;

    .line 16
    invoke-static {v0}, LM1/g;->d(Landroid/content/Context;)Z

    move-result v0

    .line 17
    invoke-virtual {p0, v0}, LK1/a;->i(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 18
    :cond_2
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget v0, p0, LE1/f;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    .line 23
    :pswitch_1
    iget-object p0, p0, LE1/f;->b:Ljava/lang/Object;

    check-cast p0, LF4/F;

    iget-boolean p1, p0, LF4/F;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LF4/F;->e:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 25
    iget-object p0, p0, LF4/F;->e:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    .line 26
    :pswitch_2
    iget-object p0, p0, LE1/f;->b:Ljava/lang/Object;

    check-cast p0, LM2/h;

    iget-object p1, p0, LM2/h;->a:LO2/a;

    .line 27
    invoke-virtual {p1}, LO2/a;->d()LU0/e;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChange, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WorkerTerminator"

    invoke-virtual {p1, v2, v0, v1}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 28
    const-string p1, "llm_running_timestamp"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 30
    iget-object p0, p0, LM2/h;->c:LA1/h;

    if-eqz p0, :cond_1

    .line 31
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, LA1/h;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 32
    :pswitch_3
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 33
    iget-object p0, p0, LE1/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->d()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
