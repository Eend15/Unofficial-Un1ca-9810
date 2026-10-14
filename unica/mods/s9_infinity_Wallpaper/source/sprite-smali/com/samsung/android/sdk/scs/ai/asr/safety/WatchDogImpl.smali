.class final Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final createTime:J

.field private final interrupt:Z

.field private final thread:Ljava/lang/Thread;

.field private final watchDogCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/Thread;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WatchDog@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->watchDogCallbacks:Ljava/util/List;

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->interrupt:Z

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->createTime:J

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "created "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->lambda$unWatchBlocking$0(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$unWatchBlocking$0(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;->b(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->watchDogCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->thread:Ljava/lang/Thread;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->remove(Ljava/lang/Thread;)V

    return-void
.end method

.method public executeWatchDog()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->watchDogCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;->isTimeout()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->watchDogCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start to handle watchdog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->thread:Ljava/lang/Thread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->interrupt:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_2
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;->a(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;)Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;->onTimeoutDetected()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :goto_2
    invoke-static {v1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;->a(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;)Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;->onTimeoutDetected()V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sget-boolean v2, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->isDevelop:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->TAG:Ljava/lang/String;

    const-string v3, "error to handle watchdog execution"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->createTime:J

    return-wide v0
.end method

.method public isWatching()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->watchDogCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->watchDogCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->createTime:J

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->createTimeStr(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unWatchBlocking(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->watchDogCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/safety/d;

    invoke-direct {v2, p1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/d;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unWatchBlocking failed. already handled by watchdog service. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->TAG:Ljava/lang/String;

    const-string v0, "ignore unWatchdog because callback is null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->watchDogCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remained "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->watchDogCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public watchBlocking(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;J)V
    .locals 8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->watchDogCallbacks:Ljava/util/List;

    new-instance v7, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->TAG:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;JI)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->triggerSchedule()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;->TAG:Ljava/lang/String;

    const-string p1, "ignore watchdog because callback is null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
