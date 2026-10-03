.class public final Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0019B]\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;",
        "Landroidx/work/Worker;",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "LO2/a;",
        "utils",
        "LC2/b;",
        "storageContract",
        "LF2/d;",
        "useCaseFactory",
        "LT2/a;",
        "preferenceUtils",
        "LI2/f;",
        "LI2/a;",
        "notifier",
        "LM2/f;",
        "workerEnqueueHelper",
        "LM2/g;",
        "workerRegister",
        "LM2/h;",
        "workerTerminator",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;LO2/a;LC2/b;LF2/d;LT2/a;LI2/f;LM2/f;LM2/g;LM2/h;)V",
        "M2/c",
        "WallpaperMagician_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final i:Landroid/content/Context;

.field public final j:Landroidx/work/WorkerParameters;

.field public final k:LO2/a;

.field public final l:LC2/b;

.field public final m:LF2/d;

.field public final n:LT2/a;

.field public final o:LI2/f;

.field public final p:LM2/f;

.field public final q:LM2/g;

.field public final r:LM2/h;

.field public final s:LH2/a;

.field public t:LW4/x;

.field public u:LW4/x;

.field public final v:Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

.field public final w:Landroid/media/session/MediaSessionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;LO2/a;LC2/b;LF2/d;LT2/a;LI2/f;LM2/f;LM2/g;LM2/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/WorkerParameters;",
            "LO2/a;",
            "LC2/b;",
            "LF2/d;",
            "LT2/a;",
            "LI2/f;",
            "LM2/f;",
            "LM2/g;",
            "LM2/h;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utils"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageContract"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "useCaseFactory"

    invoke-static {p5, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceUtils"

    invoke-static {p6, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifier"

    invoke-static {p7, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerEnqueueHelper"

    invoke-static {p8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerRegister"

    invoke-static {p9, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerTerminator"

    invoke-static {p10, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->j:Landroidx/work/WorkerParameters;

    iput-object p3, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    iput-object p4, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->l:LC2/b;

    iput-object p5, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->m:LF2/d;

    iput-object p6, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->n:LT2/a;

    iput-object p7, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->o:LI2/f;

    iput-object p8, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->p:LM2/f;

    iput-object p9, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->q:LM2/g;

    iput-object p10, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->r:LM2/h;

    invoke-virtual {p2}, Landroidx/work/WorkerParameters;->a()Ln0/g;

    move-result-object p2

    const-string p3, "getInputData(...)"

    invoke-static {p2, p3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lw0/f;->t(Ln0/g;)LH2/a;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->s:LH2/a;

    const/16 p2, 0x9

    invoke-static {p2}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->v:Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    const-string p2, "media_session"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.media.session.MediaSessionManager"

    invoke-static {p1, p2}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/media/session/MediaSessionManager;

    iput-object p1, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->w:Landroid/media/session/MediaSessionManager;

    return-void
.end method

.method public static k(Lkotlinx/coroutines/internal/c;LE3/a;)LW4/x;
    .locals 3

    new-instance v0, LM2/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LM2/d;-><init>(LE3/a;Lu3/d;)V

    sget-object p1, Lu3/j;->d:Lu3/j;

    invoke-static {p0, p1}, LW4/u;->i(LW4/t;Lu3/i;)Lu3/i;

    move-result-object p0

    new-instance p1, LW4/x;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, LW4/x;-><init>(Lu3/i;ZI)V

    invoke-virtual {p1, v1, p1, v0}, LW4/a;->C(ILW4/a;LE3/c;)V

    return-object p1
.end method


# virtual methods
.method public final c()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {v0}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v1, "GenerateAllWorker"

    const-string v2, "onStopped"

    invoke-virtual {v0, v1, v2}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->r()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    iget-object v1, v0, LO2/a;->d:LQ2/a;

    const-string v2, "device"

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, LQ2/a;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, v0, LO2/a;->d:LQ2/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LQ2/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_1
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_2
    :goto_0
    const-string v0, "GenerateAllWorker"

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->s:LH2/a;

    iget-wide v2, v1, LH2/a;->b:J

    iget v1, v1, LH2/a;->c:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "generate_image_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->q:LM2/g;

    invoke-virtual {v2}, LM2/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->q:LM2/g;

    invoke-virtual {v2, v1}, LM2/g;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->g()V

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->l(I)V

    return-void

    :goto_2
    monitor-exit v0

    throw p0

    :cond_5
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v3
.end method

.method public final f()Ln0/m;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "doWorkForPolicy, "

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;

    iget-object v3, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->i:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;-><init>(Landroid/content/Context;)V

    const-string v3, "visionlvm"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->check(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/scs/base/tasks/Tasks;->await(Lcom/samsung/android/sdk/scs/base/tasks/Task;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v3

    const/16 v4, 0x2c

    const/4 v5, 0x3

    const-wide/16 v6, 0xf

    const/16 v8, 0xc9

    const/4 v9, 0x2

    const-wide v10, 0x7fffffffffffffffL

    if-eqz v3, :cond_24

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    goto/16 :goto_10

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_24

    iget-object v13, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->s:LH2/a;

    iget v2, v13, LH2/a;->g:I

    if-ne v2, v8, :cond_4

    iget-wide v2, v13, LH2/a;->v:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {v2}, LO2/a;->b()LS2/b;

    move-result-object v2

    iget-wide v10, v13, LH2/a;->v:J

    const-string v3, "putPriorityWorkerInNormalState, "

    invoke-static {v3, v10, v11}, Li4/b;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    const-string v10, "GenerateAllWorker"

    invoke-virtual {v2, v10, v3}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v2, 0xdbba0

    iput-wide v2, v13, LH2/a;->v:J

    invoke-static {v6, v7}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v2

    const-string v3, "ofMinutes(...)"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->p:LM2/f;

    const/16 v3, 0x2c

    and-int/2addr v3, v9

    if-eqz v3, :cond_2

    invoke-static {v6, v7}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v2

    :cond_2
    move-object v15, v2

    invoke-static {v6, v7}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v2

    and-int/lit8 v3, v4, 0x10

    if-eqz v3, :cond_3

    move v5, v9

    :cond_3
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "repeatInterval"

    invoke-static {v15, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "flexTime"

    invoke-static {v2, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "workPolicy"

    invoke-static {v5, v3}, LB/a;->t(ILjava/lang/String;)V

    invoke-static {v13, v8}, LM2/f;->d(LH2/a;I)Ln0/g;

    move-result-object v14

    const-string v17, "policy"

    const/16 v19, 0x0

    move-object/from16 v16, v2

    move/from16 v18, v5

    invoke-virtual/range {v12 .. v19}, LM2/f;->b(LH2/a;Ln0/g;Ljava/time/Duration;Ljava/time/Duration;Ljava/lang/String;ILn0/e;)V

    :cond_4
    :goto_0
    iget-object v2, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->s:LH2/a;

    iget v2, v2, LH2/a;->g:I

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/16 v5, 0x191

    if-ne v2, v4, :cond_9

    iget-object v1, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {v1}, LO2/a;->b()LS2/b;

    move-result-object v2

    iget-object v4, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->j:Landroidx/work/WorkerParameters;

    iget-object v4, v4, Landroidx/work/WorkerParameters;->b:Ln0/g;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "### doWorkForPriority, started ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "GenerateAllWorker"

    invoke-virtual {v2, v6, v4}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->s:LH2/a;

    iget-object v4, v2, LH2/a;->a:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v2, v2, LH2/a;->l:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->j()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, LO2/a;->d()LU0/e;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "startPriorityMonitorForDeviceState"

    invoke-virtual {v2, v6, v5, v4}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, LW4/B;->b:Lkotlinx/coroutines/scheduling/c;

    invoke-static {v2}, LW4/u;->a(Lu3/i;)Lkotlinx/coroutines/internal/c;

    move-result-object v2

    new-instance v4, LM2/a;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0}, LM2/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, v4}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k(Lkotlinx/coroutines/internal/c;LE3/a;)LW4/x;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->t:LW4/x;

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->m()Ln0/m;

    move-result-object v2

    new-instance v4, Ln0/j;

    invoke-direct {v4}, Ln0/j;-><init>()V

    invoke-static {v2, v4}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v2, Ln0/k;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->j()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v1}, LO2/a;->d()LU0/e;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "stopPriorityMonitorForDeviceState"

    invoke-virtual {v1, v6, v4, v3}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->t:LW4/x;

    if-eqz v0, :cond_22

    invoke-static {v0}, LW4/u;->b(LW4/P;)V

    goto/16 :goto_f

    :cond_8
    :goto_1
    invoke-virtual {v0, v5}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->l(I)V

    new-instance v2, Ln0/j;

    invoke-direct {v2}, Ln0/j;-><init>()V

    goto/16 :goto_f

    :cond_9
    iget-object v2, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {v2}, LO2/a;->b()LS2/b;

    move-result-object v2

    const-string v4, "GenerateAllWorker"

    iget-object v6, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->j:Landroidx/work/WorkerParameters;

    iget-object v6, v6, Landroidx/work/WorkerParameters;->b:Ln0/g;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "### doWorkForPolicy, started ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->s:LH2/a;

    iget-object v4, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    iget-object v6, v4, LO2/a;->e:LT2/b;

    const/4 v7, 0x0

    if-eqz v6, :cond_23

    iget v8, v2, LH2/a;->c:I

    invoke-virtual {v6, v8}, LT2/b;->c(I)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_a

    const-string v8, "contentType"

    invoke-virtual {v6, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    const-string v8, "weather"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    :cond_a
    move v6, v3

    :goto_2
    iget v8, v2, LH2/a;->c:I

    if-eqz v6, :cond_20

    iget-object v4, v4, LO2/a;->e:LT2/b;

    if-eqz v4, :cond_1f

    invoke-virtual {v4, v8}, LT2/b;->c(I)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v6, "weatherId"

    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_3

    :cond_b
    const-wide/16 v9, -0x1

    :goto_3
    iget-wide v11, v2, LH2/a;->b:J

    cmp-long v2, v9, v11

    if-eqz v2, :cond_c

    invoke-virtual {v0, v8, v11, v12}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->h(IJ)V

    goto/16 :goto_e

    :cond_c
    iget-object v2, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->r:LM2/h;

    iget-object v2, v2, LM2/h;->a:LO2/a;

    iget-object v4, v2, LO2/a;->f:LT2/b;

    if-eqz v4, :cond_1e

    iget-object v4, v4, LT2/b;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "llm_running_timestamp"

    const-wide/16 v8, 0x0

    invoke-static {v4, v6, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    invoke-virtual {v2}, LO2/a;->d()LU0/e;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "isTerminateRequired, "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/Object;

    const-string v10, "WorkerTerminator"

    invoke-virtual {v2, v10, v4, v6}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long v2, v8, v12

    if-gtz v2, :cond_d

    const-wide/16 v8, 0x7530

    cmp-long v2, v12, v8

    if-gez v2, :cond_d

    iget-object v1, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {v1}, LO2/a;->b()LS2/b;

    move-result-object v1

    const-string v2, "GenerateAllWorker"

    const-string v3, "doWorkForPolicy, termination required!!"

    invoke-virtual {v1, v2, v3}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x192

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->l(I)V

    new-instance v0, Ln0/j;

    invoke-direct {v0}, Ln0/j;-><init>()V

    :goto_4
    move-object v2, v0

    goto/16 :goto_f

    :cond_d
    iget-object v2, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->s:LH2/a;

    iget-object v4, v2, LH2/a;->a:Ljava/lang/String;

    if-eqz v4, :cond_1d

    iget-object v2, v2, LH2/a;->l:Ljava/lang/String;

    if-nez v2, :cond_e

    goto/16 :goto_c

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->j()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->i()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->o()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->i:Landroid/content/Context;

    const-string v5, "batterymanager"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "null cannot be cast to non-null type android.os.BatteryManager"

    invoke-static {v2, v5}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/os/BatteryManager;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v2

    const/16 v5, 0xf

    if-lt v2, v5, :cond_10

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->q(F)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->p()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->n()Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_5

    :cond_f
    move v2, v4

    goto :goto_6

    :cond_10
    iget-object v1, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {v1}, LO2/a;->b()LS2/b;

    move-result-object v1

    const-string v3, "doWork, current battery level ("

    const-string v4, ")% is unsatisfied (15)%"

    invoke-static {v2, v3, v4}, LB/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GenerateAllWorker"

    invoke-virtual {v1, v3, v2}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_5
    iget-object v0, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {v0}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v1, "GenerateAllWorker"

    const-string v2, "doWorkForPolicy, pre-conditions are not satisfied"

    invoke-virtual {v0, v1, v2}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ln0/j;

    invoke-direct {v0}, Ln0/j;-><init>()V

    goto :goto_4

    :cond_12
    move v2, v3

    :goto_6
    iget-object v5, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    iget-object v6, v5, LO2/a;->d:LQ2/a;

    const-string v8, "device"

    if-eqz v6, :cond_1c

    invoke-virtual {v6}, LQ2/a;->b()Z

    move-result v6

    if-nez v6, :cond_15

    iget-object v5, v5, LO2/a;->d:LQ2/a;

    if-eqz v5, :cond_14

    invoke-virtual {v5}, LQ2/a;->a()Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_7

    :cond_13
    move v5, v3

    goto :goto_8

    :cond_14
    invoke-static {v8}, LF3/k;->m(Ljava/lang/String;)V

    throw v7

    :cond_15
    :goto_7
    move v5, v4

    :goto_8
    iget-object v6, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->s:LH2/a;

    iget-wide v7, v6, LH2/a;->b:J

    iget v6, v6, LH2/a;->c:I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "generate_image_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_18

    const-string v7, "GenerateAllWorker"

    monitor-enter v7

    :try_start_0
    iget-object v8, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->q:LM2/g;

    invoke-virtual {v8}, LM2/g;->b()Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->q:LM2/g;

    invoke-virtual {v8}, LM2/g;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    iget-object v0, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {v0}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v2, "GenerateAllWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is on running"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ln0/j;

    invoke-direct {v0}, Ln0/j;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_16
    :try_start_1
    iget-object v1, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->q:LM2/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "tag"

    invoke-static {v6, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, LM2/g;->a:LO2/a;

    invoke-virtual {v1}, LO2/a;->d()LU0/e;

    move-result-object v1

    const-string v8, "registerWorkerTag : "

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    const-string v10, "WorkerRegister"

    invoke-virtual {v1, v10, v8, v9}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v6, LM2/g;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_17
    monitor-exit v7

    goto :goto_a

    :goto_9
    monitor-exit v7

    throw v0

    :cond_18
    :goto_a
    if-eqz v2, :cond_19

    iget-object v1, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {v1}, LO2/a;->d()LU0/e;

    move-result-object v1

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "GenerateAllWorker"

    const-string v9, "startPolicyMonitorForDeviceState"

    invoke-virtual {v1, v8, v9, v7}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, LW4/B;->b:Lkotlinx/coroutines/scheduling/c;

    invoke-static {v1}, LW4/u;->a(Lu3/i;)Lkotlinx/coroutines/internal/c;

    move-result-object v1

    new-instance v7, LM2/a;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v0}, LM2/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v7}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k(Lkotlinx/coroutines/internal/c;LE3/a;)LW4/x;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->u:LW4/x;

    new-instance v1, LA1/h;

    const/4 v7, 0x2

    invoke-direct {v1, v7, v0}, LA1/h;-><init>(ILjava/lang/Object;)V

    iget-object v7, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->r:LM2/h;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v7, LM2/h;->a:LO2/a;

    invoke-virtual {v8}, LO2/a;->d()LU0/e;

    move-result-object v8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v9, "WorkerTerminator"

    const-string v10, "start"

    invoke-virtual {v8, v9, v10, v3}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v1, v7, LM2/h;->c:LA1/h;

    const-string v1, "llm_running_timestamp"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, v7, LM2/h;->b:Landroid/content/ContentResolver;

    iget-object v7, v7, LM2/h;->d:LE1/f;

    invoke-virtual {v3, v1, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->m()Ln0/m;

    move-result-object v1

    if-eqz v5, :cond_1a

    const-string v3, "GenerateAllWorker"

    monitor-enter v3

    :try_start_2
    iget-object v4, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->q:LM2/g;

    invoke-virtual {v4, v6}, LM2/g;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    goto :goto_b

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1a
    :goto_b
    if-eqz v2, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->r()V

    :cond_1b
    move-object v2, v1

    goto :goto_f

    :cond_1c
    invoke-static {v8}, LF3/k;->m(Ljava/lang/String;)V

    throw v7

    :cond_1d
    :goto_c
    invoke-virtual {v0, v5}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->l(I)V

    new-instance v0, Ln0/j;

    invoke-direct {v0}, Ln0/j;-><init>()V

    goto/16 :goto_4

    :cond_1e
    const-string v0, "settingsDb"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v7

    :cond_1f
    const-string v0, "wallpaper"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v7

    :cond_20
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->l:LC2/b;

    invoke-virtual {v2, v8}, LC2/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_21

    array-length v2, v1

    :goto_d
    if-ge v3, v2, :cond_21

    aget-object v5, v1, v3

    invoke-virtual {v4}, LO2/a;->b()LS2/b;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cancelAllWorks, id: "

    invoke-static {v8, v7}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "GenerateAllWorker"

    invoke-virtual {v6, v8, v7}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getName(...)"

    invoke-static {v6, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v8, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->s:LH2/a;

    iget v8, v8, LH2/a;->c:I

    invoke-virtual {v0, v8, v6, v7}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->h(IJ)V

    invoke-static {v5}, LB3/j;->K(Ljava/io/File;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_21
    :goto_e
    iget-object v0, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {v0}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v1, "GenerateAllWorker"

    const-string v2, "doWorkForPolicy, not valid state!!"

    invoke-virtual {v0, v1, v2}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ln0/j;

    invoke-direct {v0}, Ln0/j;-><init>()V

    goto/16 :goto_4

    :cond_22
    :goto_f
    return-object v2

    :cond_23
    const-string v0, "wallpaper"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v7

    :cond_24
    :goto_10
    iget-object v1, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {v1}, LO2/a;->b()LS2/b;

    move-result-object v1

    const-string v2, "GenerateAllWorker"

    iget-object v3, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->s:LH2/a;

    iget-wide v12, v3, LH2/a;->v:J

    const-string v3, "### doWork, model package not exist!! ###, "

    invoke-static {v3, v12, v13}, Li4/b;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v13, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->s:LH2/a;

    iget v1, v13, LH2/a;->g:I

    if-ne v1, v8, :cond_28

    iget-wide v1, v13, LH2/a;->v:J

    cmp-long v1, v1, v10

    if-nez v1, :cond_25

    goto :goto_11

    :cond_25
    iget-object v1, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {v1}, LO2/a;->b()LS2/b;

    move-result-object v1

    iget-wide v2, v13, LH2/a;->v:J

    const-string v12, "postponePriorityWorker, "

    invoke-static {v12, v2, v3}, Li4/b;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GenerateAllWorker"

    invoke-virtual {v1, v3, v2}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v10, v13, LH2/a;->v:J

    const-wide/16 v1, 0xc

    invoke-static {v1, v2}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v1

    const-string v2, "ofHours(...)"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->p:LM2/f;

    const/16 v2, 0x2c

    and-int/2addr v2, v9

    if-eqz v2, :cond_26

    invoke-static {v6, v7}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v1

    :cond_26
    move-object v15, v1

    invoke-static {v6, v7}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v1

    and-int/lit8 v2, v4, 0x10

    if-eqz v2, :cond_27

    move v5, v9

    :cond_27
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "repeatInterval"

    invoke-static {v15, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "flexTime"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "workPolicy"

    invoke-static {v5, v2}, LB/a;->t(ILjava/lang/String;)V

    invoke-static {v13, v8}, LM2/f;->d(LH2/a;I)Ln0/g;

    move-result-object v14

    const-string v17, "policy"

    const/16 v19, 0x0

    move-object/from16 v16, v1

    move/from16 v18, v5

    invoke-virtual/range {v12 .. v19}, LM2/f;->b(LH2/a;Ln0/g;Ljava/time/Duration;Ljava/time/Duration;Ljava/lang/String;ILn0/e;)V

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->i()Z

    :cond_28
    new-instance v0, Ln0/j;

    invoke-direct {v0}, Ln0/j;-><init>()V

    return-object v0
.end method

.method public final g()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {v0}, LO2/a;->b()LS2/b;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->s:LH2/a;

    iget-wide v2, v1, LH2/a;->b:J

    const-string v4, "cancelGenerating, id: "

    invoke-static {v4, v2, v3}, Li4/b;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GenerateAllWorker"

    invoke-virtual {v0, v3, v2}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, LH2/a;->d:I

    iget-object p0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->m:LF2/d;

    invoke-virtual {p0, v0}, LF2/d;->a(I)LF2/c;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, LF2/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LF2/a;-><init>(LH2/a;I)V

    invoke-virtual {p0, v0}, LF2/c;->g(LF2/a;)V

    :cond_0
    return-void
.end method

.method public final h(IJ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {v0}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v1, "cancelWork, id: "

    invoke-static {v1, p2, p3}, Li4/b;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GenerateAllWorker"

    invoke-virtual {v0, v2, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->i:Landroid/content/Context;

    invoke-static {p0}, Lo0/n;->N(Landroid/content/Context;)Lo0/n;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "generate_image_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo0/n;->M(Ljava/lang/String;)Lw0/e;

    return-void
.end method

.method public final i()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->s:LH2/a;

    iget-wide v0, v0, LH2/a;->b:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->n:LT2/a;

    check-cast v1, LJ2/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "key"

    invoke-static {v0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, LJ2/a;->a:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {p0}, LO2/a;->b()LS2/b;

    move-result-object p0

    const-string v2, "doWork, this is first try of "

    const-string v4, ", skip it"

    invoke-static {v2, v0, v4}, LB/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "GenerateAllWorker"

    invoke-virtual {p0, v4, v2}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v1, LJ2/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v1, 0x2

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v3

    :cond_0
    return v4
.end method

.method public final j()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->s:LH2/a;

    iget-boolean v0, p0, LH2/a;->h:Z

    if-eqz v0, :cond_0

    iget p0, p0, LH2/a;->d:I

    const/16 v0, 0x65

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final l(I)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->s:LH2/a;

    iget-object v6, v0, LH2/a;->a:Ljava/lang/String;

    if-eqz v6, :cond_0

    new-instance v7, LI2/a;

    iget-wide v4, v0, LH2/a;->b:J

    iget v2, v0, LH2/a;->c:I

    move-object v1, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, LI2/a;-><init>(IIJLjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->o:LI2/f;

    invoke-interface {p1, v7}, LI2/f;->a(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {p0}, LO2/a;->b()LS2/b;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "notifyForGeneratingState: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GenerateAllWorker"

    invoke-virtual {p0, v0, p1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final m()Ln0/m;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {v0}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v1, "GenerateAllWorker"

    const-string v2, "requestGenerate"

    invoke-virtual {v0, v1, v2}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LF3/s;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ln0/j;

    invoke-direct {v1}, Ln0/j;-><init>()V

    iput-object v1, v0, LF3/s;->d:Ljava/lang/Object;

    new-instance v1, LF3/r;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->l(I)V

    iget-object v2, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->s:LH2/a;

    iget v3, v2, LH2/a;->d:I

    iget-object v4, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->m:LF2/d;

    invoke-virtual {v4, v3}, LF2/d;->a(I)LF2/c;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, LF2/a;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, LF2/a;-><init>(LH2/a;I)V

    new-instance v2, LM2/b;

    invoke-direct {v2, p0, v0, v1, v5}, LM2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;I)V

    invoke-virtual {v3, v4, v2}, LF2/c;->e(LF2/a;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x190

    iput v2, v1, LF3/r;->d:I

    :goto_0
    iget v1, v1, LF3/r;->d:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->l(I)V

    iget-object p0, v0, LF3/s;->d:Ljava/lang/Object;

    check-cast p0, Ln0/m;

    return-object p0
.end method

.method public final n()Z
    .locals 3

    const-string v0, "service.camera.running"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {p0}, LO2/a;->b()LS2/b;

    move-result-object p0

    const-string v0, "GenerateAllWorker"

    const-string v2, "doWork, device uses camera"

    invoke-virtual {p0, v0, v2}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    return v2
.end method

.method public final o()Z
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    iget-object v0, p0, LO2/a;->d:LQ2/a;

    const/4 v1, 0x0

    const-string v2, "device"

    if-eqz v0, :cond_2

    iget-object v0, v0, LQ2/a;->a:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {v0, v3}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LO2/a;->d:LQ2/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, LQ2/a;->a:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-static {v0, v1}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LO2/a;->b()LS2/b;

    move-result-object p0

    const-string v0, "GenerateAllWorker"

    const-string v1, "doWork, device is interactive and unlocked"

    invoke-virtual {p0, v0, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1
.end method

.method public final p()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->w:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    const-string v1, "getActiveSessions(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {p0}, LO2/a;->b()LS2/b;

    move-result-object p0

    const-string v0, "GenerateAllWorker"

    const-string v1, "doWork, Media is playing"

    invoke-virtual {p0, v0, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final q(F)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->v:Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iget-object p0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {p0}, LO2/a;->d()LU0/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Temperature "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "GenerateAllWorker"

    invoke-virtual {v1, v5, v2, v4}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    invoke-virtual {p0}, LO2/a;->b()LS2/b;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doWork, current temperature ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ") is higher than the threshold("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final r()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->k:LO2/a;

    invoke-virtual {v0}, LO2/a;->d()LU0/e;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "GenerateAllWorker"

    const-string v4, "stopPolicyMonitorForDeviceState"

    invoke-virtual {v0, v3, v4, v2}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->u:LW4/x;

    if-eqz v0, :cond_0

    invoke-static {v0}, LW4/u;->b(LW4/P;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateAllWorker;->r:LM2/h;

    iget-object v0, p0, LM2/h;->a:LO2/a;

    invoke-virtual {v0}, LO2/a;->d()LU0/e;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WorkerTerminator"

    const-string v3, "stop"

    invoke-virtual {v0, v2, v3, v1}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, LM2/h;->c:LA1/h;

    iget-object v0, p0, LM2/h;->b:Landroid/content/ContentResolver;

    iget-object p0, p0, LM2/h;->d:LE1/f;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
