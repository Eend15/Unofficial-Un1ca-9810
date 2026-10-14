.class public abstract LH4/r;
.super LC4/p;
.source "SourceFile"


# static fields
.field public static final synthetic f:[LL3/l;


# instance fields
.field public final b:LF4/k;

.field public final c:LH4/q;

.field public final d:LI4/i;

.field public final e:LI4/h;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, LH4/r;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v3

    const-string v4, "classNames"

    const-string v5, "getClassNames$deserialization()Ljava/util/Set;"

    invoke-direct {v0, v3, v4, v5}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    new-instance v3, LF3/o;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v4, "classifierNamesLazy"

    const-string v5, "getClassifierNamesLazy()Ljava/util/Set;"

    invoke-direct {v3, v2, v4, v5}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v1

    filled-new-array {v0, v1}, [LL3/l;

    move-result-object v0

    sput-object v0, LH4/r;->f:[LL3/l;

    return-void
.end method

.method public constructor <init>(LF4/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;LE3/a;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionList"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propertyList"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAliasList"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH4/r;->b:LF4/k;

    iget-object p1, p1, LF4/k;->a:LF4/i;

    iget-object v0, p1, LF4/i;->c:LF4/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LH4/q;

    invoke-direct {v0, p0, p2, p3, p4}, LH4/q;-><init>(LH4/r;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, LH4/r;->c:LH4/q;

    new-instance p2, LC4/g;

    invoke-direct {p2, p5}, LC4/g;-><init>(LE3/a;)V

    iget-object p1, p1, LF4/i;->a:LI4/o;

    move-object p3, p1

    check-cast p3, LI4/l;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, LI4/i;

    invoke-direct {p4, p3, p2}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object p4, p0, LH4/r;->d:LI4/i;

    new-instance p2, LC4/g;

    const/4 p3, 0x7

    invoke-direct {p2, p3, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    check-cast p1, LI4/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, LI4/h;

    invoke-direct {p3, p1, p2}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object p3, p0, LH4/r;->e:LI4/h;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, LH4/r;->c:LH4/q;

    iget-object p0, p0, LH4/q;->g:LI4/i;

    sget-object v0, LH4/q;->j:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, LH4/r;->c:LH4/q;

    iget-object p0, p0, LH4/q;->h:LI4/i;

    sget-object v0, LH4/q;->j:[LL3/l;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public c(Ls4/f;Lc4/b;)LU3/g;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LH4/r;->q(Ls4/f;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, LH4/r;->b:LF4/k;

    iget-object p2, p2, LF4/k;->a:LF4/i;

    invoke-virtual {p0, p1}, LH4/r;->l(Ls4/f;)Ls4/b;

    move-result-object p0

    invoke-virtual {p2, p0}, LF4/i;->b(Ls4/b;)LU3/e;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LH4/r;->c:LH4/q;

    iget-object p2, p0, LH4/q;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LH4/q;->f:LI4/j;

    invoke-virtual {p0, p1}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LH4/v;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public d(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LH4/r;->c:LH4/q;

    invoke-virtual {p0, p1, p2}, LH4/q;->b(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, LH4/r;->e:LI4/h;

    sget-object v0, LH4/r;->f:[LL3/l;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "<this>"

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "p"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LI4/h;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public g(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LH4/r;->c:LH4/q;

    invoke-virtual {p0, p1, p2}, LH4/q;->a(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public abstract h(Ljava/util/ArrayList;LE3/b;)V
.end method

.method public final i(LC4/f;LE3/b;)Ljava/util/List;
    .locals 9

    sget-object v0, Lc4/b;->g:Lc4/b;

    const-string v1, "kindFilter"

    invoke-static {p1, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameFilter"

    invoke-static {p2, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    sget v3, LC4/f;->f:I

    invoke-virtual {p1, v3}, LC4/f;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1, p2}, LH4/r;->h(Ljava/util/ArrayList;LE3/b;)V

    :cond_0
    iget-object v3, p0, LH4/r;->c:LH4/q;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, LC4/f;->j:I

    invoke-virtual {p1, v4}, LC4/f;->a(I)Z

    move-result v4

    sget-object v5, Lv4/k;->a:Lv4/k;

    if-eqz v4, :cond_3

    iget-object v4, v3, LH4/q;->h:LI4/i;

    sget-object v6, LH4/q;->j:[LL3/l;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v4, v6}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls4/f;

    invoke-interface {p2, v7}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v3, v7, v0}, LH4/q;->b(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-static {v6, v5}, Lr3/o;->k0(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    sget v4, LC4/f;->i:I

    invoke-virtual {p1, v4}, LC4/f;->a(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v3, LH4/q;->g:LI4/i;

    sget-object v6, LH4/q;->j:[LL3/l;

    aget-object v2, v6, v2

    invoke-static {v4, v2}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls4/f;

    invoke-interface {p2, v6}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v3, v6, v0}, LH4/q;->a(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_5
    invoke-static {v4, v5}, Lr3/o;->k0(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    sget v0, LC4/f;->l:I

    invoke-virtual {p1, v0}, LC4/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, LH4/r;->m()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls4/f;

    invoke-interface {p2, v2}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, LH4/r;->b:LF4/k;

    iget-object v4, v4, LF4/k;->a:LF4/i;

    invoke-virtual {p0, v2}, LH4/r;->l(Ls4/f;)Ls4/b;

    move-result-object v2

    invoke-virtual {v4, v2}, LF4/i;->b(Ls4/b;)LU3/e;

    move-result-object v2

    invoke-static {v1, v2}, LS4/m;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    sget p0, LC4/f;->g:I

    invoke-virtual {p1, p0}, LC4/f;->a(I)Z

    move-result p0

    if-eqz p0, :cond_a

    iget-object p0, v3, LH4/q;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls4/f;

    invoke-interface {p2, p1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v3, LH4/q;->f:LI4/j;

    invoke-virtual {v0, p1}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LH4/v;

    invoke-static {v1, p1}, LS4/m;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    invoke-static {v1}, LS4/m;->d(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public j(Ljava/util/ArrayList;Ls4/f;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public k(Ljava/util/ArrayList;Ls4/f;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract l(Ls4/f;)Ls4/b;
.end method

.method public final m()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, LH4/r;->d:LI4/i;

    sget-object v0, LH4/r;->f:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public abstract n()Ljava/util/Set;
.end method

.method public abstract o()Ljava/util/Set;
.end method

.method public abstract p()Ljava/util/Set;
.end method

.method public q(Ls4/f;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LH4/r;->m()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public r(LH4/u;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
