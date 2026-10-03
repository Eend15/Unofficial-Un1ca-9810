.class public final Lk4/g;
.super LJ4/m;
.source "SourceFile"

# interfaces
.implements LJ4/k;


# instance fields
.field public final e:LJ4/G;


# direct methods
.method public constructor <init>(LJ4/G;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk4/g;->e:LJ4/G;

    return-void
.end method


# virtual methods
.method public final E0(LV3/h;)LJ4/b0;
    .locals 1

    new-instance v0, Lk4/g;

    iget-object p0, p0, Lk4/g;->e:LJ4/G;

    invoke-virtual {p0, p1}, LJ4/G;->G0(LV3/h;)LJ4/G;

    move-result-object p0

    invoke-direct {v0, p0}, Lk4/g;-><init>(LJ4/G;)V

    return-object v0
.end method

.method public final F0(Z)LJ4/G;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iget-object p0, p0, Lk4/g;->e:LJ4/G;

    invoke-virtual {p0, p1}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final G0(LV3/h;)LJ4/G;
    .locals 1

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lk4/g;

    iget-object p0, p0, Lk4/g;->e:LJ4/G;

    invoke-virtual {p0, p1}, LJ4/G;->G0(LV3/h;)LJ4/G;

    move-result-object p0

    invoke-direct {v0, p0}, Lk4/g;-><init>(LJ4/G;)V

    return-object v0
.end method

.method public final H0()LJ4/G;
    .locals 0

    iget-object p0, p0, Lk4/g;->e:LJ4/G;

    return-object p0
.end method

.method public final J0(LJ4/G;)LJ4/m;
    .locals 0

    new-instance p0, Lk4/g;

    invoke-direct {p0, p1}, Lk4/g;-><init>(LJ4/G;)V

    return-object p0
.end method

.method public final d0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final j(LJ4/C;)LJ4/b0;
    .locals 3

    const-string p0, "replacement"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LJ4/C;->B0()LJ4/b0;

    move-result-object p0

    const-string p1, "<this>"

    invoke-static {p0, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LJ4/Z;->f(LJ4/C;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, LJ4/Z;->e(LJ4/C;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    instance-of p1, p0, LJ4/G;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    check-cast p0, LJ4/G;

    invoke-virtual {p0, v0}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object p1

    invoke-static {p0}, LJ4/Z;->f(LJ4/C;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    new-instance p0, Lk4/g;

    invoke-direct {p0, p1}, Lk4/g;-><init>(LJ4/G;)V

    move-object p1, p0

    goto :goto_2

    :cond_2
    instance-of p1, p0, LJ4/w;

    if-eqz p1, :cond_5

    move-object p1, p0

    check-cast p1, LJ4/w;

    iget-object v1, p1, LJ4/w;->e:LJ4/G;

    invoke-virtual {v1, v0}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object v2

    invoke-static {v1}, LJ4/Z;->f(LJ4/C;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Lk4/g;

    invoke-direct {v1, v2}, Lk4/g;-><init>(LJ4/G;)V

    move-object v2, v1

    :goto_0
    iget-object p1, p1, LJ4/w;->f:LJ4/G;

    invoke-virtual {p1, v0}, LJ4/G;->F0(Z)LJ4/G;

    move-result-object v0

    invoke-static {p1}, LJ4/Z;->f(LJ4/C;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lk4/g;

    invoke-direct {p1, v0}, Lk4/g;-><init>(LJ4/G;)V

    move-object v0, p1

    :goto_1
    invoke-static {v2, v0}, LJ4/d;->i(LJ4/G;LJ4/G;)LJ4/b0;

    move-result-object p1

    invoke-static {p0}, LJ4/c;->e(LJ4/C;)LJ4/C;

    move-result-object p0

    invoke-static {p1, p0}, LJ4/c;->z(LJ4/b0;LJ4/C;)LJ4/b0;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_5
    const-string p1, "Incorrect type: "

    invoke-static {p0, p1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final z0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
