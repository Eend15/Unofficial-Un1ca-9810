.class public final Lh4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh4/c;


# instance fields
.field public final a:La4/n;

.field public final b:LF3/l;

.field public final c:LF4/a;

.field public final d:Ljava/util/LinkedHashMap;

.field public final e:Ljava/util/LinkedHashMap;

.field public final f:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(La4/n;LE3/b;)V
    .locals 4

    const-string v0, "jClass"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/a;->a:La4/n;

    check-cast p2, LF3/l;

    iput-object p2, p0, Lh4/a;->b:LF3/l;

    new-instance p2, LF4/a;

    const/16 v0, 0xf

    invoke-direct {p2, v0, p0}, LF4/a;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lh4/a;->c:LF4/a;

    invoke-virtual {p1}, La4/n;->f()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lr3/j;->o0(Ljava/lang/Iterable;)LU4/l;

    move-result-object p1

    new-instance v0, LU4/f;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2}, LU4/f;-><init>(LU4/i;ZLE3/b;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance p2, LB3/f;

    invoke-direct {p2, v0}, LB3/f;-><init>(LU4/f;)V

    :goto_0
    invoke-virtual {p2}, LB3/f;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, LB3/f;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, La4/w;

    invoke-virtual {v2}, La4/v;->e()Ls4/f;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lh4/a;->d:Ljava/util/LinkedHashMap;

    iget-object p1, p0, Lh4/a;->a:La4/n;

    invoke-virtual {p1}, La4/n;->d()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lr3/j;->o0(Ljava/lang/Iterable;)LU4/l;

    move-result-object p1

    iget-object p2, p0, Lh4/a;->b:LF3/l;

    new-instance v0, LU4/f;

    invoke-direct {v0, p1, v1, p2}, LU4/f;-><init>(LU4/i;ZLE3/b;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance p2, LB3/f;

    invoke-direct {p2, v0}, LB3/f;-><init>(LU4/f;)V

    :goto_1
    invoke-virtual {p2}, LB3/f;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, LB3/f;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, La4/t;

    invoke-virtual {v1}, La4/v;->e()Ls4/f;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lh4/a;->e:Ljava/util/LinkedHashMap;

    iget-object p1, p0, Lh4/a;->a:La4/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result p2

    invoke-static {p2}, Lr3/v;->d0(I)I

    move-result p2

    const/16 v0, 0x10

    if-ge p2, v0, :cond_3

    move p2, v0

    :cond_3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_4

    iput-object v0, p0, Lh4/a;->f:Ljava/util/LinkedHashMap;

    return-void

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lh4/a;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lh4/a;->a:La4/n;

    invoke-virtual {v0}, La4/n;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lr3/j;->o0(Ljava/lang/Iterable;)LU4/l;

    move-result-object v0

    iget-object p0, p0, Lh4/a;->b:LF3/l;

    new-instance v1, LU4/f;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, p0}, LU4/f;-><init>(LU4/i;ZLE3/b;)V

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v0, LB3/f;

    invoke-direct {v0, v1}, LB3/f;-><init>(LU4/f;)V

    :goto_0
    invoke-virtual {v0}, LB3/f;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LB3/f;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La4/t;

    invoke-virtual {v1}, La4/v;->e()Ls4/f;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final c()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lh4/a;->a:La4/n;

    invoke-virtual {v0}, La4/n;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lr3/j;->o0(Ljava/lang/Iterable;)LU4/l;

    move-result-object v0

    iget-object p0, p0, Lh4/a;->c:LF4/a;

    new-instance v1, LU4/f;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, p0}, LU4/f;-><init>(LU4/i;ZLE3/b;)V

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v0, LB3/f;

    invoke-direct {v0, v1}, LB3/f;-><init>(LU4/f;)V

    :goto_0
    invoke-virtual {v0}, LB3/f;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LB3/f;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La4/w;

    invoke-virtual {v1}, La4/v;->e()Ls4/f;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final d(Ls4/f;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lh4/a;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Lr3/r;->d:Lr3/r;

    :cond_0
    return-object p0
.end method

.method public final e(Ls4/f;)La4/t;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lh4/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La4/t;

    return-object p0
.end method

.method public final f(Ls4/f;)V
    .locals 0

    iget-object p0, p0, Lh4/a;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method
