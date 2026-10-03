.class public final LH4/w;
.super LX3/c;
.source "SourceFile"


# instance fields
.field public final n:LF4/k;

.field public final o:Ln4/W;

.field public final p:LH4/a;


# direct methods
.method public constructor <init>(LF4/k;Ln4/W;I)V
    .locals 10

    const-string v0, "c"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LF4/k;->a:LF4/i;

    iget-object v2, v0, LF4/i;->a:LI4/o;

    sget-object v4, LV3/g;->a:LV3/f;

    iget v1, p2, Ln4/W;->h:I

    iget-object v3, p1, LF4/k;->b:Lp4/f;

    invoke-static {v3, v1}, Lw0/f;->B(Lp4/f;I)Ls4/f;

    move-result-object v5

    iget-object v1, p2, Ln4/W;->j:Ln4/V;

    const-string v3, "proto.variance"

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    const/4 v6, 0x1

    if-eq v1, v6, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const/4 v1, 0x3

    move v6, v1

    goto :goto_0

    :cond_2
    move v6, v3

    :goto_0
    iget-boolean v7, p2, Ln4/W;->i:Z

    sget-object v9, LU3/M;->f:LU3/M;

    iget-object v3, p1, LF4/k;->c:LU3/j;

    move-object v1, p0

    move v8, p3

    invoke-direct/range {v1 .. v9}, LX3/c;-><init>(LI4/o;LU3/j;LV3/h;Ls4/f;IZILU3/M;)V

    iput-object p1, p0, LH4/w;->n:LF4/k;

    iput-object p2, p0, LH4/w;->o:Ln4/W;

    new-instance p1, LH4/a;

    new-instance p2, LC4/g;

    const/16 p3, 0x8

    invoke-direct {p2, p3, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    iget-object p3, v0, LF4/i;->a:LI4/o;

    invoke-direct {p1, p3, p2}, LH4/a;-><init>(LI4/o;LE3/a;)V

    iput-object p1, p0, LH4/w;->p:LH4/a;

    return-void
.end method


# virtual methods
.method public final I0()Ljava/util/List;
    .locals 6

    iget-object v0, p0, LH4/w;->n:LF4/k;

    iget-object v1, v0, LF4/k;->d:LX3/C;

    iget-object v2, p0, LH4/w;->o:Ln4/W;

    const-string v3, "<this>"

    invoke-static {v2, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "typeTable"

    invoke-static {v1, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v2, Ln4/W;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    iget-object v2, v2, Ln4/W;->l:Ljava/util/List;

    const-string v3, "upperBoundIdList"

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

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v5, "it"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, LX3/C;->a(I)Ln4/Q;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lz4/e;->e(LU3/j;)LR3/j;

    move-result-object p0

    invoke-virtual {p0}, LR3/j;->n()LJ4/G;

    move-result-object p0

    invoke-static {p0}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v3}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln4/Q;

    iget-object v3, v0, LF4/k;->h:LF4/F;

    invoke-virtual {v3, v2}, LF4/F;->f(Ln4/Q;)LJ4/C;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p0
.end method

.method public final p()LV3/h;
    .locals 0

    iget-object p0, p0, LH4/w;->p:LH4/a;

    return-object p0
.end method
