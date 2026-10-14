.class public final synthetic LM1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:[Landroid/os/ParcelFileDescriptor;

.field public final synthetic e:Landroid/graphics/Bitmap;

.field public final synthetic f:Landroid/graphics/Bitmap$CompressFormat;

.field public final synthetic g:[Z

.field public final synthetic h:Ljava/lang/Runnable;

.field public final synthetic i:J


# direct methods
.method public synthetic constructor <init>([Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;[ZLjava/lang/Runnable;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM1/a;->d:[Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, LM1/a;->e:Landroid/graphics/Bitmap;

    iput-object p3, p0, LM1/a;->f:Landroid/graphics/Bitmap$CompressFormat;

    iput-object p4, p0, LM1/a;->g:[Z

    iput-object p5, p0, LM1/a;->h:Ljava/lang/Runnable;

    iput-wide p6, p0, LM1/a;->i:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, LM1/a;->d:[Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, LM1/a;->e:Landroid/graphics/Bitmap;

    iget-object v2, p0, LM1/a;->f:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v3, p0, LM1/a;->g:[Z

    iget-object v4, p0, LM1/a;->h:Ljava/lang/Runnable;

    iget-wide v5, p0, LM1/a;->i:J

    const/4 p0, 0x1

    const/4 v7, 0x0

    :try_start_0
    aget-object v0, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v8, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v8, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v9, 0x64

    :try_start_2
    invoke-virtual {v1, v2, v9, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v2

    move v1, v7

    :goto_1
    if-eqz v0, :cond_0

    :try_start_7
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_1
    move-exception v0

    move v1, v7

    :goto_3
    const-string v2, "BitmapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "encodeBitmapToPipe: encoder: e="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_4
    monitor-enter v3

    :try_start_9
    aput-boolean p0, v3, v7

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_2
    const-string p0, "BitmapUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "encodeBitmapToPipe: encoder: result="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const-string v1, "success"

    goto :goto_5

    :cond_3
    const-string v1, "fail"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_5
    move-exception p0

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw p0
.end method
