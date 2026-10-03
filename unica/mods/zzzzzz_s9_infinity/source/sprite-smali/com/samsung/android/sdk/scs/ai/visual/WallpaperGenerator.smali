.class public Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScsApi@WallpaperGenerator"


# instance fields
.field private final mCancelServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;

.field private final mMainServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ScsApi@WallpaperGenerator"

    const-string v1, "WallpaperGenerator"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;->mMainServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;->mCancelServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;->lambda$release$0(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method private synthetic lambda$release$0(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;->mMainServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->deInit()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;->mCancelServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->deInit()V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "ScsApi@WallpaperGenerator"

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperCancelRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;->mCancelServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperCancelRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperCancelRunnable;->setTaskId(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;->mCancelServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public generate(Landroid/os/Bundle;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Lcom/samsung/android/sdk/scs/ai/visual/WallpaperResult;",
            ">;"
        }
    .end annotation

    const-string v0, "ScsApi@WallpaperGenerator"

    const-string v1, "generate()"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;->mMainServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->setBundle(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;->mMainServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public prepare()Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "ScsApi@WallpaperGenerator"

    const-string v1, "prepare()"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperPrepareRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;->mMainServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperPrepareRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;->mMainServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public release()Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "ScsApi@WallpaperGenerator"

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperReleaseRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;->mMainServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperReleaseRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;->mMainServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v1

    new-instance v2, LV2/b;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0}, LV2/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method
