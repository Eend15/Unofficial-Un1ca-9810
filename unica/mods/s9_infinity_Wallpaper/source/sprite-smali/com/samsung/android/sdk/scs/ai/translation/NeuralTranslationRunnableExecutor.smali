.class Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    return-void
.end method

.method private executeAndGetTask(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
            "TT;>;)",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static from(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;)V

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->deInit()V

    return-void
.end method

.method public executeClearAndRefresh()Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;",
            "Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/ClearAndRefreshNeuralTranslatorRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/ClearAndRefreshNeuralTranslatorRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeAndGetTask(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public executeClearWithSourceId(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;",
            "Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/ClearWithSourceIdRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sdk/scs/ai/translation/ClearWithSourceIdRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeAndGetTask(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public executeGetResourcePackPackageName(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/GetResourcePackPackageNameRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-direct {v0, v1, p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/GetResourcePackPackageNameRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeAndGetTask(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public executeIsTaggedTranslationSupported(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/IsTaggedTranslationSupportedRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-direct {v0, v1, p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/IsTaggedTranslationSupportedRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeAndGetTask(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public executeLanguageIdentification(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageIdentificationRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-direct {v0, v1, p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageIdentificationRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeAndGetTask(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public executeLanguageIdentificationAndGetCandidate(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/translation/DetectionCandidate;",
            ">;>;"
        }
    .end annotation

    new-instance v6, Lcom/samsung/android/sdk/scs/ai/translation/LanguageIdentificationAndGetCandidateRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageIdentificationAndGetCandidateRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;Ljava/lang/String;Ljava/lang/Integer;ZZ)V

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeAndGetTask(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public executeLanguageIdentificationWithList(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguageIdentificationWithListRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-direct {v0, v1, p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/LanguageIdentificationWithListRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeAndGetTask(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public executeLanguagePackCodeIdentification(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/LanguagePackCodeIdentificationRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-direct {v0, v1, p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/LanguagePackCodeIdentificationRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeAndGetTask(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public executeRefresh()Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;",
            "Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/RefreshNeuralTranslatorRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/RefreshNeuralTranslatorRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeAndGetTask(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public executeTranslationByChunkRunnable(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;",
            "Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-direct {v0, v1, p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeAndGetTask(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public executeTranslationByChunkRunnable(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;I)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;",
            "Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
            "I)",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeAndGetTask(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public executeTranslationRunnable(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;",
            "Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-direct {v0, v1, p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnableExecutor;->executeAndGetTask(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method
