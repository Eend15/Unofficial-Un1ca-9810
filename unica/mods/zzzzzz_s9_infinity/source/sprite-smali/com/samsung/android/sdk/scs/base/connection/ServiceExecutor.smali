.class public abstract Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final CONNECTION_TIMER_ON:Z = false

.field private static final TAG:Ljava/lang/String; = "ScsApi@ServiceExecutor"


# instance fields
.field private final mConnectionCondition:Ljava/util/concurrent/locks/Condition;

.field private final mConnectionListener:Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;

.field private final mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mConnectionManagementTask:Ljava/util/TimerTask;

.field protected mConnectionManager:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

.field protected final mContext:Landroid/content/Context;

.field private mIsConnected:Z

.field private final mTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object v6, p7

    .line 12
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 13
    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionCondition:Ljava/util/concurrent/locks/Condition;

    const/4 p2, 0x0

    .line 15
    iput-boolean p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mIsConnected:Z

    .line 16
    new-instance p3, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;-><init>(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionListener:Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;

    const/4 p3, 0x1

    .line 17
    invoke-virtual {p0, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 18
    const-string p3, "use activity context"

    const-string p4, "ScsApi@ServiceExecutor"

    invoke-static {p4, p3}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {p1, p0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 21
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    new-instance p1, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    invoke-direct {p1}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionManager:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    .line 23
    const-string p0, "ServiceExecutor. ctor()"

    invoke-static {p4, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object v6, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 2
    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionCondition:Ljava/util/concurrent/locks/Condition;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mIsConnected:Z

    .line 5
    new-instance p3, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;-><init>(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)V

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionListener:Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;

    const/4 p3, 0x1

    .line 6
    invoke-virtual {p0, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 7
    const-string p3, "use application context"

    const-string p4, "ScsApi@ServiceExecutor"

    invoke-static {p4, p3}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mContext:Landroid/content/Context;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    new-instance p1, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    invoke-direct {p1}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionManager:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    .line 11
    const-string p0, "ServiceExecutor. ctor()"

    invoke-static {p4, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->unlockConnection(ZLjava/lang/String;)V

    return-void
.end method

.method private connect(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;)Z
    .locals 2

    const-string v0, "ScsApi@ServiceExecutor"

    const-string v1, "connect"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionManager:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionManager:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->connect(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;)Z

    move-result p0

    return p0
.end method

.method private unlockConnection(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mIsConnected:Z

    const-string p1, "ScsApi@ServiceExecutor"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method


# virtual methods
.method public afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "afterExecute(). mTaskCount: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScsApi@ServiceExecutor"

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 4

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    const-string v0, "task"

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ScsApi@ServiceExecutor"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->objectInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v0, p2, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getFeatureName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/scs/base/feature/FeatureStatusCache;->getStatus(Ljava/lang/String;)I

    move-result v0

    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "beforeExecute(). First check for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". status: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "Unexpected runnable!!!!"

    invoke-static {v2, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mIsConnected:Z

    if-nez p2, :cond_4

    const-string p2, "beforeExecute() : not connected, try to connect"

    invoke-static {v2, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->getServiceIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionListener:Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;

    invoke-direct {p0, p2, v0, v1}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->connect(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "beforeExecute() : failed to bind service"

    invoke-static {v2, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_2
    const-string p2, "beforeExecute() : before wait"

    invoke-static {v2, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mIsConnected:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->await()V

    :cond_3
    const-string p2, "beforeExecute() : after wait"

    invoke-static {v2, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mIsConnected:Z

    if-nez p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "beforeExecute(). mTaskCount: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_4
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public deInit()V
    .locals 2

    const-string v0, "ScsApi@ServiceExecutor"

    const-string v1, "deInit"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionManager:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->disconnect()V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 2

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->finalize()V

    const-string v0, "ScsApi@ServiceExecutor"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionManager:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->disconnect()V

    :cond_0
    return-void
.end method

.method public abstract getServiceIntent()Landroid/content/Intent;
.end method

.method public isConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionManager:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->isServiceConnected()Z

    move-result p0

    return p0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string p1, "ScsApi@ServiceExecutor"

    const-string v0, "onActivityDestroyed"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->deInit()V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
