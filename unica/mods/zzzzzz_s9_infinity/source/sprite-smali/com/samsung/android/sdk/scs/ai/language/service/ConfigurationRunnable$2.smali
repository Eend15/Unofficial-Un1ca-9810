.class Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$2;
.super Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$2;->this$0:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "ConfigurationRunnable"

    if-nez p1, :cond_0

    const-string p1, "onError= error is null"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$2;->this$0:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->access$400(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    move-result-object p0

    const/4 p1, 0x5

    const-string v0, "error is null"

    invoke-static {p1, v0, p0}, LB/a;->u(ILjava/lang/String;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "error_code"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "error_message"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$2;->this$0:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->access$500(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x1f4

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/Result;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/Result;-><init>(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$2;->this$0:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->access$300(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/language/Result;->getSafetyAttribute()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
