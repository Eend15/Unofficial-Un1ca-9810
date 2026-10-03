.class public Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorReleaseRunnable;
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
.field private static final TAG:Ljava/lang/String; = "ImageEditorReleaseRunnable"


# instance fields
.field private final mMode:I

.field mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;
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
    .locals 0
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

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorReleaseRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    iput p2, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorReleaseRunnable;->mMode:I

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorReleaseRunnable;->TAG:Ljava/lang/String;

    const-string v1, "execute"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/gateway/imageeditor/ImageEditorGateway;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorReleaseRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/gateway/imageeditor/ImageEditorGateway;-><init>(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorReleaseRunnable;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/gateway/imageeditor/ImageEditorGateway;->release(I)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorReleaseRunnable;->TAG:Ljava/lang/String;

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
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorReleaseRunnable;->getMode()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorReleaseRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;->getServiceType()Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParamUtils;->getFeatureName(ILcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorReleaseRunnable;->mMode:I

    return p0
.end method
