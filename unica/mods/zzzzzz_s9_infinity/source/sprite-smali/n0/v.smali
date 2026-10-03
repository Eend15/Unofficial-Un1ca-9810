.class public final Ln0/v;
.super LF4/x;
.source "SourceFile"


# virtual methods
.method public final c()Ln0/z;
    .locals 3

    iget-object v0, p0, LF4/x;->c:Ljava/lang/Object;

    check-cast v0, Lw0/p;

    iget-boolean v1, v0, Lw0/p;->q:Z

    if-nez v1, :cond_0

    new-instance v1, Ln0/w;

    iget-object v2, p0, LF4/x;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/UUID;

    iget-object p0, p0, LF4/x;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2, v0, p0}, Ln0/z;-><init>(Ljava/util/UUID;Lw0/p;Ljava/util/LinkedHashSet;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "PeriodicWorkRequests cannot be expedited"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()LF4/x;
    .locals 0

    return-object p0
.end method
