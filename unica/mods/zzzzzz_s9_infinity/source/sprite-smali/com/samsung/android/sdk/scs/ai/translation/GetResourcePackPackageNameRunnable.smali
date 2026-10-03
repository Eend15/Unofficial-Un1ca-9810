.class Lcom/samsung/android/sdk/scs/ai/translation/GetResourcePackPackageNameRunnable;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "GetResourcePackPackageNameRunnable"

.field private static final TAG:Ljava/lang/String; = "ScsApi@NeuralTranslator"


# instance fields
.field neuralTranslationServiceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

.field private sourceLanguageCode:Ljava/lang/String;

.field private targetLanguageCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/GetResourcePackPackageNameRunnable;->neuralTranslationServiceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/translation/GetResourcePackPackageNameRunnable;->sourceLanguageCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/translation/GetResourcePackPackageNameRunnable;->targetLanguageCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/GetResourcePackPackageNameRunnable;->neuralTranslationServiceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;->getTranslationService()Lcom/samsung/android/sivs/ai/sdkcommon/translation/f;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/GetResourcePackPackageNameRunnable;->sourceLanguageCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/translation/GetResourcePackPackageNameRunnable;->targetLanguageCode:Ljava/lang/String;

    check-cast v0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/d;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetResourcePackPackageNameRunnable -- Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScsApi@NeuralTranslator"

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_NEURAL_TRANSLATION"

    return-object p0
.end method
