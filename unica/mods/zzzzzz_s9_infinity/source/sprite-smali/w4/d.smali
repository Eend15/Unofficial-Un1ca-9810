.class public final Lw4/d;
.super LJ4/U;
.source "SourceFile"


# instance fields
.field public final b:LJ4/U;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(ZLJ4/U;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lw4/d;->c:Z

    iput-object p2, p0, Lw4/d;->b:LJ4/U;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lw4/d;->b:LJ4/U;

    invoke-virtual {p0}, LJ4/U;->a()Z

    move-result p0

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lw4/d;->c:Z

    return p0
.end method

.method public final c(LV3/h;)LV3/h;
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lw4/d;->b:LJ4/U;

    invoke-virtual {p0, p1}, LJ4/U;->c(LV3/h;)LV3/h;

    move-result-object p0

    return-object p0
.end method

.method public final d(LJ4/C;)LJ4/P;
    .locals 2

    iget-object p0, p0, Lw4/d;->b:LJ4/U;

    invoke-virtual {p0, p1}, LJ4/U;->d(LJ4/C;)LJ4/P;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LJ4/C;->q0()LJ4/M;

    move-result-object p1

    invoke-interface {p1}, LJ4/M;->e()LU3/g;

    move-result-object p1

    instance-of v1, p1, LU3/O;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, LU3/O;

    :cond_1
    invoke-static {p0, v0}, Lp4/g;->s(LJ4/P;LU3/O;)LJ4/P;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lw4/d;->b:LJ4/U;

    invoke-virtual {p0}, LJ4/U;->e()Z

    move-result p0

    return p0
.end method

.method public final f(ILJ4/C;)LJ4/C;
    .locals 1

    const-string v0, "topLevelType"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p1, v0}, LB/a;->t(ILjava/lang/String;)V

    iget-object p0, p0, Lw4/d;->b:LJ4/U;

    invoke-virtual {p0, p1, p2}, LJ4/U;->f(ILJ4/C;)LJ4/C;

    move-result-object p0

    return-object p0
.end method
