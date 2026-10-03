.class public final LO3/K;
.super LO3/z;
.source "SourceFile"


# instance fields
.field public final e:LO3/l0;

.field public final f:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const-string v0, "jClass"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO3/K;->f:Ljava/lang/Class;

    new-instance p1, LC4/g;

    const/16 v0, 0x13

    invoke-direct {p1, v0, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    new-instance v0, LO3/l0;

    invoke-direct {v0, p1}, LO3/l0;-><init>(LE3/a;)V

    iput-object v0, p0, LO3/K;->e:LO3/l0;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, LO3/K;->f:Ljava/lang/Class;

    return-object p0
.end method

.method public final e()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LO3/K;

    if-eqz v0, :cond_0

    check-cast p1, LO3/K;

    iget-object p1, p1, LO3/K;->f:Ljava/lang/Class;

    iget-object p0, p0, LO3/K;->f:Ljava/lang/Class;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(Ls4/f;)Ljava/util/Collection;
    .locals 2

    iget-object p0, p0, LO3/K;->e:LO3/l0;

    invoke-virtual {p0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LO3/I;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LO3/I;->i:[LL3/l;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, LO3/I;->e:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC4/o;

    sget-object v0, Lc4/b;->e:Lc4/b;

    invoke-interface {p0, p1, v0}, LC4/o;->g(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final g(I)LX3/L;
    .locals 9

    iget-object v0, p0, LO3/K;->e:LO3/l0;

    invoke-virtual {v0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO3/I;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LO3/I;->i:[LL3/l;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v0, v0, LO3/I;->g:LO3/l0;

    invoke-virtual {v0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lq3/k;->d:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lr4/g;

    iget-object v2, v0, Lq3/k;->e:Ljava/lang/Object;

    check-cast v2, Ln4/C;

    iget-object v0, v0, Lq3/k;->f:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lr4/f;

    sget-object v0, Lq4/j;->n:Lt4/o;

    const-string v3, "JvmProtoBuf.packageLocalVariable"

    invoke-static {v0, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0, p1}, Lj0/s;->y(Lt4/m;Lt4/o;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ln4/G;

    if-eqz v4, :cond_0

    new-instance v6, LX3/C;

    iget-object p1, v2, Ln4/C;->j:Ln4/X;

    const-string v0, "packageProto.typeTable"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, p1}, LX3/C;-><init>(Ln4/X;)V

    sget-object v8, LO3/J;->l:LO3/J;

    iget-object v3, p0, LO3/K;->f:Ljava/lang/Class;

    invoke-static/range {v3 .. v8}, LO3/r0;->c(Ljava/lang/Class;Lt4/m;Lp4/f;LX3/C;Lp4/a;LE3/c;)LU3/a;

    move-result-object p0

    move-object v1, p0

    check-cast v1, LX3/L;

    :cond_0
    return-object v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, LO3/K;->f:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i()Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, LO3/K;->e:LO3/l0;

    invoke-virtual {v0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO3/I;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LO3/I;->i:[LL3/l;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v0, v0, LO3/I;->f:LO3/l0;

    invoke-virtual {v0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LO3/K;->f:Ljava/lang/Class;

    :goto_0
    return-object v0
.end method

.method public final j(Ls4/f;)Ljava/util/Collection;
    .locals 2

    iget-object p0, p0, LO3/K;->e:LO3/l0;

    invoke-virtual {p0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LO3/I;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LO3/I;->i:[LL3/l;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, LO3/I;->e:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC4/o;

    sget-object v0, Lc4/b;->e:Lc4/b;

    invoke-interface {p0, p1, v0}, LC4/o;->d(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LO3/K;->f:Ljava/lang/Class;

    invoke-static {p0}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object p0

    invoke-virtual {p0}, Ls4/b;->b()Ls4/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
