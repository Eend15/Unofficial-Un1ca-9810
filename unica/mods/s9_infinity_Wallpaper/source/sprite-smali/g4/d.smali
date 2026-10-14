.class public final Lg4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU3/F;


# instance fields
.field public final a:Landroidx/recyclerview/widget/b;

.field public final b:LI4/e;


# direct methods
.method public constructor <init>(Lg4/a;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/b;

    sget-object v1, Lg4/b;->b:Lg4/b;

    new-instance v2, Lq3/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Landroidx/recyclerview/widget/b;-><init>(Lg4/a;Lg4/f;Lq3/d;)V

    iput-object v0, p0, Lg4/d;->a:Landroidx/recyclerview/widget/b;

    iget-object p1, p1, Lg4/a;->a:LI4/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LI4/e;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-direct {v1, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    new-instance v2, LI4/f;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, LI4/e;-><init>(LI4/l;Ljava/util/concurrent/ConcurrentHashMap;LE3/b;I)V

    iput-object v0, p0, Lg4/d;->b:LI4/e;

    return-void
.end method


# virtual methods
.method public final a(Ls4/c;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lg4/d;->e(Ls4/c;)Lh4/n;

    move-result-object p0

    invoke-static {p2, p0}, LS4/m;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ls4/c;)Ljava/util/List;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lg4/d;->e(Ls4/c;)Lh4/n;

    move-result-object p0

    invoke-static {p0}, Lr3/k;->e0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ls4/c;)Z
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lg4/d;->a:Landroidx/recyclerview/widget/b;

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Lg4/a;

    iget-object p0, p0, Lg4/a;->b:LZ3/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final d(Ls4/c;LE3/b;)Ljava/util/Collection;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lg4/d;->e(Ls4/c;)Lh4/n;

    move-result-object p0

    iget-object p0, p0, Lh4/n;->n:LI4/c;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lr3/r;->d:Lr3/r;

    :goto_0
    return-object p0
.end method

.method public final e(Ls4/c;)Lh4/n;
    .locals 3

    iget-object v0, p0, Lg4/d;->a:Landroidx/recyclerview/widget/b;

    iget-object v0, v0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object v0, v0, Lg4/a;->b:LZ3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La4/z;

    invoke-direct {v0, p1}, La4/z;-><init>(Ls4/c;)V

    new-instance v1, LF4/C;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2, v0}, LF4/C;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p0, p0, Lg4/d;->b:LI4/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LI4/g;

    invoke-direct {v0, p1, v1}, LI4/g;-><init>(Ls4/c;LE3/a;)V

    invoke-virtual {p0, v0}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lh4/n;

    return-object p0

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0}, LI4/e;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lg4/d;->a:Landroidx/recyclerview/widget/b;

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Lg4/a;

    const-string v0, "LazyJavaPackageFragmentProvider of module "

    iget-object p0, p0, Lg4/a;->o:LX3/D;

    invoke-static {p0, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
