.class public Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;
.super Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InfinityWallpaperEngine"
.end annotation


# static fields
.field public static final synthetic w:I


# instance fields
.field public final a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;

.field public b:Z

.field public c:LC1/b;

.field public d:I

.field public e:I

.field public f:Lk1/b;

.field public g:Ljava/lang/String;

.field public h:Landroid/os/Handler;

.field public i:Lcom/samsung/android/wallpaper/live/infinity/b;

.field public j:Landroid/view/SurfaceHolder;

.field public k:I

.field public l:I

.field public m:Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;

.field public n:Z

.field public o:Z

.field public final p:Ljava/util/HashMap;

.field public final q:Lcom/samsung/android/wallpaper/live/infinity/a;

.field public r:F

.field public s:F

.field public t:F

.field public u:Z

.field public v:Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;

.field public final synthetic v:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->v:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;-><init>(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->b:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->g:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->n:Z

    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->o:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->p:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/wallpaper/live/infinity/a;

    invoke-direct {v1, p0}, Lcom/samsung/android/wallpaper/live/infinity/a;-><init>(Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;)V

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->q:Lcom/samsung/android/wallpaper/live/infinity/a;

    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->u:Z

    iput-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;

    new-instance p0, Lw0/c;

    new-instance v0, Lf2/c;

    invoke-direct {v0, p2}, Lf2/c;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lw0/c;-><init>(Lf2/c;)V

    iput-object p0, p1, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;->d:Lw0/c;

    const/16 p0, -0x10

    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getSourceWhich()I

    move-result p0

    invoke-static {v0, p0}, Le0/a;->O(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;-><init>(Landroid/os/Bundle;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getResourceInfoFromWallpaperFramework : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "InfinityWallpaper"

    invoke-static {v2, p0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final c(Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;)V
    .locals 12

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->m:Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;

    const-string v0, "initVideoPlayer: e = "

    const-string v1, "exception time "

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->q:Lcom/samsung/android/wallpaper/live/infinity/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Lk1/b;->p(Lk1/c;)V

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    invoke-virtual {v2}, Lk1/b;->i()V

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    invoke-virtual {v2}, Lk1/b;->b()V

    :cond_0
    invoke-static {}, Lj0/s;->s()Lk1/b;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    iget-object v4, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->j:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v2, v4}, Lk1/b;->n(Landroid/view/Surface;)V

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v5, "InfinityWallpaper"

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;

    const-string v8, "initVideoPlayer: failed to close fd"

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Le0/a;->N(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v9, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    invoke-virtual {v9, p1}, Lk1/b;->m(Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v4, p1

    goto/16 :goto_6

    :catch_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_6

    :catch_1
    move-exception v3

    move-object p1, v4

    goto :goto_1

    :cond_1
    move-object p1, v4

    :goto_0
    iget-object v9, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    invoke-virtual {v9, v3}, Lk1/b;->h(Lk1/c;)V

    const-string v3, ""

    iput-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    :catch_2
    new-array p1, v6, [Ljava/lang/Object;

    invoke-static {v5, v8, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :goto_1
    :try_start_3
    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v10

    invoke-static {v10}, LK/I;->M(I)I

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v11

    invoke-static {v11}, LK/I;->S(I)Z

    move-result v11

    if-eqz v11, :cond_2

    or-int/2addr v10, v2

    goto :goto_2

    :cond_2
    or-int/lit8 v10, v10, 0x2

    :goto_2
    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v11

    invoke-virtual {v9, v10}, Landroid/app/WallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v10, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->v:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x7

    if-ne v11, v9, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v9

    invoke-static {}, LM1/h;->b()I

    move-result v10

    invoke-static {v7, v9, v10}, LL1/a;->clearWallpaper(Landroid/content/Context;II)V

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v9}, Le0/a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nexception = "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    if-eqz p1, :cond_4

    :try_start_4
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    new-array p1, v6, [Ljava/lang/Object;

    invoke-static {v5, v8, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lk1/b;->f()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->c:LC1/b;

    if-eqz p1, :cond_6

    iput-object v4, p1, LC1/b;->f:LA1/h;

    invoke-virtual {p1}, LC1/b;->a()V

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    invoke-virtual {p1}, Lk1/b;->e()I

    move-result p1

    new-instance v0, LC1/b;

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->m:Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;

    invoke-direct {v0, p1, v1}, LC1/b;-><init>(ILcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->c:LC1/b;

    new-instance p1, LA1/h;

    const/4 v1, 0x1

    invoke-direct {p1, v1, p0}, LA1/h;-><init>(ILjava/lang/Object;)V

    iput-object p1, v0, LC1/b;->f:LA1/h;

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->h:Landroid/os/Handler;

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, LA1/g;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, LA1/g;-><init>(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;I)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->h:Landroid/os/Handler;

    :goto_4
    invoke-static {v7}, Lf2/k;->c(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->n:Z

    invoke-static {v7}, Lf2/h;->b(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->o:Z

    iput-boolean v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->b:Z

    return-void

    :cond_8
    :goto_5
    const-string p0, "init: VideoPlayer not available"

    new-array p1, v6, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :goto_6
    if-eqz v4, :cond_9

    :try_start_5
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    :catch_4
    new-array p1, v6, [Ljava/lang/Object;

    invoke-static {v5, v8, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_7
    throw p0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;

    invoke-static {v0}, Lf2/h;->b(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->o:Z

    invoke-static {v0}, Lf2/k;->c(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->n:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f(Z)V

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

    iget-boolean p2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->b:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mVideoPlayer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    if-eqz p2, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mVideoPlayer isAvailable="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    invoke-virtual {p2}, Lk1/b;->f()Z

    move-result p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->g:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "initVideoPlayer: "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->g:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mResourceInfo="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->m:Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final e(I)Z
    .locals 5

    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->e:I

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->c:LC1/b;

    iget v0, v0, LC1/b;->e:I

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

    const-string v2, "InfinityWallpaper"

    const-string v3, "seekTo: frame[%d], time[%d]"

    invoke-static {v2, v3, p1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    invoke-virtual {p0, v0, v1}, Lk1/b;->l(J)Z

    move-result p0

    return p0
.end method

.method public final f(Z)V
    .locals 7

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->n:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->o:Z

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->m:Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->getPreviewScreen()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_1
    move v5, v0

    goto :goto_2

    :sswitch_0
    const-string v6, "LOCK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v2

    goto :goto_2

    :sswitch_1
    const-string v6, "HOME"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v3

    goto :goto_2

    :sswitch_2
    const-string v6, "AOD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    move v5, v4

    :goto_2
    packed-switch v5, :pswitch_data_0

    move v2, v0

    goto :goto_3

    :pswitch_0
    move v2, v3

    goto :goto_3

    :pswitch_1
    move v2, v4

    :goto_3
    :pswitch_2
    if-eq v2, v0, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->h:Landroid/os/Handler;

    if-eqz v0, :cond_6

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    if-eqz p1, :cond_8

    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->c:LC1/b;

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;

    invoke-static {p0}, Lf2/k;->b(Landroid/content/Context;)Z

    move-result p0

    const-wide/16 v2, 0x20

    invoke-virtual {p1, v1, v2, v3, p0}, LC1/b;->c(IJZ)V

    :cond_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xfdd6 -> :sswitch_2
        0x21ecdf -> :sswitch_1
        0x23bd2b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public isKeyguardTouchEventRequired()Z
    .locals 0
    .annotation build Le/a;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public final isPreview()Z
    .locals 1

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result p0

    and-int/lit8 p0, p0, 0x3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p5

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {p1, v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "onCommand: action[%s], isVisible[%b]"

    const-string v9, "InfinityWallpaper"

    invoke-static {v9, v8, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v7

    and-int/2addr v7, v6

    if-ne v7, v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v7

    invoke-static {v7, p1}, Le0/a;->R(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "infinity_Choreographer"

    iget-object v8, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->v:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :goto_0
    move v6, v4

    goto/16 :goto_1

    :sswitch_0
    const-string v6, "android.wallpaper.goingtosleep"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const/16 v6, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v6, "android.wallpaper.keyguardgoingaway"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x7

    goto :goto_1

    :sswitch_2
    const-string v6, "android.wallpaper.reapply"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_3
    const-string v6, "samsung.android.wallpaper.backuprunningstate"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_4
    const-string v6, "samsung.android.wallpaper.blocktoucharea"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_5
    const-string v11, "samsung.android.wallpaper.goingtosleep"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_0

    :sswitch_6
    const-string v6, "samsung.android.wallpaper.restorerunningstate"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_7
    const-string v6, "android.wallpaper.wakingup"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    move v6, v5

    goto :goto_1

    :sswitch_8
    const-string v6, "samsung.android.wallpaper.customdata"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_0

    :cond_8
    move v6, v3

    :cond_9
    :goto_1
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iput-boolean v3, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->o:Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f(Z)V

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->isPreview()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->m:Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->b()Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;

    move-result-object v3

    :goto_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->c(Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;)V

    goto/16 :goto_4

    :pswitch_2
    const-string v5, "requestId"

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "onCommand: backup ReqId="

    const-string v11, ", curFrame="

    invoke-static {v6, v5, v11}, LB/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v11, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->d:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v9, v6, v11}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_b

    iget-object v6, v8, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;->d:Lw0/c;

    if-eqz v6, :cond_b

    iget v8, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->d:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v5}, Lw0/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    iget-object v5, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->c:LC1/b;

    if-eqz v5, :cond_11

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "pause"

    invoke-static {v7, v6, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v5, LC1/b;->b:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_c
    iput-object v10, v5, LC1/b;->b:Landroid/animation/AnimatorSet;

    iput v4, v5, LC1/b;->g:I

    goto/16 :goto_4

    :pswitch_3
    if-eqz v2, :cond_11

    const-string v4, "id"

    invoke-virtual {v2, v4, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->p:Ljava/util/HashMap;

    new-instance v6, Landroid/graphics/Rect;

    const-string v7, "left"

    invoke-virtual {v2, v7, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "top"

    invoke-virtual {v2, v8, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v10, "right"

    invoke-virtual {v2, v10, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "bottom"

    invoke-virtual {v2, v11, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-direct {v6, v7, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onCommand: added block area : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v9, v4, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_4
    iput-boolean v3, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->n:Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f(Z)V

    goto/16 :goto_4

    :pswitch_5
    const-string v5, "stateBackupRequestId"

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v6, v8, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;->d:Lw0/c;

    if-eqz v6, :cond_d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v5}, Lw0/c;->H(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/Integer;

    iget-object v6, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->c:LC1/b;

    if-eqz v6, :cond_d

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_d

    iget-object v6, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->c:LC1/b;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "setStartFrame "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v3, [Ljava/lang/Object;

    invoke-static {v7, v11, v12}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v4, v6, LC1/b;->g:I

    iput v8, v6, LC1/b;->c:I

    iget-object v4, v6, LC1/b;->f:LA1/h;

    if-eqz v4, :cond_d

    invoke-virtual {v4, v10}, LA1/h;->accept(Ljava/lang/Object;)V

    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "onCommand: restore, ReqId="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", backupedFrame="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v9, v4, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f(Z)V

    goto :goto_4

    :pswitch_6
    iput-boolean v5, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->n:Z

    iget-object v4, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;

    invoke-static {v4}, Lf2/h;->b(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->o:Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f(Z)V

    goto :goto_4

    :pswitch_7
    new-instance v4, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;

    invoke-direct {v4, v2}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;-><init>(Landroid/os/Bundle;)V

    iget-object v5, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->m:Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->m:Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;

    invoke-virtual {v5}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    :cond_e
    invoke-virtual {p0, v4}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->c(Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->d()V

    goto :goto_3

    :cond_f
    iget-object v5, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->h:Landroid/os/Handler;

    if-eqz v5, :cond_10

    const/16 v6, 0x66

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->h:Landroid/os/Handler;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_10
    :goto_3
    iput-object v4, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->m:Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;

    invoke-virtual {p0, v3}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f(Z)V

    :cond_11
    :goto_4
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x56532e66 -> :sswitch_8
        -0x4943dbf9 -> :sswitch_7
        -0x41842c5f -> :sswitch_6
        -0x2a4e26bf -> :sswitch_5
        -0x10281e22 -> :sswitch_4
        -0x78ca70d -> :sswitch_3
        0x45c01370 -> :sswitch_2
        0x4eb77f17 -> :sswitch_1
        0x69401ccd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setTouchEventsEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->isPreview()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "InfinityWallpaper"

    const-string v4, "Engine.onCreate: isPreview[%b]"

    invoke-static {v3, v4, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->j:Landroid/view/SurfaceHolder;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->isPreview()Z

    move-result p1

    xor-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->setFixedOrientation(ZZ)V

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->b()Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->c(Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;)V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->i:Lcom/samsung/android/wallpaper/live/infinity/b;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/samsung/android/wallpaper/live/infinity/b;

    invoke-direct {p1, p0}, Lcom/samsung/android/wallpaper/live/infinity/b;-><init>(Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->i:Lcom/samsung/android/wallpaper/live/infinity/b;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->i:Lcom/samsung/android/wallpaper/live/infinity/b;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :goto_1
    new-instance v0, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;

    invoke-direct {v0, p0}, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;-><init>(Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->v:Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->start()V

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onDestroy()V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->isPreview()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Engine.onDestroy: isPreview[%b]"

    const-string v2, "InfinityWallpaper"

    invoke-static {v2, v1, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->c:LC1/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, v0, LC1/b;->f:LA1/h;

    invoke-virtual {v0}, LC1/b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->h:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->h:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->q:Lcom/samsung/android/wallpaper/live/infinity/a;

    invoke-virtual {v0, v3}, Lk1/b;->p(Lk1/c;)V

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lk1/b;->j(Z)V

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    invoke-virtual {v0}, Lk1/b;->b()V

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->i:Lcom/samsung/android/wallpaper/live/infinity/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->i:Lcom/samsung/android/wallpaper/live/infinity/b;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Engine.onDestroy: e="

    invoke-static {v3, v0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->b:Z

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->v:Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;

    if-eqz v0, :cond_tilt_dest

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->v:Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;

    :cond_tilt_dest
    return-void
.end method

.method public final onGetScreenshot(LH1/d;)LH1/e;
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;

    const/4 v1, 0x0

    const-string v2, "InfinityWallpaper"

    const/4 v3, 0x0

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->j:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->m:Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le0/a;->N(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v4, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->d:I

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
    move-exception p0

    goto/16 :goto_3

    :cond_1
    :goto_0
    if-nez v4, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onGetScreenshot: failed to get video frame. curFrame = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->d:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getSourceWhich()I

    move-result p1

    invoke-static {v0, p1}, LK/I;->E(Landroid/content/Context;I)I

    move-result v5

    invoke-static {v0, p1, v3}, LK/I;->F(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v6, p1, Landroid/graphics/Point;->x:I

    iget v7, p1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1, v6, v7}, LK/I;->w(IIII)Landroid/graphics/Rect;

    move-result-object v1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "onGetScreenshot : curFrame="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->d:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", videoSize="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", centerCrop="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", displaySizeAt0="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", displayRotation="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_8

    if-eqz v1, :cond_8

    const/4 p0, 0x1

    if-eq v5, p0, :cond_6

    const/4 p0, 0x2

    if-eq v5, p0, :cond_5

    const/4 p0, 0x3

    if-eq v5, p0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v3, 0x10e

    goto :goto_1

    :cond_5
    const/16 v3, 0xb4

    goto :goto_1

    :cond_6
    const/16 v3, 0x5a

    :goto_1
    neg-int p0, v3

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {v4, v1, p0, p1}, LK/I;->r(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IF)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq v4, p0, :cond_7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    new-instance p1, LH1/e;

    invoke-direct {p1, p0}, LH1/e;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_8
    new-instance p0, LH1/e;

    invoke-direct {p0, v4}, LH1/e;-><init>(Landroid/graphics/Bitmap;)V

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    const-string p1, "onGetScreenshot: e = "

    invoke-static {p1, p0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_a
    :goto_4
    const-string p0, "onGetScreenshot: engine not ready"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
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

    const-string p1, "InfinityWallpaper"

    const-string p2, "onSurfaceChanged: format[%d], width[%d], height[%d]"

    invoke-static {p1, p2, p0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->j:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->l:I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->k:I

    iget-boolean p0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->b:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "InfinityWallpaper"

    const-string v0, "onSurfaceCreated: mInitialized[%b]"

    invoke-static {p1, v0, p0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    iget-boolean p0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->b:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "InfinityWallpaper"

    const-string v0, "onSurfaceDestroyed: mInitialized[%b]"

    invoke-static {p1, v0, p0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->j:Landroid/view/SurfaceHolder;

    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->l:I

    iget v1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->k:I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->l:I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->k:I

    iget-boolean v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->b:Z

    const-string v3, "InfinityWallpaper"

    if-nez v2, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "onSurfaceRedrawNeeded: not Initialized"

    invoke-static {v3, p1, p0}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "onSurfaceRedrawNeeded: prevWidth[%d], prevHeight[%d], width[%d], height[%d]\uff0c isCreating[%b], isValid[%b]"

    invoke-static {v3, v2, p1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->l:I

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->k:I

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->d:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->e(I)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 13

    sget-boolean v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;->e:Z

    const-string v1, "InfinityWallpaper"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onTouchEvent "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_a

    const/4 v5, -0x1

    const/4 v6, 0x3

    if-eq v0, v3, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    if-eq v0, v6, :cond_8

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->u:Z

    if-nez v0, :cond_2

    iput v4, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->t:F

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v7, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->r:F

    sub-float/2addr v7, v0

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->s:F

    sub-float/2addr v0, p1

    float-to-double v11, v0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float p1, v7

    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->t:F

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->c:LC1/b;

    if-eqz v0, :cond_d

    iget v7, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->k:I

    iget v8, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->l:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, LC1/b;->g:I

    if-eq v8, v5, :cond_d

    iget-object v5, v0, LC1/b;->a:[[LC1/a;

    aget-object v5, v5, v8

    aget-object v5, v5, v6

    if-nez v5, :cond_3

    goto/16 :goto_0

    :cond_3
    cmpg-float v5, v7, v4

    if-gtz v5, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-object v5, v0, LC1/b;->b:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_5
    iget v5, v0, LC1/b;->d:I

    if-gez v5, :cond_6

    iget v5, v0, LC1/b;->c:I

    iput v5, v0, LC1/b;->d:I

    :cond_6
    div-float v5, p1, v7

    const/high16 v8, 0x43fa0000    # 500.0f

    mul-float/2addr v5, v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-long v4, v4

    iput-wide v4, v0, LC1/b;->h:J

    iget-object v4, v0, LC1/b;->a:[[LC1/a;

    iget v5, v0, LC1/b;->g:I

    aget-object v4, v4, v5

    aget-object v4, v4, v6

    iget v4, v4, LC1/a;->b:I

    iget v5, v0, LC1/b;->d:I

    sub-int v6, v4, v5

    mul-int/2addr v6, v3

    int-to-float v3, v6

    div-float/2addr v3, v7

    sub-float v6, v7, p1

    div-float/2addr v6, v7

    mul-float/2addr v6, v3

    add-float/2addr v6, v3

    mul-float/2addr v6, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v6, p1

    int-to-float p1, v5

    add-float/2addr p1, v6

    float-to-int p1, p1

    iput p1, v0, LC1/b;->c:I

    if-le p1, v4, :cond_7

    iput v4, v0, LC1/b;->c:I

    :cond_7
    iget-object p1, v0, LC1/b;->f:LA1/h;

    if-eqz p1, :cond_d

    iget v0, v0, LC1/b;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, LA1/h;->accept(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    iput v4, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->t:F

    iput-boolean v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->u:Z

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->c:LC1/b;

    if-eqz p1, :cond_d

    iput v5, p1, LC1/b;->d:I

    iget v0, p1, LC1/b;->g:I

    if-eq v0, v5, :cond_d

    iget-object v3, p1, LC1/b;->a:[[LC1/a;

    aget-object v3, v3, v0

    aget-object v3, v3, v6

    if-nez v3, :cond_9

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v3, v0, 0x1

    iput v3, p1, LC1/b;->g:I

    iget-wide v3, p1, LC1/b;->h:J

    invoke-virtual {p1, v0, v3, v4, v2}, LC1/b;->c(IJZ)V

    goto :goto_0

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->p:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    if-eqz v7, :cond_b

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "onTouchEvent: detect block area "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->u:Z

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->r:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->s:F

    iput v4, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->t:F

    iput-boolean v3, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->u:Z

    :cond_d
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onTouchEvent distance = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->t:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->v:Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;

    if-eqz v0, :cond_tilt_vis

    if-eqz p1, :cond_tilt_stop

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->start()V

    goto :cond_tilt_vis

    :cond_tilt_stop
    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->stop()V

    :cond_tilt_vis

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->isPreview()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onVisibilityChanged: visible[%b], mInitialized[%b], isPreview[%b]"

    const-string v2, "InfinityWallpaper"

    invoke-static {v2, v1, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->b:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "onVisibilityChanged: not Initialized"

    invoke-static {v2, p1, p0}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->h:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->h:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->d()V

    :cond_2
    :goto_0
    return-void
.end method
