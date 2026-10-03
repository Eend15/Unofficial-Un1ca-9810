.class public final LS3/g;
.super LX3/P;
.source "SourceFile"


# direct methods
.method public constructor <init>(LU3/j;LS3/g;IZ)V
    .locals 7

    sget-object v3, LV3/g;->a:LV3/f;

    sget-object v4, LP4/k;->g:Ls4/f;

    sget-object v6, LU3/L;->a:LU3/M;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, LX3/P;-><init>(LU3/j;LX3/P;LV3/h;Ls4/f;ILU3/L;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LX3/w;->o:Z

    iput-boolean p4, p0, LX3/w;->w:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, LX3/w;->x:Z

    return-void
.end method


# virtual methods
.method public final B()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final J0(ILU3/j;LU3/s;LU3/L;LV3/h;Ls4/f;)LX3/w;
    .locals 0

    const-string p4, "newOwner"

    invoke-static {p2, p4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "kind"

    invoke-static {p1, p4}, LB/a;->t(ILjava/lang/String;)V

    const-string p4, "annotations"

    invoke-static {p5, p4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, LS3/g;

    check-cast p3, LS3/g;

    iget-boolean p0, p0, LX3/w;->w:Z

    invoke-direct {p4, p2, p3, p1, p0}, LS3/g;-><init>(LU3/j;LS3/g;IZ)V

    return-object p4
.end method

.method public final K0(LX3/v;)LX3/w;
    .locals 8

    const-string v0, "configuration"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, LX3/w;->K0(LX3/v;)LX3/w;

    move-result-object p0

    check-cast p0, LS3/g;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, LX3/w;->n0()Ljava/util/List;

    move-result-object p1

    const-string v0, "substituted.valueParameters"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX3/W;

    check-cast v1, LX3/X;

    invoke-virtual {v1}, LX3/X;->j()LJ4/C;

    move-result-object v1

    const-string v2, "it.type"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LR3/f;->x(LJ4/C;)Ls4/f;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LX3/w;->n0()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX3/W;

    check-cast v1, LX3/X;

    invoke-virtual {v1}, LX3/X;->j()LJ4/C;

    move-result-object v1

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LR3/f;->x(LJ4/C;)Ls4/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, LX3/w;->n0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, LX3/w;->n0()Ljava/util/List;

    move-result-object v2

    const-string v3, "valueParameters"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LX3/W;

    move-object v5, v4

    check-cast v5, LX3/p;

    invoke-virtual {v5}, LX3/p;->r()Ls4/f;

    move-result-object v5

    const-string v6, "it.name"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, v4, LX3/W;->i:I

    sub-int v7, v6, p1

    if-ltz v7, :cond_4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls4/f;

    if-eqz v7, :cond_4

    move-object v5, v7

    :cond_4
    invoke-virtual {v4, p0, v5, v6}, LX3/W;->H0(LS3/g;Ls4/f;I)LX3/W;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sget-object p1, LJ4/X;->b:LJ4/X;

    invoke-virtual {p0, p1}, LX3/w;->N0(LJ4/X;)LX3/v;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    :cond_6
    move v1, v4

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls4/f;

    if-nez v2, :cond_8

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, LX3/v;->x:Ljava/lang/Boolean;

    iput-object v3, p1, LX3/v;->j:Ljava/util/List;

    invoke-virtual {p0}, LX3/P;->S0()LX3/P;

    move-result-object v0

    iput-object v0, p1, LX3/v;->h:LU3/s;

    invoke-super {p0, p1}, LX3/w;->K0(LX3/v;)LX3/w;

    move-result-object p0

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    :cond_9
    :goto_3
    return-object p0
.end method

.method public final M()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
