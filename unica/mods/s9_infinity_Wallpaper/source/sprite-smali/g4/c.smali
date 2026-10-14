.class public final Lg4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV3/h;


# instance fields
.field public final d:Landroidx/recyclerview/widget/b;

.field public final e:Lj4/b;

.field public final f:Z

.field public final g:LI4/j;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/b;Lj4/b;Z)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationOwner"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg4/c;->d:Landroidx/recyclerview/widget/b;

    iput-object p2, p0, Lg4/c;->e:Lj4/b;

    iput-boolean p3, p0, Lg4/c;->f:Z

    iget-object p1, p1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p1, Lg4/a;

    iget-object p1, p1, Lg4/a;->a:LI4/l;

    new-instance p2, LF4/a;

    const/16 p3, 0xd

    invoke-direct {p2, p3, p0}, LF4/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, LI4/l;->c(LE3/b;)LI4/j;

    move-result-object p1

    iput-object p1, p0, Lg4/c;->g:LI4/j;

    return-void
.end method


# virtual methods
.method public final a(Ls4/c;)LV3/b;
    .locals 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg4/c;->e:Lj4/b;

    invoke-interface {v0, p1}, Lj4/b;->a(Ls4/c;)La4/c;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lg4/c;->g:LI4/j;

    invoke-virtual {v2, v1}, LI4/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LV3/b;

    :goto_0
    if-nez v1, :cond_1

    sget-object v1, Le4/c;->a:Ls4/f;

    iget-object p0, p0, Lg4/c;->d:Landroidx/recyclerview/widget/b;

    invoke-static {p1, v0, p0}, Le4/c;->a(Ls4/c;Lj4/b;Landroidx/recyclerview/widget/b;)Lf4/h;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final e(Ls4/c;)Z
    .locals 0

    invoke-static {p0, p1}, LR3/f;->O(LV3/h;Ls4/c;)Z

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lg4/c;->e:Lj4/b;

    invoke-interface {p0}, Lj4/b;->p()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lg4/c;->e:Lj4/b;

    invoke-interface {v0}, Lj4/b;->p()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lr3/j;->o0(Ljava/lang/Iterable;)LU4/l;

    move-result-object v1

    iget-object v2, p0, Lg4/c;->g:LI4/j;

    invoke-static {v1, v2}, LU4/j;->f0(LU4/i;LE3/b;)LU4/q;

    move-result-object v1

    sget-object v2, Le4/c;->a:Ls4/f;

    sget-object v2, LR3/o;->m:Ls4/c;

    iget-object p0, p0, Lg4/c;->d:Landroidx/recyclerview/widget/b;

    invoke-static {v2, v0, p0}, Le4/c;->a(Ls4/c;Lj4/b;Landroidx/recyclerview/widget/b;)Lf4/h;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lr3/h;->c0([Ljava/lang/Object;)LU4/i;

    move-result-object p0

    filled-new-array {v1, p0}, [LU4/i;

    move-result-object p0

    invoke-static {p0}, Lr3/h;->c0([Ljava/lang/Object;)LU4/i;

    move-result-object p0

    invoke-static {p0}, LU4/j;->d0(LU4/i;)LU4/g;

    move-result-object p0

    sget-object v0, LU4/m;->g:LU4/m;

    new-instance v1, LU4/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, LU4/f;-><init>(LU4/i;ZLE3/b;)V

    new-instance p0, LB3/f;

    invoke-direct {p0, v1}, LB3/f;-><init>(LU4/f;)V

    return-object p0
.end method
