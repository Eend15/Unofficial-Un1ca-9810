.class public final LS3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW3/c;


# instance fields
.field public final a:LI4/l;

.field public final b:LX3/D;


# direct methods
.method public constructor <init>(LI4/l;LX3/D;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS3/a;->a:LI4/l;

    iput-object p2, p0, LS3/a;->b:LX3/D;

    return-void
.end method


# virtual methods
.method public final a(Ls4/c;)Ljava/util/Collection;
    .locals 0

    const-string p0, "packageFqName"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr3/t;->d:Lr3/t;

    return-object p0
.end method

.method public final b(Ls4/b;)LU3/e;
    .locals 4

    const-string v0, "classId"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Ls4/b;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p1, Ls4/b;->b:Ls4/c;

    invoke-virtual {v0}, Ls4/c;->e()Ls4/c;

    move-result-object v0

    invoke-virtual {v0}, Ls4/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Ls4/b;->h()Ls4/c;

    move-result-object v0

    invoke-virtual {v0}, Ls4/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Function"

    invoke-static {v0, v2}, LV4/m;->o0(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Ls4/b;->g()Ls4/c;

    move-result-object p1

    const-string v2, "classId.packageFqName"

    invoke-static {p1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, LS3/e;->f:LG4/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, LG4/d;->o(Ljava/lang/String;Ls4/c;)LS3/d;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget-object v1, p0, LS3/a;->b:LX3/D;

    invoke-virtual {v1, p1}, LX3/D;->v(Ls4/c;)LU3/G;

    move-result-object p1

    check-cast p1, LX3/z;

    iget-object p1, p1, LX3/z;->h:LI4/i;

    sget-object v1, LX3/z;->k:[LL3/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1, v1}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, LG4/c;

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lr3/j;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {v1}, Lr3/j;->t0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG4/c;

    new-instance v1, LS3/c;

    iget-object p0, p0, LS3/a;->a:LI4/l;

    iget-object v2, v0, LS3/d;->a:LS3/e;

    iget v0, v0, LS3/d;->b:I

    invoke-direct {v1, p0, p1, v2, v0}, LS3/c;-><init>(LI4/l;LG4/c;LS3/e;I)V

    return-object v1

    :cond_6
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_7
    :goto_2
    return-object v1
.end method

.method public final c(Ls4/c;Ls4/f;)Z
    .locals 1

    const-string p0, "packageFqName"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string p2, "name.asString()"

    invoke-static {p0, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "Function"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "KFunction"

    invoke-static {p0, p2, v0}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "SuspendFunction"

    invoke-static {p0, p2, v0}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "KSuspendFunction"

    invoke-static {p0, p2, v0}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    sget-object p2, LS3/e;->f:LG4/d;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, LG4/d;->o(Ljava/lang/String;Ls4/c;)LS3/d;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
