.class public final Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;
.super Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J#\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\r\u001a\u00020\n2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0005R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0019R\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;",
        "Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/content/ComponentName;",
        "name",
        "Landroid/os/IBinder;",
        "service",
        "Lq3/m;",
        "onConnected",
        "(Landroid/content/ComponentName;Landroid/os/IBinder;)V",
        "onDisconnected",
        "(Landroid/content/ComponentName;)V",
        "Landroid/content/Intent;",
        "getServiceIntent",
        "()Landroid/content/Intent;",
        "Lcom/samsung/android/sivs/ai/sdkcommon/language/k0;",
        "getService",
        "()Lcom/samsung/android/sivs/ai/sdkcommon/language/k0;",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "Lcom/samsung/android/sivs/ai/sdkcommon/language/k0;",
        "Landroid/os/IBinder$DeathRecipient;",
        "deathRecipient",
        "Landroid/os/IBinder$DeathRecipient;",
        "Companion",
        "scs-ai-4.0.32_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor$Companion;

.field public static final TAG:Ljava/lang/String; = "UsageExecutor"


# instance fields
.field private context:Landroid/content/Context;

.field private final deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private service:Lcom/samsung/android/sivs/ai/sdkcommon/language/k0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor$Companion;-><init>(LF3/f;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;->Companion:Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x3c

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;-><init>(Landroid/content/Context;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;->context:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor$deathRecipient$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor$deathRecipient$1;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public static final synthetic access$getService$p(Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;)Lcom/samsung/android/sivs/ai/sdkcommon/language/k0;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;->service:Lcom/samsung/android/sivs/ai/sdkcommon/language/k0;

    return-object p0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getService()Lcom/samsung/android/sivs/ai/sdkcommon/language/k0;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;->service:Lcom/samsung/android/sivs/ai/sdkcommon/language/k0;

    return-object p0
.end method

.method public getServiceIntent()Landroid/content/Intent;
    .locals 1

    const-string p0, "android.intellivoiceservice.UsageService"

    const-string v0, "com.samsung.android.intellivoiceservice"

    invoke-static {p0, v0}, LB/a;->i(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    sget p1, Lcom/samsung/android/sivs/ai/sdkcommon/language/j0;->b:I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "com.samsung.android.sivs.ai.sdkcommon.language.IUsageService"

    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/sivs/ai/sdkcommon/language/k0;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/sivs/ai/sdkcommon/language/k0;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/sivs/ai/sdkcommon/language/i0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p2, p1, Lcom/samsung/android/sivs/ai/sdkcommon/language/i0;->b:Landroid/os/IBinder;

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;->service:Lcom/samsung/android/sivs/ai/sdkcommon/language/k0;

    :try_start_0
    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast p1, Lcom/samsung/android/sivs/ai/sdkcommon/language/i0;

    iget-object p1, p1, Lcom/samsung/android/sivs/ai/sdkcommon/language/i0;->b:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;->service:Lcom/samsung/android/sivs/ai/sdkcommon/language/k0;

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;->context:Landroid/content/Context;

    return-void
.end method
