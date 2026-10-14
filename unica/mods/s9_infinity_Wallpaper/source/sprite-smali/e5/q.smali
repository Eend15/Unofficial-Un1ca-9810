.class public final Le5/q;
.super Le5/G;
.source "SourceFile"


# instance fields
.field public a:Le5/G;


# direct methods
.method public constructor <init>(Le5/G;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5/q;->a:Le5/G;

    return-void
.end method


# virtual methods
.method public final clearDeadline()Le5/G;
    .locals 0

    iget-object p0, p0, Le5/q;->a:Le5/G;

    invoke-virtual {p0}, Le5/G;->clearDeadline()Le5/G;

    move-result-object p0

    return-object p0
.end method

.method public final clearTimeout()Le5/G;
    .locals 0

    iget-object p0, p0, Le5/q;->a:Le5/G;

    invoke-virtual {p0}, Le5/G;->clearTimeout()Le5/G;

    move-result-object p0

    return-object p0
.end method

.method public final deadlineNanoTime()J
    .locals 2

    .line 1
    iget-object p0, p0, Le5/q;->a:Le5/G;

    invoke-virtual {p0}, Le5/G;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final deadlineNanoTime(J)Le5/G;
    .locals 0

    .line 2
    iget-object p0, p0, Le5/q;->a:Le5/G;

    invoke-virtual {p0, p1, p2}, Le5/G;->deadlineNanoTime(J)Le5/G;

    move-result-object p0

    return-object p0
.end method

.method public final hasDeadline()Z
    .locals 0

    iget-object p0, p0, Le5/q;->a:Le5/G;

    invoke-virtual {p0}, Le5/G;->hasDeadline()Z

    move-result p0

    return p0
.end method

.method public final throwIfReached()V
    .locals 0

    iget-object p0, p0, Le5/q;->a:Le5/G;

    invoke-virtual {p0}, Le5/G;->throwIfReached()V

    return-void
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Le5/G;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Le5/q;->a:Le5/G;

    invoke-virtual {p0, p1, p2, p3}, Le5/G;->timeout(JLjava/util/concurrent/TimeUnit;)Le5/G;

    move-result-object p0

    return-object p0
.end method

.method public final timeoutNanos()J
    .locals 2

    iget-object p0, p0, Le5/q;->a:Le5/G;

    invoke-virtual {p0}, Le5/G;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
