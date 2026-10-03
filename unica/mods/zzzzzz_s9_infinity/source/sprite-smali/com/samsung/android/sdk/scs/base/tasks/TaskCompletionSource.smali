.class public Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final task:Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;-><init>(Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->task:Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    return-void
.end method


# virtual methods
.method public getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->task:Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    return-object p0
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->task:Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->task:Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public trySetException(Ljava/lang/Exception;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->task:Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->trySetException(Ljava/lang/Exception;)Z

    move-result p0

    return p0
.end method

.method public trySetResult(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->task:Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->trySetResult(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
