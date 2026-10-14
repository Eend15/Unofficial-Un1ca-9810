.class public final LO4/c;
.super LJ4/O;
.source "SourceFile"


# virtual methods
.method public final g(LJ4/M;)LJ4/P;
    .locals 1

    const-string p0, "key"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lw4/b;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Lw4/b;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Lw4/b;->a()LJ4/P;

    move-result-object p0

    invoke-virtual {p0}, LJ4/P;->c()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, LJ4/Q;

    invoke-interface {p1}, Lw4/b;->a()LJ4/P;

    move-result-object p1

    invoke-virtual {p1}, LJ4/P;->b()LJ4/C;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, LJ4/Q;-><init>(ILJ4/C;)V

    return-object p0

    :cond_2
    invoke-interface {p1}, Lw4/b;->a()LJ4/P;

    move-result-object p0

    return-object p0
.end method
