.class public final Lo0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final u:Ljava/lang/String;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/List;

.field public final g:Lw0/p;

.field public h:Ln0/n;

.field public final i:Ln1/a;

.field public j:Ln0/m;

.field public final k:Ln0/c;

.field public final l:Lo0/e;

.field public final m:Landroidx/work/impl/WorkDatabase;

.field public final n:Lw0/q;

.field public final o:Lw0/c;

.field public final p:Ljava/util/ArrayList;

.field public q:Ljava/lang/String;

.field public final r:Ly0/k;

.field public final s:Ly0/k;

.field public volatile t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkerWrapper"

    invoke-static {v0}, Ln0/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo0/r;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LQ1/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ln0/j;

    invoke-direct {v0}, Ln0/j;-><init>()V

    iput-object v0, p0, Lo0/r;->j:Ln0/m;

    new-instance v0, Ly0/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo0/r;->r:Ly0/k;

    new-instance v0, Ly0/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo0/r;->s:Ly0/k;

    iget-object v0, p1, LQ1/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lo0/r;->d:Landroid/content/Context;

    iget-object v0, p1, LQ1/i;->c:Ljava/lang/Object;

    check-cast v0, Ln1/a;

    iput-object v0, p0, Lo0/r;->i:Ln1/a;

    iget-object v0, p1, LQ1/i;->b:Ljava/lang/Object;

    check-cast v0, Lo0/e;

    iput-object v0, p0, Lo0/r;->l:Lo0/e;

    iget-object v0, p1, LQ1/i;->f:Ljava/lang/Object;

    check-cast v0, Lw0/p;

    iput-object v0, p0, Lo0/r;->g:Lw0/p;

    iget-object v0, v0, Lw0/p;->a:Ljava/lang/String;

    iput-object v0, p0, Lo0/r;->e:Ljava/lang/String;

    iget-object v0, p1, LQ1/i;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo0/r;->f:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lo0/r;->h:Ln0/n;

    iget-object v0, p1, LQ1/i;->d:Ljava/lang/Object;

    check-cast v0, Ln0/c;

    iput-object v0, p0, Lo0/r;->k:Ln0/c;

    iget-object v0, p1, LQ1/i;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    iput-object v0, p0, Lo0/r;->m:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v1

    iput-object v1, p0, Lo0/r;->n:Lw0/q;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()Lw0/c;

    move-result-object v0

    iput-object v0, p0, Lo0/r;->o:Lw0/c;

    iget-object p1, p1, LQ1/i;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lo0/r;->p:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Ln0/m;)V
    .locals 12

    instance-of v0, p1, Ln0/l;

    iget-object v1, p0, Lo0/r;->g:Lw0/p;

    sget-object v2, Lo0/r;->u:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Worker result SUCCESS for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo0/r;->q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ln0/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lw0/p;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lo0/r;->d()V

    goto/16 :goto_5

    :cond_0
    iget-object p1, p0, Lo0/r;->o:Lw0/c;

    iget-object v0, p0, Lo0/r;->e:Ljava/lang/String;

    iget-object v1, p0, Lo0/r;->n:Lw0/q;

    iget-object v3, p0, Lo0/r;->m:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->c()V

    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {v1, v5, v0}, Lw0/q;->q(ILjava/lang/String;)V

    iget-object v5, p0, Lo0/r;->j:Ln0/m;

    check-cast v5, Ln0/l;

    iget-object v5, v5, Ln0/l;->a:Ln0/g;

    invoke-virtual {v1, v0, v5}, Lw0/q;->p(Ljava/lang/String;Ln0/g;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1, v0}, Lw0/c;->E(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lw0/q;->i(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_1

    const-string v8, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    const/4 v9, 0x1

    invoke-static {v9, v8}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v8

    if-nez v7, :cond_2

    invoke-virtual {v8, v9}, La0/m;->E(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v9, v7}, La0/m;->q(ILjava/lang/String;)V

    :goto_1
    iget-object v10, p1, Lw0/c;->e:Ljava/lang/Object;

    check-cast v10, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-static {v10, v8, v4}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_3

    move v11, v9

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    move v11, v4

    :goto_2
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual {v8}, La0/m;->j()V

    if-eqz v11, :cond_1

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting status to enqueued for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v2, v10}, Ln0/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9, v7}, Lw0/q;->q(ILjava/lang/String;)V

    invoke-virtual {v1, v7, v5, v6}, Lw0/q;->o(Ljava/lang/String;J)V

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_4

    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual {v8}, La0/m;->j()V

    throw p1

    :cond_4
    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v4}, Lo0/r;->e(Z)V

    goto :goto_5

    :goto_4
    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v4}, Lo0/r;->e(Z)V

    throw p1

    :cond_5
    instance-of p1, p1, Ln0/k;

    if-eqz p1, :cond_6

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Worker result RETRY for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo0/r;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ln0/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo0/r;->c()V

    goto :goto_5

    :cond_6
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Worker result FAILURE for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo0/r;->q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ln0/o;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lw0/p;->d()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lo0/r;->d()V

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Lo0/r;->g()V

    :goto_5
    return-void
.end method

.method public final b()V
    .locals 5

    invoke-virtual {p0}, Lo0/r;->h()Z

    move-result v0

    iget-object v1, p0, Lo0/r;->m:Landroidx/work/impl/WorkDatabase;

    iget-object v2, p0, Lo0/r;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    iget-object v0, p0, Lo0/r;->n:Lw0/q;

    invoke-virtual {v0, v2}, Lw0/q;->i(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->s()Lw0/m;

    move-result-object v3

    invoke-virtual {v3, v2}, Lw0/m;->e(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo0/r;->e(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lo0/r;->j:Ln0/m;

    invoke-virtual {p0, v0}, Lo0/r;->a(Ln0/m;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Li4/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lo0/r;->c()V

    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0

    :cond_3
    :goto_2
    iget-object v0, p0, Lo0/r;->f:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/g;

    invoke-interface {v4, v2}, Lo0/g;->cancel(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lo0/r;->k:Ln0/c;

    invoke-static {p0, v1, v0}, Lo0/h;->a(Ln0/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Lo0/r;->e:Ljava/lang/String;

    iget-object v1, p0, Lo0/r;->n:Lw0/q;

    iget-object v2, p0, Lo0/r;->m:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->c()V

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v3, v0}, Lw0/q;->q(ILjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lw0/q;->o(Ljava/lang/String;J)V

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v0, v4, v5}, Lw0/q;->n(Ljava/lang/String;J)V

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v3}, Lo0/r;->e(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v3}, Lo0/r;->e(Z)V

    throw v0
.end method

.method public final d()V
    .locals 8

    iget-object v0, p0, Lo0/r;->e:Ljava/lang/String;

    iget-object v1, p0, Lo0/r;->n:Lw0/q;

    iget-object v2, p0, Lo0/r;->m:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->c()V

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lw0/q;->o(Ljava/lang/String;J)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v0}, Lw0/q;->q(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, v1, Lw0/q;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/work/impl/WorkDatabase_Impl;

    :try_start_1
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object v6, v1, Lw0/q;->j:Ljava/lang/Object;

    check-cast v6, Lw0/h;

    invoke-virtual {v6}, LF4/x;->a()Lf0/i;

    move-result-object v7

    if-nez v0, :cond_0

    invoke-interface {v7, v4}, Le0/d;->E(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v7, v4, v0}, Le0/d;->q(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v7}, Lf0/i;->a()I

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {v6, v7}, LF4/x;->h(Lf0/i;)V

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object v6, v1, Lw0/q;->f:Ljava/lang/Object;

    check-cast v6, Lw0/h;

    invoke-virtual {v6}, LF4/x;->a()Lf0/i;

    move-result-object v7

    if-nez v0, :cond_1

    invoke-interface {v7, v4}, Le0/d;->E(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v7, v4, v0}, Le0/d;->q(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v7}, Lf0/i;->a()I

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {v6, v7}, LF4/x;->h(Lf0/i;)V

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v0, v4, v5}, Lw0/q;->n(Ljava/lang/String;J)V

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v3}, Lo0/r;->e(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {v6, v7}, LF4/x;->h(Lf0/i;)V

    throw v0

    :catchall_2
    move-exception v0

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {v6, v7}, LF4/x;->h(Lf0/i;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v3}, Lo0/r;->e(Z)V

    throw v0
.end method

.method public final e(Z)V
    .locals 5

    iget-object v0, p0, Lo0/r;->m:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    iget-object v0, p0, Lo0/r;->m:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    const/4 v2, 0x0

    invoke-static {v2, v1}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v1

    iget-object v0, v0, Lw0/q;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-static {v0, v1, v2}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    move v3, v2

    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, La0/m;->j()V

    if-nez v3, :cond_1

    iget-object v0, p0, Lo0/r;->d:Landroid/content/Context;

    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v1, v2}, Lx0/l;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lo0/r;->n:Lw0/q;

    iget-object v1, p0, Lo0/r;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lw0/q;->q(ILjava/lang/String;)V

    iget-object v0, p0, Lo0/r;->n:Lw0/q;

    iget-object v1, p0, Lo0/r;->e:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lw0/q;->n(Ljava/lang/String;J)V

    :cond_2
    iget-object v0, p0, Lo0/r;->g:Lw0/p;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo0/r;->h:Ln0/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo0/r;->l:Lo0/e;

    iget-object v1, p0, Lo0/r;->e:Ljava/lang/String;

    iget-object v2, v0, Lo0/e;->o:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, v0, Lo0/e;->i:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_3

    :try_start_4
    iget-object v0, p0, Lo0/r;->l:Lo0/e;

    iget-object v1, p0, Lo0/r;->e:Ljava/lang/String;

    iget-object v2, v0, Lo0/e;->o:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v3, v0, Lo0/e;->i:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lo0/e;->g()V

    monitor-exit v2

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_3
    move-exception p1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw p1

    :cond_3
    :goto_2
    iget-object v0, p0, Lo0/r;->m:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    iget-object v0, p0, Lo0/r;->m:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    iget-object p0, p0, Lo0/r;->r:Ly0/k;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly0/k;->j(Ljava/lang/Object;)Z

    return-void

    :goto_3
    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, La0/m;->j()V

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_4
    iget-object p0, p0, Lo0/r;->m:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p1
.end method

.method public final f()V
    .locals 6

    iget-object v0, p0, Lo0/r;->n:Lw0/q;

    iget-object v1, p0, Lo0/r;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lw0/q;->i(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    const-string v3, "Status for "

    sget-object v4, Lo0/r;->u:Ljava/lang/String;

    if-ne v0, v2, :cond_0

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is RUNNING; not doing any work and rescheduling for later execution"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo0/r;->e(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v2

    const-string v5, " is "

    invoke-static {v3, v1, v5}, LB/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Li4/b;->n(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ; not doing any work"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo0/r;->e(Z)V

    :goto_0
    return-void
.end method

.method public final g()V
    .locals 8

    iget-object v0, p0, Lo0/r;->e:Ljava/lang/String;

    iget-object v1, p0, Lo0/r;->m:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->c()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Lo0/r;->n:Lw0/q;

    if-nez v4, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lw0/q;->i(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_0

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v4}, Lw0/q;->q(ILjava/lang/String;)V

    :cond_0
    iget-object v5, p0, Lo0/r;->o:Lw0/c;

    invoke-virtual {v5, v4}, Lw0/c;->E(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lo0/r;->j:Ln0/m;

    check-cast v3, Ln0/j;

    iget-object v3, v3, Ln0/j;->a:Ln0/g;

    invoke-virtual {v5, v0, v3}, Lw0/q;->p(Ljava/lang/String;Ln0/g;)V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v2}, Lo0/r;->e(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v2}, Lo0/r;->e(Z)V

    throw v0
.end method

.method public final h()Z
    .locals 5

    iget-boolean v0, p0, Lo0/r;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v0

    sget-object v2, Lo0/r;->u:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Work interrupted for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lo0/r;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo0/r;->n:Lw0/q;

    iget-object v2, p0, Lo0/r;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lw0/q;->i(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lo0/r;->e(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Li4/b;->a(I)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lo0/r;->e(Z)V

    :goto_0
    return v2

    :cond_1
    return v1
.end method

.method public final run()V
    .locals 21

    move-object/from16 v1, p0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Work [ id="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lo0/r;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", tags={ "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lo0/r;->p:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    move v7, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v7, :cond_0

    move v7, v2

    goto :goto_1

    :cond_0
    const-string v9, ", "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v5, " } ]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lo0/r;->q:Ljava/lang/String;

    iget-object v5, v1, Lo0/r;->g:Lw0/p;

    const-string v0, "Delaying execution for "

    invoke-virtual/range {p0 .. p0}, Lo0/r;->h()Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_b

    :cond_2
    iget-object v7, v1, Lo0/r;->m:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    iget v8, v5, Lw0/p;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v9, v5, Lw0/p;->c:Ljava/lang/String;

    sget-object v10, Lo0/r;->u:Ljava/lang/String;

    if-eq v8, v6, :cond_3

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lo0/r;->f()V

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->o()V

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not in ENQUEUED state. Nothing more to do"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->k()V

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_3
    :try_start_2
    invoke-virtual {v5}, Lw0/p;->d()Z

    move-result v8

    if-nez v8, :cond_5

    iget v8, v5, Lw0/p;->b:I

    if-ne v8, v6, :cond_4

    iget v8, v5, Lw0/p;->k:I

    if-lez v8, :cond_4

    move v8, v6

    goto :goto_3

    :cond_4
    move v8, v2

    :goto_3
    if-eqz v8, :cond_6

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v5}, Lw0/p;->a()J

    move-result-wide v13

    cmp-long v8, v11, v13

    if-gez v8, :cond_6

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it is being executed before schedule."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lo0/r;->e(Z)V

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->o()V

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {v5}, Lw0/p;->d()Z

    move-result v0

    iget-object v8, v1, Lo0/r;->n:Lw0/q;

    iget-object v11, v1, Lo0/r;->k:Ln0/c;

    if-eqz v0, :cond_7

    iget-object v0, v5, Lw0/p;->e:Ln0/g;

    goto/16 :goto_8

    :cond_7
    iget-object v0, v11, Ln0/c;->d:LU0/e;

    iget-object v12, v5, Lw0/p;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ln0/i;->a:Ljava/lang/String;

    const/4 v13, 0x0

    :try_start_3
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln0/i;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v14

    const-string v15, "Trouble instantiating + "

    invoke-static {v15, v12}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v15, Ln0/i;->a:Ljava/lang/String;

    invoke-virtual {v14, v15, v12, v0}, Ln0/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v13

    :goto_4
    if-nez v0, :cond_8

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create Input Merger "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v5, Lw0/p;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Ln0/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lo0/r;->g()V

    goto/16 :goto_b

    :cond_8
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v5, Lw0/p;->e:Ln0/g;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    invoke-static {v6, v5}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v5

    if-nez v3, :cond_9

    invoke-virtual {v5, v6}, La0/m;->E(I)V

    goto :goto_5

    :cond_9
    invoke-virtual {v5, v6, v3}, La0/m;->q(ILjava/lang/String;)V

    :goto_5
    iget-object v14, v8, Lw0/q;->a:Ljava/lang/Object;

    check-cast v14, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v14}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-static {v14, v5, v2}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object v14

    :try_start_4
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v15, v13}, Ljava/util/ArrayList;-><init>(I)V

    :goto_6
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v14, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    goto :goto_7

    :cond_a
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    :goto_7
    invoke-static {v13}, Ln0/g;->a([B)Ln0/g;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :cond_b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    invoke-virtual {v5}, La0/m;->j()V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v12}, Ln0/i;->a(Ljava/util/ArrayList;)Ln0/g;

    move-result-object v0

    :goto_8
    new-instance v5, Landroidx/work/WorkerParameters;

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v12

    iget-object v13, v11, Ln0/c;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v14, Lx0/t;

    new-instance v19, Lx0/s;

    iget-object v14, v1, Lo0/r;->i:Ln1/a;

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v12, v5, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    iput-object v0, v5, Landroidx/work/WorkerParameters;->b:Ln0/g;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v13, v5, Landroidx/work/WorkerParameters;->c:Ljava/util/concurrent/ExecutorService;

    iput-object v14, v5, Landroidx/work/WorkerParameters;->d:Ln1/a;

    iget-object v0, v11, Ln0/c;->c:Ln0/B;

    iput-object v0, v5, Landroidx/work/WorkerParameters;->e:Ln0/B;

    iget-object v4, v1, Lo0/r;->h:Ln0/n;

    if-nez v4, :cond_c

    iget-object v4, v1, Lo0/r;->d:Landroid/content/Context;

    invoke-virtual {v0, v4, v9, v5}, Ln0/B;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Ln0/n;

    move-result-object v0

    iput-object v0, v1, Lo0/r;->h:Ln0/n;

    :cond_c
    iget-object v0, v1, Lo0/r;->h:Ln0/n;

    if-nez v0, :cond_d

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create Worker "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Ln0/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lo0/r;->g()V

    goto/16 :goto_b

    :cond_d
    iget-boolean v4, v0, Ln0/n;->g:Z

    if-eqz v4, :cond_e

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received an already-used Worker "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; Worker Factory should return new instances"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Ln0/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lo0/r;->g()V

    goto/16 :goto_b

    :cond_e
    iput-boolean v6, v0, Ln0/n;->g:Z

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_5
    invoke-virtual {v8, v3}, Lw0/q;->i(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_10

    const/4 v0, 0x2

    invoke-virtual {v8, v0, v3}, Lw0/q;->q(ILjava/lang/String;)V

    iget-object v0, v8, Lw0/q;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object v0, v8, Lw0/q;->i:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lw0/h;

    invoke-virtual {v5}, LF4/x;->a()Lf0/i;

    move-result-object v8

    if-nez v3, :cond_f

    invoke-interface {v8, v6}, Le0/d;->E(I)V

    goto :goto_9

    :cond_f
    invoke-interface {v8, v6, v3}, Le0/d;->q(ILjava/lang/String;)V

    :goto_9
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v8}, Lf0/i;->a()I

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {v5, v8}, LF4/x;->h(Lf0/i;)V

    goto :goto_a

    :catchall_2
    move-exception v0

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {v5, v8}, LF4/x;->h(Lf0/i;)V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_c

    :cond_10
    move v6, v2

    :goto_a
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->k()V

    if-eqz v6, :cond_12

    invoke-virtual/range {p0 .. p0}, Lo0/r;->h()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_b

    :cond_11
    new-instance v0, Lx0/r;

    iget-object v3, v1, Lo0/r;->h:Ln0/n;

    iget-object v4, v1, Lo0/r;->d:Landroid/content/Context;

    iget-object v5, v1, Lo0/r;->g:Lw0/p;

    iget-object v6, v1, Lo0/r;->i:Ln1/a;

    move-object v15, v0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v3

    move-object/from16 v20, v6

    invoke-direct/range {v15 .. v20}, Lx0/r;-><init>(Landroid/content/Context;Lw0/p;Ln0/n;Lx0/s;Ln1/a;)V

    iget-object v3, v14, Ln1/a;->c:Ljava/lang/Object;

    check-cast v3, LH/o;

    invoke-virtual {v3, v0}, LH/o;->execute(Ljava/lang/Runnable;)V

    new-instance v3, LA0/b;

    iget-object v0, v0, Lx0/r;->d:Ly0/k;

    const/16 v4, 0xe

    invoke-direct {v3, v1, v4, v0}, LA0/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v4, Lx0/o;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-object v5, v1, Lo0/r;->s:Ly0/k;

    invoke-virtual {v5, v3, v4}, Ly0/i;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v3, LH/a;

    const/16 v4, 0x8

    invoke-direct {v3, v1, v0, v4, v2}, LH/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object v4, v14, Ln1/a;->c:Ljava/lang/Object;

    check-cast v4, LH/o;

    invoke-virtual {v0, v3, v4}, Ly0/i;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v0, v1, Lo0/r;->q:Ljava/lang/String;

    new-instance v3, LH/a;

    const/16 v4, 0x9

    invoke-direct {v3, v1, v0, v4, v2}, LH/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object v0, v14, Ln1/a;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/o;

    invoke-virtual {v5, v3, v0}, Ly0/i;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_b

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lo0/r;->f()V

    :goto_b
    return-void

    :goto_c
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->k()V

    throw v0

    :goto_d
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    invoke-virtual {v5}, La0/m;->j()V

    throw v0

    :goto_e
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->k()V

    throw v0
.end method
