.class public Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientIsC2paExistRunnable;
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
.field private static final TAG:Ljava/lang/String; = "C2paClientIsC2paExistRunnable"


# instance fields
.field mFilePath:Ljava/lang/String;

.field private final mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paServiceExecutor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paServiceExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientIsC2paExistRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paServiceExecutor;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientIsC2paExistRunnable;->TAG:Ljava/lang/String;

    const-string v1, "execute isC2paExist()"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientIsC2paExistRunnable;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientIsC2paExistRunnable;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paUtils;->getParcelFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$C2paExistParamBuilder;

    invoke-direct {v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$C2paExistParamBuilder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$C2paExistParamBuilder;->setPfd(Landroid/os/ParcelFileDescriptor;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$C2paExistParamBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$C2paExistParamBuilder;->setExtensionType(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$C2paExistParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientIsC2paExistRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paServiceExecutor;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paServiceExecutor;->getC2PAService()Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa;->isC2paInfoExistWithPfd(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Target PFD/Extension is NULL"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_3
    return-void
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_C2PA"

    return-object p0
.end method

.method public setParentPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientIsC2paExistRunnable;->mFilePath:Ljava/lang/String;

    return-void
.end method
