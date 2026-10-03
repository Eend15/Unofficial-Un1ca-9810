.class public final Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor$deathRecipient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "com/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor$deathRecipient$1",
        "Landroid/os/IBinder$DeathRecipient;",
        "Lq3/m;",
        "binderDied",
        "()V",
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


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor$deathRecipient$1;->this$0:Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor$deathRecipient$1;->this$0:Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;->access$getService$p(Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;)Lcom/samsung/android/sivs/ai/sdkcommon/language/k0;

    move-result-object v0

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/i0;

    const/4 v1, 0x0

    iget-object v0, v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/i0;->b:Landroid/os/IBinder;

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
