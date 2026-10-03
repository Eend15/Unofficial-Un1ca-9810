.class public Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;
.super Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AiServiceExecutor"


# instance fields
.field protected final context:Landroid/content/Context;

.field private final creator:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private service:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final serviceAction:Ljava/lang/String;

.field private final servicePackage:Ljava/lang/String;

.field private final serviceType:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;Ljava/util/function/Function;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;-><init>(Landroid/content/Context;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor$1;-><init>(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;->serviceType:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;->creator:Ljava/util/function/Function;

    iput-object p4, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;->serviceAction:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;->servicePackage:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;)Landroid/os/IInterface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;->service:Landroid/os/IInterface;

    return-object p0
.end method


# virtual methods
.method public getService()Landroid/os/IInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;->service:Landroid/os/IInterface;

    return-object p0
.end method

.method public getServiceIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;->serviceAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;->servicePackage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getServicePackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;->servicePackage:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceType()Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;->serviceType:Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceType;

    return-object p0
.end method

.method public onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "onServiceConnected"

    const-string v0, "AiServiceExecutor"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceFactory;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;->creator:Ljava/util/function/Function;

    invoke-direct {p1, v1}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceFactory;-><init>(Ljava/util/function/Function;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceFactory;->createService(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IInterface;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;->service:Landroid/os/IInterface;

    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RemoteException"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutor;->service:Landroid/os/IInterface;

    return-void
.end method
