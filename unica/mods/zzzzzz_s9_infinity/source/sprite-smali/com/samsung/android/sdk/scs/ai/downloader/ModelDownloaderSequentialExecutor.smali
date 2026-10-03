.class public Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ModelDownloaderSequentialExecutor"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialExecutor;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 2

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    instance-of p1, p2, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getFeatureName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/base/feature/FeatureStatusCache;->getStatus(Ljava/lang/String;)I

    move-result p2

    const/16 v0, -0x3e8

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialExecutor;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    sget-object p2, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialExecutor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "beforeExecute: check feature: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " status: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->finalize()V

    sget-object p0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloaderSequentialExecutor;->TAG:Ljava/lang/String;

    const-string v0, "finalize"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
