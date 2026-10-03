.class public final Lh4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC4/o;


# static fields
.field public static final synthetic f:[LL3/l;


# instance fields
.field public final b:Landroidx/recyclerview/widget/b;

.field public final c:Lh4/n;

.field public final d:Lh4/s;

.field public final e:LI4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, Lh4/d;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v3, "kotlinScopes"

    const-string v4, "getKotlinScopes()[Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v0, v2, v3, v4}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    filled-new-array {v0}, [LL3/l;

    move-result-object v0

    sput-object v0, Lh4/d;->f:[LL3/l;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/b;La4/z;Lh4/n;)V
    .locals 1

    const-string v0, "packageFragment"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/d;->b:Landroidx/recyclerview/widget/b;

    iput-object p3, p0, Lh4/d;->c:Lh4/n;

    new-instance v0, Lh4/s;

    invoke-direct {v0, p1, p2, p3}, Lh4/s;-><init>(Landroidx/recyclerview/widget/b;La4/z;Lh4/n;)V

    iput-object v0, p0, Lh4/d;->d:Lh4/s;

    iget-object p1, p1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p1, Lg4/a;

    iget-object p1, p1, Lg4/a;->a:LI4/l;

    new-instance p2, La0/o;

    const/4 p3, 0x5

    invoke-direct {p2, p3, p0}, La0/o;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, LI4/i;

    invoke-direct {p3, p1, p2}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object p3, p0, Lh4/d;->e:LI4/i;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 5

    invoke-virtual {p0}, Lh4/d;->h()[LC4/o;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-interface {v4}, LC4/o;->a()Ljava/util/Set;

    move-result-object v4

    invoke-static {v1, v4}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lh4/d;->d:Lh4/s;

    invoke-virtual {p0}, Lh4/w;->a()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public final b()Ljava/util/Set;
    .locals 5

    invoke-virtual {p0}, Lh4/d;->h()[LC4/o;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-interface {v4}, LC4/o;->b()Ljava/util/Set;

    move-result-object v4

    invoke-static {v1, v4}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lh4/d;->d:Lh4/s;

    invoke-virtual {p0}, Lh4/w;->b()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public final c(Ls4/f;Lc4/b;)LU3/g;
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lh4/d;->i(Ls4/f;Lc4/b;)V

    iget-object v0, p0, Lh4/d;->d:Lh4/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lh4/s;->v(Ls4/f;La4/n;)LU3/e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lh4/d;->h()[LC4/o;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v3, p1, p2}, LC4/q;->c(Ls4/f;Lc4/b;)LU3/g;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v3, LU3/h;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, LU3/h;

    invoke-interface {v4}, LU3/v;->w()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_2
    move-object v1, v3

    :cond_3
    return-object v1
.end method

.method public final d(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lh4/d;->i(Ls4/f;Lc4/b;)V

    invoke-virtual {p0}, Lh4/d;->h()[LC4/o;

    move-result-object v0

    iget-object p0, p0, Lh4/d;->d:Lh4/s;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lr3/r;->d:Lr3/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v3, p1, p2}, LC4/o;->d(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {p0, v3}, LR3/f;->n(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lr3/t;->d:Lr3/t;

    :cond_1
    return-object p0
.end method

.method public final e(LC4/f;LE3/b;)Ljava/util/Collection;
    .locals 4

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lh4/d;->h()[LC4/o;

    move-result-object v0

    iget-object p0, p0, Lh4/d;->d:Lh4/s;

    invoke-virtual {p0, p1, p2}, Lh4/s;->e(LC4/f;LE3/b;)Ljava/util/Collection;

    move-result-object p0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v3, p1, p2}, LC4/q;->e(LC4/f;LE3/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {p0, v3}, LR3/f;->n(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lr3/t;->d:Lr3/t;

    :cond_1
    return-object p0
.end method

.method public final f()Ljava/util/Set;
    .locals 3

    invoke-virtual {p0}, Lh4/d;->h()[LC4/o;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    if-nez v1, :cond_0

    sget-object v0, Lr3/r;->d:Lr3/r;

    goto :goto_0

    :cond_0
    new-instance v1, LU4/n;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, LU4/n;-><init>(ILjava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lw0/f;->r(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lh4/d;->d:Lh4/s;

    invoke-virtual {p0}, Lh4/w;->f()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_1
    return-object v0
.end method

.method public final g(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lh4/d;->i(Ls4/f;Lc4/b;)V

    invoke-virtual {p0}, Lh4/d;->h()[LC4/o;

    move-result-object v0

    iget-object p0, p0, Lh4/d;->d:Lh4/s;

    invoke-virtual {p0, p1, p2}, Lh4/w;->g(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v3, p1, p2}, LC4/o;->g(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {p0, v3}, LR3/f;->n(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lr3/t;->d:Lr3/t;

    :cond_1
    return-object p0
.end method

.method public final h()[LC4/o;
    .locals 2

    iget-object p0, p0, Lh4/d;->e:LI4/i;

    sget-object v0, Lh4/d;->f:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [LC4/o;

    return-object p0
.end method

.method public final i(Ls4/f;Lc4/b;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lh4/d;->b:Landroidx/recyclerview/widget/b;

    iget-object v0, v0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object p0, p0, Lh4/d;->c:Lh4/n;

    iget-object v0, v0, Lg4/a;->n:Lc4/a;

    invoke-static {v0, p2, p0, p1}, La4/x;->W(Lc4/a;Lc4/b;LU3/B;Ls4/f;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "scope for "

    iget-object p0, p0, Lh4/d;->c:Lh4/n;

    invoke-static {p0, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
