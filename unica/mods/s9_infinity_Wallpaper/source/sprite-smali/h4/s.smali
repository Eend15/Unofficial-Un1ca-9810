.class public final Lh4/s;
.super Lh4/A;
.source "SourceFile"


# instance fields
.field public final n:La4/z;

.field public final o:Lh4/n;

.field public final p:LI4/h;

.field public final q:LI4/j;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/b;La4/z;Lh4/n;)V
    .locals 1

    const-string v0, "ownerDescriptor"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lh4/w;-><init>(Landroidx/recyclerview/widget/b;Lh4/w;)V

    iput-object p2, p0, Lh4/s;->n:La4/z;

    iput-object p3, p0, Lh4/s;->o:Lh4/n;

    iget-object p2, p1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p2, Lg4/a;

    iget-object p2, p2, Lg4/a;->a:LI4/l;

    new-instance p3, LF4/C;

    const/16 v0, 0x12

    invoke-direct {p3, p1, v0, p0}, LF4/C;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LI4/h;

    invoke-direct {v0, p2, p3}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v0, p0, Lh4/s;->p:LI4/h;

    new-instance p3, LH4/j;

    const/4 v0, 0x4

    invoke-direct {p3, p0, v0, p1}, LH4/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, LI4/l;->c(LE3/b;)LI4/j;

    move-result-object p1

    iput-object p1, p0, Lh4/s;->q:LI4/j;

    return-void
.end method


# virtual methods
.method public final c(Ls4/f;Lc4/b;)LU3/g;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lh4/s;->v(Ls4/f;La4/n;)LU3/e;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ls4/f;Lc4/b;)Ljava/util/Collection;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public final e(LC4/f;LE3/b;)Ljava/util/Collection;
    .locals 3

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, LC4/f;->l:I

    sget v1, LC4/f;->e:I

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, LC4/f;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Lr3/r;->d:Lr3/r;

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lh4/w;->d:LI4/c;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LU3/j;

    instance-of v2, v1, LU3/e;

    if-eqz v2, :cond_1

    check-cast v1, LU3/e;

    invoke-interface {v1}, LU3/j;->r()Ls4/f;

    move-result-object v1

    const-string v2, "it.name"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v1}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public final h(LC4/f;LC4/l;)Ljava/util/Set;
    .locals 0

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, LC4/f;->e:I

    invoke-virtual {p1, p2}, LC4/f;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Lr3/t;->d:Lr3/t;

    return-object p0

    :cond_0
    iget-object p1, p0, Lh4/s;->p:LI4/h;

    invoke-virtual {p1}, LI4/h;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_2

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    iget-object p0, p0, Lh4/s;->n:La4/z;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method

.method public final i(LC4/f;LC4/l;)Ljava/util/Set;
    .locals 0

    const-string p0, "kindFilter"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr3/t;->d:Lr3/t;

    return-object p0
.end method

.method public final k()Lh4/c;
    .locals 0

    sget-object p0, Lh4/b;->a:Lh4/b;

    return-object p0
.end method

.method public final m(Ljava/util/LinkedHashSet;Ls4/f;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final o(LC4/f;)Ljava/util/Set;
    .locals 0

    const-string p0, "kindFilter"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr3/t;->d:Lr3/t;

    return-object p0
.end method

.method public final q()LU3/j;
    .locals 0

    iget-object p0, p0, Lh4/s;->o:Lh4/n;

    return-object p0
.end method

.method public final v(Ls4/f;La4/n;)LU3/e;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    sget-object v1, Ls4/h;->a:Ls4/f;

    invoke-virtual {p1}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p1, Ls4/f;->e:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lh4/s;->p:LI4/h;

    invoke-virtual {v1}, LI4/h;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez p2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lh4/s;->q:LI4/j;

    new-instance v0, Lh4/o;

    invoke-direct {v0, p1, p2}, Lh4/o;-><init>(Ls4/f;La4/n;)V

    invoke-virtual {p0, v0}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LU3/e;

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x1

    invoke-static {p0}, Ls4/h;->a(I)V

    throw v0
.end method
