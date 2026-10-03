.class public final Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000fB5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;",
        "Landroidx/work/Worker;",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "LO2/a;",
        "utils",
        "LF2/g;",
        "useCaseFactory",
        "LI2/f;",
        "LI2/a;",
        "notifier",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;LO2/a;LF2/g;LI2/f;)V",
        "M2/e",
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
.field public final i:Landroidx/work/WorkerParameters;

.field public final j:LO2/a;

.field public final k:LF2/g;

.field public final l:LI2/f;

.field public final m:LH2/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;LO2/a;LF2/g;LI2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/WorkerParameters;",
            "LO2/a;",
            "LF2/g;",
            "LI2/f;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utils"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "useCaseFactory"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifier"

    invoke-static {p5, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p2, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->i:Landroidx/work/WorkerParameters;

    iput-object p3, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->j:LO2/a;

    iput-object p4, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->k:LF2/g;

    iput-object p5, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->l:LI2/f;

    iget-object p1, p2, Landroidx/work/WorkerParameters;->b:Ln0/g;

    const-string p2, "getInputData(...)"

    invoke-static {p1, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lw0/f;->t(Ln0/g;)LH2/a;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->m:LH2/a;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->j:LO2/a;

    invoke-virtual {v0}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v1, "GenerateSingleWorker"

    const-string v2, "onStopped"

    invoke-virtual {v0, v1, v2}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->m:LH2/a;

    iget v1, v0, LH2/a;->d:I

    iget-object p0, p0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->k:LF2/g;

    invoke-virtual {p0, v1}, LF2/g;->a(I)LF2/f;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-wide v0, v0, LH2/a;->b:J

    const/16 v2, 0xfe

    and-int/lit8 v3, v2, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    and-int/lit8 v5, v2, 0x20

    const-string v6, "none"

    if-eqz v5, :cond_1

    move-object v5, v6

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_2

    move-object v4, v6

    :cond_2
    const-string v2, "path"

    invoke-static {v3, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "weather"

    invoke-static {v5, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "time"

    invoke-static {v4, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LF2/f;->c:LE2/b;

    iget-object p0, p0, LE2/b;->a:LX2/a;

    invoke-interface {p0, v0, v1}, LX2/a;->cancel(J)V

    :cond_3
    return-void
.end method

.method public final f()Ln0/m;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->j:LO2/a;

    invoke-virtual {v1}, LO2/a;->b()LS2/b;

    move-result-object v1

    const-string v2, "GenerateSingleWorker"

    const-string v3, "doWork started"

    invoke-virtual {v1, v2, v3}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, LF3/s;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ln0/j;

    invoke-direct {v3}, Ln0/j;-><init>()V

    iput-object v3, v1, LF3/s;->d:Ljava/lang/Object;

    iget-object v3, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->j:LO2/a;

    invoke-virtual {v3}, LO2/a;->b()LS2/b;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->i:Landroidx/work/WorkerParameters;

    iget-object v4, v4, Landroidx/work/WorkerParameters;->b:Ln0/g;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "doWork, inputData ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->m:LH2/a;

    iget-object v5, v3, LH2/a;->l:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, v3, LH2/a;->n:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, v3, LH2/a;->o:Ljava/lang/String;

    if-nez v5, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->l:LI2/f;

    new-instance v11, LI2/a;

    iget-object v10, v3, LH2/a;->a:Ljava/lang/String;

    invoke-static {v10}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->m:LH2/a;

    iget-wide v8, v3, LH2/a;->b:J

    iget v6, v3, LH2/a;->c:I

    const/16 v7, 0xa

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, LI2/a;-><init>(IIJLjava/lang/String;)V

    invoke-interface {v2, v11}, LI2/f;->a(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->k:LF2/g;

    iget-object v3, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->m:LH2/a;

    iget v3, v3, LH2/a;->d:I

    invoke-virtual {v2, v3}, LF2/g;->a(I)LF2/f;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v3, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->m:LH2/a;

    const-string v5, "generateData"

    invoke-static {v3, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, LE2/a;

    const/4 v6, 0x3

    invoke-direct {v5, v0, v6, v1}, LE2/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const-string v6, "generate, failed to save: "

    const-string v7, "generate, saved: "

    iget-object v8, v2, LF2/f;->a:LO2/a;

    invoke-virtual {v8}, LO2/a;->d()LU0/e;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "generate start, "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Object;

    const-string v13, "GenerateImageUseCase"

    invoke-virtual {v9, v13, v10, v12}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, v0, Ln0/n;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, LO2/a;->d()LU0/e;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "generate, cancelled (id: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v0, v13, v2, v3}, LU0/e;->y(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/io/File;

    iget v15, v3, LH2/a;->c:I

    iget-object v4, v3, LH2/a;->n:Ljava/lang/String;

    invoke-static {v4}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v9, v3, LH2/a;->o:Ljava/lang/String;

    invoke-static {v9}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v14, v2, LF2/f;->b:LC2/b;

    iget-wide v11, v3, LH2/a;->b:J

    move-object/from16 v16, v4

    move-object/from16 v17, v9

    move-wide/from16 v18, v11

    invoke-virtual/range {v14 .. v19}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/16 v4, 0x64

    if-eqz v0, :cond_2

    invoke-virtual {v8}, LO2/a;->d()LU0/e;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "generate, already generated"

    invoke-virtual {v0, v13, v7, v6}, LU0/e;->y(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, LF2/e;

    iget v7, v3, LH2/a;->c:I

    iget-wide v10, v3, LH2/a;->b:J

    iget-object v8, v3, LH2/a;->n:Ljava/lang/String;

    invoke-static {v8}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v9, v3, LH2/a;->o:Ljava/lang/String;

    invoke-static {v9}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v6, v2, LF2/f;->b:LC2/b;

    invoke-virtual/range {v6 .. v11}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2}, LF2/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v0}, LE2/a;->accept(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v8}, LO2/a;->d()LU0/e;

    move-result-object v0

    iget-object v9, v3, LH2/a;->n:Ljava/lang/String;

    iget-object v11, v3, LH2/a;->o:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "generate, "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v13, v9, v11}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v9, v2, LF2/f;->c:LE2/b;

    iget-object v0, v9, LE2/b;->a:LX2/a;

    invoke-interface {v0}, LX2/a;->initialize()Z

    move-result v0

    const/4 v11, 0x0

    const/16 v12, 0x190

    if-nez v0, :cond_3

    new-instance v0, LF2/e;

    invoke-direct {v0, v12, v11}, LF2/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v0}, LE2/a;->accept(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v14, 0x1

    invoke-direct {v0, v14}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    new-instance v14, LE2/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    iget-object v15, v3, LH2/a;->l:Ljava/lang/String;

    invoke-static {v15}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v4, v3, LH2/a;->m:Ljava/lang/String;

    iget-object v10, v3, LH2/a;->o:Ljava/lang/String;

    invoke-static {v10}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v11, v3, LH2/a;->n:Ljava/lang/String;

    invoke-static {v11}, LF3/k;->c(Ljava/lang/Object;)V

    const/16 v22, 0x0

    const/16 v23, 0x86

    move-object/from16 v18, v15

    move-object v15, v14

    move-object/from16 v19, v4

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    invoke-direct/range {v15 .. v23}, LE2/c;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    new-instance v4, LE2/a;

    const/4 v10, 0x2

    invoke-direct {v4, v2, v10, v0}, LE2/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v9, v14, v4}, LE2/b;->a(LE2/c;Ljava/util/function/Consumer;)V

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x5

    invoke-virtual {v0, v10, v11, v4}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE2/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_5

    :try_start_1
    iget-object v0, v0, LE2/d;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_5

    iget-object v14, v2, LF2/f;->b:LC2/b;

    iget v15, v3, LH2/a;->c:I

    iget-wide v10, v3, LH2/a;->b:J

    iget-object v2, v3, LH2/a;->n:Ljava/lang/String;

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v3, v3, LH2/a;->o:Ljava/lang/String;

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-wide/from16 v18, v10

    invoke-virtual/range {v14 .. v19}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, LO2/a;->c()LG4/d;

    invoke-static {v0, v2}, LG4/d;->p(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v8}, LO2/a;->d()LU0/e;

    move-result-object v0

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v13, v3, v6}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v11, v2

    const/16 v4, 0x64

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, LO2/a;->d()LU0/e;

    move-result-object v0

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v13, v2, v4}, LU0/e;->y(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v12

    const/4 v11, 0x0

    :goto_0
    move v12, v4

    goto :goto_3

    :cond_5
    invoke-virtual {v8}, LO2/a;->d()LU0/e;

    move-result-object v0

    const-string v2, "generate, result is null"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v13, v2, v4}, LU0/e;->y(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/4 v11, 0x0

    goto :goto_3

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v12, 0x1f4

    goto :goto_1

    :goto_3
    new-instance v0, LF2/e;

    invoke-direct {v0, v12, v11}, LF2/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v0}, LE2/a;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    iget-object v0, v9, LE2/b;->a:LX2/a;

    invoke-interface {v0}, LX2/a;->release()V

    invoke-virtual {v8}, LO2/a;->d()LU0/e;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "generate finished"

    invoke-virtual {v0, v13, v3, v2}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    new-instance v0, Ln0/j;

    invoke-direct {v0}, Ln0/j;-><init>()V

    iput-object v0, v1, LF3/s;->d:Ljava/lang/Object;

    :goto_5
    iget-object v0, v1, LF3/s;->d:Ljava/lang/Object;

    check-cast v0, Ln0/m;

    return-object v0

    :cond_7
    :goto_6
    iget-object v1, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->j:LO2/a;

    invoke-virtual {v1}, LO2/a;->b()LS2/b;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/wallpaper/magician/core/weather/schedule/worker/GenerateSingleWorker;->m:LH2/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "parameter is unavailable, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ln0/j;

    invoke-direct {v0}, Ln0/j;-><init>()V

    return-object v0
.end method
