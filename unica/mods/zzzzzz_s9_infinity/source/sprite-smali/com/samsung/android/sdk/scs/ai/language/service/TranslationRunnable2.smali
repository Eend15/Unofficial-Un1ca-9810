.class public Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Ljava/util/List<",
        "Lcom/samsung/android/sdk/scs/ai/language/Result;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranslationRunnable2"


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

.field fromLanguage:Ljava/lang/String;

.field inputTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/TranslationServiceExecutor;

.field toLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/service/TranslationServiceExecutor;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/language/service/TranslationServiceExecutor;",
            "Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource<",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>(Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;->extraPrompt:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/TranslationServiceExecutor;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method


# virtual methods
.method public execute()V
    .locals 7

    :try_start_0
    new-instance v5, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2$1;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/TranslationServiceExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationServiceExecutor;->getService()Lcom/samsung/android/sivs/ai/sdkcommon/language/h0;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;->authHeader:Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;->inputTextList:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;->fromLanguage:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;->toLanguage:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;->extraPrompt:Ljava/util/Map;

    check-cast v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/f0;

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sivs/ai/sdkcommon/language/f0;->b(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/language/A;Ljava/util/Map;)V
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
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;->authHeader:Ljava/util/Map;

    const-string v0, "request-type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->ONDEVICE:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "FEATURE_AI_GEN_TRANSLATION_ONDEVICE"

    return-object p0

    :cond_0
    const-string p0, "FEATURE_AI_GEN_TRANSLATION"

    return-object p0
.end method

.method public setAppInfo(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/TranslationServiceExecutor;

    iget-object p1, p1, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationServiceExecutor;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->generateHeaderMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;->authHeader:Ljava/util/Map;

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

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;->extraPrompt:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setFromLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;->fromLanguage:Ljava/lang/String;

    return-void
.end method

.method public setInputText(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;->inputTextList:Ljava/util/List;

    return-void
.end method

.method public setToLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/TranslationRunnable2;->toLanguage:Ljava/lang/String;

    return-void
.end method
