.class public final Lo0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/c;


# static fields
.field public static final p:Ljava/lang/String;


# instance fields
.field public d:Landroid/os/PowerManager$WakeLock;

.field public final e:Landroid/content/Context;

.field public final f:Ln0/c;

.field public final g:Ln1/a;

.field public final h:Landroidx/work/impl/WorkDatabase;

.field public final i:Ljava/util/HashMap;

.field public final j:Ljava/util/HashMap;

.field public final k:Ljava/util/HashMap;

.field public final l:Ljava/util/List;

.field public final m:Ljava/util/HashSet;

.field public final n:Ljava/util/ArrayList;

.field public final o:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Processor"

    invoke-static {v0}, Ln0/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo0/e;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ln0/c;Ln1/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/e;->e:Landroid/content/Context;

    iput-object p2, p0, Lo0/e;->f:Ln0/c;

    iput-object p3, p0, Lo0/e;->g:Ln1/a;

    iput-object p4, p0, Lo0/e;->h:Landroidx/work/impl/WorkDatabase;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo0/e;->j:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo0/e;->i:Ljava/util/HashMap;

    iput-object p5, p0, Lo0/e;->l:Ljava/util/List;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo0/e;->m:Ljava/util/HashSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo0/e;->n:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lo0/e;->d:Landroid/os/PowerManager$WakeLock;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/e;->o:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo0/e;->k:Ljava/util/HashMap;

    return-void
.end method

.method public static b(Ljava/lang/String;Lo0/r;)Z
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo0/r;->t:Z

    invoke-virtual {p1}, Lo0/r;->h()Z

    iget-object v1, p1, Lo0/r;->s:Ly0/k;

    invoke-virtual {v1, v0}, Ly0/i;->cancel(Z)Z

    iget-object v1, p1, Lo0/r;->h:Ln0/n;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lo0/r;->s:Ly0/k;

    iget-object v1, v1, Ly0/i;->a:Ljava/lang/Object;

    instance-of v1, v1, Ly0/a;

    if-eqz v1, :cond_0

    iget-object p1, p1, Lo0/r;->h:Ln0/n;

    invoke-virtual {p1}, Ln0/n;->e()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WorkSpec "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lo0/r;->g:Lw0/p;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already done. Not interrupting."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    sget-object v2, Lo0/r;->u:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object p1

    sget-object v1, Lo0/e;->p:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkerWrapper interrupted for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object p1

    sget-object v0, Lo0/e;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WorkerWrapper could not be found for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lo0/c;)V
    .locals 1

    iget-object v0, p0, Lo0/e;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lo0/e;->n:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c(Lw0/j;Z)V
    .locals 5

    iget-object v0, p0, Lo0/e;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo0/e;->j:Ljava/util/HashMap;

    iget-object v2, p1, Lw0/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/r;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lo0/r;->g:Lw0/p;

    invoke-static {v1}, Lp4/g;->x(Lw0/p;)Lw0/j;

    move-result-object v1

    invoke-virtual {p1, v1}, Lw0/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo0/e;->j:Ljava/util/HashMap;

    iget-object v2, p1, Lw0/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    sget-object v2, Lo0/e;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lo0/e;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lw0/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " executed; reschedule = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lo0/e;->n:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/c;

    invoke-interface {v1, p1, p2}, Lo0/c;->c(Lw0/j;Z)V

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lo0/e;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo0/e;->j:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lo0/e;->i:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e(Lo0/c;)V
    .locals 1

    iget-object v0, p0, Lo0/e;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lo0/e;->n:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f(Lo0/i;LG4/d;)Z
    .locals 11

    const-string p2, "Work "

    iget-object v0, p1, Lo0/i;->a:Lw0/j;

    iget-object v1, v0, Lw0/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lo0/e;->h:Landroidx/work/impl/WorkDatabase;

    new-instance v4, Lcom/samsung/android/sdk/scs/ai/text/category/b;

    const/4 v5, 0x5

    invoke-direct {v4, p0, v2, v1, v5}, Lcom/samsung/android/sdk/scs/ai/text/category/b;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroidx/work/impl/WorkDatabase;->n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw0/p;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object p1

    sget-object p2, Lo0/e;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Didn\'t find WorkSpec for id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ln0/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo0/e;->g:Ln1/a;

    new-instance p2, LA0/b;

    const/16 v1, 0xd

    invoke-direct {p2, p0, v1, v0}, LA0/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p0, p1, Ln1/a;->c:Ljava/lang/Object;

    check-cast p0, LH/o;

    invoke-virtual {p0, p2}, LH/o;->execute(Ljava/lang/Runnable;)V

    return v4

    :cond_0
    iget-object v5, p0, Lo0/e;->o:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0, v1}, Lo0/e;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v2, p0, Lo0/e;->k:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/i;

    iget-object v2, v2, Lo0/i;->a:Lw0/j;

    iget v2, v2, Lw0/j;->b:I

    iget v3, v0, Lw0/j;->b:I

    if-ne v2, v3, :cond_1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object p0

    sget-object p1, Lo0/e;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is already enqueued for processing"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lo0/e;->g:Ln1/a;

    new-instance p2, LA0/b;

    const/16 v1, 0xd

    invoke-direct {p2, p0, v1, v0}, LA0/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p0, p1, Ln1/a;->c:Ljava/lang/Object;

    check-cast p0, LH/o;

    invoke-virtual {p0, p2}, LH/o;->execute(Ljava/lang/Runnable;)V

    :goto_0
    monitor-exit v5

    return v4

    :cond_2
    iget p2, v3, Lw0/p;->t:I

    iget v6, v0, Lw0/j;->b:I

    if-eq p2, v6, :cond_3

    iget-object p1, p0, Lo0/e;->g:Ln1/a;

    new-instance p2, LA0/b;

    const/16 v1, 0xd

    invoke-direct {p2, p0, v1, v0}, LA0/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p0, p1, Ln1/a;->c:Ljava/lang/Object;

    check-cast p0, LH/o;

    invoke-virtual {p0, p2}, LH/o;->execute(Ljava/lang/Runnable;)V

    monitor-exit v5

    return v4

    :cond_3
    new-instance p2, LQ1/i;

    iget-object v4, p0, Lo0/e;->e:Landroid/content/Context;

    iget-object v6, p0, Lo0/e;->f:Ln0/c;

    iget-object v7, p0, Lo0/e;->g:Ln1/a;

    iget-object v8, p0, Lo0/e;->h:Landroidx/work/impl/WorkDatabase;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance v9, LG4/d;

    const/16 v10, 0x1b

    invoke-direct {v9, v10}, LG4/d;-><init>(I)V

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p2, LQ1/i;->a:Ljava/lang/Object;

    iput-object v7, p2, LQ1/i;->c:Ljava/lang/Object;

    iput-object p0, p2, LQ1/i;->b:Ljava/lang/Object;

    iput-object v6, p2, LQ1/i;->d:Ljava/lang/Object;

    iput-object v8, p2, LQ1/i;->e:Ljava/lang/Object;

    iput-object v3, p2, LQ1/i;->f:Ljava/lang/Object;

    iput-object v2, p2, LQ1/i;->h:Ljava/lang/Object;

    iget-object v2, p0, Lo0/e;->l:Ljava/util/List;

    iput-object v2, p2, LQ1/i;->g:Ljava/lang/Object;

    new-instance v2, Lo0/r;

    invoke-direct {v2, p2}, Lo0/r;-><init>(LQ1/i;)V

    iget-object p2, v2, Lo0/r;->r:Ly0/k;

    new-instance v3, LH/p;

    iget-object v4, p1, Lo0/i;->a:Lw0/j;

    const/4 v6, 0x2

    invoke-direct {v3, p0, v4, p2, v6}, LH/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v4, p0, Lo0/e;->g:Ln1/a;

    iget-object v4, v4, Ln1/a;->c:Ljava/lang/Object;

    check-cast v4, LH/o;

    invoke-virtual {p2, v3, v4}, Ly0/i;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p2, p0, Lo0/e;->j:Ljava/util/HashMap;

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lo0/e;->k:Ljava/util/HashMap;

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lo0/e;->g:Ln1/a;

    iget-object p0, p0, Ln1/a;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/o;

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/o;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object p0

    sget-object p1, Lo0/e;->p:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lo0/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": processing "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :goto_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final g()V
    .locals 5

    iget-object v0, p0, Lo0/e;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo0/e;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo0/e;->e:Landroid/content/Context;

    sget-object v2, Lv0/a;->m:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_STOP_FOREGROUND"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lo0/e;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v2

    sget-object v3, Lo0/e;->p:Ljava/lang/String;

    const-string v4, "Unable to stop foreground service"

    invoke-virtual {v2, v3, v4, v1}, Ln0/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lo0/e;->d:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lo0/e;->d:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
