.class public final LJ4/x;
.super LJ4/w;
.source "SourceFile"

# interfaces
.implements LJ4/k;


# direct methods
.method public constructor <init>(LJ4/G;LJ4/G;)V
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, LJ4/w;-><init>(LJ4/G;LJ4/G;)V

    return-void
.end method


# virtual methods
.method public final A0(LK4/g;)LJ4/C;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LJ4/x;

    iget-object v0, p0, LJ4/w;->e:LJ4/G;

    const-string v1, "type"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LJ4/w;->f:LJ4/G;

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p0}, LJ4/x;-><init>(LJ4/G;LJ4/G;)V

    return-object p1
.end method

.method public final C0(Z)LJ4/b0;
    .locals 1

    iget-object v0, p0, LJ4/w;->e:LJ4/G;

    invoke-virtual {v0, p1}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object v0

    iget-object p0, p0, LJ4/w;->f:LJ4/G;

    invoke-virtual {p0, p1}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object p0

    invoke-static {v0, p0}, LJ4/d;->i(LJ4/G;LJ4/G;)LJ4/b0;

    move-result-object p0

    return-object p0
.end method

.method public final D0(LK4/g;)LJ4/b0;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LJ4/x;

    iget-object v0, p0, LJ4/w;->e:LJ4/G;

    const-string v1, "type"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LJ4/w;->f:LJ4/G;

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p0}, LJ4/x;-><init>(LJ4/G;LJ4/G;)V

    return-object p1
.end method

.method public final E0(LV3/h;)LJ4/b0;
    .locals 1

    iget-object v0, p0, LJ4/w;->e:LJ4/G;

    invoke-virtual {v0, p1}, LJ4/G;->G0(LV3/h;)LJ4/G;

    move-result-object v0

    iget-object p0, p0, LJ4/w;->f:LJ4/G;

    invoke-virtual {p0, p1}, LJ4/G;->G0(LV3/h;)LJ4/G;

    move-result-object p0

    invoke-static {v0, p0}, LJ4/d;->i(LJ4/G;LJ4/G;)LJ4/b0;

    move-result-object p0

    return-object p0
.end method

.method public final F0()LJ4/G;
    .locals 0

    iget-object p0, p0, LJ4/w;->e:LJ4/G;

    return-object p0
.end method

.method public final G0(Lu4/g;Lu4/g;)Ljava/lang/String;
    .locals 2

    const-string v0, "renderer"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lu4/g;->a:Lu4/k;

    invoke-virtual {p2}, Lu4/k;->l()Z

    move-result p2

    iget-object v0, p0, LJ4/w;->f:LJ4/G;

    iget-object v1, p0, LJ4/w;->e:LJ4/G;

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, v1}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, LK/I;->v(LJ4/C;)LR3/j;

    move-result-object p0

    invoke-virtual {p1, p2, v0, p0}, Lu4/g;->C(Ljava/lang/String;Ljava/lang/String;LR3/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d0()Z
    .locals 2

    iget-object v0, p0, LJ4/w;->e:LJ4/G;

    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v1

    invoke-interface {v1}, LJ4/M;->e()LU3/g;

    move-result-object v1

    instance-of v1, v1, LU3/O;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LJ4/C;->q0()LJ4/M;

    move-result-object v0

    iget-object p0, p0, LJ4/w;->f:LJ4/G;

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-static {v0, p0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(LJ4/C;)LJ4/b0;
    .locals 1

    const-string p0, "replacement"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LJ4/C;->B0()LJ4/b0;

    move-result-object p0

    instance-of p1, p0, LJ4/w;

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    instance-of p1, p0, LJ4/G;

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, LJ4/G;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object v0

    invoke-static {p1, v0}, LJ4/d;->i(LJ4/G;LJ4/G;)LJ4/b0;

    move-result-object p1

    :goto_0
    invoke-static {p1, p0}, LJ4/c;->g(LJ4/b0;LJ4/C;)LJ4/b0;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LJ4/w;->e:LJ4/G;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LJ4/w;->f:LJ4/G;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
