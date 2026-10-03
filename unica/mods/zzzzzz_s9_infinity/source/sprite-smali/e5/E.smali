.class public final Le5/E;
.super Le5/G;
.source "SourceFile"


# virtual methods
.method public final deadlineNanoTime(J)Le5/G;
    .locals 0

    return-object p0
.end method

.method public final throwIfReached()V
    .locals 0

    return-void
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Le5/G;
    .locals 0

    const-string p1, "unit"

    invoke-static {p3, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
