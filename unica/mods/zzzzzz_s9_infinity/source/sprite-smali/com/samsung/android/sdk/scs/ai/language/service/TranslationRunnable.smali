.class public Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable;
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
.field private static final TAG:Ljava/lang/String; = "TranslationRunnable"


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

.field fromLanguage:Ljava/lang/String;

.field inputText:Ljava/lang/String;

.field mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/TranslationServiceExecutor;

.field toLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/service/TranslationServiceExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/TranslationServiceExecutor;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method


# virtual methods
.method public execute()V
    .locals 6

    :try_start_0
    new-instance v5, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable$1;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/TranslationServiceExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationServiceExecutor;->getService()Lcom/samsung/android/sivs/ai/sdkcommon/language/h0;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable;->authHeader:Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable;->inputText:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable;->fromLanguage:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable;->toLanguage:Ljava/lang/String;

    check-cast v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/f0;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sivs/ai/sdkcommon/language/f0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/language/B;)V
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

    const-string p0, "FEATURE_AI_GEN_TRANSLATION"

    return-object p0
.end method

.method public setAppInfo(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/TranslationServiceExecutor;

    iget-object p1, p1, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationServiceExecutor;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->generateHeaderMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable;->authHeader:Ljava/util/Map;

    return-void
.end method

.method public setFromLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable;->fromLanguage:Ljava/lang/String;

    return-void
.end method

.method public setInputText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable;->inputText:Ljava/lang/String;

    return-void
.end method

.method public setToLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable;->toLanguage:Ljava/lang/String;

    return-void
.end method
