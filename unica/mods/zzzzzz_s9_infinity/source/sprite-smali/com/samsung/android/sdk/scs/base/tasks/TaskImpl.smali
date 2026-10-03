.class Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;
.super Lcom/samsung/android/sdk/scs/base/tasks/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field protected volatile mCanceled:Z

.field protected mComplete:Z

.field protected mException:Ljava/lang/Exception;

.field protected final mListenersManager:Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field protected final mLock:Ljava/lang/Object;

.field protected mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field protected mTaskId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;-><init>(Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/Task;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mLock:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mListenersManager:Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mTaskId:Ljava/lang/String;

    return-void
.end method

.method private checkComplete()V
    .locals 1

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mComplete:Z

    const-string v0, "Task is not yet complete"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/scs/base/utils/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method private checkNotComplete()V
    .locals 1

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mComplete:Z

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "Task is already complete"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/scs/base/utils/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method private process()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mComplete:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mListenersManager:Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;->processCompletion(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener<",
            "-TTResult;>;)",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener<",
            "-TTResult;>;)",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mListenersManager:Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;

    new-instance v1, Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerCompletion;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerCompletion;-><init>(Ljava/util/concurrent/Executor;Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;->add(Lcom/samsung/android/sdk/scs/base/tasks/TaskListenerCompletion;)V

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->process()V

    return-object p0
.end method

.method public cancel()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mComplete:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mComplete:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mCanceled:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mListenersManager:Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;->processCompletion(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public checkCanceled()V
    .locals 1

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mCanceled:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled."

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mException:Ljava/lang/Exception;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->checkComplete()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->checkCanceled()V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mException:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mResult:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mException:Ljava/lang/Exception;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mTaskId:Ljava/lang/String;

    return-object p0
.end method

.method public isCanceled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mCanceled:Z

    return p0
.end method

.method public isComplete()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mComplete:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSuccessful()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mComplete:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mCanceled:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mException:Ljava/lang/Exception;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->checkNotComplete()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mComplete:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mException:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mListenersManager:Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;->processCompletion(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->checkNotComplete()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mComplete:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mResult:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mListenersManager:Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;->processCompletion(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public trySetException(Ljava/lang/Exception;)Z
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mComplete:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mComplete:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mException:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mListenersManager:Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;->processCompletion(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public trySetResult(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mComplete:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mComplete:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mResult:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mListenersManager:Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;->processCompletion(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
