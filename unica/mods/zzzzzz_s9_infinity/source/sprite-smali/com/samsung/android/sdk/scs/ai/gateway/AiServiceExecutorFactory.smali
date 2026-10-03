.class public abstract Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;,
        Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceStubFactory;
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract createService(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceStubFactory;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceStubFactory;)Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/samsung/android/sdk/scs/base/feature/Feature$featureName;
        .end annotation
    .end param
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
.end method

.method public abstract getServicePackage(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;)Ljava/lang/String;
.end method
