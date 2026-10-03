.class public final Lh4/z;
.super Lh4/A;
.source "SourceFile"


# instance fields
.field public final n:La4/n;

.field public final o:Lh4/h;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/b;La4/n;Lh4/h;)V
    .locals 1

    const-string v0, "jClass"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerDescriptor"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lh4/w;-><init>(Landroidx/recyclerview/widget/b;Lh4/w;)V

    iput-object p2, p0, Lh4/z;->n:La4/n;

    iput-object p3, p0, Lh4/z;->o:Lh4/h;

    return-void
.end method

.method public static v(LX3/L;)LX3/L;
    .locals 3

    invoke-virtual {p0}, LX3/L;->f0()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, LX3/L;->m()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "this.overriddenDescriptors"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX3/L;

    const-string v2, "it"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lh4/z;->v(LX3/L;)LX3/L;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lr3/j;->R0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->J0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX3/L;

    return-object p0
.end method


# virtual methods
.method public final c(Ls4/f;Lc4/b;)LU3/g;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "location"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h(LC4/f;LC4/l;)Ljava/util/Set;
    .locals 0

    const-string p0, "kindFilter"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr3/t;->d:Lr3/t;

    return-object p0
.end method

.method public final i(LC4/f;LC4/l;)Ljava/util/Set;
    .locals 2

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lh4/w;->e:LI4/i;

    invoke-virtual {p1}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh4/c;

    invoke-interface {p1}, Lh4/c;->c()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lr3/j;->R0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lh4/z;->o:Lh4/h;

    invoke-static {p2}, Le0/a;->H(LU3/e;)Lh4/z;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lh4/w;->a()Ljava/util/Set;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lr3/t;->d:Lr3/t;

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lh4/z;->n:La4/n;

    iget-object v0, v0, La4/n;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LR3/p;->b:Ls4/f;

    sget-object v1, LR3/p;->a:Ls4/f;

    filled-new-array {v0, v1}, [Ls4/f;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object p0, p0, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Lg4/a;

    iget-object p0, p0, Lg4/a;->x:LA4/e;

    check-cast p0, LA4/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "thisDescriptor"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public final j(Ljava/util/ArrayList;Ls4/f;)V
    .locals 0

    const-string p1, "name"

    invoke-static {p2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    iget-object p1, p1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p1, Lg4/a;

    iget-object p1, p1, Lg4/a;->x:LA4/e;

    check-cast p1, LA4/a;

    iget-object p0, p0, Lh4/z;->o:Lh4/h;

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

    sget-object v1, Lh4/i;->g:Lh4/i;

    iget-object p0, p0, Lh4/z;->n:La4/n;

    invoke-direct {v0, p0, v1}, Lh4/a;-><init>(La4/n;LE3/b;)V

    return-object v0
.end method

.method public final m(Ljava/util/LinkedHashSet;Ls4/f;)V
    .locals 8

    const-string v0, "name"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lh4/z;->o:Lh4/h;

    invoke-static {v0}, Le0/a;->H(LU3/e;)Lh4/z;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lr3/t;->d:Lr3/t;

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_0
    sget-object v2, Lc4/b;->h:Lc4/b;

    invoke-virtual {v1, p2, v2}, Lh4/w;->g(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lr3/j;->S0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    iget-object v1, v1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v1, Lg4/a;

    iget-object v2, v1, Lg4/a;->u:LK4/m;

    iget-object v7, v2, LK4/m;->c:Lv4/o;

    iget-object v5, p0, Lh4/z;->o:Lh4/h;

    iget-object v6, v1, Lg4/a;->f:LZ3/e;

    move-object v2, p2

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Le0/a;->X(Ls4/f;Ljava/util/Collection;Ljava/util/AbstractCollection;LU3/e;LZ3/e;Lv4/o;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lh4/z;->n:La4/n;

    iget-object p0, p0, La4/n;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, LR3/p;->b:Ls4/f;

    invoke-virtual {p2, p0}, Ls4/f;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lv4/p;->g(LU3/e;)LX3/P;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    sget-object p0, LR3/p;->a:Ls4/f;

    invoke-virtual {p2, p0}, Ls4/f;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v0}, Lv4/p;->h(LU3/e;)LX3/P;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    return-void
.end method

.method public final n(Ljava/util/ArrayList;Ls4/f;)V
    .locals 10

    const-string v0, "name"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v0, LT3/m;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, LT3/m;-><init>(Ls4/f;I)V

    iget-object v1, p0, Lh4/z;->o:Lh4/h;

    invoke-static {v1}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Lh4/x;->d:Lh4/x;

    new-instance v5, Lh4/y;

    invoke-direct {v5, v1, v2, v0}, Lh4/y;-><init>(LU3/e;Ljava/util/Set;LE3/b;)V

    invoke-static {v3, v4, v5}, LS4/m;->e(Ljava/util/List;LS4/b;LS4/m;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    if-nez v0, :cond_0

    iget-object v0, v1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object v1, v0, Lg4/a;->u:LK4/m;

    iget-object v6, v1, LK4/m;->c:Lv4/o;

    iget-object v4, p0, Lh4/z;->o:Lh4/h;

    iget-object v5, v0, Lg4/a;->f:LZ3/e;

    move-object v1, p2

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Le0/a;->X(Ls4/f;Ljava/util/Collection;Ljava/util/AbstractCollection;LU3/e;LZ3/e;Lv4/o;)Ljava/util/LinkedHashSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, LX3/L;

    invoke-static {v4}, Lh4/z;->v(LX3/L;)LX3/L;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    iget-object v3, v1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v3, Lg4/a;

    iget-object v4, v3, Lg4/a;->u:LK4/m;

    iget-object v9, v4, LK4/m;->c:Lv4/o;

    iget-object v7, p0, Lh4/z;->o:Lh4/h;

    iget-object v8, v3, Lg4/a;->f:LZ3/e;

    move-object v4, p2

    move-object v6, p1

    invoke-static/range {v4 .. v9}, Le0/a;->X(Ls4/f;Ljava/util/Collection;Ljava/util/AbstractCollection;LU3/e;LZ3/e;Lv4/o;)Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-static {v2, v3}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_2
    return-void
.end method

.method public final o(LC4/f;)Ljava/util/Set;
    .locals 4

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lh4/w;->e:LI4/i;

    invoke-virtual {p1}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh4/c;

    invoke-interface {p1}, Lh4/c;->b()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lr3/j;->R0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    sget-object v0, Lh4/i;->h:Lh4/i;

    iget-object p0, p0, Lh4/z;->o:Lh4/h;

    invoke-static {p0}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lh4/x;->d:Lh4/x;

    new-instance v3, Lh4/y;

    invoke-direct {v3, p0, p1, v0}, Lh4/y;-><init>(LU3/e;Ljava/util/Set;LE3/b;)V

    invoke-static {v1, v2, v3}, LS4/m;->e(Ljava/util/List;LS4/b;LS4/m;)Ljava/lang/Object;

    return-object p1
.end method

.method public final q()LU3/j;
    .locals 0

    iget-object p0, p0, Lh4/z;->o:Lh4/h;

    return-object p0
.end method
