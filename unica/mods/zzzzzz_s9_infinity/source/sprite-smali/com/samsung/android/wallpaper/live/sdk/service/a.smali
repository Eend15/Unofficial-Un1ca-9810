.class public final Lcom/samsung/android/wallpaper/live/sdk/service/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lcom/samsung/android/wallpaper/live/sdk/service/a;


# instance fields
.field public a:Ljava/util/ArrayList;


# direct methods
.method public static declared-synchronized b(Landroid/content/Context;)Lcom/samsung/android/wallpaper/live/sdk/service/a;
    .locals 3

    const-class v0, Lcom/samsung/android/wallpaper/live/sdk/service/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/wallpaper/live/sdk/service/a;->b:Lcom/samsung/android/wallpaper/live/sdk/service/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/wallpaper/live/sdk/service/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/wallpaper/live/sdk/service/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    sput-object v1, Lcom/samsung/android/wallpaper/live/sdk/service/a;->b:Lcom/samsung/android/wallpaper/live/sdk/service/a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/wallpaper/live/sdk/service/a;->b:Lcom/samsung/android/wallpaper/live/sdk/service/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a(I)Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/sdk/service/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getSourceWhich()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_1

    monitor-exit p0

    return-object v2

    :cond_1
    if-nez p1, :cond_2

    and-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_2

    monitor-exit p0

    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :try_start_1
    const-string v1, "LiveWallpaperEngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEngine : cannot find the engine. which="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", engineCnt="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
