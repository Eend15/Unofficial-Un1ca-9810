.class Lcom/samsung/android/sdk/scs/ai/language/service/ClassificationServiceExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/language/service/ClassificationServiceExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/scs/ai/language/service/ClassificationServiceExecutor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/service/ClassificationServiceExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ClassificationServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/ai/language/service/ClassificationServiceExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "ClassificationServiceExecutor"

    const-string v1, "binderDied deathRecipient callback"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ClassificationServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/ai/language/service/ClassificationServiceExecutor;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/language/service/ClassificationServiceExecutor;->h(Lcom/samsung/android/sdk/scs/ai/language/service/ClassificationServiceExecutor;)Lcom/samsung/android/sivs/ai/sdkcommon/language/d;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/b;

    iget-object v0, v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/b;->b:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ClassificationServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/ai/language/service/ClassificationServiceExecutor;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/language/service/ClassificationServiceExecutor;->g(Lcom/samsung/android/sdk/scs/ai/language/service/ClassificationServiceExecutor;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
