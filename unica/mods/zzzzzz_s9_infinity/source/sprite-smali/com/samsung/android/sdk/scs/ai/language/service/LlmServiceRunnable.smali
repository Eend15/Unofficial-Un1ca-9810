.class public Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LlmServiceRunnable"


# instance fields
.field private final featureName:Ljava/lang/String;

.field private final observer:Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

.field private final resultMapper:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;TT;>;"
        }
    .end annotation
.end field

.field private final serviceRequest:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;TT;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance p2, Lcom/samsung/android/sdk/scs/base/tasks/TaskStreamingCompletionSource;

    invoke-direct {p2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskStreamingCompletionSource;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-direct {p2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;-><init>()V

    :goto_0
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>(Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    new-instance p2, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable$1;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;->observer:Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;->featureName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;->serviceRequest:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;->resultMapper:Ljava/util/function/Function;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;)Ljava/util/function/Function;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;->resultMapper:Ljava/util/function/Function;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static listResultMapper(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/language/service/a;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static singleResultMapper(Ljava/util/List;)Lcom/samsung/android/sdk/scs/ai/language/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/samsung/android/sdk/scs/ai/language/Result;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/ai/language/Result;-><init>(Landroid/os/Bundle;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/Result;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/Result;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;->serviceRequest:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;->observer:Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;->featureName:Ljava/lang/String;

    return-object p0
.end method
