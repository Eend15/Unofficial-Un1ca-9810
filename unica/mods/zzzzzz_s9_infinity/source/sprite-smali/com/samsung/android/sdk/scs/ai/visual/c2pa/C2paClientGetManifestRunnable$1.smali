.class Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable$1;
.super Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paManifestsCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paServiceExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paManifestsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->setSuccess(Z)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->setError(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->build()Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;->access$100(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->setSuccess(Z)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->setTrusted(Z)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->setCompleted(Z)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->setManifestResult(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->build()Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;->access$000(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientGetManifestRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
