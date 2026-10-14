.class public final LS3/b;
.super LJ4/b;
.source "SourceFile"


# instance fields
.field public final synthetic c:LS3/c;


# direct methods
.method public constructor <init>(LS3/c;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LS3/b;->c:LS3/c;

    iget-object p1, p1, LS3/c;->h:LI4/l;

    invoke-direct {p0, p1}, LJ4/b;-><init>(LI4/o;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Collection;
    .locals 10

    iget-object p0, p0, LS3/b;->c:LS3/c;

    iget-object v0, p0, LS3/c;->j:LS3/e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    iget v3, p0, LS3/c;->k:I

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    sget-object v0, LS3/c;->p:Ls4/b;

    new-instance v2, Ls4/b;

    sget-object v4, LR3/p;->c:Ls4/c;

    sget-object v5, LS3/e;->h:LS3/e;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, v5, LS3/e;->e:Ljava/lang/String;

    invoke-static {v3, v5}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Ls4/b;-><init>(Ls4/c;Ls4/f;)V

    filled-new-array {v0, v2}, [Ls4/b;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    sget-object v0, LS3/c;->p:Ls4/b;

    new-instance v2, Ls4/b;

    sget-object v4, LR3/p;->j:Ls4/c;

    sget-object v5, LS3/e;->g:LS3/e;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, v5, LS3/e;->e:Ljava/lang/String;

    invoke-static {v3, v5}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Ls4/b;-><init>(Ls4/c;Ls4/f;)V

    filled-new-array {v0, v2}, [Ls4/b;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, LS3/c;->o:Ls4/b;

    invoke-static {v0}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, LS3/c;->o:Ls4/b;

    invoke-static {v0}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-object v2, p0, LS3/c;->i:LG4/c;

    check-cast v2, LX3/F;

    invoke-virtual {v2}, LX3/F;->H0()LU3/x;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls4/b;

    invoke-static {v2, v4}, LR3/f;->B(LU3/x;Ls4/b;)LU3/e;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-interface {v5}, LU3/g;->E()LJ4/M;

    move-result-object v4

    invoke-interface {v4}, LJ4/M;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-string v6, "<this>"

    iget-object v7, p0, LS3/c;->n:Ljava/util/List;

    invoke-static {v7, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v4, :cond_a

    if-nez v4, :cond_4

    sget-object v4, Lr3/r;->d:Lr3/r;

    goto :goto_4

    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-lt v4, v6, :cond_5

    invoke-static {v7}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    goto :goto_4

    :cond_5
    if-ne v4, v1, :cond_6

    invoke-static {v7}, Lr3/j;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_4

    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    instance-of v9, v7, Ljava/util/RandomAccess;

    if-eqz v9, :cond_7

    sub-int v4, v6, v4

    :goto_2
    if-ge v4, v6, :cond_8

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    sub-int/2addr v6, v4

    invoke-interface {v7, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    move-object v4, v8

    :goto_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v4}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LU3/O;

    new-instance v8, LJ4/Q;

    invoke-interface {v7}, LU3/g;->n()LJ4/G;

    move-result-object v7

    invoke-direct {v8, v7}, LJ4/Q;-><init>(LJ4/C;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    sget-object v4, LV3/g;->a:LV3/f;

    invoke-static {v4, v5, v6}, LJ4/d;->o(LV3/h;LU3/e;Ljava/util/List;)LJ4/G;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    const-string p0, "Requested element count "

    const-string v0, " is less than zero."

    invoke-static {v4, p0, v0}, LB/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Built-in class "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not found"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-static {v3}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final e()LU3/g;
    .locals 0

    iget-object p0, p0, LS3/b;->c:LS3/c;

    return-object p0
.end method

.method public final g()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LS3/b;->c:LS3/c;

    iget-object p0, p0, LS3/c;->n:Ljava/util/List;

    return-object p0
.end method

.method public final i()LU3/M;
    .locals 0

    sget-object p0, LU3/M;->f:LU3/M;

    return-object p0
.end method

.method public final n()LU3/e;
    .locals 0

    iget-object p0, p0, LS3/b;->c:LS3/c;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LS3/b;->c:LS3/c;

    invoke-virtual {p0}, LS3/c;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
