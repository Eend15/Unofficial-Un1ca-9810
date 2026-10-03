.class public Lcom/samsung/android/sdk/scs/base/tasks/TaskStreamingImpl;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl<",
        "TTResult;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScsApi@TaskStreamingImpl"


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskStreamingListenersManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskStreamingListenersManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;-><init>(Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic cancel()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->cancel()Z

    move-result p0

    return p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getException()Ljava/lang/Exception;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->getException()Ljava/lang/Exception;

    move-result-object p0

    return-object p0
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

.method public bridge synthetic getTaskId()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->getTaskId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isCanceled()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->isCanceled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isComplete()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->isComplete()Z

    move-result p0

    return p0
.end method

.method public final isSuccessful()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
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

.method public bridge synthetic setException(Ljava/lang/Exception;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mResult:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mListenersManager:Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskStreamingImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/scs/base/tasks/Task;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;->processCompletion(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ScsApi@TaskStreamingImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setResult, e : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->mListenersManager:Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;->processCompletion(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public bridge synthetic trySetException(Ljava/lang/Exception;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->trySetException(Ljava/lang/Exception;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic trySetResult(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->trySetResult(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
