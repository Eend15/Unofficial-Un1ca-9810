.class public Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldThumbnail;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/b;


# static fields
.field private static final TAG:Ljava/lang/String; = "FoldThumbnail"


# instance fields
.field private mFoldResourceInfo:Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldThumbnail;->lambda$getThumbnailByBackupId$1(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic b(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldThumbnail;->lambda$getThumbnail$0(Landroid/graphics/Bitmap;)V

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

.method private makeThumbnail(Landroid/content/Context;LJ1/d;)Landroid/graphics/Bitmap;
    .locals 7

    const-string v0, "FoldThumbnail"

    const-string v1, "makeThumbnail: failed to get display size. which="

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldThumbnail;->mFoldResourceInfo:Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;

    invoke-virtual {v3}, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Le0/a;->N(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldThumbnail;->mFoldResourceInfo:Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;->getFrameNumber()I

    move-result p0

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v3, v4}, Le0/a;->M(ILandroid/content/res/AssetFileDescriptor;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v4, 0x0

    if-nez p0, :cond_1

    const-string p0, "makeThumbnail: failed to get raw thumbnail"

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_3
    iget v5, p2, LJ1/d;->i:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget v6, p2, LJ1/d;->j:I

    :try_start_4
    invoke-static {p1, v5, v6}, LK/I;->F(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, LJ1/d;->i:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", rotation="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_2
    return-object p0

    :cond_3
    :try_start_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v5, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, v1, v5, p1}, LK/I;->w(IIII)Landroid/graphics/Rect;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v4, p2}, LK/I;->r(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IF)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_5
    return-object p1

    :goto_1
    if-eqz v3, :cond_6

    :try_start_8
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :goto_3
    const-string p1, "makeThumbnail: e = "

    invoke-static {p1, p0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method private makeThumbnailBitmap(Landroid/content/Context;Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;I)Landroid/graphics/Bitmap;
    .locals 0

    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;->getFileName()Ljava/lang/String;

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
    const-string p1, "makeThumbnailBitmap: e = "

    invoke-static {p1, p0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "FoldThumbnail"

    invoke-static {p2, p1, p0}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private saveData(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldThumbnail;->mFoldResourceInfo:Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;

    return-void
.end method


# virtual methods
.method public getThumbnail(Landroid/content/Context;LJ1/d;)LJ1/e;
    .locals 1

    iget-object v0, p2, LJ1/d;->m:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldThumbnail;->saveData(Landroid/os/Bundle;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldThumbnail;->makeThumbnail(Landroid/content/Context;LJ1/d;)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance p2, LB1/a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, LB1/a;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-static {p0, p1, p2}, LK/I;->s(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/Runnable;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    new-instance p1, LJ1/e;

    invoke-direct {p1, p0}, LJ1/e;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object p1
.end method

.method public getThumbnailByBackupId(Landroid/content/Context;LJ1/g;)LJ1/h;
    .locals 16

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

    const-string v8, "FoldThumbnail"

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

    new-instance v9, LA1/p;

    invoke-direct {v9}, LA1/p;-><init>()V

    invoke-virtual {v1, v9, v2}, Lw0/c;->G(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LA1/p;

    iget-boolean v10, v9, LA1/p;->e:Z

    if-eqz v10, :cond_5

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    :cond_3
    const-string v12, "getThumbnailFileDescriptorByBackupId: backup is not ready. retrying.."

    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v8, v12, v13}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v12, 0x32

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v9, LA1/p;

    invoke-direct {v9}, LA1/p;-><init>()V

    invoke-virtual {v1, v9, v2}, Lw0/c;->G(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LA1/p;

    iget-boolean v12, v9, LA1/p;->e:Z

    if-nez v12, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    add-long v14, v10, v6

    cmp-long v12, v12, v14

    if-ltz v12, :cond_3

    :catch_0
    :cond_5
    :goto_1
    iget-boolean v1, v9, LA1/p;->e:Z

    if-eqz v1, :cond_6

    const-string v0, "getThumbnailFileDescriptorByBackupId: no backuped frame. backupId="

    invoke-static {v0, v2}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_6
    iget v1, v9, LA1/p;->a:I

    and-int/lit8 v6, v1, 0x3c

    if-nez v6, :cond_7

    or-int/lit8 v1, v1, 0x4

    :cond_7
    new-instance v6, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;

    invoke-direct {v6, v4}, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;-><init>(Landroid/os/Bundle;)V

    iget v4, v9, LA1/p;->b:I

    invoke-static {v0, v1, v4}, LK/I;->F(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object v4

    const-string v7, "getThumbnailFileDescriptorByBackupId: which="

    const-string v10, ", rotation="

    invoke-static {v1, v7, v10}, LB/a;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, v9, LA1/p;->b:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", backupId="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", frameNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, LA1/p;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", displaySize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, v9, LA1/p;->c:I

    move-object/from16 v2, p0

    invoke-direct {v2, v0, v6, v1}, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldThumbnail;->makeThumbnailBitmap(Landroid/content/Context;Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "getThumbnailFileDescriptorByBackupId: failed to get raw thumbnail"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_8
    if-nez v4, :cond_9

    const-string v1, "makeThumbnail: failed to get display size."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2, v6, v4}, LK/I;->w(IIII)Landroid/graphics/Rect;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v5, v2}, LK/I;->r(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IF)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v0, "makeThumbnail: failed to get cropped bitmap"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_a
    if-eq v0, v1, :cond_b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    move-object v0, v1

    :goto_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v2, LB1/a;

    const/4 v3, 0x1

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
