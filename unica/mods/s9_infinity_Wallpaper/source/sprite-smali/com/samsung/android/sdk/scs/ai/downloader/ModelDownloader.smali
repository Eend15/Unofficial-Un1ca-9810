.class public Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader$CheckResult;,
        Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader$ModelFeature;
    }
.end annotation


# static fields
.field public static final CHECK_RESULT_AVAILABLE:I = 0x0

.field public static final CHECK_RESULT_NEED_DOWNLOAD:I = 0x1

.field public static final CHECK_RESULT_NETWORK_UNAVAILABLE:I = -0x3

.field public static final CHECK_RESULT_NOT_SUPPORTED:I = -0x1

.field public static final CHECK_RESULT_SERVER_ERROR:I = -0x5

.field public static final CHECK_RESULT_STORE_NOT_FOUND:I = -0x4

.field public static final CHECK_RESULT_TIMEOUT:I = -0x6

.field public static final CHECK_RESULT_UNKNOWN_FEATURE:I = -0x2

.field public static final MODEL_FEATURE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final MODEL_FEATURE_VISIONLVM:Ljava/lang/String; = "visionlvm"

.field private static final TAG:Ljava/lang/String; = "ScsApi@ModelDownloader"


# instance fields
.field private final mCoreServicedExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;

.field private final mExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialExecutor;

.field private final mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ScsApi@ModelDownloader"

    const-string v1, "ModelDownloader"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderExecutor;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderExecutor;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mCoreServicedExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialExecutor;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialExecutor;

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

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cancel("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@ModelDownloader"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCancelRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mCoreServicedExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCancelRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCancelRunnable;->setParameters(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mCoreServicedExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public check(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "check("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@ModelDownloader"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mCoreServicedExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;->setParameter(Ljava/lang/String;ZZ)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "core task: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckRunnable;

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderExecutor;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderExecutor;)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckRunnable;->setParameters(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "cloud task: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialRunnable;

    invoke-direct {p1}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialRunnable;-><init>()V

    const/4 v1, -0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialRunnable;->setDefaultResult(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mCoreServicedExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialRunnable;->addTask(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderExecutor;

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialRunnable;->addTask(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public checkStore(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "check("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@ModelDownloader"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mCoreServicedExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;->setParameter(Ljava/lang/String;ZZ)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "core task: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckStoreRunnable;

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderExecutor;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckStoreRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderExecutor;)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckStoreRunnable;->setParameters(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "cloud task: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialRunnable;

    invoke-direct {p1}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialRunnable;-><init>()V

    const/4 v1, -0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialRunnable;->setDefaultResult(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mCoreServicedExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialRunnable;->addTask(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderExecutor;

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialRunnable;->addTask(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public download(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@ModelDownloader"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mCoreServicedExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v3}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;->setParameter(Ljava/lang/String;ZZ)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "core task: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderDownloadRunnable;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderExecutor;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderDownloadRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderExecutor;)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderDownloadRunnable;->setParameters(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialRunnable;

    invoke-direct {p1}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialRunnable;-><init>()V

    const/4 v2, -0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialRunnable;->setDefaultResult(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mCoreServicedExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialRunnable;->addTask(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderExecutor;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialRunnable;->addTask(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public downloadCore(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
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

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@ModelDownloader"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mCoreServicedExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;->setParameters(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;->mCoreServicedExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method
