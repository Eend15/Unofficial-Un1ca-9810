.class public final Le5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Le5/e;
    .locals 9

    invoke-static {}, Le5/e;->access$getHead$cp()Le5/e;

    move-result-object v0

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {v0}, Le5/e;->access$getNext$p(Le5/e;)Le5/e;

    move-result-object v0

    const-class v1, Le5/e;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {}, Le5/e;->access$getIDLE_TIMEOUT_MILLIS$cp()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Le5/e;->access$getHead$cp()Le5/e;

    move-result-object v0

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {v0}, Le5/e;->access$getNext$p(Le5/e;)Le5/e;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-static {}, Le5/e;->access$getIDLE_TIMEOUT_NANOS$cp()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    invoke-static {}, Le5/e;->access$getHead$cp()Le5/e;

    move-result-object v2

    :cond_0
    return-object v2

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Le5/e;->access$remainingNanos(Le5/e;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    const-wide/32 v5, 0xf4240

    div-long v7, v3, v5

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    long-to-int v0, v3

    invoke-virtual {v1, v7, v8, v0}, Ljava/lang/Object;->wait(JI)V

    return-object v2

    :cond_2
    invoke-static {}, Le5/e;->access$getHead$cp()Le5/e;

    move-result-object v1

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {v0}, Le5/e;->access$getNext$p(Le5/e;)Le5/e;

    move-result-object v3

    invoke-static {v1, v3}, Le5/e;->access$setNext$p(Le5/e;Le5/e;)V

    invoke-static {v0, v2}, Le5/e;->access$setNext$p(Le5/e;Le5/e;)V

    return-object v0
.end method
