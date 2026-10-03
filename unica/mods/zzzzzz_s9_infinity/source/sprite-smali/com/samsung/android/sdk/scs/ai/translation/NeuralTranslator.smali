.class public Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "NeuralTranslator"

.field private static final TAG:Ljava/lang/String; = "ScsApi@NeuralTranslator"


# instance fields
.field context:Landroid/content/Context;

.field languageDirectionStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;",
            "Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;",
            ">;"
        }
    .end annotation
.end field

.field llmTranslator:Lcom/samsung/android/sdk/scs/ai/language/Translator;

.field neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->languageDirectionStateMap:Ljava/util/Map;

    .line 4
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;-><init>(Landroid/content/Context;Z)V

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->from(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->context:Landroid/content/Context;

    .line 6
    new-instance p2, Lcom/samsung/android/sdk/scs/ai/language/Translator;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/scs/ai/language/Translator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->llmTranslator:Lcom/samsung/android/sdk/scs/ai/language/Translator;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->lambda$getAvailableLanguageDirectionStringList$10(Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/os/Handler;Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->lambda$translate$2(Landroid/os/Handler;Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->lambda$getTargetLanguageList$8(Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;)Z

    move-result p0

    return p0
.end method

.method private copyAppInfoWithOnDeviceType(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo;
    .locals 2

    new-instance p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;-><init>()V

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getSigningKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setSigningKey(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v0

    :goto_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setAccessToken(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v0

    :goto_4
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setUserId(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setServerUrl(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getAccountType()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setAccountType(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->ONDEVICE:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setRequestType(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->isStreamingMode()Z

    move-result p1

    goto :goto_6

    :cond_7
    const/4 p1, 0x0

    :goto_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setStreamingMode(Z)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->build()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->lambda$refresh$5(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method public static synthetic e(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->lambda$getSourceLanguageList$6(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->lambda$getAvailableLanguageDirectionStringList$9(Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->lambda$clear$3(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method private getAvailableLanguageDirectionStringList(Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->languageDirectionStateMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sdk/scs/ai/translation/i;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/language/service/a;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/scs/ai/language/service/a;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/language/service/a;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/scs/ai/language/service/a;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic h(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->lambda$clear$4(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method public static synthetic i(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->lambda$getTargetLanguageList$7(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method private isLLMTranslationSupported(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Lcom/samsung/android/sdk/scs/ai/language/Configuration;)Z
    .locals 8

    const-string p0, "NeuralTranslator -- isLLMTranslationSupported() executed "

    const-string v0, "ScsApi@NeuralTranslator"

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->getOndeviceCapability()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->getFromLanguage()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->getToLanguage()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v3, v1

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "language"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "supportFunction"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Translation-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v6, v1

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Looks like Configuration is empty"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :goto_3
    const-string p1, "Failed to parse Configuration"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_4
    return v1
.end method

.method public static synthetic j(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->lambda$translate$1(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method public static synthetic k(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->lambda$translate$0(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method private synthetic lambda$clear$3(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 2

    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- clear() - Available LanguageDirection list [(source, target)]: "

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->languageDirectionStateMap:Ljava/util/Map;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->AVAILABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getAvailableLanguageDirectionStringList(Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "NeuralTranslator -- Exception: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$clear$4(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 2

    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- clear() - Available LanguageDirection list [(source, target)]: "

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->languageDirectionStateMap:Ljava/util/Map;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->AVAILABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getAvailableLanguageDirectionStringList(Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "NeuralTranslator -- Exception: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$getAvailableLanguageDirectionStringList$10(Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->getSourceLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->getTargetLanguage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAvailableLanguageDirectionStringList$9(Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getSourceLanguageList$6(Ljava/util/Map$Entry;)Z
    .locals 2

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->AVAILABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    if-eq v0, v1, :cond_1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->AVAILABLE_BY_PIVOT:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$getTargetLanguageList$7(Ljava/util/Map$Entry;)Z
    .locals 2

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->AVAILABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    if-eq v0, v1, :cond_1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->AVAILABLE_BY_PIVOT:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$getTargetLanguageList$8(Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->getSourceLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$refresh$5(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 4

    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- refresh() - Available downloadable LanguageDirection list [(source, target)]: "

    const-string v2, "NeuralTranslator -- refresh() - Available by pivot LanguageDirection list [(source, target)]: "

    const-string v3, "NeuralTranslator -- refresh() - Available LanguageDirection list [(source, target)]: "

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->languageDirectionStateMap:Ljava/util/Map;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->AVAILABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getAvailableLanguageDirectionStringList(Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->AVAILABLE_BY_PIVOT:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getAvailableLanguageDirectionStringList(Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->DOWNLOADABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getAvailableLanguageDirectionStringList(Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "NeuralTranslator -- Exception: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$translate$0(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->getOnSuccess()Ljava/util/function/Consumer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/Result;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->deregistercallback()V

    return-void
.end method

.method private static synthetic lambda$translate$1(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->getOnFailure()Ljava/util/function/Consumer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->deregistercallback()V

    return-void
.end method

.method private static synthetic lambda$translate$2(Landroid/os/Handler;Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "ScsApi@NeuralTranslator"

    if-eqz v0, :cond_0

    const-string v0, "NeuralTranslator -- llm translation success"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, v1}, Lcom/samsung/android/sdk/scs/ai/translation/j;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Lcom/samsung/android/sdk/scs/base/tasks/Task;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;->deRegisterCallback()V

    goto :goto_0

    :cond_0
    const-string v0, "NeuralTranslator -- llm translation failed with Exception"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/j;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p3, v1}, Lcom/samsung/android/sdk/scs/ai/translation/j;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Lcom/samsung/android/sdk/scs/base/tasks/Task;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;->deRegisterCallback()V

    :goto_0
    return-void
.end method


# virtual methods
.method public clear()Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;",
            "Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;",
            ">;>;"
        }
    .end annotation

    .line 1
    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- clear() executed"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeClearAndRefresh()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/samsung/android/sdk/scs/ai/translation/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/sdk/scs/ai/translation/f;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-object v0
.end method

.method public clear(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;",
            "Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;",
            ">;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NeuralTranslator -- clear() executed - SourceId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@NeuralTranslator"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->context:Landroid/content/Context;

    const-string v1, "FEATURE_NEURAL_TRANSLATION_CLEAR_WITH_SOURCE_ID"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeClearWithSourceId(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeClearAndRefresh()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p1

    .line 9
    :goto_0
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/f;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/f;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;I)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-object p1
.end method

.method public close()V
    .locals 2

    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- close() executed"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->deInit()V

    :cond_0
    return-void
.end method

.method public getLanguageDirectionStateMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;",
            "Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;",
            ">;"
        }
    .end annotation

    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- getLanguageDirectionStateMap() executed"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->languageDirectionStateMap:Ljava/util/Map;

    return-object p0
.end method

.method public getResourcePackPackageName(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- getResourcePackPackageName() executed"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeGetResourcePackPackageName(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public getSourceLanguageList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- getSourceLanguageList() executed"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->languageDirectionStateMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/h;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/language/service/a;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/language/service/a;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getTargetLanguageList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- getTargetLanguageList() executed"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->languageDirectionStateMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/h;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/language/service/a;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sdk/scs/ai/translation/i;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/language/service/a;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/scs/ai/language/service/a;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public identifyLanguage(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- identifyLanguage() executed - default"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string v0, "en"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->identifyLanguage(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public identifyLanguage(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NeuralTranslator -- identifyLanguage() executed - fallbackLanguage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@NeuralTranslator"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeLanguageIdentification(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public identifyLanguageAndGetCandidate(Ljava/lang/String;Ljava/lang/Integer;ZZ)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "ZZ)",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/translation/DetectionCandidate;",
            ">;>;"
        }
    .end annotation

    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- identifyLanguageAndGetCandidate() executed"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeLanguageIdentificationAndGetCandidate(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public identifyLanguagePackCode(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- identifyLanguagePackCode() executed - default"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string v0, "en"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->identifyLanguagePackCode(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public identifyLanguagePackCode(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NeuralTranslator -- identifyLanguagePackCode() executed - fallbackLanguage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@NeuralTranslator"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeLanguagePackCodeIdentification(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public identifyLanguageWithList(Ljava/util/ArrayList;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- identifyLanguageWithList() executed - default"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string v0, "en"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->identifyLanguageWithList(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public identifyLanguageWithList(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NeuralTranslator -- identifyLanguageWithList() executed - fallbackLanguage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@NeuralTranslator"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeLanguageIdentificationWithList(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public isAvailableDirection(Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;)Z
    .locals 2

    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- isAvailableDirection() executed"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->languageDirectionStateMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    sget-object p1, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->AVAILABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->AVAILABLE_BY_PIVOT:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isTaggedTranslationSupported(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- isTaggedTranslationSupported() executed"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeIsTaggedTranslationSupported(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public refresh()Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;",
            "Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;",
            ">;>;"
        }
    .end annotation

    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- refresh() executed"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeRefresh()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/translation/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/sdk/scs/ai/translation/f;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-object v0
.end method

.method public translate(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
            "Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 17
    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- translate() executed"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeTranslationRunnable(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public translate(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- translate() executed (without app info)"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->translate(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public translate(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;)V
    .locals 3

    .line 3
    const-string v0, "ScsApi@NeuralTranslator"

    const-string v1, "NeuralTranslator -- translate() executed (with LLM request)"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/samsung/android/sdk/scs/ai/language/Configuration;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/Configuration;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p3, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->isLLMTranslationSupported(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Lcom/samsung/android/sdk/scs/ai/language/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    const-string v1, "NeuralTranslator -- llm translation supported, run llm translation"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->copyAppInfoWithOnDeviceType(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->llmTranslator:Lcom/samsung/android/sdk/scs/ai/language/Translator;

    .line 8
    invoke-virtual {p3}, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->getInputTextList()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-virtual {p3}, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->getFromLanguage()Ljava/util/Locale;

    move-result-object v1

    .line 10
    invoke-virtual {p3}, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->getToLanguage()Ljava/util/Locale;

    move-result-object v2

    .line 11
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/Translator;->translate(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/util/List;Ljava/util/Locale;Ljava/util/Locale;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    .line 12
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/g;

    invoke-direct {v0, p1, p3, p2}, Lcom/samsung/android/sdk/scs/ai/translation/g;-><init>(Landroid/os/Handler;Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    goto :goto_0

    .line 14
    :cond_0
    const-string v1, "NeuralTranslator -- llm translation not supported, run neuralTranslation"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p3}, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->deregistercallback()V

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->translate(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    :goto_0
    return-void
.end method

.method public translateByChunk(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
            "Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "NeuralTranslator -- translateByChunk() executed"

    const-string v1, "ScsApi@NeuralTranslator"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->context:Landroid/content/Context;

    const-string v2, "FEATURE_NEURAL_TRANSLATION_BY_CHUNK"

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeTranslationByChunkRunnable(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    const-string v0, "NeuralTranslator -- translate chunk not supported with service app"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeTranslationRunnable(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public translateByChunk(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;I)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
            "Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;",
            "I)",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NeuralTranslator -- translateByChunk() executed - chunkBaseLen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@NeuralTranslator"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->context:Landroid/content/Context;

    const-string v2, "FEATURE_NEURAL_TRANSLATION_BY_CHUNK"

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    invoke-virtual {p0, p2, p1, p3}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeTranslationByChunkRunnable(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;I)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    const-string p3, "NeuralTranslator -- translate chunk not supported with service app"

    invoke-static {v1, p3}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->neuralTranslationRunnableExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeTranslationRunnable(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method
