.class public final LJ4/a;
.super LJ4/m;
.source "SourceFile"


# instance fields
.field public final e:LJ4/G;

.field public final f:LJ4/G;


# direct methods
.method public constructor <init>(LJ4/G;LJ4/G;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abbreviation"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/a;->e:LJ4/G;

    iput-object p2, p0, LJ4/a;->f:LJ4/G;

    return-void
.end method


# virtual methods
.method public final bridge synthetic A0(LK4/g;)LJ4/C;
    .locals 0

    invoke-virtual {p0, p1}, LJ4/a;->L0(LK4/g;)LJ4/a;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic C0(Z)LJ4/b0;
    .locals 0

    invoke-virtual {p0, p1}, LJ4/a;->K0(Z)LJ4/a;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic D0(LK4/g;)LJ4/b0;
    .locals 0

    invoke-virtual {p0, p1}, LJ4/a;->L0(LK4/g;)LJ4/a;

    move-result-object p0

    return-object p0
.end method

.method public final E0(LV3/h;)LJ4/b0;
    .locals 2

    new-instance v0, LJ4/a;

    iget-object v1, p0, LJ4/a;->e:LJ4/G;

    invoke-virtual {v1, p1}, LJ4/G;->G0(LV3/h;)LJ4/G;

    move-result-object p1

    iget-object p0, p0, LJ4/a;->f:LJ4/G;

    invoke-direct {v0, p1, p0}, LJ4/a;-><init>(LJ4/G;LJ4/G;)V

    return-object v0
.end method

.method public final bridge synthetic F0(Z)LJ4/G;
    .locals 0

    invoke-virtual {p0, p1}, LJ4/a;->K0(Z)LJ4/a;

    move-result-object p0

    return-object p0
.end method

.method public final G0(LV3/h;)LJ4/G;
    .locals 2

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LJ4/a;

    iget-object v1, p0, LJ4/a;->e:LJ4/G;

    invoke-virtual {v1, p1}, LJ4/G;->G0(LV3/h;)LJ4/G;

    move-result-object p1

    iget-object p0, p0, LJ4/a;->f:LJ4/G;

    invoke-direct {v0, p1, p0}, LJ4/a;-><init>(LJ4/G;LJ4/G;)V

    return-object v0
.end method

.method public final H0()LJ4/G;
    .locals 0

    iget-object p0, p0, LJ4/a;->e:LJ4/G;

    return-object p0
.end method

.method public final bridge synthetic I0(LK4/g;)LJ4/G;
    .locals 0

    invoke-virtual {p0, p1}, LJ4/a;->L0(LK4/g;)LJ4/a;

    move-result-object p0

    return-object p0
.end method

.method public final J0(LJ4/G;)LJ4/m;
    .locals 1

    new-instance v0, LJ4/a;

    iget-object p0, p0, LJ4/a;->f:LJ4/G;

    invoke-direct {v0, p1, p0}, LJ4/a;-><init>(LJ4/G;LJ4/G;)V

    return-object v0
.end method

.method public final K0(Z)LJ4/a;
    .locals 2

    new-instance v0, LJ4/a;

    iget-object v1, p0, LJ4/a;->e:LJ4/G;

    invoke-virtual {v1, p1}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object v1

    iget-object p0, p0, LJ4/a;->f:LJ4/G;

    invoke-virtual {p0, p1}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object p0

    invoke-direct {v0, v1, p0}, LJ4/a;-><init>(LJ4/G;LJ4/G;)V

    return-object v0
.end method

.method public final L0(LK4/g;)LJ4/a;
    .locals 2

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LJ4/a;

    iget-object v0, p0, LJ4/a;->e:LJ4/G;

    const-string v1, "type"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LJ4/a;->f:LJ4/G;

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p0}, LJ4/a;-><init>(LJ4/G;LJ4/G;)V

    return-object p1
.end method
