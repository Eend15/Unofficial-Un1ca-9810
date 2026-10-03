.class public LX3/W;
.super LX3/X;
.source "SourceFile"

# interfaces
.implements LU3/H;
.implements LU3/P;


# instance fields
.field public final i:I

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:LJ4/C;

.field public final n:LX3/W;


# direct methods
.method public constructor <init>(LU3/a;LX3/W;ILV3/h;Ls4/f;LJ4/C;ZZZLJ4/C;LU3/L;)V
    .locals 7

    move-object v6, p0

    const-string v0, "containingDeclaration"

    move-object v1, p1

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object v2, p4

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outType"

    move-object v4, p6

    invoke-static {p6, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    move-object/from16 v5, p11

    invoke-static {v5, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, LX3/X;-><init>(LU3/j;LV3/h;Ls4/f;LJ4/C;LU3/L;)V

    move v0, p3

    iput v0, v6, LX3/W;->i:I

    move v0, p7

    iput-boolean v0, v6, LX3/W;->j:Z

    move v0, p8

    iput-boolean v0, v6, LX3/W;->k:Z

    move/from16 v0, p9

    iput-boolean v0, v6, LX3/W;->l:Z

    move-object/from16 v0, p10

    iput-object v0, v6, LX3/W;->m:LJ4/C;

    if-nez p2, :cond_0

    move-object v0, v6

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, v6, LX3/W;->n:LX3/W;

    return-void
.end method


# virtual methods
.method public final bridge synthetic G0()LU3/k;
    .locals 0

    invoke-virtual {p0}, LX3/W;->K0()LX3/W;

    move-result-object p0

    return-object p0
.end method

.method public H0(LS3/g;Ls4/f;I)LX3/W;
    .locals 13

    move-object v0, p0

    new-instance v12, LX3/W;

    invoke-virtual {p0}, LD4/a;->p()LV3/h;

    move-result-object v4

    const-string v1, "annotations"

    invoke-static {v4, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LX3/X;->j()LJ4/C;

    move-result-object v6

    const-string v1, "type"

    invoke-static {v6, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LX3/W;->I0()Z

    move-result v7

    sget-object v11, LU3/L;->a:LU3/M;

    iget-boolean v9, v0, LX3/W;->l:Z

    iget-object v10, v0, LX3/W;->m:LJ4/C;

    const/4 v2, 0x0

    iget-boolean v8, v0, LX3/W;->k:Z

    move-object v0, v12

    move-object v1, p1

    move/from16 v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v11}, LX3/W;-><init>(LU3/a;LX3/W;ILV3/h;Ls4/f;LJ4/C;ZZZLJ4/C;LU3/L;)V

    return-object v12
.end method

.method public final I0()Z
    .locals 1

    iget-boolean v0, p0, LX3/W;->j:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, LX3/q;->g()LU3/j;

    move-result-object p0

    check-cast p0, LU3/a;

    check-cast p0, LU3/b;

    invoke-interface {p0}, LU3/b;->f0()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final J0()LU3/a;
    .locals 0

    invoke-super {p0}, LX3/q;->g()LU3/j;

    move-result-object p0

    check-cast p0, LU3/a;

    return-object p0
.end method

.method public final K0()LX3/W;
    .locals 1

    iget-object v0, p0, LX3/W;->n:LX3/W;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LX3/W;->K0()LX3/W;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final L(LU3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, LU3/l;->t(LX3/W;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final R()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic a()LU3/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, LX3/W;->K0()LX3/W;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LU3/j;
    .locals 0

    .line 2
    invoke-virtual {p0}, LX3/W;->K0()LX3/W;

    move-result-object p0

    return-object p0
.end method

.method public final b()LU3/n;
    .locals 1

    sget-object p0, LU3/o;->f:LU3/n;

    const-string v0, "LOCAL"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final bridge synthetic b0()Lx4/g;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g()LU3/j;
    .locals 0

    invoke-super {p0}, LX3/q;->g()LU3/j;

    move-result-object p0

    check-cast p0, LU3/a;

    return-object p0
.end method

.method public final l(LJ4/X;)LU3/k;
    .locals 1

    const-string v0, "substitutor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, LJ4/X;->a:LJ4/U;

    invoke-virtual {p1}, LJ4/U;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final m()Ljava/util/Collection;
    .locals 4

    invoke-super {p0}, LX3/q;->g()LU3/j;

    move-result-object v0

    check-cast v0, LU3/a;

    invoke-interface {v0}, LU3/a;->m()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "containingDeclaration.overriddenDescriptors"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU3/a;

    invoke-interface {v2}, LU3/a;->n0()Ljava/util/List;

    move-result-object v2

    iget v3, p0, LX3/W;->i:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX3/W;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
