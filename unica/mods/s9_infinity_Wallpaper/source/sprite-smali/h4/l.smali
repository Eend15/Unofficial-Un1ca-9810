.class public final Lh4/l;
.super Lh4/w;
.source "SourceFile"


# instance fields
.field public final n:LU3/e;

.field public final o:La4/n;

.field public final p:Z

.field public final q:LI4/i;

.field public final r:LI4/i;

.field public final s:LI4/i;

.field public final t:LI4/j;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/b;LU3/e;La4/n;ZLh4/l;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerDescriptor"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jClass"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p5}, Lh4/w;-><init>(Landroidx/recyclerview/widget/b;Lh4/w;)V

    iput-object p2, p0, Lh4/l;->n:LU3/e;

    iput-object p3, p0, Lh4/l;->o:La4/n;

    iput-boolean p4, p0, Lh4/l;->p:Z

    iget-object p2, p1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p2, Lg4/a;

    iget-object p2, p2, Lg4/a;->a:LI4/l;

    new-instance p3, LF4/C;

    const/16 p4, 0x11

    invoke-direct {p3, p0, p4, p1}, LF4/C;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, LI4/i;

    invoke-direct {p4, p2, p3}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object p4, p0, Lh4/l;->q:LI4/i;

    new-instance p3, Lh4/k;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p4}, Lh4/k;-><init>(Lh4/l;I)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, LI4/i;

    invoke-direct {p4, p2, p3}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object p4, p0, Lh4/l;->r:LI4/i;

    new-instance p3, Lh4/k;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lh4/k;-><init>(Lh4/l;I)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, LI4/i;

    invoke-direct {p4, p2, p3}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object p4, p0, Lh4/l;->s:LI4/i;

    new-instance p3, LH4/j;

    const/4 p4, 0x3

    invoke-direct {p3, p0, p4, p1}, LH4/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, LI4/l;->c(LE3/b;)LI4/j;

    move-result-object p1

    iput-object p1, p0, Lh4/l;->t:LI4/j;

    return-void
.end method

.method public static C(LX3/P;LU3/s;Ljava/util/AbstractCollection;)LX3/P;
    .locals 2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX3/P;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, LX3/w;->D:LU3/s;

    if-nez v1, :cond_1

    invoke-static {v0, p1}, Lh4/l;->F(LU3/s;LU3/s;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, LU3/s;->Z()LU3/r;

    move-result-object p0

    invoke-interface {p0}, LU3/r;->J()LU3/r;

    move-result-object p0

    invoke-interface {p0}, LU3/r;->build()LU3/s;

    move-result-object p0

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast p0, LX3/P;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static F(LU3/s;LU3/s;)Z
    .locals 3

    sget-object v0, Lv4/o;->c:Lv4/o;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Lv4/o;->n(LU3/a;LU3/a;Z)Lv4/n;

    move-result-object v0

    invoke-virtual {v0}, Lv4/n;->c()I

    move-result v0

    const-string v2, "DEFAULT.isOverridableByW\u2026iptor, this, true).result"

    invoke-static {v0, v2}, LB/a;->y(ILjava/lang/String;)V

    if-ne v0, v1, :cond_0

    invoke-static {p1, p0}, La4/x;->t(LU3/a;LU3/a;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static G(LX3/P;LX3/P;)Z
    .locals 2

    sget v0, Ld4/e;->l:I

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object v0

    invoke-virtual {v0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "removeAt"

    invoke-static {v0, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lj0/s;->r(LU3/a;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ld4/F;->g:Ld4/C;

    iget-object v1, v1, Ld4/C;->b:Ljava/lang/String;

    invoke-static {v0, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LX3/P;->S0()LX3/P;

    move-result-object p1

    :cond_0
    const-string v0, "if (superDescriptor.isRe\u2026iginal else subDescriptor"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lh4/l;->F(LU3/s;LU3/s;)Z

    move-result p0

    return p0
.end method

.method public static H(LX3/L;Ljava/lang/String;LE3/b;)LX3/P;
    .locals 4

    invoke-static {p1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p1

    invoke-interface {p2, p1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LX3/P;

    invoke-virtual {p2}, LX3/w;->n0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, LK4/e;->a:LK4/m;

    iget-object v2, p2, LX3/w;->j:LJ4/C;

    if-nez v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v3, p0

    check-cast v3, LX3/X;

    invoke-virtual {v3}, LX3/X;->j()LJ4/C;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, LK4/m;->c(LJ4/C;LJ4/C;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_3

    move-object v0, p2

    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    :cond_4
    return-object v0
.end method

.method public static J(LX3/L;LE3/b;)LX3/P;
    .locals 5

    move-object v0, p0

    check-cast v0, LX3/p;

    invoke-virtual {v0}, LX3/p;->r()Ls4/f;

    move-result-object v0

    invoke-virtual {v0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ld4/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    invoke-interface {p1, v0}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX3/P;

    invoke-virtual {v0}, LX3/w;->n0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, LX3/w;->j:LJ4/C;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v3, LR3/j;->e:Ls4/f;

    sget-object v3, LR3/o;->d:Ls4/e;

    invoke-static {v2, v3}, LR3/j;->C(LJ4/C;Ls4/e;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, LK4/e;->a:LK4/m;

    invoke-virtual {v0}, LX3/w;->n0()Ljava/util/List;

    move-result-object v3

    const-string v4, "descriptor.valueParameters"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lr3/j;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LX3/W;

    check-cast v3, LX3/X;

    invoke-virtual {v3}, LX3/X;->j()LJ4/C;

    move-result-object v3

    move-object v4, p0

    check-cast v4, LX3/X;

    invoke-virtual {v4}, LX3/X;->j()LJ4/C;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LK4/m;->a(LJ4/C;LJ4/C;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v1, v0

    :cond_4
    :goto_0
    if-eqz v1, :cond_0

    :cond_5
    return-object v1
.end method

.method public static M(LX3/P;LU3/s;)Z
    .locals 4

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lj0/s;->q(LU3/s;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, LU3/s;->a()LU3/s;

    move-result-object v2

    const-string v3, "builtinWithErasedParameters.original"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lj0/s;->q(LU3/s;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lh4/l;->F(LU3/s;LU3/s;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final v(Lh4/l;Ls4/f;)Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, Lh4/w;->e:LI4/i;

    invoke-virtual {v0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/c;

    invoke-interface {v0, p1}, Lh4/c;->d(Ls4/f;)Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La4/w;

    invoke-virtual {p0, v1}, Lh4/w;->t(La4/w;)Lf4/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final w(Lh4/l;Ls4/f;)Ljava/util/ArrayList;
    .locals 3

    invoke-virtual {p0, p1}, Lh4/l;->K(Ls4/f;)Ljava/util/LinkedHashSet;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LX3/P;

    const-string v2, "<this>"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, La4/x;->A(LU3/b;)LU3/b;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ld4/g;->a(LU3/s;)LU3/s;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method


# virtual methods
.method public final A(Ljava/util/Set;Ljava/util/AbstractCollection;LS4/j;LE3/b;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LX3/L;

    invoke-virtual {v0, v4, v2}, Lh4/l;->E(LX3/L;LE3/b;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v0, v4, v2}, Lh4/l;->I(LX3/L;LE3/b;)LX3/P;

    move-result-object v5

    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    iget-boolean v7, v4, LX3/L;->i:Z

    if-eqz v7, :cond_1

    invoke-static {v4, v2}, Lh4/l;->J(LX3/L;LE3/b;)LX3/P;

    move-result-object v7

    invoke-static {v7}, LF3/k;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, LX3/w;->e()I

    invoke-virtual {v5}, LX3/w;->e()I

    :goto_2
    new-instance v15, Lf4/d;

    const-string v8, "ownerDescriptor"

    iget-object v9, v0, Lh4/l;->n:LU3/e;

    invoke-static {v9, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, LV3/g;->a:LV3/f;

    invoke-virtual {v5}, LX3/w;->e()I

    move-result v11

    invoke-virtual {v5}, LX3/w;->b()LU3/n;

    move-result-object v12

    const/4 v14, 0x0

    if-eqz v7, :cond_3

    const/4 v8, 0x1

    move v13, v8

    goto :goto_3

    :cond_3
    move v13, v14

    :goto_3
    move-object v8, v4

    check-cast v8, LX3/p;

    invoke-virtual {v8}, LX3/p;->r()Ls4/f;

    move-result-object v16

    invoke-virtual {v5}, LX3/q;->i()LU3/L;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v8, v15

    move-object/from16 v14, v16

    move-object v0, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v20

    move/from16 v17, v21

    invoke-direct/range {v8 .. v19}, Lf4/g;-><init>(LU3/j;LV3/h;ILU3/n;ZLs4/f;LU3/L;LX3/L;IZLq3/f;)V

    iget-object v8, v5, LX3/w;->j:LJ4/C;

    invoke-static {v8}, LF3/k;->c(Ljava/lang/Object;)V

    sget-object v9, Lr3/r;->d:Lr3/r;

    invoke-virtual/range {p0 .. p0}, Lh4/l;->p()LU3/J;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10, v6}, LX3/L;->L0(LJ4/C;Ljava/util/List;LU3/J;LX3/O;)V

    invoke-virtual {v5}, LD4/a;->p()LV3/h;

    move-result-object v8

    invoke-virtual {v5}, LX3/q;->i()LU3/L;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v0, v8, v10, v9}, Lv4/p;->j(LX3/L;LV3/h;ZLU3/L;)LX3/M;

    move-result-object v14

    iput-object v5, v14, LX3/J;->o:LU3/s;

    invoke-virtual {v0}, LX3/X;->j()LJ4/C;

    move-result-object v5

    invoke-virtual {v14, v5}, LX3/M;->K0(LJ4/C;)V

    if-eqz v7, :cond_5

    invoke-virtual {v7}, LX3/w;->n0()Ljava/util/List;

    move-result-object v5

    const-string v8, "setterMethod.valueParameters"

    invoke-static {v5, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lr3/j;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LX3/W;

    if-eqz v5, :cond_4

    invoke-virtual {v7}, LD4/a;->p()LV3/h;

    move-result-object v9

    check-cast v5, LD4/a;

    invoke-virtual {v5}, LD4/a;->p()LV3/h;

    move-result-object v10

    invoke-virtual {v7}, LX3/w;->b()LU3/n;

    move-result-object v12

    invoke-virtual {v7}, LX3/q;->i()LU3/L;

    move-result-object v13

    const/4 v11, 0x0

    move-object v8, v0

    invoke-static/range {v8 .. v13}, Lv4/p;->k(LX3/L;LV3/h;LV3/h;ZLU3/n;LU3/L;)LX3/N;

    move-result-object v5

    iput-object v7, v5, LX3/J;->o:LU3/s;

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No parameter found for "

    invoke-static {v7, v1}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_5
    move-object v5, v6

    :goto_4
    invoke-virtual {v0, v14, v5, v6, v6}, LX3/L;->K0(LX3/M;LX3/N;LX3/u;LX3/u;)V

    move-object v6, v0

    :goto_5
    move-object/from16 v0, p2

    if-eqz v6, :cond_7

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1, v4}, LS4/j;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_8
    :goto_6
    return-void
.end method

.method public final B()Ljava/util/Collection;
    .locals 2

    iget-boolean v0, p0, Lh4/l;->p:Z

    iget-object v1, p0, Lh4/l;->n:LU3/e;

    if-eqz v0, :cond_0

    invoke-interface {v1}, LU3/g;->E()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->f()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object p0, p0, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Lg4/a;

    iget-object p0, p0, Lg4/a;->u:LK4/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "classDescriptor"

    invoke-static {v1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, LU3/g;->E()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->f()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "classDescriptor.typeConstructor.supertypes"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final D(LX3/P;)LX3/P;
    .locals 5

    invoke-virtual {p1}, LX3/w;->n0()Ljava/util/List;

    move-result-object v0

    const-string v1, "valueParameters"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lr3/j;->D0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX3/W;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    goto :goto_3

    :cond_1
    move-object v3, v0

    check-cast v3, LX3/X;

    invoke-virtual {v3}, LX3/X;->j()LJ4/C;

    move-result-object v3

    invoke-virtual {v3}, LJ4/C;->q0()LJ4/M;

    move-result-object v3

    invoke-interface {v3}, LJ4/M;->e()LU3/g;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_0
    move-object v3, v2

    goto :goto_2

    :cond_2
    invoke-static {v3}, Lz4/e;->h(LU3/j;)Ls4/e;

    move-result-object v3

    invoke-virtual {v3}, Ls4/e;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ls4/e;->g()Ls4/c;

    move-result-object v3

    :goto_2
    iget-object p0, p0, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Lg4/a;

    iget-object p0, p0, Lg4/a;->t:Lg4/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LR3/q;->a:LX3/E;

    sget-object p0, LR3/p;->e:Ls4/c;

    invoke-static {v3, p0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    :goto_3
    if-nez v0, :cond_5

    return-object v2

    :cond_5
    invoke-interface {p1}, LU3/s;->Z()LU3/r;

    move-result-object p0

    invoke-virtual {p1}, LX3/w;->n0()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lr3/j;->r0(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, LU3/r;->r(Ljava/util/List;)LU3/r;

    move-result-object p0

    check-cast v0, LX3/X;

    invoke-virtual {v0}, LX3/X;->j()LJ4/C;

    move-result-object p1

    invoke-virtual {p1}, LJ4/C;->m0()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJ4/P;

    invoke-virtual {p1}, LJ4/P;->b()LJ4/C;

    move-result-object p1

    invoke-interface {p0, p1}, LU3/r;->f(LJ4/C;)LU3/r;

    move-result-object p0

    invoke-interface {p0}, LU3/r;->build()LU3/s;

    move-result-object p0

    check-cast p0, LX3/P;

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    const/4 p1, 0x1

    iput-boolean p1, p0, LX3/w;->w:Z

    :goto_4
    return-object p0
.end method

.method public final E(LX3/L;LE3/b;)Z
    .locals 2

    invoke-static {p1}, Le0/a;->S(LX3/L;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lh4/l;->I(LX3/L;LE3/b;)LX3/P;

    move-result-object p0

    invoke-static {p1, p2}, Lh4/l;->J(LX3/L;LE3/b;)LX3/P;

    move-result-object p2

    if-nez p0, :cond_1

    return v1

    :cond_1
    iget-boolean p1, p1, LX3/L;->i:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    return v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, LX3/w;->e()I

    move-result p1

    invoke-virtual {p0}, LX3/w;->e()I

    move-result p0

    if-ne p1, p0, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method

.method public final I(LX3/L;LE3/b;)LX3/P;
    .locals 4

    iget-object v0, p1, LX3/L;->x:LX3/M;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, La4/x;->A(LU3/b;)LU3/b;

    move-result-object v0

    check-cast v0, LX3/M;

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, LR3/j;->y(LU3/j;)Z

    invoke-static {v0}, Lz4/e;->k(LU3/b;)LU3/b;

    move-result-object v2

    sget-object v3, Ld4/f;->g:Ld4/f;

    invoke-static {v2, v3}, Lz4/e;->b(LU3/b;LE3/b;)LU3/b;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v3, Ld4/h;->a:Ljava/lang/Object;

    invoke-static {v2}, Lz4/e;->g(LU3/j;)Ls4/c;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls4/f;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    iget-object p0, p0, Lh4/l;->n:LU3/e;

    invoke-static {p0, v0}, La4/x;->F(LU3/e;LU3/b;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {p1, v1, p2}, Lh4/l;->H(LX3/L;Ljava/lang/String;LE3/b;)LX3/P;

    move-result-object p0

    return-object p0

    :cond_4
    move-object p0, p1

    check-cast p0, LX3/p;

    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object p0

    invoke-virtual {p0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "name.asString()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ld4/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lh4/l;->H(LX3/L;Ljava/lang/String;LE3/b;)LX3/P;

    move-result-object p0

    return-object p0
.end method

.method public final K(Ls4/f;)Ljava/util/LinkedHashSet;
    .locals 3

    invoke-virtual {p0}, Lh4/l;->B()Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ4/C;

    invoke-virtual {v1}, LJ4/C;->l0()LC4/o;

    move-result-object v1

    sget-object v2, Lc4/b;->h:Lc4/b;

    invoke-interface {v1, p1, v2}, LC4/o;->g(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final L(Ls4/f;)Ljava/util/Set;
    .locals 4

    invoke-virtual {p0}, Lh4/l;->B()Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ4/C;

    invoke-virtual {v1}, LJ4/C;->l0()LC4/o;

    move-result-object v1

    sget-object v2, Lc4/b;->h:Lc4/b;

    invoke-interface {v1, p1, v2}, LC4/o;->d(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LX3/L;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {v0, v2}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lr3/j;->S0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final N(LX3/P;)Z
    .locals 9

    invoke-virtual {p1}, LX3/p;->r()Ls4/f;

    move-result-object v0

    const-string v1, "function.name"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name.asString()"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ld4/w;->a:Ls4/c;

    const-string v2, "get"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    sget-object v5, Lr3/r;->d:Lr3/r;

    const/4 v6, 0x0

    const-string v7, "is"

    const-string v8, "set"

    if-nez v4, :cond_2

    invoke-static {v1, v7, v3}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v8, v3}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    invoke-static {v0, v8, v6, v1}, La4/x;->R(Ls4/f;Ljava/lang/String;Ljava/lang/String;I)Ls4/f;

    move-result-object v2

    invoke-static {v0, v8, v7, v1}, La4/x;->R(Ls4/f;Ljava/lang/String;Ljava/lang/String;I)Ls4/f;

    move-result-object v0

    filled-new-array {v2, v0}, [Ls4/f;

    move-result-object v0

    invoke-static {v0}, Lr3/h;->k0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v1, Ld4/h;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    move-object v0, v5

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0xc

    invoke-static {v0, v2, v6, v1}, La4/x;->R(Ls4/f;Ljava/lang/String;Ljava/lang/String;I)Ls4/f;

    move-result-object v1

    if-nez v1, :cond_3

    const/16 v1, 0x8

    invoke-static {v0, v7, v6, v1}, La4/x;->R(Ls4/f;Ljava/lang/String;Ljava/lang/String;I)Ls4/f;

    move-result-object v1

    :cond_3
    invoke-static {v1}, Lr3/k;->e0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls4/f;

    invoke-virtual {p0, v1}, Lh4/l;->L(Ls4/f;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX3/L;

    new-instance v4, LH4/j;

    const/4 v6, 0x2

    invoke-direct {v4, p1, v6, p0}, LH4/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v2, v4}, Lh4/l;->E(LX3/L;LE3/b;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v2, v2, LX3/L;->i:Z

    if-nez v2, :cond_9

    invoke-virtual {p1}, LX3/p;->r()Ls4/f;

    move-result-object v2

    invoke-virtual {v2}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v4, "function.name.asString()"

    invoke-static {v2, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8, v3}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_9
    return v3

    :cond_a
    :goto_3
    sget-object v0, Ld4/F;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, LX3/p;->r()Ls4/f;

    move-result-object v0

    const-string v1, "name"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ld4/F;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    move-object v5, v0

    :goto_4
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_7

    :cond_c
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls4/f;

    invoke-virtual {p0, v2}, Lh4/l;->K(Ls4/f;)Ljava/util/LinkedHashSet;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, LX3/P;

    const-string v8, "<this>"

    invoke-static {v7, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, La4/x;->A(LU3/b;)LU3/b;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_5

    :cond_10
    invoke-interface {p1}, LU3/s;->Z()LU3/r;

    move-result-object v4

    invoke-interface {v4, v2}, LU3/r;->d(Ls4/f;)LU3/r;

    invoke-interface {v4}, LU3/r;->K()LU3/r;

    invoke-interface {v4}, LU3/r;->n()LU3/r;

    invoke-interface {v4}, LU3/r;->build()LU3/s;

    move-result-object v2

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast v2, LX3/P;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LX3/P;

    invoke-static {v5, v2}, Lh4/l;->G(LX3/P;LX3/P;)Z

    move-result v5

    if-eqz v5, :cond_12

    goto/16 :goto_b

    :cond_13
    :goto_7
    sget v0, Ld4/g;->l:I

    invoke-virtual {p1}, LX3/p;->r()Ls4/f;

    move-result-object v0

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ld4/g;->b(Ls4/f;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_9

    :cond_14
    invoke-virtual {p1}, LX3/p;->r()Ls4/f;

    move-result-object v0

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lh4/l;->K(Ls4/f;)Ljava/util/LinkedHashSet;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LX3/P;

    invoke-static {v4}, Ld4/g;->a(LU3/s;)LU3/s;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_9

    :cond_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU3/s;

    invoke-static {p1, v2}, Lh4/l;->M(LX3/P;LU3/s;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_b

    :cond_19
    :goto_9
    invoke-virtual {p0, p1}, Lh4/l;->D(LX3/P;)LX3/P;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_a

    :cond_1a
    invoke-virtual {p1}, LX3/p;->r()Ls4/f;

    move-result-object p1

    invoke-static {p1, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lh4/l;->K(Ls4/f;)Ljava/util/LinkedHashSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_a

    :cond_1b
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LX3/P;

    invoke-interface {p1}, LU3/s;->G()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {v0, p1}, Lh4/l;->F(LU3/s;LU3/s;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_b

    :cond_1d
    :goto_a
    const/4 v3, 0x1

    :goto_b
    return v3
.end method

.method public final O(Ls4/f;Lc4/b;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "location"

    invoke-static {p2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    iget-object p1, p1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p1, Lg4/a;

    const-string p2, "<this>"

    iget-object p1, p1, Lg4/a;->n:Lc4/a;

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "scopeOwner"

    iget-object p0, p0, Lh4/l;->n:LU3/e;

    invoke-static {p0, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ls4/f;Lc4/b;)LU3/g;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lh4/l;->O(Ls4/f;Lc4/b;)V

    iget-object p2, p0, Lh4/w;->c:Lh4/w;

    check-cast p2, Lh4/l;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lh4/l;->t:LI4/j;

    invoke-virtual {p2, p1}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LX3/m;

    :goto_0
    if-nez p2, :cond_1

    iget-object p0, p0, Lh4/l;->t:LI4/j;

    invoke-virtual {p0, p1}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, LU3/g;

    :cond_1
    return-object p2
.end method

.method public final d(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lh4/l;->O(Ls4/f;Lc4/b;)V

    invoke-super {p0, p1, p2}, Lh4/w;->d(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lh4/l;->O(Ls4/f;Lc4/b;)V

    invoke-super {p0, p1, p2}, Lh4/w;->g(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final h(LC4/f;LC4/l;)Ljava/util/Set;
    .locals 0

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lh4/l;->r:LI4/i;

    invoke-virtual {p1}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iget-object p0, p0, Lh4/l;->s:LI4/i;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p1, p0}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0
.end method

.method public final i(LC4/f;LC4/l;)Ljava/util/Set;
    .locals 4

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lh4/l;->n:LU3/e;

    invoke-interface {v0}, LU3/g;->E()LJ4/M;

    move-result-object v1

    invoke-interface {v1}, LJ4/M;->f()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ4/C;

    invoke-virtual {v3}, LJ4/C;->l0()LC4/o;

    move-result-object v3

    invoke-interface {v3}, LC4/o;->a()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lh4/w;->e:LI4/i;

    invoke-virtual {v1}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh4/c;

    invoke-interface {v3}, Lh4/c;->c()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/c;

    invoke-interface {v1}, Lh4/c;->a()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, p2}, Lh4/l;->h(LC4/f;LC4/l;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Lg4/a;

    iget-object p0, p0, Lg4/a;->x:LA4/e;

    check-cast p0, LA4/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "thisDescriptor"

    invoke-static {v0, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method public final j(Ljava/util/ArrayList;Ls4/f;)V
    .locals 0

    const-string p1, "name"

    invoke-static {p2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lh4/l;->o:La4/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    iget-object p1, p1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p1, Lg4/a;

    iget-object p1, p1, Lg4/a;->x:LA4/e;

    check-cast p1, LA4/a;

    iget-object p0, p0, Lh4/l;->n:LU3/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "thisDescriptor"

    invoke-static {p0, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final k()Lh4/c;
    .locals 2

    new-instance v0, Lh4/a;

    sget-object v1, Lh4/i;->e:Lh4/i;

    iget-object p0, p0, Lh4/l;->o:La4/n;

    invoke-direct {v0, p0, v1}, Lh4/a;-><init>(La4/n;LE3/b;)V

    return-object v0
.end method

.method public final m(Ljava/util/LinkedHashSet;Ls4/f;)V
    .locals 10

    const-string v0, "name"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lh4/l;->K(Ls4/f;)Ljava/util/LinkedHashSet;

    move-result-object v6

    sget-object v0, Ld4/F;->a:Ljava/util/ArrayList;

    sget-object v0, Ld4/F;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget v0, Ld4/g;->l:I

    invoke-static {p2}, Ld4/g;->b(Ls4/f;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU3/s;

    invoke-interface {v1}, LU3/s;->G()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, LX3/P;

    invoke-virtual {p0, v3}, Lh4/l;->N(LX3/P;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lh4/l;->y(Ljava/util/LinkedHashSet;Ls4/f;Ljava/util/ArrayList;Z)V

    return-void

    :cond_5
    :goto_2
    new-instance v7, LS4/j;

    invoke-direct {v7}, LS4/j;-><init>()V

    sget-object v2, Lr3/r;->d:Lr3/r;

    sget-object v4, LF4/n;->a:LF4/j;

    iget-object v0, p0, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    iget-object v0, v0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object v0, v0, Lg4/a;->u:LK4/m;

    iget-object v5, v0, LK4/m;->c:Lv4/o;

    iget-object v3, p0, Lh4/l;->n:LU3/e;

    move-object v0, p2

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Le0/a;->W(Ls4/f;Ljava/util/AbstractCollection;Ljava/util/Collection;LU3/e;LF4/n;Lv4/o;)Ljava/util/LinkedHashSet;

    move-result-object v8

    new-instance v5, LH4/k;

    const/4 v9, 0x1

    const/4 v0, 0x2

    invoke-direct {v5, v9, v0, p0}, LH4/k;-><init>(IILjava/lang/Object;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, v8

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lh4/l;->z(Ls4/f;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/AbstractSet;LE3/b;)V

    new-instance v5, LH4/k;

    const/4 v0, 0x3

    invoke-direct {v5, v9, v0, p0}, LH4/k;-><init>(IILjava/lang/Object;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, v8

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lh4/l;->z(Ls4/f;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/AbstractSet;LE3/b;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, LX3/P;

    invoke-virtual {p0, v3}, Lh4/l;->N(LX3/P;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-static {v0, v7}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, v9}, Lh4/l;->y(Ljava/util/LinkedHashSet;Ls4/f;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public final n(Ljava/util/ArrayList;Ls4/f;)V
    .locals 13

    const-string v0, "name"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lh4/l;->o:La4/n;

    iget-object v0, v0, La4/n;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    iget-object v1, p0, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh4/w;->e:LI4/i;

    invoke-virtual {v0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/c;

    invoke-interface {v0, p2}, Lh4/c;->d(Ls4/f;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lr3/j;->K0(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La4/w;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v0}, Le0/a;->U(Landroidx/recyclerview/widget/b;Lj4/b;)Lg4/c;

    move-result-object v4

    invoke-static {v0}, La4/x;->C(La4/y;)LU3/b0;

    move-result-object v3

    invoke-static {v3}, La4/x;->c0(LU3/b0;)LU3/n;

    move-result-object v5

    invoke-virtual {v0}, La4/v;->e()Ls4/f;

    move-result-object v7

    iget-object v3, v1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v3, Lg4/a;

    iget-object v3, v3, Lg4/a;->j:LZ3/e;

    invoke-virtual {v3, v0}, LZ3/e;->b(Lj4/c;)LZ3/g;

    move-result-object v8

    iget-object v3, p0, Lh4/l;->n:LU3/e;

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lf4/g;->N0(LU3/j;Lg4/c;LU3/n;ZLs4/f;LZ3/g;Z)Lf4/g;

    move-result-object v3

    sget-object v4, LV3/g;->a:LV3/f;

    invoke-static {v4, v3}, Lv4/p;->e(LV3/h;LX3/L;)LX3/M;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v2, v2}, LX3/L;->K0(LX3/M;LX3/N;LX3/u;LX3/u;)V

    const-string v5, "<this>"

    invoke-static {v1, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v1, Landroidx/recyclerview/widget/b;->g:Ljava/lang/Object;

    iget-object v6, v1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v6, Lg4/a;

    new-instance v7, Lg4/e;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v3, v0, v8}, Lg4/e;-><init>(Landroidx/recyclerview/widget/b;LU3/k;Lj4/e;I)V

    new-instance v8, Landroidx/recyclerview/widget/b;

    invoke-direct {v8, v6, v7, v5}, Landroidx/recyclerview/widget/b;-><init>(Lg4/a;Lg4/f;Lq3/d;)V

    invoke-static {v0, v8}, Lh4/w;->l(La4/w;Landroidx/recyclerview/widget/b;)LJ4/C;

    move-result-object v0

    sget-object v5, Lr3/r;->d:Lr3/r;

    invoke-virtual {p0}, Lh4/l;->p()LU3/J;

    move-result-object v6

    invoke-virtual {v3, v0, v5, v6, v2}, LX3/L;->L0(LJ4/C;Ljava/util/List;LU3/J;LX3/O;)V

    iput-object v0, v4, LX3/M;->p:LJ4/C;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lh4/l;->L(Ls4/f;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    new-instance v3, LS4/j;

    invoke-direct {v3}, LS4/j;-><init>()V

    new-instance v4, LS4/j;

    invoke-direct {v4}, LS4/j;-><init>()V

    new-instance v5, Lh4/j;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lh4/j;-><init>(Lh4/l;I)V

    invoke-virtual {p0, v0, p1, v3, v5}, Lh4/l;->A(Ljava/util/Set;Ljava/util/AbstractCollection;LS4/j;LE3/b;)V

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v0}, Lr3/j;->S0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    goto :goto_2

    :cond_3
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v3, v5

    :goto_2
    new-instance v5, Lh4/j;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Lh4/j;-><init>(Lh4/l;I)V

    invoke-virtual {p0, v3, v4, v2, v5}, Lh4/l;->A(Ljava/util/Set;Ljava/util/AbstractCollection;LS4/j;LE3/b;)V

    invoke-static {v0, v4}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object v8

    iget-object v0, v1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object v1, v0, Lg4/a;->u:LK4/m;

    iget-object v12, v1, LK4/m;->c:Lv4/o;

    iget-object v10, p0, Lh4/l;->n:LU3/e;

    iget-object v11, v0, Lg4/a;->f:LZ3/e;

    move-object v7, p2

    move-object v9, p1

    invoke-static/range {v7 .. v12}, Le0/a;->W(Ls4/f;Ljava/util/AbstractCollection;Ljava/util/Collection;LU3/e;LF4/n;Lv4/o;)Ljava/util/LinkedHashSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final o(LC4/f;)Ljava/util/Set;
    .locals 1

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lh4/l;->o:La4/n;

    iget-object p1, p1, La4/n;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isAnnotation()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lh4/w;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/LinkedHashSet;

    iget-object v0, p0, Lh4/w;->e:LI4/i;

    invoke-virtual {v0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/c;

    invoke-interface {v0}, Lh4/c;->b()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lh4/l;->n:LU3/e;

    invoke-interface {p0}, LU3/g;->E()LJ4/M;

    move-result-object p0

    invoke-interface {p0}, LJ4/M;->f()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ4/C;

    invoke-virtual {v0}, LJ4/C;->l0()LC4/o;

    move-result-object v0

    invoke-interface {v0}, LC4/o;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final p()LU3/J;
    .locals 1

    iget-object p0, p0, Lh4/l;->n:LU3/e;

    if-eqz p0, :cond_0

    sget v0, Lv4/f;->a:I

    invoke-interface {p0}, LU3/e;->y0()LU3/J;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lv4/f;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final q()LU3/j;
    .locals 0

    iget-object p0, p0, Lh4/l;->n:LU3/e;

    return-object p0
.end method

.method public final r(Lf4/f;)Z
    .locals 1

    iget-object v0, p0, Lh4/l;->o:La4/n;

    iget-object v0, v0, La4/n;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lh4/l;->N(LX3/P;)Z

    move-result p0

    return p0
.end method

.method public final s(La4/w;Ljava/util/ArrayList;LJ4/C;Ljava/util/List;)Lh4/t;
    .locals 1

    const-string v0, "method"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    iget-object p1, p1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p1, Lg4/a;

    iget-object p1, p1, Lg4/a;->e:Le4/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lh4/l;->n:LU3/e;

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lh4/t;

    invoke-direct {p1, p3, p4, p2, p0}, Lh4/t;-><init>(LJ4/C;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    return-object p1

    :cond_0
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const-string p2, "signatureErrors"

    const/4 p3, 0x0

    aput-object p2, p0, p3

    const-string p2, "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature"

    aput-object p2, p0, p1

    const-string p1, "<init>"

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    const-string p1, "method"

    aput-object p1, p0, p2

    goto :goto_0

    :pswitch_0
    const-string p1, "signatureErrors"

    aput-object p1, p0, p2

    goto :goto_0

    :pswitch_1
    const-string p1, "descriptor"

    aput-object p1, p0, p2

    goto :goto_0

    :pswitch_2
    const-string p1, "typeParameters"

    aput-object p1, p0, p2

    goto :goto_0

    :pswitch_3
    const-string p1, "valueParameters"

    aput-object p1, p0, p2

    goto :goto_0

    :pswitch_4
    const-string p1, "returnType"

    aput-object p1, p0, p2

    goto :goto_0

    :pswitch_5
    const-string p1, "owner"

    aput-object p1, p0, p2

    :goto_0
    const/4 p1, 0x1

    const-string p2, "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "resolvePropagatedSignature"

    aput-object p2, p0, p1

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lh4/l;->o:La4/n;

    invoke-virtual {p0}, La4/n;->e()Ls4/c;

    move-result-object p0

    const-string v0, "Lazy Java member scope for "

    invoke-static {p0, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x(Ljava/util/ArrayList;Lf4/b;ILa4/w;LJ4/C;LJ4/C;)V
    .locals 14

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    sget-object v4, LV3/g;->a:LV3/f;

    invoke-virtual/range {p4 .. p4}, La4/v;->e()Ls4/f;

    move-result-object v5

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    const/4 v6, 0x0

    invoke-static {v1, v6}, LJ4/Z;->g(LJ4/C;Z)LJ4/b0;

    move-result-object v7

    iget-object v1, v0, La4/w;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v8, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, La4/b;->a:Ljava/util/List;

    const-class v9, Ljava/lang/Enum;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, La4/s;

    check-cast v1, Ljava/lang/Enum;

    invoke-direct {v8, v3, v1}, La4/s;-><init>(Ls4/f;Ljava/lang/Enum;)V

    goto :goto_0

    :cond_1
    instance-of v8, v1, Ljava/lang/annotation/Annotation;

    if-eqz v8, :cond_2

    new-instance v8, La4/e;

    check-cast v1, Ljava/lang/annotation/Annotation;

    invoke-direct {v8, v3, v1}, La4/e;-><init>(Ls4/f;Ljava/lang/annotation/Annotation;)V

    goto :goto_0

    :cond_2
    instance-of v8, v1, [Ljava/lang/Object;

    if-eqz v8, :cond_3

    new-instance v8, La4/g;

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {v8, v3, v1}, La4/g;-><init>(Ls4/f;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    instance-of v8, v1, Ljava/lang/Class;

    if-eqz v8, :cond_4

    new-instance v8, La4/o;

    check-cast v1, Ljava/lang/Class;

    invoke-direct {v8, v3, v1}, La4/o;-><init>(Ls4/f;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    new-instance v8, La4/u;

    invoke-direct {v8, v3, v1}, La4/u;-><init>(Ls4/f;Ljava/lang/Object;)V

    :goto_0
    if-eqz v8, :cond_5

    const/4 v1, 0x1

    move v8, v1

    goto :goto_1

    :cond_5
    move v8, v6

    :goto_1
    if-nez v2, :cond_6

    move-object v1, p0

    move-object v10, v3

    goto :goto_2

    :cond_6
    invoke-static {v2, v6}, LJ4/Z;->g(LJ4/C;Z)LJ4/b0;

    move-result-object v1

    move-object v10, v1

    move-object v1, p0

    :goto_2
    iget-object v1, v1, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    iget-object v1, v1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v1, Lg4/a;

    iget-object v1, v1, Lg4/a;->j:LZ3/e;

    invoke-virtual {v1, v0}, LZ3/e;->b(Lj4/c;)LZ3/g;

    move-result-object v11

    new-instance v12, LX3/W;

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    move-object v0, v12

    move-object/from16 v1, p2

    move/from16 v3, p3

    move-object v6, v7

    move v7, v8

    move v8, v9

    move v9, v13

    invoke-direct/range {v0 .. v11}, LX3/W;-><init>(LU3/a;LX3/W;ILV3/h;Ls4/f;LJ4/C;ZZZLJ4/C;LU3/L;)V

    move-object v0, p1

    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    const/4 v0, 0x2

    invoke-static {v0}, LJ4/Z;->a(I)V

    throw v3
.end method

.method public final y(Ljava/util/LinkedHashSet;Ls4/f;Ljava/util/ArrayList;Z)V
    .locals 8

    iget-object v0, p0, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    iget-object v0, v0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object v1, v0, Lg4/a;->u:LK4/m;

    iget-object v7, v1, LK4/m;->c:Lv4/o;

    iget-object v5, p0, Lh4/l;->n:LU3/e;

    iget-object v6, v0, Lg4/a;->f:LZ3/e;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Le0/a;->W(Ls4/f;Ljava/util/AbstractCollection;Ljava/util/Collection;LU3/e;LF4/n;Lv4/o;)Ljava/util/LinkedHashSet;

    move-result-object p0

    if-nez p4, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_0
    invoke-static {p1, p0}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, LX3/P;

    invoke-static {p4}, La4/x;->B(LU3/b;)LU3/b;

    move-result-object v0

    check-cast v0, LX3/P;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p4, v0, p2}, Lh4/l;->C(LX3/P;LU3/s;Ljava/util/AbstractCollection;)LX3/P;

    move-result-object p4

    :goto_1
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :goto_2
    return-void
.end method

.method public final z(Ls4/f;Ljava/util/LinkedHashSet;Ljava/util/LinkedHashSet;Ljava/util/AbstractSet;LE3/b;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LX3/P;

    invoke-static {v5}, La4/x;->A(LU3/b;)LU3/b;

    move-result-object v6

    check-cast v6, LX3/P;

    if-nez v6, :cond_1

    :cond_0
    move-object/from16 v10, p1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    invoke-static {v6}, La4/x;->y(LU3/s;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {v8}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v8

    invoke-interface {v3, v8}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LX3/P;

    invoke-interface {v9}, LU3/s;->Z()LU3/r;

    move-result-object v9

    move-object/from16 v10, p1

    invoke-interface {v9, v10}, LU3/r;->d(Ls4/f;)LU3/r;

    invoke-interface {v9}, LU3/r;->K()LU3/r;

    invoke-interface {v9}, LU3/r;->n()LU3/r;

    invoke-interface {v9}, LU3/r;->build()LU3/s;

    move-result-object v9

    invoke-static {v9}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast v9, LX3/P;

    invoke-static {v6, v9}, Lh4/l;->G(LX3/P;LX3/P;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v9, v6, v1}, Lh4/l;->C(LX3/P;LU3/s;Ljava/util/AbstractCollection;)LX3/P;

    move-result-object v6

    :goto_1
    invoke-static {v2, v6}, LS4/m;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    invoke-static {v5}, Ld4/g;->a(LU3/s;)LU3/s;

    move-result-object v6

    if-nez v6, :cond_3

    :goto_2
    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_3
    move-object v8, v6

    check-cast v8, LX3/p;

    invoke-virtual {v8}, LX3/p;->r()Ls4/f;

    move-result-object v8

    const-string v9, "overridden.name"

    invoke-static {v8, v9}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v8}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, LX3/P;

    invoke-static {v11, v6}, Lh4/l;->M(LX3/P;LU3/s;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    check-cast v9, LX3/P;

    if-nez v9, :cond_6

    const/4 v7, 0x0

    goto :goto_5

    :cond_6
    invoke-interface {v9}, LU3/s;->Z()LU3/r;

    move-result-object v8

    invoke-interface {v6}, LU3/a;->n0()Ljava/util/List;

    move-result-object v11

    const-string v12, "overridden.valueParameters"

    invoke-static {v11, v12}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v11}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LX3/W;

    new-instance v14, Lf4/i;

    move-object v15, v13

    check-cast v15, LX3/X;

    invoke-virtual {v15}, LX3/X;->j()LJ4/C;

    move-result-object v15

    const-string v7, "it.type"

    invoke-static {v15, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, LX3/W;->I0()Z

    move-result v7

    invoke-direct {v14, v15, v7}, Lf4/i;-><init>(LJ4/C;Z)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v9}, LX3/w;->n0()Ljava/util/List;

    move-result-object v7

    const-string v9, "override.valueParameters"

    invoke-static {v7, v9}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v7, v6}, Le0/a;->w(Ljava/util/List;Ljava/util/List;LU3/s;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v8, v7}, LU3/r;->r(Ljava/util/List;)LU3/r;

    invoke-interface {v8}, LU3/r;->K()LU3/r;

    invoke-interface {v8}, LU3/r;->n()LU3/r;

    invoke-interface {v8}, LU3/r;->build()LU3/s;

    move-result-object v7

    check-cast v7, LX3/P;

    :goto_5
    if-nez v7, :cond_8

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v0, v7}, Lh4/l;->N(LX3/P;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    :goto_6
    if-nez v7, :cond_a

    goto/16 :goto_2

    :cond_a
    invoke-static {v7, v6, v1}, Lh4/l;->C(LX3/P;LU3/s;Ljava/util/AbstractCollection;)LX3/P;

    move-result-object v6

    :goto_7
    invoke-static {v2, v6}, LS4/m;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    invoke-interface {v5}, LU3/s;->G()Z

    move-result v6

    if-nez v6, :cond_c

    :cond_b
    const/4 v7, 0x0

    goto :goto_9

    :cond_c
    invoke-virtual {v5}, LX3/p;->r()Ls4/f;

    move-result-object v6

    const-string v7, "descriptor.name"

    invoke-static {v6, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v6}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LX3/P;

    invoke-virtual {v0, v7}, Lh4/l;->D(LX3/P;)LX3/P;

    move-result-object v7

    if-nez v7, :cond_f

    :cond_e
    const/4 v7, 0x0

    goto :goto_8

    :cond_f
    invoke-static {v7, v5}, Lh4/l;->F(LU3/s;LU3/s;)Z

    move-result v8

    if-eqz v8, :cond_e

    :goto_8
    if-eqz v7, :cond_d

    :goto_9
    invoke-static {v2, v7}, LS4/m;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    return-void
.end method
