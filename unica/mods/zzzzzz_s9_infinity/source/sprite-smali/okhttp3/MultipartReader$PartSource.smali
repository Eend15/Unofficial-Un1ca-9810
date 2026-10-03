.class final Lokhttp3/MultipartReader$PartSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le5/D;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PartSource"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lokhttp3/MultipartReader$PartSource;",
        "Le5/D;",
        "<init>",
        "(Lokhttp3/MultipartReader;)V",
        "Lq3/m;",
        "close",
        "()V",
        "Le5/j;",
        "sink",
        "",
        "byteCount",
        "read",
        "(Le5/j;J)J",
        "Le5/G;",
        "timeout",
        "()Le5/G;",
        "Le5/G;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/MultipartReader;

.field private final timeout:Le5/G;


# direct methods
.method public constructor <init>(Lokhttp3/MultipartReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Le5/G;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/MultipartReader$PartSource;->timeout:Le5/G;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v0}, Lokhttp3/MultipartReader;->access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;

    move-result-object v0

    invoke-static {v0, p0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lokhttp3/MultipartReader;->access$setCurrentPart$p(Lokhttp3/MultipartReader;Lokhttp3/MultipartReader$PartSource;)V

    :cond_0
    return-void
.end method

.method public read(Le5/j;J)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-string v4, "sink"

    invoke-static {v1, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_d

    iget-object v6, v0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v6}, Lokhttp3/MultipartReader;->access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;

    move-result-object v6

    invoke-static {v6, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v6}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Le5/l;

    move-result-object v6

    invoke-interface {v6}, Le5/D;->timeout()Le5/G;

    move-result-object v6

    iget-object v7, v0, Lokhttp3/MultipartReader$PartSource;->timeout:Le5/G;

    iget-object v0, v0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-virtual {v6}, Le5/G;->timeoutNanos()J

    move-result-wide v8

    sget-object v10, Le5/G;->Companion:Le5/F;

    invoke-virtual {v7}, Le5/G;->timeoutNanos()J

    move-result-wide v11

    invoke-virtual {v6}, Le5/G;->timeoutNanos()J

    move-result-wide v13

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmp-long v10, v11, v4

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v10, v13, v4

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    cmp-long v10, v11, v13

    if-gez v10, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move-wide v11, v13

    :goto_1
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v11, v12, v10}, Le5/G;->timeout(JLjava/util/concurrent/TimeUnit;)Le5/G;

    invoke-virtual {v6}, Le5/G;->hasDeadline()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v6}, Le5/G;->deadlineNanoTime()J

    move-result-wide v14

    invoke-virtual {v7}, Le5/G;->hasDeadline()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v6}, Le5/G;->deadlineNanoTime()J

    move-result-wide v12

    invoke-virtual {v7}, Le5/G;->deadlineNanoTime()J

    move-result-wide v4

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Le5/G;->deadlineNanoTime(J)Le5/G;

    :cond_3
    :try_start_0
    invoke-static {v0, v2, v3}, Lokhttp3/MultipartReader;->access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_4

    const-wide/16 v12, -0x1

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Le5/l;

    move-result-object v0

    invoke-interface {v0, v1, v2, v3}, Le5/D;->read(Le5/j;J)J

    move-result-wide v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {v6, v8, v9, v10}, Le5/G;->timeout(JLjava/util/concurrent/TimeUnit;)Le5/G;

    invoke-virtual {v7}, Le5/G;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6, v14, v15}, Le5/G;->deadlineNanoTime(J)Le5/G;

    :cond_5
    return-wide v12

    :catchall_0
    move-exception v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v1}, Le5/G;->timeout(JLjava/util/concurrent/TimeUnit;)Le5/G;

    invoke-virtual {v7}, Le5/G;->hasDeadline()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v6, v14, v15}, Le5/G;->deadlineNanoTime(J)Le5/G;

    :cond_6
    throw v0

    :cond_7
    invoke-virtual {v7}, Le5/G;->hasDeadline()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v7}, Le5/G;->deadlineNanoTime()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Le5/G;->deadlineNanoTime(J)Le5/G;

    :cond_8
    :try_start_1
    invoke-static {v0, v2, v3}, Lokhttp3/MultipartReader;->access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_9

    const-wide/16 v12, -0x1

    goto :goto_3

    :cond_9
    invoke-static {v0}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Le5/l;

    move-result-object v0

    invoke-interface {v0, v1, v2, v3}, Le5/D;->read(Le5/j;J)J

    move-result-wide v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    invoke-virtual {v6, v8, v9, v10}, Le5/G;->timeout(JLjava/util/concurrent/TimeUnit;)Le5/G;

    invoke-virtual {v7}, Le5/G;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v6}, Le5/G;->clearDeadline()Le5/G;

    :cond_a
    return-wide v12

    :catchall_1
    move-exception v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v1}, Le5/G;->timeout(JLjava/util/concurrent/TimeUnit;)Le5/G;

    invoke-virtual {v7}, Le5/G;->hasDeadline()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v6}, Le5/G;->clearDeadline()Le5/G;

    :cond_b
    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "byteCount < 0: "

    invoke-static {v0, v1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public timeout()Le5/G;
    .locals 0

    iget-object p0, p0, Lokhttp3/MultipartReader$PartSource;->timeout:Le5/G;

    return-object p0
.end method
