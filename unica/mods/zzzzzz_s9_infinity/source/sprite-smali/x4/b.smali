.class public Lx4/b;
.super Lx4/g;
.source "SourceFile"


# instance fields
.field public final b:LF3/l;


# direct methods
.method public constructor <init>(Ljava/util/List;LE3/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lx4/g;-><init>(Ljava/lang/Object;)V

    check-cast p2, LF3/l;

    iput-object p2, p0, Lx4/b;->b:LF3/l;

    return-void
.end method


# virtual methods
.method public final a(LU3/x;)LJ4/C;
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx4/b;->b:LF3/l;

    invoke-interface {p0, p1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/C;

    invoke-static {p0}, LR3/j;->x(LJ4/C;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, LJ4/C;->q0()LJ4/M;

    move-result-object p1

    invoke-interface {p1}, LJ4/M;->e()LU3/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, LR3/j;->q(LU3/g;)LR3/l;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, LR3/o;->V:Ls4/c;

    invoke-virtual {p1}, Ls4/c;->i()Ls4/e;

    move-result-object p1

    invoke-static {p0, p1}, LR3/j;->A(LJ4/C;Ls4/e;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, LR3/o;->W:Ls4/c;

    invoke-virtual {p1}, Ls4/c;->i()Ls4/e;

    move-result-object p1

    invoke-static {p0, p1}, LR3/j;->A(LJ4/C;Ls4/e;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, LR3/o;->X:Ls4/c;

    invoke-virtual {p1}, Ls4/c;->i()Ls4/e;

    move-result-object p1

    invoke-static {p0, p1}, LR3/j;->A(LJ4/C;Ls4/e;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, LR3/o;->Y:Ls4/c;

    invoke-virtual {p1}, Ls4/c;->i()Ls4/e;

    move-result-object p1

    invoke-static {p0, p1}, LR3/j;->A(LJ4/C;Ls4/e;)Z

    :cond_1
    :goto_0
    return-object p0
.end method
