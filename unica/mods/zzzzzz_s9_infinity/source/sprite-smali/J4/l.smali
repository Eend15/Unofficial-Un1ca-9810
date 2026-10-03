.class public final LJ4/l;
.super LJ4/m;
.source "SourceFile"

# interfaces
.implements LJ4/k;
.implements LM4/d;


# instance fields
.field public final e:LJ4/G;

.field public final f:Z


# direct methods
.method public constructor <init>(LJ4/G;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/l;->e:LJ4/G;

    iput-boolean p2, p0, LJ4/l;->f:Z

    return-void
.end method


# virtual methods
.method public final E0(LV3/h;)LJ4/b0;
    .locals 2

    new-instance v0, LJ4/l;

    iget-object v1, p0, LJ4/l;->e:LJ4/G;

    invoke-virtual {v1, p1}, LJ4/G;->G0(LV3/h;)LJ4/G;

    move-result-object p1

    iget-boolean p0, p0, LJ4/l;->f:Z

    invoke-direct {v0, p1, p0}, LJ4/l;-><init>(LJ4/G;Z)V

    return-object v0
.end method

.method public final F0(Z)LJ4/G;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, LJ4/l;->e:LJ4/G;

    invoke-virtual {p0, p1}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final G0(LV3/h;)LJ4/G;
    .locals 2

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LJ4/l;

    iget-object v1, p0, LJ4/l;->e:LJ4/G;

    invoke-virtual {v1, p1}, LJ4/G;->G0(LV3/h;)LJ4/G;

    move-result-object p1

    iget-boolean p0, p0, LJ4/l;->f:Z

    invoke-direct {v0, p1, p0}, LJ4/l;-><init>(LJ4/G;Z)V

    return-object v0
.end method

.method public final H0()LJ4/G;
    .locals 0

    iget-object p0, p0, LJ4/l;->e:LJ4/G;

    return-object p0
.end method

.method public final J0(LJ4/G;)LJ4/m;
    .locals 1

    new-instance v0, LJ4/l;

    iget-boolean p0, p0, LJ4/l;->f:Z

    invoke-direct {v0, p1, p0}, LJ4/l;-><init>(LJ4/G;Z)V

    return-object v0
.end method

.method public final d0()Z
    .locals 0

    iget-object p0, p0, LJ4/l;->e:LJ4/G;

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    move-result-object p0

    instance-of p0, p0, LU3/O;

    return p0
.end method

.method public final j(LJ4/C;)LJ4/b0;
    .locals 1

    const-string v0, "replacement"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LJ4/C;->B0()LJ4/b0;

    move-result-object p1

    iget-boolean p0, p0, LJ4/l;->f:Z

    invoke-static {p1, p0}, LJ4/c;->m(LJ4/b0;Z)LJ4/b0;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, LJ4/l;->e:LJ4/G;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "!!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final z0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
