.class public Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ModelDownloaderCheckAndDownloadRunnable"


# instance fields
.field private mCheckOnly:Z

.field private mFeature:Ljava/lang/String;

.field private mLaunchStore:Z

.field private final mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    const-string v0, "execute: result="

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;->TAG:Ljava/lang/String;

    const-string v2, "execute"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCoreExecutor;->getDownloadService()Lcom/samsung/android/visual/ai/sdkcommon/IDownloadService;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;->mFeature:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;->mCheckOnly:Z

    iget-boolean v5, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;->mLaunchStore:Z

    invoke-interface {v2, v3, v4, v5}, Lcom/samsung/android/visual/ai/sdkcommon/IDownloadService;->checkAndDownload(Ljava/lang/String;ZZ)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const/16 v0, 0x2328

    if-le v2, v0, :cond_0

    add-int/lit16 v2, v2, -0x2710

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Non-existent interface"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "execute: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_DOWNLOAD"

    return-object p0
.end method

.method public setParameter(Ljava/lang/String;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;->mFeature:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;->mCheckOnly:Z

    iput-boolean p3, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderCheckAndDownloadRunnable;->mLaunchStore:Z

    return-void
.end method
