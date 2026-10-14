.class public Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityThumbnail;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/b;


# static fields
.field private static final TAG:Ljava/lang/String; = "InfinityThumbnail"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityThumbnail;->lambda$getThumbnailByBackupId$1(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic b(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityThumbnail;->lambda$getThumbnail$0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static synthetic lambda$getThumbnail$0(Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getThumbnailByBackupId$1(Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private makeThumbnailBitmap(Landroid/content/Context;Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;I)Landroid/graphics/Bitmap;
    .locals 4

    # Native Infinity uses meshes, not the donor video timeline. Its overview
    # thumbnails must use the same filename-to-colour mapping as the renderer.
    invoke-virtual {p2}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->getFileName()Ljava/lang/String;
    move-result-object v0

    const-string v1, "video_001.mp4"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :native_next_1
    const-string v0, "wallpaper_blue"
    goto :native_resource
    :native_next_1

    const-string v1, "video_002.mp4"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :native_next_2
    const-string v0, "wallpaper_gold"
    goto :native_resource
    :native_next_2

    const-string v1, "video_003.mp4"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :native_next_3
    const-string v0, "wallpaper_purple"
    goto :native_resource
    :native_next_3

    const-string v1, "video_004.mp4"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :native_next_4
    const-string v0, "wallpaper_black"
    goto :native_resource
    :native_next_4

    const-string v1, "video_005.mp4"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :native_next_5
    const-string v0, "wallpaper_grey"
    goto :native_resource
    :native_next_5

    goto :native_video_fallback
    :native_resource
    const/16 v1, 0x3e8
    if-lt p3, v1, :native_lock
    const-string v1, "_home"
    goto :native_suffix
    :native_lock
    const-string v1, "_lock"
    :native_suffix
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v2
    const-string v3, "drawable"
    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v0
    if-eqz v0, :native_video_fallback
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    move-result-object v0
    if-eqz v0, :native_video_fallback
    return-object v0
    :native_video_fallback


    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Le0/a;->N(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p0, p1}, Le0/a;->M(ILandroid/content/res/AssetFileDescriptor;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    :try_start_3
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    const-string p1, "getCurrentFrame: e = "

    invoke-static {p1, p0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "InfinityThumbnail"

    invoke-static {p2, p1, p0}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getThumbnail(Landroid/content/Context;LJ1/d;)LJ1/e;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getThumbnail: which="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p2, LJ1/d;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", srcWhich="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, LJ1/d;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasSvcSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p2, LJ1/d;->m:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", rotation="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, LJ1/d;->j:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "InfinityThumbnail"

    invoke-static {v3, v0, v1}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;

    invoke-direct {v0, v2}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;-><init>(Landroid/os/Bundle;)V

    iget p2, p2, LJ1/d;->h:I

    invoke-virtual {v0, p2}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->getFrameNumber(I)I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityThumbnail;->makeThumbnailBitmap(Landroid/content/Context;Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;I)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance p2, LB1/a;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, LB1/a;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-static {p0, p1, p2}, LK/I;->s(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/Runnable;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    new-instance p1, LJ1/e;

    invoke-direct {p1, p0}, LJ1/e;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object p1
.end method

.method public getThumbnailByBackupId(Landroid/content/Context;LJ1/g;)LJ1/h;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v1, LJ1/g;->h:Ljava/lang/String;

    const-string v3, "getThumbnailFileDescriptorByBackupId: backupId="

    const-string v4, ", hasSvcSettings="

    invoke-static {v3, v2, v4}, LB/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, LJ1/g;->j:Landroid/os/Bundle;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", retryTimeout="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, LJ1/g;->i:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    const-string v8, "InfinityThumbnail"

    invoke-static {v8, v1, v3}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v0, "getThumbnailFileDescriptorByBackupId: empty backupID!"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_1
    if-nez v4, :cond_2

    const-string v0, "getThumbnailFileDescriptorByBackupId: empty serviceSettings!"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_2
    new-instance v1, Lw0/c;

    new-instance v9, Lf2/c;

    invoke-direct {v9, v0}, Lf2/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v9}, Lw0/c;-><init>(Lf2/c;)V

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10, v2}, Lw0/c;->G(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v9, :cond_5

    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-lez v11, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    :cond_3
    const-string v13, "getThumbnailFileDescriptorByBackupId: backup is not ready. retrying.."

    new-array v14, v5, [Ljava/lang/Object;

    invoke-static {v8, v13, v14}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v13, 0x32

    :try_start_0
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10, v2}, Lw0/c;->G(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v9, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    add-long v15, v11, v6

    cmp-long v13, v13, v15

    if-ltz v13, :cond_3

    :catch_0
    :cond_5
    :goto_1
    if-ne v10, v9, :cond_6

    const-string v0, "getThumbnailFileDescriptorByBackupId: no backup frame. backupId="

    invoke-static {v0, v2}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getThumbnailFileDescriptorByBackupId: backupId = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", frameNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v2, p0

    invoke-direct {v2, v0, v1, v10}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityThumbnail;->makeThumbnailBitmap(Landroid/content/Context;Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v2, LB1/a;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, LB1/a;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-static {v0, v1, v2}, LK/I;->s(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/Runnable;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v1, LJ1/h;

    invoke-direct {v1, v0}, LJ1/h;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v1
.end method

.method public bridge synthetic onGetBackgroundRegion(Landroid/content/Context;LJ1/a;)LJ1/b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic prepareWallpaper(Landroid/content/Context;LJ1/i;)LJ1/j;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
