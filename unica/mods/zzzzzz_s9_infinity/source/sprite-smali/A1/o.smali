.class public final LA1/o;
.super Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;
.source "SourceFile"


# instance fields
.field public final A:LA1/l;

.field public final synthetic B:Lcom/samsung/android/wallpaper/live/fold/FoldInteractive;

.field public a:Z

.field public b:F

.field public final c:Lcom/samsung/android/wallpaper/live/fold/FoldInteractive;

.field public d:Z

.field public e:LA1/f;

.field public f:I

.field public g:I

.field public h:Lk1/b;

.field public i:Ljava/lang/String;

.field public j:Landroid/os/Handler;

.field public k:Landroid/hardware/SensorManager;

.field public l:Landroid/hardware/Sensor;

.field public m:LA1/n;

.field public final n:I

.field public o:Z

.field public p:F

.field public q:LM1/d;

.field public final r:LA1/i;

.field public s:Landroid/view/SurfaceHolder;

.field public t:I

.field public u:I

.field public v:Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;

.field public w:Landroid/util/Size;

.field public x:I

.field public final y:I

.field public final z:LA1/k;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/fold/FoldInteractive;Lcom/samsung/android/wallpaper/live/fold/FoldInteractive;)V
    .locals 2

    iput-object p1, p0, LA1/o;->B:Lcom/samsung/android/wallpaper/live/fold/FoldInteractive;

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;-><init>(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LA1/o;->a:Z

    iput-boolean v0, p0, LA1/o;->d:Z

    const-string v1, ""

    iput-object v1, p0, LA1/o;->i:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, p0, LA1/o;->n:I

    iput-boolean v0, p0, LA1/o;->o:Z

    new-instance v0, LA1/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LA1/i;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, LA1/o;->r:LA1/i;

    const/4 v0, -0x1

    iput v0, p0, LA1/o;->y:I

    new-instance v0, LA1/k;

    invoke-direct {v0, p0}, LA1/k;-><init>(LA1/o;)V

    iput-object v0, p0, LA1/o;->z:LA1/k;

    new-instance v0, LA1/l;

    invoke-direct {v0, v1, p0}, LA1/l;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, LA1/o;->A:LA1/l;

    iput-object p2, p0, LA1/o;->c:Lcom/samsung/android/wallpaper/live/fold/FoldInteractive;

    new-instance p0, Lw0/c;

    new-instance v0, Lf2/c;

    invoke-direct {v0, p2}, Lf2/c;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lw0/c;-><init>(Lf2/c;)V

    iput-object p0, p1, Lcom/samsung/android/wallpaper/live/fold/FoldInteractive;->d:Lw0/c;

    const/16 p0, -0x10

    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;
    .locals 3

    iget-object v0, p0, LA1/o;->c:Lcom/samsung/android/wallpaper/live/fold/FoldInteractive;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getSourceWhich()I

    move-result v1

    invoke-static {v0, v1}, Le0/a;->O(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;-><init>(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getResourceInfoFromWallpaperFramework : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , which = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getSourceWhich()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "FoldInteractive"

    invoke-static {v2, p0, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public final c(Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;)V
    .locals 14

    const/4 v0, 0x0

    iput-object p1, p0, LA1/o;->v:Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;

    const-string v1, "initVideoPlayer: e = "

    const-string v2, "exception time "

    iget-object v3, p0, LA1/o;->h:Lk1/b;

    iget-object v4, p0, LA1/o;->z:LA1/k;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Lk1/b;->p(Lk1/c;)V

    iget-object v3, p0, LA1/o;->h:Lk1/b;

    invoke-virtual {v3}, Lk1/b;->i()V

    iget-object v3, p0, LA1/o;->h:Lk1/b;

    invoke-virtual {v3}, Lk1/b;->b()V

    :cond_0
    invoke-static {}, Lj0/s;->s()Lk1/b;

    move-result-object v3

    iput-object v3, p0, LA1/o;->h:Lk1/b;

    iget-object v5, p0, LA1/o;->s:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v3, v5}, Lk1/b;->n(Landroid/view/Surface;)V

    iget-object v3, p0, LA1/o;->h:Lk1/b;

    sget v5, Li1/a;->a:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, LA1/o;->B:Lcom/samsung/android/wallpaper/live/fold/FoldInteractive;

    const/4 v5, 0x1

    const-string v6, "FoldInteractive"

    iget-object v7, p0, LA1/o;->c:Lcom/samsung/android/wallpaper/live/fold/FoldInteractive;

    const/4 v8, 0x0

    const-string v9, "initVideoPlayer: failed to close fd"

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Le0/a;->N(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v11, p0, LA1/o;->h:Lk1/b;

    invoke-virtual {v11, v10}, Lk1/b;->m(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Le0/a;->N(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_1

    :try_start_3
    invoke-static {p1}, Le0/a;->L(Landroid/content/res/AssetFileDescriptor;)Landroid/util/Size;

    move-result-object v11

    iput-object v11, p0, LA1/o;->w:Landroid/util/Size;

    goto :goto_0

    :catchall_0
    move-exception v11

    goto :goto_1

    :cond_1
    const-string v11, "retrieverFd is null"

    new-array v12, v0, [Ljava/lang/Object;

    invoke-static {v6, v11, v12}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz p1, :cond_4

    :try_start_4
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v8, v10

    goto/16 :goto_b

    :catch_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_3

    :goto_1
    if-eqz p1, :cond_2

    :try_start_5
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {v11, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v11
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    const-string v11, "Failed to get wallpaper file descriptor retrieverFd"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v6, v11, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catchall_3
    move-exception p0

    goto/16 :goto_b

    :catch_2
    move-exception p1

    move-object v10, v8

    goto :goto_5

    :cond_3
    move-object v10, v8

    :cond_4
    :goto_4
    iget-object p1, p0, LA1/o;->h:Lk1/b;

    invoke-virtual {p1, v4}, Lk1/b;->h(Lk1/c;)V

    const-string p1, ""

    iput-object p1, p0, LA1/o;->i:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v10, :cond_7

    :try_start_8
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_7

    :catch_3
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v6, v9, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :goto_5
    :try_start_9
    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v11

    invoke-static {v11}, LK/I;->M(I)I

    move-result v11

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v12

    invoke-static {v12}, LK/I;->S(I)Z

    move-result v12

    if-eqz v12, :cond_5

    or-int/2addr v11, v5

    goto :goto_6

    :cond_5
    or-int/lit8 v11, v11, 0x2

    :goto_6
    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v12

    invoke-virtual {v4, v11}, Landroid/app/WallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x7

    if-ne v12, v4, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v4

    invoke-static {}, LM1/h;->b()I

    move-result v11

    invoke-static {v7, v4, v11}, LL1/a;->clearWallpaper(Landroid/content/Context;II)V

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v4}, Le0/a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nexception = "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LA1/o;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v6, v1, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_6
    if-eqz v10, :cond_7

    :try_start_a
    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_7

    :catch_4
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v6, v9, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_7
    iget-object p1, p0, LA1/o;->h:Lk1/b;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lk1/b;->f()Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_a

    :cond_8
    iget-object p1, p0, LA1/o;->e:LA1/f;

    if-eqz p1, :cond_9

    iput-object v8, p1, LA1/f;->i:LA1/h;

    invoke-virtual {p1}, LA1/f;->c()V

    :cond_9
    iget-object p1, p0, LA1/o;->h:Lk1/b;

    invoke-virtual {p1}, Lk1/b;->e()I

    move-result v9

    iget-object p1, p0, LA1/o;->h:Lk1/b;

    invoke-virtual {p1}, Lk1/b;->d()I

    move-result v10

    iget-object p1, p0, LA1/o;->h:Lk1/b;

    invoke-virtual {p1}, Lk1/b;->c()J

    move-result-wide v11

    new-instance p1, LA1/f;

    iget-object v1, p0, LA1/o;->v:Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;->getAngleFrameMapping()Ljava/lang/String;

    move-result-object v13

    move-object v8, p1

    invoke-direct/range {v8 .. v13}, LA1/f;-><init>(IIJLjava/lang/String;)V

    iput-object p1, p0, LA1/o;->e:LA1/f;

    new-instance v1, LA1/h;

    invoke-direct {v1, v0, p0}, LA1/h;-><init>(ILjava/lang/Object;)V

    iput-object v1, p1, LA1/f;->i:LA1/h;

    iget-object p1, p0, LA1/o;->j:Landroid/os/Handler;

    if-eqz p1, :cond_a

    goto :goto_8

    :cond_a
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, LA1/g;

    invoke-direct {v2, p0, v0}, LA1/g;-><init>(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;I)V

    invoke-direct {p1, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, LA1/o;->j:Landroid/os/Handler;

    :goto_8
    iget-object p1, p0, LA1/o;->m:LA1/n;

    if-eqz p1, :cond_b

    goto :goto_9

    :cond_b
    new-instance p1, LA1/n;

    invoke-direct {p1, v0, p0}, LA1/n;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LA1/o;->m:LA1/n;

    const-string p1, "sensor"

    invoke-virtual {v3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, LA1/o;->k:Landroid/hardware/SensorManager;

    invoke-static {}, Lf2/g;->d()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, LA1/o;->k:Landroid/hardware/SensorManager;

    sget v0, Lf2/g;->c:I

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, LA1/o;->l:Landroid/hardware/Sensor;

    goto :goto_9

    :cond_c
    iget-object p1, p0, LA1/o;->k:Landroid/hardware/SensorManager;

    const v0, 0x10096

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, LA1/o;->l:Landroid/hardware/Sensor;

    :goto_9
    iput-boolean v5, p0, LA1/o;->d:Z

    return-void

    :cond_d
    :goto_a
    const-string p0, "init: VideoPlayer not available"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :goto_b
    if-eqz v8, :cond_e

    :try_start_b
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_c

    :catch_5
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v6, v9, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    :goto_c
    throw p0
.end method

.method public final d()V
    .locals 8

    const-string v0, "FoldInteractive"

    sget-object v1, LH1/a;->f:LH1/a;

    const-string v2, "onVisible: deviceState = "

    iget-object v3, p0, LA1/o;->j:Landroid/os/Handler;

    if-eqz v3, :cond_0

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, LA1/o;->j:Landroid/os/Handler;

    const/16 v4, 0x67

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getDisplayState()LH1/a;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x3

    :try_start_0
    iget-object v6, p0, LA1/o;->h:Lk1/b;

    if-eqz v6, :cond_4

    if-ne v3, v1, :cond_4

    invoke-static {}, Lf2/g;->d()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, LA1/o;->q:LM1/d;

    iget-object v6, v6, LM1/d;->c:Ljava/lang/Object;

    check-cast v6, LM1/b;

    iget v6, v6, LM1/b;->a:I

    if-eq v6, v5, :cond_2

    const/4 v7, 0x6

    if-eq v6, v7, :cond_2

    if-ne v6, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p0, LA1/o;->h:Lk1/b;

    invoke-virtual {v2}, Lk1/b;->o()V

    goto :goto_2

    :cond_3
    iget-object v2, p0, LA1/o;->h:Lk1/b;

    invoke-virtual {v2}, Lk1/b;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v6, "onVisible: start media exception = %s"

    invoke-static {v0, v6, v2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    iget-object v0, p0, LA1/o;->e:LA1/f;

    if-eqz v0, :cond_7

    if-ne v3, v1, :cond_7

    invoke-virtual {p0}, LA1/o;->e()V

    iget-object v0, p0, LA1/o;->q:LM1/d;

    iget-object v1, p0, LA1/o;->r:LA1/i;

    invoke-virtual {v0, v1}, LM1/d;->c(LM1/c;)V

    invoke-static {}, Lf2/g;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, LA1/o;->q:LM1/d;

    iget-object v0, v0, LM1/d;->c:Ljava/lang/Object;

    check-cast v0, LM1/b;

    iget v0, v0, LM1/b;->a:I

    if-eq v0, v5, :cond_5

    if-ne v0, v4, :cond_7

    :cond_5
    iget-object p0, p0, LA1/o;->e:LA1/f;

    invoke-virtual {p0, v1}, LA1/f;->b(LA1/p;)V

    goto :goto_3

    :cond_6
    iget-object p0, p0, LA1/o;->e:LA1/f;

    invoke-virtual {p0, v1}, LA1/f;->b(LA1/p;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p2, "State of engine Initialization"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ":"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mInitialized="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, LA1/o;->d:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mVideoPlayer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, LA1/o;->h:Lk1/b;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, LA1/o;->h:Lk1/b;

    if-eqz p2, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mVideoPlayer isAvailable="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, LA1/o;->h:Lk1/b;

    invoke-virtual {p2}, Lk1/b;->f()Z

    move-result p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_0
    iget-object p2, p0, LA1/o;->i:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "initVideoPlayer: "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, LA1/o;->i:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mResourceInfo="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, LA1/o;->v:Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 3

    iget-boolean v0, p0, LA1/o;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "FoldInteractive"

    const-string v2, "registerSensor: mIsSensorRegistered[%b]"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LA1/o;->k:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, LA1/o;->o:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, LA1/o;->o:Z

    iget-object v1, p0, LA1/o;->m:LA1/n;

    iget-object v2, p0, LA1/o;->l:Landroid/hardware/Sensor;

    iget p0, p0, LA1/o;->n:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 15

    const/4 v0, 0x1

    const-string v1, "resetFrame: e = "

    iget v2, p0, LA1/o;->f:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "FoldInteractive"

    const-string v0, "resetFrame already current frame is 0."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v4, "FoldInteractive"

    const-string v5, "resetFrame current[%d]"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, LA1/o;->g(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, LA1/o;->h:Lk1/b;

    if-eqz v2, :cond_2

    const-string v2, "FoldInteractive"

    const-string v4, "resetFrame: seek to head forcefully"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    new-array v2, v0, [Z

    aput-boolean v3, v2, v3

    new-array v0, v0, [Z

    aput-boolean v3, v0, v3

    new-instance v13, Ljava/lang/Object;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    new-instance v14, LA1/m;

    move-object v6, v14

    move-object v7, p0

    move-object v8, v0

    move-wide v9, v4

    move-object v11, v2

    move-object v12, v13

    invoke-direct/range {v6 .. v12}, LA1/m;-><init>(LA1/o;[ZJ[ZLjava/lang/Object;)V

    iget-object v6, p0, LA1/o;->h:Lk1/b;

    iget-object v7, p0, LA1/o;->z:LA1/k;

    iget-object v6, v6, Lk1/b;->b:Ljava/util/HashSet;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    aput-boolean v6, v2, v3

    iget-object v2, p0, LA1/o;->h:Lk1/b;

    invoke-virtual {v2, v14}, Lk1/b;->h(Lk1/c;)V

    monitor-enter v13

    :try_start_0
    iget-object v2, p0, LA1/o;->h:Lk1/b;

    invoke-virtual {v2}, Lk1/b;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, 0x1f4

    :try_start_1
    invoke-virtual {v13, v6, v7}, Ljava/lang/Object;->wait(J)V

    aget-boolean v2, v0, v3

    if-nez v2, :cond_1

    const-string v2, "FoldInteractive"

    const-string v6, "resetFrame : Forced to call a seekComplete by timeout."

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v14}, LA1/m;->b()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v6, "FoldInteractive"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "FoldInteractive"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "resetFrame : completed="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-boolean v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", elapsed="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_2
    :goto_2
    iput v3, p0, LA1/o;->f:I

    return-void
.end method

.method public final g(I)Z
    .locals 5

    iput p1, p0, LA1/o;->g:I

    iget-object v0, p0, LA1/o;->h:Lk1/b;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, LA1/o;->e:LA1/f;

    iget v0, v0, LA1/f;->b:I

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    int-to-long v1, p1

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    int-to-long v3, v0

    div-long v0, v1, v3

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "FoldInteractive"

    const-string v3, "seekTo: frame[%d], time[%d]"

    invoke-static {v2, v3, p1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, LA1/o;->h:Lk1/b;

    invoke-virtual {p0, v0, v1}, Lk1/b;->l(J)Z

    move-result p0

    return p0
.end method

.method public final h()V
    .locals 3

    iget-boolean v0, p0, LA1/o;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "FoldInteractive"

    const-string v2, "unregisterSensor: mIsSensorRegistered[%b]"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LA1/o;->k:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, LA1/o;->o:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, LA1/o;->o:Z

    iget-object p0, p0, LA1/o;->m:LA1/n;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public final onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "samsung.android.wallpaper.blocktoucharea"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "FoldInteractive"

    if-nez v5, :cond_0

    iget v5, v0, LA1/o;->p:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {p1, v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "onCommand: action[%s], mCurrentAngle[%f], isVisible[%b]"

    invoke-static {v6, v7, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v5

    invoke-static {v5, p1}, Le0/a;->R(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, ", state="

    const/16 v7, 0x6a

    iget-object v8, v0, LA1/o;->c:Lcom/samsung/android/wallpaper/live/fold/FoldInteractive;

    iget-object v9, v0, LA1/o;->B:Lcom/samsung/android/wallpaper/live/fold/FoldInteractive;

    const/4 v10, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v11, "android.wallpaper.goingtosleep"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_0

    :cond_2
    const/4 v10, 0x6

    goto :goto_0

    :sswitch_1
    const-string v11, "android.wallpaper.reapply"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_0

    :cond_3
    const/4 v10, 0x5

    goto :goto_0

    :sswitch_2
    const-string v11, "samsung.android.wallpaper.backuprunningstate"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_0

    :cond_4
    const/4 v10, 0x4

    goto :goto_0

    :sswitch_3
    const-string v11, "samsung.android.wallpaper.goingtosleep"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_0

    :cond_5
    const/4 v10, 0x3

    goto :goto_0

    :sswitch_4
    const-string v11, "samsung.android.wallpaper.restorerunningstate"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_0

    :cond_6
    const/4 v10, 0x2

    goto :goto_0

    :sswitch_5
    const-string v11, "android.wallpaper.wakingup"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    goto :goto_0

    :cond_7
    move v10, v4

    goto :goto_0

    :sswitch_6
    const-string v11, "samsung.android.wallpaper.customdata"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_0

    :cond_8
    move v10, v3

    :goto_0
    packed-switch v10, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, LA1/o;->v:Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, LA1/o;->b()Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;

    move-result-object v3

    :goto_1
    invoke-virtual {p0, v3}, LA1/o;->c(Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;)V

    goto/16 :goto_5

    :pswitch_1
    const-string v7, "requestId"

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v10, v9, Lcom/samsung/android/wallpaper/live/fold/FoldInteractive;->d:Lw0/c;

    if-eqz v10, :cond_b

    iget-object v10, v0, LA1/o;->e:LA1/f;

    if-eqz v10, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v10

    invoke-static {v8, v10}, LK/I;->E(Landroid/content/Context;I)I

    move-result v8

    iget-object v11, v0, LA1/o;->e:LA1/f;

    new-instance v12, LA1/p;

    iget v13, v11, LA1/f;->j:I

    iget-object v11, v11, LA1/f;->d:Landroid/animation/ValueAnimator;

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Landroid/animation/Animator;->isRunning()Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_2

    :cond_a
    move v4, v3

    :goto_2
    invoke-direct {v12, v10, v8, v13, v4}, LA1/p;-><init>(IIIZ)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "onCommand: backup ReqId="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, v4, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v9, Lcom/samsung/android/wallpaper/live/fold/FoldInteractive;->d:Lw0/c;

    invoke-virtual {v3, v12, v7}, Lw0/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    iget-object v3, v0, LA1/o;->e:LA1/f;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, LA1/f;->a()V

    goto/16 :goto_5

    :pswitch_2
    iget-object v3, v0, LA1/o;->e:LA1/f;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, LA1/f;->c()V

    :cond_c
    iput-boolean v4, v0, LA1/o;->a:Z

    iget-object v3, v0, LA1/o;->j:Landroid/os/Handler;

    if-eqz v3, :cond_d

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p0}, LA1/o;->f()V

    goto/16 :goto_5

    :cond_e
    iget-object v3, v0, LA1/o;->j:Landroid/os/Handler;

    if-eqz v3, :cond_16

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    :pswitch_3
    const-string v7, "stateBackupRequestId"

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, v9, Lcom/samsung/android/wallpaper/live/fold/FoldInteractive;->d:Lw0/c;

    if-eqz v10, :cond_16

    if-eqz v7, :cond_16

    iget-object v10, v0, LA1/o;->e:LA1/f;

    if-eqz v10, :cond_16

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v10

    invoke-static {v8, v10}, LK/I;->E(Landroid/content/Context;I)I

    move-result v8

    iget-object v9, v9, Lcom/samsung/android/wallpaper/live/fold/FoldInteractive;->d:Lw0/c;

    iget-object v11, v0, LA1/o;->e:LA1/f;

    new-instance v12, LA1/p;

    iget v13, v11, LA1/f;->j:I

    iget-object v11, v11, LA1/f;->d:Landroid/animation/ValueAnimator;

    if-eqz v11, :cond_f

    invoke-virtual {v11}, Landroid/animation/Animator;->isRunning()Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_3

    :cond_f
    move v4, v3

    :goto_3
    invoke-direct {v12, v10, v8, v13, v4}, LA1/p;-><init>(IIIZ)V

    invoke-virtual {v9, v12, v7}, Lw0/c;->H(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LA1/p;

    if-eqz v4, :cond_16

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onCommand: restore, ReqId="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6, v5, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, LA1/o;->e:LA1/f;

    invoke-virtual {v3, v4}, LA1/f;->b(LA1/p;)V

    goto/16 :goto_5

    :pswitch_4
    iget-object v4, v0, LA1/o;->j:Landroid/os/Handler;

    if-eqz v4, :cond_10

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_10
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {p0}, LA1/o;->f()V

    :cond_11
    iget-boolean v4, v0, LA1/o;->a:Z

    if-eqz v4, :cond_16

    iget v4, v0, LA1/o;->p:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_14

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_14

    sget v4, Lf2/g;->a:I

    invoke-static {v8}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    sget-object v6, Lf2/g;->d:Ljava/lang/reflect/Method;

    invoke-static {v4, v6, v5}, Le0/a;->Q(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "DeviceUtils"

    if-nez v4, :cond_12

    const-string v4, "isLidOpen: No method found. "

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_12
    const-string v6, "getLidState [%s]"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v5, Lf2/g;->b:I

    if-ne v4, v5, :cond_14

    iget-object v4, v0, LA1/o;->h:Lk1/b;

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lk1/b;->o()V

    :cond_13
    iget-object v4, v0, LA1/o;->e:LA1/f;

    if-eqz v4, :cond_14

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, LA1/f;->b(LA1/p;)V

    :cond_14
    :goto_4
    iput-boolean v3, v0, LA1/o;->a:Z

    goto :goto_5

    :pswitch_5
    new-instance v3, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;

    invoke-direct {v3, v2}, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, LA1/o;->c(Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {p0}, LA1/o;->d()V

    goto :goto_5

    :cond_15
    iget-object v3, v0, LA1/o;->j:Landroid/os/Handler;

    if-eqz v3, :cond_16

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, v0, LA1/o;->j:Landroid/os/Handler;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_16
    :goto_5
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x56532e66 -> :sswitch_6
        -0x4943dbf9 -> :sswitch_5
        -0x41842c5f -> :sswitch_4
        -0x2a4e26bf -> :sswitch_3
        -0x78ca70d -> :sswitch_2
        0x45c01370 -> :sswitch_1
        0x69401ccd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "FoldInteractive"

    const-string v3, "Engine.onCreate: isPreview[%b]"

    invoke-static {v2, v3, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, LA1/o;->s:Landroid/view/SurfaceHolder;

    new-instance p1, LM1/d;

    iget-object v1, p0, LA1/o;->c:Lcom/samsung/android/wallpaper/live/fold/FoldInteractive;

    invoke-direct {p1, v1}, LM1/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, LA1/o;->q:LM1/d;

    invoke-static {}, Lf2/g;->c()Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Lf2/g;->f()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    xor-int/2addr p1, v1

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->setFixedOrientation(ZZ)V

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, LA1/o;->b()Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, LA1/o;->c(Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onDestroy()V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "FoldInteractive"

    const-string v2, "Engine.onDestroy: isPreview[%b]"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LA1/o;->e:LA1/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, v0, LA1/f;->i:LA1/h;

    invoke-virtual {v0}, LA1/f;->c()V

    :cond_0
    iget-object v0, p0, LA1/o;->j:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, LA1/o;->j:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, LA1/o;->m:LA1/n;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LA1/o;->h()V

    iput-object v1, p0, LA1/o;->m:LA1/n;

    iput-object v1, p0, LA1/o;->l:Landroid/hardware/Sensor;

    :cond_2
    iget-object v0, p0, LA1/o;->q:LM1/d;

    iget-object v2, p0, LA1/o;->r:LA1/i;

    invoke-virtual {v0, v2}, LM1/d;->d(LM1/c;)V

    iget-object v0, p0, LA1/o;->h:Lk1/b;

    if-eqz v0, :cond_3

    iget-object v2, p0, LA1/o;->z:LA1/k;

    invoke-virtual {v0, v2}, Lk1/b;->p(Lk1/c;)V

    iget-object v0, p0, LA1/o;->h:Lk1/b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lk1/b;->j(Z)V

    iget-object v0, p0, LA1/o;->h:Lk1/b;

    invoke-virtual {v0}, Lk1/b;->b()V

    iput-object v1, p0, LA1/o;->h:Lk1/b;

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, LA1/o;->d:Z

    return-void
.end method

.method public final onDisplayStateChanged(LH1/a;LH1/a;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onDisplayStateChanged(LH1/a;LH1/a;)V

    sget-object p2, LH1/a;->f:LH1/a;

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, LA1/o;->e()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LA1/o;->h()V

    :goto_0
    return-void
.end method

.method public final onGetScreenshot(LH1/d;)LH1/e;
    .locals 6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onGetScreenshot: mVideoSize = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, LA1/o;->w:Landroid/util/Size;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FoldInteractive"

    invoke-static {v2, p1, v1}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, LA1/o;->s:Landroid/view/SurfaceHolder;

    iget-object v1, p0, LA1/o;->w:Landroid/util/Size;

    invoke-static {p1, v1}, LK/I;->n(Landroid/view/SurfaceHolder;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, LA1/o;->c:Lcom/samsung/android/wallpaper/live/fold/FoldInteractive;

    const/4 v3, 0x0

    if-nez p1, :cond_5

    const-string p1, "onGetScreenshot: failed to copy surface"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v4}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, LA1/o;->s:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_4

    iget-object p1, p0, LA1/o;->v:Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Le0/a;->N(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v4, p0, LA1/o;->f:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, p1, v5}, Le0/a;->M(ILandroid/content/res/AssetFileDescriptor;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    if-nez v4, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "getCurrentFrame: failed to get video frame. curFrame = "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, LA1/o;->f:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v4}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move-object p1, v3

    goto :goto_5

    :cond_2
    move-object p1, v4

    goto :goto_5

    :catchall_0
    move-exception v4

    if-eqz p1, :cond_3

    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v4, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    const-string v4, "getCurrentFrame: e = "

    invoke-static {v4, p1}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, v4, p1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_4
    const-string p1, "getCurrentFrame : engine not ready"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v4}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :goto_5
    if-nez p1, :cond_5

    return-object v3

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getSourceWhich()I

    move-result p0

    invoke-static {v1, p0}, LK/I;->E(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v1, p0, v4}, LK/I;->F(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object p0

    if-nez p0, :cond_6

    const-string p0, "onGetScreenshot: failed to get display size"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/graphics/Point;->x:I

    iget v4, p0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2, v3, v4}, LK/I;->w(IIII)Landroid/graphics/Rect;

    move-result-object v1

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p0, v2

    invoke-static {p1, v1, v0, p0}, LK/I;->r(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IF)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p1, p0, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    new-instance p1, LH1/e;

    invoke-direct {p1, p0}, LH1/e;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public final onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "FoldInteractive"

    const-string p2, "onSurfaceChanged: format[%d], width[%d], height[%d]"

    invoke-static {p1, p2, p0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    iput-object p1, p0, LA1/o;->s:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, LA1/o;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onSurfaceCreated: mInitialized[%b]"

    const-string v2, "FoldInteractive"

    invoke-static {v2, v1, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, LA1/o;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, LA1/o;->u:I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, LA1/o;->t:I

    :try_start_0
    iget-object p1, p0, LA1/o;->h:Lk1/b;

    if-eqz p1, :cond_2

    sget p1, Li1/a;->a:I

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getDisplayState()LH1/a;

    move-result-object p1

    sget-object v0, LH1/a;->f:LH1/a;

    if-eq p1, v0, :cond_1

    sget-object v0, LH1/a;->g:LH1/a;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, LA1/o;->h:Lk1/b;

    invoke-virtual {p0}, Lk1/b;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p1, "onSurfaceCreated: exception = e"

    invoke-static {p1, p0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    iget-boolean p0, p0, LA1/o;->d:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "FoldInteractive"

    const-string v0, "onSurfaceDestroyed: mInitialized[%b]"

    invoke-static {p1, v0, p0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    iput-object p1, p0, LA1/o;->s:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, LA1/o;->d:Z

    const-string v1, "FoldInteractive"

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "onSurfaceRedrawNeeded: not Initialized"

    invoke-static {v1, p1, p0}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget v0, p0, LA1/o;->u:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, LA1/o;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "onSurfaceRedrawNeeded: mSurfaceWidth[%d], mSurfaceHeight[%d], width[%d], height[%d]\uff0c isCreating[%b], isValid[%b]"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, LA1/o;->t:I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget v0, p0, LA1/o;->u:I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, LA1/o;->u:I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, LA1/o;->t:I

    :try_start_0
    iget-object p1, p0, LA1/o;->h:Lk1/b;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lk1/b;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onSurfaceRedrawNeeded: exception = %s"

    invoke-static {v1, v0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget p1, p0, LA1/o;->f:I

    invoke-virtual {p0, p1}, LA1/o;->g(I)Z

    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, LA1/o;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onVisibilityChanged: visible[%b], mInitialized[%b], isPreview[%b]"

    const-string v2, "FoldInteractive"

    invoke-static {v2, v1, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, LA1/o;->d:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "onVisibilityChanged: not Initialized"

    invoke-static {v2, p1, p0}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, LA1/o;->j:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, LA1/o;->j:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LA1/o;->d()V

    :cond_2
    :goto_0
    return-void
.end method
