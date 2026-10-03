.class public Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorFactory;
.super Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/ai/gateway/ILvmServiceExecutorFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createImageEditor(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor<",
            "+",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation

    new-instance v4, LK/c;

    const/4 v0, 0x3

    invoke-direct {v4, v0}, LK/c;-><init>(I)V

    new-instance v6, LK/c;

    const/4 v0, 0x4

    invoke-direct {v6, v0}, LK/c;-><init>(I)V

    const-string v3, "visual.intent.action.BIND_ON_DEVICE_SERVICE"

    const-string v5, "visual.intent.action.BIND_IMAGE_EDITOR_SERVICE"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorFactory;->createService(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceStubFactory;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceStubFactory;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    move-result-object p0

    return-object p0
.end method

.method public createService(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceStubFactory;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceStubFactory;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceStubFactory<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceStubFactory<",
            "TT;>;)",
            "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorFactory;->getServicePackage(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;)Ljava/lang/String;

    move-result-object v5

    sget-object p2, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;->AI_CORE:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory;->context:Landroid/content/Context;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/sdk/scs/ai/gateway/a;

    invoke-direct {v3, p4}, Lcom/samsung/android/sdk/scs/ai/gateway/a;-><init>(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceStubFactory;)V

    move-object v0, p2

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;Ljava/util/function/Function;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_0
    new-instance p2, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory;->context:Landroid/content/Context;

    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/sdk/scs/ai/gateway/a;

    invoke-direct {v3, p6}, Lcom/samsung/android/sdk/scs/ai/gateway/a;-><init>(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceStubFactory;)V

    move-object v0, p2

    move-object v2, p1

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;Ljava/util/function/Function;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public getServicePackage(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/samsung/android/sdk/scs/ai/gateway/LvmServiceExecutorFactory$1;->$SwitchMap$com$samsung$android$sdk$scs$ai$gateway$AiServiceExecutorFactory$ServiceType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const-string p0, "com.samsung.android.visual.cloudcore"

    goto :goto_0

    :cond_0
    const-string p0, "com.samsung.android.aicore"

    :goto_0
    return-object p0
.end method
