.class public abstract Lcom/samsung/android/sdk/scs/ai/gateway/LlmServiceExecutorContainer;
.super Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorContainer;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/ai/gateway/executor/VoidContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorContainer<",
        "Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
        ">;",
        "Lcom/samsung/android/sdk/scs/ai/gateway/executor/VoidContainer;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorContainer;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getServiceType(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;
    .locals 0

    if-nez p1, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;->SIVS:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/gateway/LlmServiceExecutorContainer$1;->$SwitchMap$com$samsung$android$sdk$scs$ai$language$AppInfo$RequestType:[I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getRequestType()Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    .line 4
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;->SIVS:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    goto :goto_0

    .line 5
    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;->AI_CORE:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getServiceType(Ljava/lang/Object;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;
    .locals 0

    .line 1
    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/gateway/LlmServiceExecutorContainer;->getServiceType(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorContainer;->mServiceExecutorMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorContainer;->releaseExecutors(Ljava/util/Map;)V

    return-void
.end method
