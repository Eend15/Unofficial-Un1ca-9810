.class Lcom/samsung/android/sdk/scs/ai/translation/ClearAndRefreshNeuralTranslatorRunnable;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Ljava/util/Map<",
        "Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;",
        "Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "ClearAndRefreshNeuralTranslatorRunnable"

.field private static final TAG:Ljava/lang/String; = "ScsApi@NeuralTranslator"


# instance fields
.field neuralTranslationServiceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/ClearAndRefreshNeuralTranslatorRunnable;->neuralTranslationServiceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/ClearAndRefreshNeuralTranslatorRunnable;->neuralTranslationServiceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;->getTranslationService()Lcom/samsung/android/sivs/ai/sdkcommon/translation/f;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "com.samsung.android.sivs.ai.sdkcommon.translation.INeuralTranslationService"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/d;->b:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    check-cast v0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/d;

    invoke-virtual {v0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/d;->i()V

    invoke-virtual {v0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/d;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionStateMapper;->from(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClearAndRefreshNeuralTranslatorRunnable -- Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScsApi@NeuralTranslator"

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_NEURAL_TRANSLATION"

    return-object p0
.end method
