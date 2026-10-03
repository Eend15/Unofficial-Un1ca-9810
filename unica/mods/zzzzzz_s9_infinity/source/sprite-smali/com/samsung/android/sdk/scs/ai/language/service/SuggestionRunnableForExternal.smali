.class public Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionRunnableForExternal;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Lcom/samsung/android/sdk/scs/ai/language/Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SuggestionRunnableForExternal"


# instance fields
.field authHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final extraPrompt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field inputText:Ljava/lang/String;

.field mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionServiceExecutorForExternal;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionServiceExecutorForExternal;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionServiceExecutorForExternal;",
            "Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>(Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionRunnableForExternal;->extraPrompt:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionRunnableForExternal;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionServiceExecutorForExternal;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionRunnableForExternal;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionRunnableForExternal;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionRunnableForExternal;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method


# virtual methods
.method public execute()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionRunnableForExternal$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionRunnableForExternal$1;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionRunnableForExternal;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionRunnableForExternal;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionServiceExecutorForExternal;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionServiceExecutorForExternal;->getService()Lcom/samsung/android/sivs/ai/sdkcommon/language/Y;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionRunnableForExternal;->authHeader:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionRunnableForExternal;->inputText:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionRunnableForExternal;->extraPrompt:Ljava/util/Map;

    check-cast v1, Lcom/samsung/android/sivs/ai/sdkcommon/language/W;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/android/sivs/ai/sdkcommon/language/W;->a(Ljava/util/Map;Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/language/A;Ljava/util/Map;)V
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

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_AI_GEN_SUGGESTION"

    return-object p0
.end method

.method public setAppInfo(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionRunnableForExternal;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionServiceExecutorForExternal;

    iget-object p1, p1, Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionServiceExecutorForExternal;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->generateHeaderMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionRunnableForExternal;->authHeader:Ljava/util/Map;

    return-void
.end method

.method public setExtraPrompt(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionRunnableForExternal;->extraPrompt:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setInputText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/SuggestionRunnableForExternal;->inputText:Ljava/lang/String;

    return-void
.end method
