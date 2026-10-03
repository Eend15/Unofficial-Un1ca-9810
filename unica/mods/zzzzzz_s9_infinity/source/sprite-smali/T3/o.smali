.class public final LT3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU3/F;


# instance fields
.field public final a:LI4/l;

.field public final b:LX3/D;

.field public c:LF4/i;

.field public final d:LI4/j;


# direct methods
.method public constructor <init>(LI4/l;LZ3/b;LX3/D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT3/o;->a:LI4/l;

    iput-object p3, p0, LT3/o;->b:LX3/D;

    new-instance p2, LF4/a;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0}, LF4/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, LI4/l;->c(LE3/b;)LI4/j;

    move-result-object p1

    iput-object p1, p0, LT3/o;->d:LI4/j;

    return-void
.end method


# virtual methods
.method public final a(Ls4/c;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LT3/o;->d:LI4/j;

    invoke-virtual {p0, p1}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, LS4/m;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ls4/c;)Ljava/util/List;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LT3/o;->d:LI4/j;

    invoke-virtual {p0, p1}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lr3/k;->e0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ls4/c;)Z
    .locals 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LT3/o;->d:LI4/j;

    iget-object v1, v0, LI4/j;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, LI4/k;->e:LI4/k;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, p1}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LU3/B;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LT3/o;->e(Ls4/c;)LG4/c;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final d(Ls4/c;LE3/b;)Ljava/util/Collection;
    .locals 0

    const-string p0, "fqName"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "nameFilter"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr3/t;->d:Lr3/t;

    return-object p0
.end method

.method public final e(Ls4/c;)LG4/c;
    .locals 2

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LR3/p;->i:Ls4/f;

    invoke-virtual {p1, v0}, Ls4/c;->h(Ls4/f;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, LG4/a;->m:LG4/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LG4/a;->a(Ls4/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LG4/d;->n(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, LT3/o;->a:LI4/l;

    iget-object p0, p0, LT3/o;->b:LX3/D;

    invoke-static {p1, v1, p0, v0}, Lw0/f;->p(Ls4/c;LI4/o;LU3/x;Ljava/io/InputStream;)LG4/c;

    move-result-object v1

    :goto_1
    return-object v1
.end method
