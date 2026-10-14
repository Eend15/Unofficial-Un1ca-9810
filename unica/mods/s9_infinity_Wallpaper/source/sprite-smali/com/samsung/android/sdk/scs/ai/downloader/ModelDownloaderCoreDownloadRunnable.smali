.class public Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ModelDownloaderCoreDownloadRunnable"


# instance fields
.field private final mCallback:Lcom/samsung/android/visual/ai/sdkcommon/IDownloadCallback$Stub;

.field private mName:Ljava/lang/String;

.field private final mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;->mName:Ljava/lang/String;

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable$1;-><init>(Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;->mCallback:Lcom/samsung/android/visual/ai/sdkcommon/IDownloadCallback$Stub;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;)Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 6

    const-string v0, "addCallback: "

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;->TAG:Ljava/lang/String;

    const-string v2, "execute"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getTaskId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;->getDownloadService()Lcom/samsung/android/visual/ai/sdkcommon/IDownloadService;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;->mName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;->mCallback:Lcom/samsung/android/visual/ai/sdkcommon/IDownloadCallback$Stub;

    invoke-interface {v3, v4, v2, v5}, Lcom/samsung/android/visual/ai/sdkcommon/IDownloadService;->download(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/visual/ai/sdkcommon/IDownloadCallback;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;->mCallback:Lcom/samsung/android/visual/ai/sdkcommon/IDownloadCallback$Stub;

    invoke-virtual {v3, v2, p0}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;->addCallback(Ljava/lang/String;Lcom/samsung/android/visual/ai/sdkcommon/IDownloadCallback$Stub;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_DOWNLOAD"

    return-object p0
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreDownloadRunnable;->mName:Ljava/lang/String;

    return-void
.end method
