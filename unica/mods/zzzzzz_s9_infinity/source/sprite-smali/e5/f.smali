.class public final Le5/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le5/B;


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final timeout()Le5/G;
    .locals 0

    sget-object p0, Le5/G;->NONE:Le5/G;

    return-object p0
.end method

.method public final write(Le5/j;J)V
    .locals 0

    const-string p0, "source"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Le5/j;->r(J)V

    return-void
.end method
