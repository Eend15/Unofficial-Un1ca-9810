.class public LAodWallpaperPolicy;
.super Ljava/lang/Object;
.field private static lastState:I = -1
.field private static lastUser:I = -1
.field private static ctx:Landroid/content/Context;
.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method
.method public static main([Ljava/lang/String;)V
    .locals 2
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;
    move-result-object v0
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;
    move-result-object v0
    sput-object v0, LAodWallpaperPolicy;->ctx:Landroid/content/Context;
    :loop
    invoke-static {}, LAodWallpaperPolicy;->apply()V
    const-wide/16 v0, 0x7d0
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    goto :loop
.end method

.method public static apply()V
    .locals 8
    :try_start
    sget-object v0, LAodWallpaperPolicy;->ctx:Landroid/content/Context;
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    move-result-object v1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    move-result v2
    const/4 v3, 0x2
    invoke-virtual {v1, v3, v2}, Landroid/app/WallpaperManager;->getWallpaperIdForUser(II)I
    move-result v4
    const/4 v3, 0x6
    if-gez v4, :has_lock
    const/4 v3, 0x5
    :has_lock
    invoke-virtual {v1, v3, v2}, Landroid/app/WallpaperManager;->semGetWallpaperComponent(II)Landroid/content/ComponentName;
    move-result-object v4
    const/4 v5, 0x0
    if-eqz v4, :write
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    move-result-object v4
    const-string v6, "com.samsung.android.wallpaper.live/com.samsung.android.wallpaper.live.infinity.InfinityWallpaper"
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :write
    invoke-virtual {v1, v3, v2}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;
    move-result-object v1
    if-eqz v1, :write
    const-string v3, "serviceSettings"
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v1
    if-eqz v1, :write
    const-string v3, "filename"
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :write
    const-string v3, "video_00[1-5]\\.mp4"
    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    move-result v5
    :write
    sget v0, LAodWallpaperPolicy;->lastState:I
    if-ne v0, v5, :update
    sget v0, LAodWallpaperPolicy;->lastUser:I
    if-eq v0, v2, :done
    :update
    const/4 v0, 0x7
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0x0
    const-string v3, "/system/bin/settings"
    aput-object v3, v0, v1
    const/4 v1, 0x1
    const-string v3, "--user"
    aput-object v3, v0, v1
    const/4 v1, 0x2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v3
    aput-object v3, v0, v1
    const/4 v1, 0x3
    const-string v3, "put"
    aput-object v3, v0, v1
    const/4 v1, 0x4
    const-string v3, "system"
    aput-object v3, v0, v1
    const/4 v1, 0x5
    const-string v3, "aod_show_lockscreen_wallpaper"
    aput-object v3, v0, v1
    const/4 v1, 0x6
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v3
    aput-object v3, v0, v1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
    move-result-object v1
    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    move-result v0
    if-nez v0, :done
    sput v5, LAodWallpaperPolicy;->lastState:I
    sput v2, LAodWallpaperPolicy;->lastUser:I
    const-string v0, "S9AodPolicy"
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :done
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :failed
    return-void
    :failed
    move-exception v0
    const-string v1, "S9AodPolicy"
    const-string v2, "Wallpaper policy update failed"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    return-void
.end method
