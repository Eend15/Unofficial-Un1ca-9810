.class Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RepeatableTask"
.end annotation


# static fields
.field private static final mCounting:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final mExec:Ljava/lang/Runnable;

.field private final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mPeriodInMs:J

.field private final mPost:Ljava/lang/Runnable;

.field private final mPre:Ljava/lang/Runnable;

.field private final mUntil:Ljava/util/function/BooleanSupplier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->mCounting:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/util/function/BooleanSupplier;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->mPre:Ljava/lang/Runnable;

    .line 5
    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->mExec:Ljava/lang/Runnable;

    .line 6
    iput-object p4, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->mPost:Ljava/lang/Runnable;

    .line 7
    iput-wide p5, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->mPeriodInMs:J

    .line 8
    iput-object p7, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->mUntil:Ljava/util/function/BooleanSupplier;

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "inc+ "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->mCounting:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " with interval: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WatchDogService"

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/samsung/android/sdk/scs/ai/asr/safety/e;Lcom/samsung/android/sdk/scs/ai/asr/safety/e;JLcom/samsung/android/sdk/scs/ai/asr/safety/f;)V
    .locals 8

    .line 1
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/util/function/BooleanSupplier;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->iteration()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->exec()V

    return-void
.end method

.method private declared-synchronized close()V
    .locals 5

    const-string v0, "dec- "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->mPost:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v1, "WatchDogService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->mCounting:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private exec()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->mPre:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->iteration()V

    return-void
.end method

.method private hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->mUntil:Ljava/util/function/BooleanSupplier;

    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    return p0
.end method

.method private iteration()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->mExec:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/safety/g;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/sdk/scs/ai/asr/safety/g;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;I)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->mPeriodInMs:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string v1, "WatchDogService"

    const-string v2, "error on iteration. so finish iteration."

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService$RepeatableTask;->close()V

    :goto_1
    return-void
.end method
