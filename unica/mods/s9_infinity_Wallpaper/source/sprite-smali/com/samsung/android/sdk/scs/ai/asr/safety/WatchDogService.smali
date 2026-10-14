.class Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;
    }
.end annotation


# static fields
.field private static final CHECK_INTERVAL:J

.field private static final TAG:Ljava/lang/String; = "WatchDogService"

.field static final TIMER:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static final WATCHDOG_MAX_ALIVE_TIME:J

.field private static final mIsObserving:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sThreadCnt:Ljava/util/concurrent/atomic/AtomicLong;

.field static final watchDogHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->watchDogHolders:Ljava/util/Map;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->WATCHDOG_MAX_ALIVE_TIME:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->CHECK_INTERVAL:J

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->mIsObserving:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v1, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->sThreadCnt:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/safety/i;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->TIMER:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->checkWatchDog()V

    return-void
.end method

.method public static synthetic b(ZLjava/lang/Thread;)Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->lambda$create$0(ZLjava/lang/Thread;)Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->isWatching()Z

    move-result v0

    return v0
.end method

.method private static checkState()V
    .locals 5

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->watchDogHolders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkState "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WatchDogService"

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static checkWatchDog()V
    .locals 9

    const-string v0, "WatchDogService"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->watchDogHolders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->getCreateTime()J

    move-result-wide v5

    sub-long v5, v1, v5

    sget-wide v7, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->WATCHDOG_MAX_ALIVE_TIME:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove watchdog with expired "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->executeWatchDog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    sget-boolean v5, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->isDevelop:Z

    if-eqz v5, :cond_0

    const-string v5, "error to handle watch dog"

    invoke-static {v0, v5, v4}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static create(Z)Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->watchDogHolders:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/safety/j;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/scs/ai/asr/safety/j;-><init>(Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;

    return-object p0
.end method

.method public static synthetic d()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->onStopSchedule()V

    return-void
.end method

.method private static isWatching()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->watchDogHolders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/safety/h;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$create$0(ZLjava/lang/Thread;)Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;-><init>(ZLjava/lang/Thread;)V

    return-object v0
.end method

.method private static onStopSchedule()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStopSchedule "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->watchDogHolders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchDogService"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->mIsObserving:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static remove(Ljava/lang/Thread;)V
    .locals 3

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->watchDogHolders:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remove watchdog on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WatchDogService"

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->checkState()V

    return-void
.end method

.method public static triggerSchedule()V
    .locals 9

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->mIsObserving:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->TIMER:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v8, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;

    new-instance v3, Lcom/samsung/android/sdk/scs/ai/asr/safety/e;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/e;-><init>(I)V

    new-instance v4, Lcom/samsung/android/sdk/scs/ai/asr/safety/e;

    const/4 v1, 0x1

    invoke-direct {v4, v1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/e;-><init>(I)V

    sget-wide v5, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->CHECK_INTERVAL:J

    new-instance v7, Lcom/samsung/android/sdk/scs/ai/asr/safety/f;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/samsung/android/sdk/scs/ai/asr/safety/e;Lcom/samsung/android/sdk/scs/ai/asr/safety/e;JLcom/samsung/android/sdk/scs/ai/asr/safety/f;)V

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/safety/g;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2}, Lcom/samsung/android/sdk/scs/ai/asr/safety/g;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static watchdogThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "WatchDog#"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->sThreadCnt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method
