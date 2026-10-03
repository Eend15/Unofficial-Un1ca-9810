.class public Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;
.super Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorContainer;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScsApi@ImageEditorGenerator"


# instance fields
.field private final mMode:I

.field private final mServiceType:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/scs/ai/visual/RequestType;->CLOUD:Lcom/samsung/android/sdk/scs/ai/visual/RequestType;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;-><init>(Landroid/content/Context;ILcom/samsung/android/sdk/scs/ai/visual/RequestType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/sdk/scs/ai/visual/RequestType;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorContainer;-><init>(Landroid/content/Context;)V

    .line 3
    const-string p1, "ScsApi@ImageEditorGenerator"

    const-string v0, "ImageEditorGenerator"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput p2, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->mMode:I

    .line 5
    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorContainer;->getServiceType(Lcom/samsung/android/sdk/scs/ai/visual/RequestType;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->mServiceType:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->lambda$release$0(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method private synthetic lambda$release$0(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorContainer;->release()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 3
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

    const-string v0, "ScsApi@ImageEditorGenerator"

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorCancelRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->mServiceType:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorContainer;->getCancelServiceExecutor(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->mMode:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorCancelRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorCancelRunnable;->setTaskId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->mServiceType:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorContainer;->getCancelServiceExecutor(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public createCancelServiceExecutor(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;",
            ")",
            "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor<",
            "+",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorFactory;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorFactory;-><init>(Landroid/content/Context;)V

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->mMode:I

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParamUtils;->getFeatureName(ILcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorFactory;->createImageEditor(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    move-result-object p0

    return-object p0
.end method

.method public createServiceExecutor(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;",
            ")",
            "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor<",
            "+",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorFactory;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorFactory;-><init>(Landroid/content/Context;)V

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->mMode:I

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParamUtils;->getFeatureName(ILcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorFactory;->createImageEditor(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    move-result-object p0

    return-object p0
.end method

.method public generate(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;Landroid/os/Bundle;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorResult;",
            ">;"
        }
    .end annotation

    const-string v0, "ScsApi@ImageEditorGenerator"

    const-string v1, "generate())"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->mServiceType:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorContainer;->getServiceExecutor(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->mMode:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->setAppInfo(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerateRunnable;->setBundle(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->mServiceType:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorContainer;->getServiceExecutor(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public prepare()Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "ScsApi@ImageEditorGenerator"

    const-string v1, "prepare()"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorPrepareRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->mServiceType:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorContainer;->getServiceExecutor(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->mMode:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorPrepareRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->mServiceType:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorContainer;->getServiceExecutor(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    move-result-object p0

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

    const-string v0, "ScsApi@ImageEditorGenerator"

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorReleaseRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->mServiceType:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorContainer;->getServiceExecutor(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->mMode:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorReleaseRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->mServiceType:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorContainer;->getServiceExecutor(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v1

    new-instance v2, LV2/b;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, LV2/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method
