.class public final Lp0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/g;
.implements Ls0/b;
.implements Lo0/c;


# static fields
.field public static final m:Ljava/lang/String;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Lo0/n;

.field public final f:Ln1/a;

.field public final g:Ljava/util/HashSet;

.field public final h:Lp0/a;

.field public i:Z

.field public final j:Ljava/lang/Object;

.field public final k:Lw0/l;

.field public l:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GreedyScheduler"

    invoke-static {v0}, Ln0/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lp0/b;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ln0/c;Lw0/i;Lo0/n;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lp0/b;->g:Ljava/util/HashSet;

    new-instance v0, Lw0/l;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lw0/l;-><init>(I)V

    iput-object v0, p0, Lp0/b;->k:Lw0/l;

    iput-object p1, p0, Lp0/b;->d:Landroid/content/Context;

    iput-object p4, p0, Lp0/b;->e:Lo0/n;

    new-instance p1, Ln1/a;

    invoke-direct {p1, p3, p0}, Ln1/a;-><init>(Lw0/i;Ls0/b;)V

    iput-object p1, p0, Lp0/b;->f:Ln1/a;

    new-instance p1, Lp0/a;

    iget-object p2, p2, Ln0/c;->e:Landroidx/recyclerview/widget/y;

    invoke-direct {p1, p0, p2}, Lp0/a;-><init>(Lp0/b;Landroidx/recyclerview/widget/y;)V

    iput-object p1, p0, Lp0/b;->h:Lp0/a;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/b;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/p;

    invoke-static {v0}, Lp4/g;->x(Lw0/p;)Lw0/j;

    move-result-object v0

    iget-object v1, p0, Lp0/b;->k:Lw0/l;

    invoke-virtual {v1, v0}, Lw0/l;->d(Lw0/j;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Constraints met: Scheduling work ID "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lp0/b;->m:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lw0/l;->j(Lw0/j;)Lo0/i;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lp0/b;->e:Lo0/n;

    invoke-virtual {v2, v0, v1}, Lo0/n;->R(Lo0/i;LG4/d;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 5

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/p;

    invoke-static {v0}, Lp4/g;->x(Lw0/p;)Lw0/j;

    move-result-object v0

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Constraints not met: Cancelling work ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lp0/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lp0/b;->k:Lw0/l;

    invoke-virtual {v1, v0}, Lw0/l;->i(Lw0/j;)Lo0/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lp0/b;->e:Lo0/n;

    iget-object v2, v1, Lo0/n;->g:Ln1/a;

    new-instance v3, Lx0/n;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lx0/n;-><init>(Lo0/n;Lo0/i;Z)V

    invoke-virtual {v2, v3}, Ln1/a;->f(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(Lw0/j;Z)V
    .locals 5

    iget-object p2, p0, Lp0/b;->k:Lw0/l;

    invoke-virtual {p2, p1}, Lw0/l;->i(Lw0/j;)Lo0/i;

    iget-object p2, p0, Lp0/b;->j:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lp0/b;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw0/p;

    invoke-static {v1}, Lp4/g;->x(Lw0/p;)Lw0/j;

    move-result-object v2

    invoke-virtual {v2, p1}, Lw0/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v0

    sget-object v2, Lp0/b;->m:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping tracking for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lp0/b;->g:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lp0/b;->f:Ln1/a;

    iget-object p0, p0, Lp0/b;->g:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ln1/a;->y(Ljava/util/Collection;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final cancel(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lp0/b;->l:Ljava/lang/Boolean;

    iget-object v1, p0, Lp0/b;->e:Lo0/n;

    if-nez v0, :cond_0

    iget-object v0, v1, Lo0/n;->e:Ln0/c;

    sget v2, Lx0/m;->a:I

    iget-object v2, p0, Lp0/b;->d:Landroid/content/Context;

    const-string v3, "context"

    invoke-static {v2, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "configuration"

    invoke-static {v0, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lx0/a;->a:Lx0/a;

    invoke-virtual {v0}, Lx0/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v0, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lp0/b;->l:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lp0/b;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v2, Lp0/b;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object p0

    const-string p1, "Ignoring schedule request in non-main process"

    invoke-virtual {p0, v2, p1}, Ln0/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lp0/b;->i:Z

    if-nez v0, :cond_2

    iget-object v0, v1, Lo0/n;->i:Lo0/e;

    invoke-virtual {v0, p0}, Lo0/e;->a(Lo0/c;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp0/b;->i:Z

    :cond_2
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cancelling work ID "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lp0/b;->h:Lp0/a;

    if-eqz v0, :cond_3

    iget-object v2, v0, Lp0/a;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    iget-object v0, v0, Lp0/a;->b:Landroidx/recyclerview/widget/y;

    iget-object v0, v0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    iget-object p0, p0, Lp0/b;->k:Lw0/l;

    invoke-virtual {p0, p1}, Lw0/l;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo0/i;

    iget-object v0, v1, Lo0/n;->g:Ln1/a;

    new-instance v2, Lx0/n;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Lx0/n;-><init>(Lo0/n;Lo0/i;Z)V

    invoke-virtual {v0, v2}, Ln1/a;->f(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final varargs e([Lw0/p;)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lp0/b;->l:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    iget-object v2, p0, Lp0/b;->e:Lo0/n;

    iget-object v2, v2, Lo0/n;->e:Ln0/c;

    sget v3, Lx0/m;->a:I

    const-string v3, "context"

    iget-object v4, p0, Lp0/b;->d:Landroid/content/Context;

    invoke-static {v4, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "configuration"

    invoke-static {v2, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lx0/a;->a:Lx0/a;

    invoke-virtual {v2}, Lx0/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v2, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lp0/b;->l:Ljava/lang/Boolean;

    :cond_0
    iget-object v2, p0, Lp0/b;->l:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object p0

    sget-object p1, Lp0/b;->m:Ljava/lang/String;

    const-string v0, "Ignoring schedule request in a secondary process"

    invoke-virtual {p0, p1, v0}, Ln0/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v2, p0, Lp0/b;->i:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lp0/b;->e:Lo0/n;

    iget-object v2, v2, Lo0/n;->i:Lo0/e;

    invoke-virtual {v2, p0}, Lo0/e;->a(Lo0/c;)V

    iput-boolean v1, p0, Lp0/b;->i:Z

    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    array-length v4, p1

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_a

    aget-object v6, p1, v5

    invoke-static {v6}, Lp4/g;->x(Lw0/p;)Lw0/j;

    move-result-object v7

    iget-object v8, p0, Lp0/b;->k:Lw0/l;

    invoke-virtual {v8, v7}, Lw0/l;->d(Lw0/j;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v6}, Lw0/p;->a()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget v11, v6, Lw0/p;->b:I

    if-ne v11, v1, :cond_9

    cmp-long v7, v9, v7

    if-gez v7, :cond_5

    iget-object v7, p0, Lp0/b;->h:Lp0/a;

    if-eqz v7, :cond_9

    iget-object v8, v7, Lp0/a;->c:Ljava/util/HashMap;

    iget-object v9, v6, Lw0/p;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Runnable;

    iget-object v10, v7, Lp0/a;->b:Landroidx/recyclerview/widget/y;

    if-eqz v9, :cond_4

    iget-object v11, v10, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v11, Landroid/os/Handler;

    invoke-virtual {v11, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    new-instance v9, LH/a;

    const/16 v11, 0xa

    invoke-direct {v9, v7, v6, v11, v0}, LH/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object v7, v6, Lw0/p;->a:Ljava/lang/String;

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6}, Lw0/p;->a()J

    move-result-wide v11

    sub-long/2addr v11, v7

    iget-object v6, v10, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v6, Landroid/os/Handler;

    invoke-virtual {v6, v9, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v6}, Lw0/p;->c()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, v6, Lw0/p;->j:Ln0/e;

    iget-boolean v8, v7, Ln0/e;->c:Z

    if-eqz v8, :cond_6

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v7

    sget-object v8, Lp0/b;->m:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Ignoring "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ". Requires device idle."

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v7, v7, Ln0/e;->h:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v7

    sget-object v8, Lp0/b;->m:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Ignoring "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ". Requires ContentUri triggers."

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, v6, Lw0/p;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    iget-object v7, p0, Lp0/b;->k:Lw0/l;

    invoke-static {v6}, Lp4/g;->x(Lw0/p;)Lw0/j;

    move-result-object v8

    invoke-virtual {v7, v8}, Lw0/l;->d(Lw0/j;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v7

    sget-object v8, Lp0/b;->m:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Starting work for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lw0/p;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lp0/b;->e:Lo0/n;

    iget-object v8, p0, Lp0/b;->k:Lw0/l;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lp4/g;->x(Lw0/p;)Lw0/j;

    move-result-object v6

    invoke-virtual {v8, v6}, Lw0/l;->j(Lw0/j;)Lo0/i;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Lo0/n;->R(Lo0/i;LG4/d;)V

    :cond_9
    :goto_1
    add-int/2addr v5, v1

    goto/16 :goto_0

    :cond_a
    iget-object p1, p0, Lp0/b;->j:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    sget-object v3, Lp0/b;->m:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting tracking for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lp0/b;->g:Ljava/util/HashSet;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lp0/b;->f:Ln1/a;

    iget-object p0, p0, Lp0/b;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ln1/a;->y(Ljava/util/Collection;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_b
    :goto_2
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
