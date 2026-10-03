.class public final LH4/g;
.super LH4/r;
.source "SourceFile"


# instance fields
.field public final g:LK4/g;

.field public final h:LI4/i;

.field public final i:LI4/i;

.field public final synthetic j:LH4/l;


# direct methods
.method public constructor <init>(LH4/l;LK4/g;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LH4/g;->j:LH4/l;

    iget-object v0, p1, LH4/l;->h:Ln4/j;

    iget-object v3, v0, Ln4/j;->q:Ljava/util/List;

    const-string v1, "classProto.functionList"

    invoke-static {v3, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Ln4/j;->r:Ljava/util/List;

    const-string v1, "classProto.propertyList"

    invoke-static {v4, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Ln4/j;->s:Ljava/util/List;

    const-string v1, "classProto.typeAliasList"

    invoke-static {v5, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Ln4/j;->n:Ljava/util/List;

    const-string v1, "classProto.nestedClassNameList"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, LH4/l;->o:LF4/k;

    iget-object v1, v1, LF4/k;->b:Lp4/f;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {v1, v6}, Lw0/f;->B(Lp4/f;I)Ls4/f;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v6, LH4/d;

    const/4 v0, 0x0

    invoke-direct {v6, v2, v0}, LH4/d;-><init>(Ljava/util/ArrayList;I)V

    iget-object p1, p1, LH4/l;->o:LF4/k;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, LH4/r;-><init>(LF4/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;LE3/a;)V

    iput-object p2, p0, LH4/g;->g:LK4/g;

    iget-object p1, p1, LF4/k;->a:LF4/i;

    iget-object p2, p1, LF4/i;->a:LI4/o;

    new-instance v0, LH4/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LH4/e;-><init>(LH4/g;I)V

    check-cast p2, LI4/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LI4/i;

    invoke-direct {v1, p2, v0}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v1, p0, LH4/g;->h:LI4/i;

    iget-object p1, p1, LF4/i;->a:LI4/o;

    new-instance p2, LH4/e;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, LH4/e;-><init>(LH4/g;I)V

    check-cast p1, LI4/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LI4/i;

    invoke-direct {v0, p1, p2}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v0, p0, LH4/g;->i:LI4/i;

    return-void
.end method


# virtual methods
.method public final c(Ls4/f;Lc4/b;)LU3/g;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, LH4/g;->s(Ls4/f;Lc4/b;)V

    iget-object v0, p0, LH4/g;->j:LH4/l;

    iget-object v0, v0, LH4/l;->s:Lw0/i;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lw0/i;->f:Ljava/lang/Object;

    check-cast v0, LI4/j;

    invoke-virtual {v0, p1}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU3/e;

    if-nez v0, :cond_1

    :goto_0
    invoke-super {p0, p1, p2}, LH4/r;->c(Ls4/f;Lc4/b;)LU3/g;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final d(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, LH4/g;->s(Ls4/f;Lc4/b;)V

    invoke-super {p0, p1, p2}, LH4/r;->d(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final e(LC4/f;LE3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LH4/g;->h:LI4/i;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final g(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, LH4/g;->s(Ls4/f;Lc4/b;)V

    invoke-super {p0, p1, p2}, LH4/r;->g(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/util/ArrayList;LE3/b;)V
    .locals 3

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LH4/g;->j:LH4/l;

    iget-object p0, p0, LH4/l;->s:Lw0/i;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast p2, Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls4/f;

    const-string v2, "name"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lw0/i;->f:Ljava/lang/Object;

    check-cast v2, LI4/j;

    invoke-virtual {v2, v1}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU3/e;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    sget-object p0, Lr3/r;->d:Lr3/r;

    :goto_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final j(Ljava/util/ArrayList;Ls4/f;)V
    .locals 7

    const-string v0, "name"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, LH4/g;->i:LI4/i;

    invoke-virtual {v0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ4/C;

    invoke-virtual {v1}, LJ4/C;->l0()LC4/o;

    move-result-object v1

    sget-object v2, Lc4/b;->f:Lc4/b;

    invoke-interface {v1, p2, v2}, LC4/o;->g(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, LH4/r;->b:LF4/k;

    iget-object v1, v0, LF4/k;->a:LF4/i;

    iget-object v1, v1, LF4/i;->n:LW3/b;

    iget-object v2, p0, LH4/g;->j:LH4/l;

    invoke-interface {v1, p2, v2}, LW3/b;->a(Ls4/f;LU3/e;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v0, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->q:LK4/l;

    check-cast v0, LK4/m;

    iget-object v1, v0, LK4/m;->c:Lv4/o;

    new-instance v6, LH4/f;

    const/4 v0, 0x0

    invoke-direct {v6, p1, v0}, LH4/f;-><init>(Ljava/util/AbstractCollection;I)V

    iget-object v5, p0, LH4/g;->j:LH4/l;

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lv4/o;->h(Ls4/f;Ljava/util/Collection;Ljava/util/Collection;LU3/e;Lv4/p;)V

    return-void
.end method

.method public final k(Ljava/util/ArrayList;Ls4/f;)V
    .locals 7

    const-string v0, "name"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, LH4/g;->i:LI4/i;

    invoke-virtual {v0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ4/C;

    invoke-virtual {v1}, LJ4/C;->l0()LC4/o;

    move-result-object v1

    sget-object v2, Lc4/b;->f:Lc4/b;

    invoke-interface {v1, p2, v2}, LC4/o;->d(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, LH4/r;->b:LF4/k;

    iget-object v0, v0, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->q:LK4/l;

    check-cast v0, LK4/m;

    iget-object v1, v0, LK4/m;->c:Lv4/o;

    new-instance v6, LH4/f;

    const/4 v0, 0x0

    invoke-direct {v6, p1, v0}, LH4/f;-><init>(Ljava/util/AbstractCollection;I)V

    iget-object v5, p0, LH4/g;->j:LH4/l;

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lv4/o;->h(Ls4/f;Ljava/util/Collection;Ljava/util/Collection;LU3/e;Lv4/p;)V

    return-void
.end method

.method public final l(Ls4/f;)Ls4/b;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LH4/g;->j:LH4/l;

    iget-object p0, p0, LH4/l;->k:Ls4/b;

    invoke-virtual {p0, p1}, Ls4/b;->d(Ls4/f;)Ls4/b;

    move-result-object p0

    return-object p0
.end method

.method public final n()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, LH4/g;->j:LH4/l;

    iget-object p0, p0, LH4/l;->q:LH4/i;

    invoke-virtual {p0}, LJ4/h;->j()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

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

    invoke-interface {v1}, LC4/o;->f()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v0, v1}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public final o()Ljava/util/Set;
    .locals 4

    iget-object v0, p0, LH4/g;->j:LH4/l;

    iget-object v1, v0, LH4/l;->q:LH4/i;

    invoke-virtual {v1}, LJ4/h;->j()Ljava/util/List;

    move-result-object v1

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
    iget-object p0, p0, LH4/r;->b:LF4/k;

    iget-object p0, p0, LF4/k;->a:LF4/i;

    iget-object p0, p0, LF4/i;->n:LW3/b;

    invoke-interface {p0, v0}, LW3/b;->e(LU3/e;)Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method public final p()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, LH4/g;->j:LH4/l;

    iget-object p0, p0, LH4/l;->q:LH4/i;

    invoke-virtual {p0}, LJ4/h;->j()Ljava/util/List;

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

    invoke-interface {v1}, LC4/o;->b()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final r(LH4/u;)Z
    .locals 1

    iget-object v0, p0, LH4/r;->b:LF4/k;

    iget-object v0, v0, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->o:LW3/d;

    iget-object p0, p0, LH4/g;->j:LH4/l;

    invoke-interface {v0, p0, p1}, LW3/d;->c(LU3/e;LH4/u;)Z

    move-result p0

    return p0
.end method

.method public final s(Ls4/f;Lc4/b;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "location"

    invoke-static {p2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LH4/r;->b:LF4/k;

    iget-object p1, p1, LF4/k;->a:LF4/i;

    iget-object p1, p1, LF4/i;->i:Lc4/a;

    const-string p2, "<this>"

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "scopeOwner"

    iget-object p0, p0, LH4/g;->j:LH4/l;

    invoke-static {p0, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
