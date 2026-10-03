.class public Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WritingComposer"


# instance fields
.field private final mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WritingComposer"

    invoke-static {v0, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;->lambda$release$0(Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;->lambda$release$1(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method private lambda$release$0(Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V
    .locals 4

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;->getService()Lcom/samsung/android/sivs/ai/sdkcommon/language/n0;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/l0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "com.samsung.android.sivs.ai.sdkcommon.language.IWritingComposerService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/l0;->b:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;->onNext(Ljava/util/List;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private synthetic lambda$release$1(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "connected: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->isConnected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WritingComposer"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->deInit()V

    return-void
.end method


# virtual methods
.method public compose(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
            "Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;->compose(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;Ljava/util/Map;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public compose(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;Ljava/util/Map;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
            "Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->isStreamingMode()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/sdk/scs/base/tasks/TaskStreamingCompletionSource;

    invoke-direct {v2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskStreamingCompletionSource;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-direct {v2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;-><init>()V

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "created: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WritingComposer"

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->setAppInfo(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V

    .line 6
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->setInputParams(Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;)V

    .line 7
    invoke-virtual {v0, p3}, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->setExtraPrompt(Ljava/util/Map;)V

    .line 8
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "executed: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "release: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WritingComposer"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;->context:Landroid/content/Context;

    const-string v1, "FEATURE_SIVS_WRITING_COMPOSER_ONDEVICE"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;

    new-instance v1, LA1/h;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p0}, LA1/h;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/language/service/a;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/scs/ai/language/service/a;-><init>(I)V

    const-string v3, "FEATURE_SIVS_WRITING_COMPOSER"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;-><init>(Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Function;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v0

    new-instance v1, LV2/b;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p0}, LV2/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->deInit()V

    :goto_0
    return-void
.end method
