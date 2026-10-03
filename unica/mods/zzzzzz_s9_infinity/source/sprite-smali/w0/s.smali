.class public final Lw0/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lw0/s;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LK3/c;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1

    const-string v0, "argumentRange"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/s;->a:Ljava/lang/Object;

    iput-object p2, p0, Lw0/s;->b:Ljava/lang/Object;

    iput-object p3, p0, Lw0/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LU3/h;Ljava/util/List;Lw0/s;)V
    .locals 1

    const-string v0, "classifierDescriptor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lw0/s;->a:Ljava/lang/Object;

    .line 15
    iput-object p2, p0, Lw0/s;->b:Ljava/lang/Object;

    .line 16
    iput-object p3, p0, Lw0/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Li4/e;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LI4/l;

    const-string v1, "Type parameter upper bound erasion results"

    invoke-direct {v0, v1}, LI4/l;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, La0/o;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, La0/o;-><init>(ILjava/lang/Object;)V

    .line 4
    new-instance v2, Lq3/j;

    invoke-direct {v2, v1}, Lq3/j;-><init>(LE3/a;)V

    .line 5
    iput-object v2, p0, Lw0/s;->a:Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Li4/e;

    invoke-direct {p1, p0}, Li4/e;-><init>(Lw0/s;)V

    :cond_0
    iput-object p1, p0, Lw0/s;->b:Ljava/lang/Object;

    .line 7
    new-instance p1, LF4/a;

    const/16 v1, 0x12

    invoke-direct {p1, v1, p0}, LF4/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, LI4/l;->b(LE3/b;)LI4/e;

    move-result-object p1

    iput-object p1, p0, Lw0/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lw0/s;->a:Ljava/lang/Object;

    .line 11
    iput-object p2, p0, Lw0/s;->b:Ljava/lang/Object;

    .line 12
    iput-object p3, p0, Lw0/s;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(LU3/O;ZLi4/a;)LJ4/C;
    .locals 1

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAttr"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Li4/h;

    invoke-direct {v0, p1, p2, p3}, Li4/h;-><init>(LU3/O;ZLi4/a;)V

    iget-object p0, p0, Lw0/s;->c:Ljava/lang/Object;

    check-cast p0, LI4/e;

    invoke-virtual {p0, v0}, LI4/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/C;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, La0/m;->E(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, La0/m;->q(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lw0/s;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->b()V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, La0/m;->j()V

    return-object v1

    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, La0/m;->j()V

    throw p1
.end method

.method public c(Ljava/lang/String;Ljava/util/LinkedHashSet;)V
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lw0/r;

    invoke-direct {v1, v0, p1}, Lw0/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lw0/s;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    iget-object v2, p0, Lw0/s;->b:Ljava/lang/Object;

    check-cast v2, Lw0/b;

    invoke-virtual {v2, v1}, Lw0/b;->k(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0

    :cond_0
    return-void
.end method

.method public d(Landroidx/lifecycle/m;)V
    .locals 2

    iget-object v0, p0, Lw0/s;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/P;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/P;->run()V

    :cond_0
    new-instance v0, Landroidx/lifecycle/P;

    iget-object v1, p0, Lw0/s;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/v;

    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/P;-><init>(Landroidx/lifecycle/v;Landroidx/lifecycle/m;)V

    iput-object v0, p0, Lw0/s;->c:Ljava/lang/Object;

    iget-object p0, p0, Lw0/s;->b:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
