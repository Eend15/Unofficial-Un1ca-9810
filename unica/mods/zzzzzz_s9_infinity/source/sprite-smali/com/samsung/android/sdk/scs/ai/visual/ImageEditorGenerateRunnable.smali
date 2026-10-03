.class public Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageEditorGenerateRunnable"


# instance fields
.field private mAppInfo:Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;

.field private final mMode:I

.field private final mRequestBundle:Landroid/os/Bundle;

.field private final mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor<",
            "+",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor<",
            "+",
            "Landroid/os/IInterface;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->mRequestBundle:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    iput p2, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->mMode:I

    return-void
.end method

.method private integrateSingleOutputToList(Landroid/os/Bundle;)V
    .locals 2

    const-string p0, "outputBitmap"

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const-string v0, "outputBitmapList"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private setResult(Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->TAG:Ljava/lang/String;

    const-string v0, "generate(). retBundle is null!!"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    const/4 p1, 0x5

    const-string v0, "retBundle is null"

    invoke-static {p1, v0, p0}, LB/a;->u(ILjava/lang/String;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorResult;-><init>()V

    const-string v1, "resultCode"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorResult;->setResult(I)V

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "generate(). Abnormal resultCode!!! resultCode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1f4

    if-ne v1, v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance p1, Lcom/samsung/android/sdk/scs/base/ResultException;

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->NOT_SPECIFIED:Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/visual/VisualErrorCode;->getCode()I

    move-result v0

    const-string v1, "errorCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "errorMessage"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/visual/VisualResultErrorException;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualResultErrorException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->integrateSingleOutputToList(Landroid/os/Bundle;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorResult;->setBundle(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->TAG:Ljava/lang/String;

    const-string v1, "generate()"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v0, Lcom/samsung/android/sdk/scs/base/ResultException;

    const/16 v1, 0x2bc

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->mAppInfo:Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParamUtils;->toBundle(Landroid/os/Bundle;Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParamUtils;->transformBitmapsInBundle(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "taskId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/gateway/imageeditor/ImageEditorGateway;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/gateway/imageeditor/ImageEditorGateway;-><init>(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->getMode()I

    move-result v1

    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/gateway/imageeditor/ImageEditorGateway;->generate(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->setResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->mRequestBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->getMode()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;->getServiceType()Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParamUtils;->getFeatureName(ILcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->mMode:I

    return p0
.end method

.method public setAppInfo(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->mAppInfo:Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;

    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->mRequestBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method
