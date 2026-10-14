.class public abstract LJ4/m;
.super LJ4/G;
.source "SourceFile"


# virtual methods
.method public bridge synthetic A0(LK4/g;)LJ4/C;
    .locals 0

    invoke-virtual {p0, p1}, LJ4/m;->I0(LK4/g;)LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic D0(LK4/g;)LJ4/b0;
    .locals 0

    invoke-virtual {p0, p1}, LJ4/m;->I0(LK4/g;)LJ4/G;

    move-result-object p0

    return-object p0
.end method

.method public abstract H0()LJ4/G;
.end method

.method public I0(LK4/g;)LJ4/G;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LJ4/m;->H0()LJ4/G;

    move-result-object p1

    const-string v0, "type"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LJ4/m;->J0(LJ4/G;)LJ4/m;

    move-result-object p0

    return-object p0
.end method

.method public abstract J0(LJ4/G;)LJ4/m;
.end method

.method public final l0()LC4/o;
    .locals 0

    invoke-virtual {p0}, LJ4/m;->H0()LJ4/G;

    move-result-object p0

    invoke-virtual {p0}, LJ4/C;->l0()LC4/o;

    move-result-object p0

    return-object p0
.end method

.method public final m0()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, LJ4/m;->H0()LJ4/G;

    move-result-object p0

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public p()LV3/h;
    .locals 0

    invoke-virtual {p0}, LJ4/m;->H0()LJ4/G;

    move-result-object p0

    invoke-interface {p0}, LV3/a;->p()LV3/h;

    move-result-object p0

    return-object p0
.end method

.method public final q0()LJ4/M;
    .locals 0

    invoke-virtual {p0}, LJ4/m;->H0()LJ4/G;

    move-result-object p0

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    return-object p0
.end method

.method public z0()Z
    .locals 0

    invoke-virtual {p0}, LJ4/m;->H0()LJ4/G;

    move-result-object p0

    invoke-virtual {p0}, LJ4/C;->z0()Z

    move-result p0

    return p0
.end method
