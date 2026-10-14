.class Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeOutCheck"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final callback:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;

.field private final startTime:J

.field private final timeoutTime:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;->TAG:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;->callback:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;->startTime:J

    add-long/2addr p1, p3

    .line 6
    iput-wide p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;->timeoutTime:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;J)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;)Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;->callback:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;)Z
    .locals 0

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;->isMatched(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;)Z

    move-result p0

    return p0
.end method

.method private isMatched(Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;->callback:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public isTimeout()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;->timeoutTime:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeCheck{callback="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;->callback:Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;->timeoutTime:J

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->createTimeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", watchDog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogImpl$TimeOutCheck;->TAG:Ljava/lang/String;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Li4/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
