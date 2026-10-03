.class public final Lx4/q;
.super Lx4/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ls4/b;I)V
    .locals 1

    new-instance v0, Lx4/f;

    invoke-direct {v0, p1, p2}, Lx4/f;-><init>(Ls4/b;I)V

    new-instance p1, Lx4/o;

    invoke-direct {p1, v0}, Lx4/o;-><init>(Lx4/f;)V

    invoke-direct {p0, p1}, Lx4/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(LU3/x;)LJ4/C;
    .locals 6

    const-string v0, "module"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LV3/g;->a:LV3/f;

    invoke-interface {p1}, LU3/x;->c()LR3/j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LR3/o;->P:Ls4/e;

    invoke-virtual {v2}, Ls4/e;->g()Ls4/c;

    move-result-object v2

    invoke-virtual {v1, v2}, LR3/j;->i(Ls4/c;)LU3/e;

    move-result-object v1

    new-instance v2, LJ4/Q;

    iget-object p0, p0, Lx4/g;->a:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lx4/p;

    instance-of v4, v3, Lx4/n;

    if-eqz v4, :cond_0

    check-cast p0, Lx4/n;

    iget-object p0, p0, Lx4/n;->a:LJ4/C;

    goto :goto_1

    :cond_0
    instance-of v3, v3, Lx4/o;

    if-eqz v3, :cond_3

    check-cast p0, Lx4/o;

    iget-object p0, p0, Lx4/o;->a:Lx4/f;

    iget-object v3, p0, Lx4/f;->a:Ls4/b;

    invoke-static {p1, v3}, LR3/f;->B(LU3/x;Ls4/b;)LU3/e;

    move-result-object v4

    iget p0, p0, Lx4/f;->b:I

    if-nez v4, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "Unresolved type: "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (arrayDimensions="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {v4}, LU3/e;->n()LJ4/G;

    move-result-object v3

    const-string v4, "descriptor.defaultType"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, LK/I;->n0(LJ4/C;)LJ4/b0;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p0, :cond_2

    invoke-interface {p1}, LU3/x;->c()LR3/j;

    move-result-object v5

    invoke-virtual {v5, v3}, LR3/j;->h(LJ4/b0;)LJ4/G;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object p0, v3

    :goto_1
    const/4 p1, 0x1

    invoke-direct {v2, p1, p0}, LJ4/Q;-><init>(ILJ4/C;)V

    invoke-static {v2}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, v1, p0}, LJ4/d;->o(LV3/h;LU3/e;Ljava/util/List;)LJ4/G;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
