.class public final Lx4/s;
.super Lx4/g;
.source "SourceFile"


# virtual methods
.method public final a(LU3/x;)LJ4/C;
    .locals 0

    const-string p0, "module"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LU3/x;->c()LR3/j;

    move-result-object p0

    invoke-virtual {p0}, LR3/j;->m()LJ4/G;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x31

    invoke-static {p0}, LR3/j;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
