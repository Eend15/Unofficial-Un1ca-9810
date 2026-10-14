.class public final LU3/z;
.super LX3/m;
.source "SourceFile"


# instance fields
.field public final j:Z

.field public final k:Ljava/util/ArrayList;

.field public final l:LJ4/j;


# direct methods
.method public constructor <init>(LI4/o;LU3/f;Ls4/f;ZI)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LU3/L;->a:LU3/M;

    invoke-direct {p0, p1, p2, p3, v0}, LX3/m;-><init>(LI4/o;LU3/j;Ls4/f;LU3/L;)V

    iput-boolean p4, p0, LU3/z;->j:Z

    const/4 p2, 0x0

    invoke-static {p2, p5}, LK/I;->x0(II)LK3/c;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p2}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, LK3/a;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    move-object p4, p2

    check-cast p4, LK3/b;

    iget-boolean p4, p4, LK3/b;->f:Z

    if-eqz p4, :cond_0

    move-object p4, p2

    check-cast p4, LK3/b;

    invoke-virtual {p4}, LK3/b;->b()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string v0, "T"

    invoke-static {p5, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p5

    const/4 v0, 0x1

    invoke-static {p0, v0, p5, p4, p1}, LX3/U;->K0(LX3/b;ILs4/f;ILI4/o;)LX3/U;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object p3, p0, LU3/z;->k:Ljava/util/ArrayList;

    new-instance p2, LJ4/j;

    invoke-static {p0}, LR3/f;->m(LU3/h;)Ljava/util/List;

    move-result-object p3

    invoke-static {p0}, Lz4/e;->j(LU3/j;)LU3/x;

    move-result-object p4

    invoke-interface {p4}, LU3/x;->c()LR3/j;

    move-result-object p4

    invoke-virtual {p4}, LR3/j;->e()LJ4/G;

    move-result-object p4

    invoke-static {p4}, Lp4/g;->T(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p4

    invoke-direct {p2, p0, p3, p4, p1}, LJ4/j;-><init>(LX3/B;Ljava/util/List;Ljava/util/Collection;LI4/o;)V

    iput-object p2, p0, LU3/z;->l:LJ4/j;

    return-void
.end method


# virtual methods
.method public final B()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final E()LJ4/M;
    .locals 0

    iget-object p0, p0, LU3/z;->l:LJ4/j;

    return-object p0
.end method

.method public final I()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final K()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final P()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lr3/t;->d:Lr3/t;

    return-object p0
.end method

.method public final T()LU3/d;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic U()LC4/o;
    .locals 0

    sget-object p0, LC4/n;->b:LC4/n;

    return-object p0
.end method

.method public final b()LU3/n;
    .locals 1

    sget-object p0, LU3/o;->e:LU3/n;

    const-string v0, "PUBLIC"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final e0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j(LK4/g;)LC4/o;
    .locals 0

    sget-object p0, LC4/n;->b:LC4/n;

    return-object p0
.end method

.method public final o()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LU3/z;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final p()LV3/h;
    .locals 0

    sget-object p0, LV3/g;->a:LV3/f;

    return-object p0
.end method

.method public final s()LU3/t;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final s0()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public final t()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LX3/b;->r()Ls4/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (not found)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final w()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final y()Z
    .locals 0

    iget-boolean p0, p0, LU3/z;->j:Z

    return p0
.end method
