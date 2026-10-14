.class public final LJ4/E;
.super LJ4/C;
.source "SourceFile"


# instance fields
.field public final e:LI4/l;

.field public final f:LF3/l;

.field public final g:LI4/i;


# direct methods
.method public constructor <init>(LI4/l;LE3/a;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/E;->e:LI4/l;

    move-object v0, p2

    check-cast v0, LF3/l;

    iput-object v0, p0, LJ4/E;->f:LF3/l;

    new-instance v0, LI4/i;

    invoke-direct {v0, p1, p2}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v0, p0, LJ4/E;->g:LI4/i;

    return-void
.end method


# virtual methods
.method public final A0(LK4/g;)LJ4/C;
    .locals 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LJ4/E;

    new-instance v1, LF4/C;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2, p0}, LF4/C;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p0, p0, LJ4/E;->e:LI4/l;

    invoke-direct {v0, p0, v1}, LJ4/E;-><init>(LI4/l;LE3/a;)V

    return-object v0
.end method

.method public final B0()LJ4/b0;
    .locals 1

    invoke-virtual {p0}, LJ4/E;->C0()LJ4/C;

    move-result-object p0

    :goto_0
    instance-of v0, p0, LJ4/E;

    if-eqz v0, :cond_0

    check-cast p0, LJ4/E;

    invoke-virtual {p0}, LJ4/E;->C0()LJ4/C;

    move-result-object p0

    goto :goto_0

    :cond_0
    check-cast p0, LJ4/b0;

    return-object p0
.end method

.method public final C0()LJ4/C;
    .locals 0

    iget-object p0, p0, LJ4/E;->g:LI4/i;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/C;

    return-object p0
.end method

.method public final l0()LC4/o;
    .locals 0

    invoke-virtual {p0}, LJ4/E;->C0()LJ4/C;

    move-result-object p0

    invoke-virtual {p0}, LJ4/C;->l0()LC4/o;

    move-result-object p0

    return-object p0
.end method

.method public final m0()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, LJ4/E;->C0()LJ4/C;

    move-result-object p0

    invoke-virtual {p0}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final p()LV3/h;
    .locals 0

    invoke-virtual {p0}, LJ4/E;->C0()LJ4/C;

    move-result-object p0

    invoke-interface {p0}, LV3/a;->p()LV3/h;

    move-result-object p0

    return-object p0
.end method

.method public final q0()LJ4/M;
    .locals 0

    invoke-virtual {p0}, LJ4/E;->C0()LJ4/C;

    move-result-object p0

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LJ4/E;->g:LI4/i;

    iget-object v1, v0, LI4/h;->f:Ljava/lang/Object;

    sget-object v2, LI4/k;->d:LI4/k;

    if-eq v1, v2, :cond_0

    iget-object v0, v0, LI4/h;->f:Ljava/lang/Object;

    sget-object v1, LI4/k;->e:LI4/k;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, LJ4/E;->C0()LJ4/C;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "<Not computed yet>"

    :goto_0
    return-object p0
.end method

.method public final z0()Z
    .locals 0

    invoke-virtual {p0}, LJ4/E;->C0()LJ4/C;

    move-result-object p0

    invoke-virtual {p0}, LJ4/C;->z0()Z

    move-result p0

    return p0
.end method
