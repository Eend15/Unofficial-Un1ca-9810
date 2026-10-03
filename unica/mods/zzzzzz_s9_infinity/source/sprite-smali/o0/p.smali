.class public final synthetic Lo0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Landroidx/work/impl/WorkDatabase;

.field public final synthetic e:Lw0/p;

.field public final synthetic f:Lw0/p;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/util/LinkedHashSet;

.field public final synthetic j:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkDatabase;Lw0/p;Lw0/p;Ljava/util/List;Ljava/lang/String;Ljava/util/LinkedHashSet;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/p;->d:Landroidx/work/impl/WorkDatabase;

    iput-object p2, p0, Lo0/p;->e:Lw0/p;

    iput-object p3, p0, Lo0/p;->f:Lw0/p;

    iput-object p4, p0, Lo0/p;->g:Ljava/util/List;

    iput-object p5, p0, Lo0/p;->h:Ljava/lang/String;

    iput-object p6, p0, Lo0/p;->i:Ljava/util/LinkedHashSet;

    iput-boolean p7, p0, Lo0/p;->j:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lo0/p;->d:Landroidx/work/impl/WorkDatabase;

    const-string v2, "$workDatabase"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lo0/p;->e:Lw0/p;

    iget-object v2, v0, Lo0/p;->f:Lw0/p;

    const-string v4, "$schedulers"

    iget-object v5, v0, Lo0/p;->g:Ljava/util/List;

    invoke-static {v5, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v13, v0, Lo0/p;->h:Ljava/lang/String;

    const-string v4, "$workSpecId"

    invoke-static {v13, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v14, v0, Lo0/p;->i:Ljava/util/LinkedHashSet;

    const-string v4, "$tags"

    invoke-static {v14, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v15

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->u()Lw0/s;

    move-result-object v12

    iget v5, v2, Lw0/p;->b:I

    iget-wide v9, v2, Lw0/p;->n:J

    iget v4, v2, Lw0/p;->t:I

    const/4 v11, 0x1

    add-int/lit8 v16, v4, 0x1

    const/4 v7, 0x0

    iget v8, v2, Lw0/p;->k:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const v2, 0x7dbfd

    move/from16 v11, v16

    move-object/from16 v16, v1

    move-object v1, v12

    move v12, v2

    invoke-static/range {v3 .. v12}, Lw0/p;->b(Lw0/p;Ljava/lang/String;ILjava/lang/String;Ln0/g;IJII)Lw0/p;

    move-result-object v2

    iget-object v3, v15, Lw0/q;->a:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    iget-object v4, v15, Lw0/q;->c:Ljava/lang/Object;

    check-cast v4, Lw0/h;

    invoke-virtual {v4}, LF4/x;->a()Lf0/i;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4, v5, v2}, Lw0/h;->j(Lf0/i;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lf0/i;->a()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v4, v5}, LF4/x;->h(Lf0/i;)V

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->k()V

    iget-object v2, v1, Lw0/s;->a:Ljava/lang/Object;

    check-cast v2, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object v3, v1, Lw0/s;->c:Ljava/lang/Object;

    check-cast v3, Lw0/h;

    invoke-virtual {v3}, LF4/x;->a()Lf0/i;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5, v13}, Le0/d;->q(ILjava/lang/String;)V

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_3
    invoke-virtual {v4}, Lf0/i;->a()I

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {v3, v4}, LF4/x;->h(Lf0/i;)V

    invoke-virtual {v1, v13, v14}, Lw0/s;->c(Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    iget-boolean v0, v0, Lo0/p;->j:Z

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    invoke-virtual {v15, v13, v0, v1}, Lw0/q;->n(Ljava/lang/String;J)V

    invoke-virtual/range {v16 .. v16}, Landroidx/work/impl/WorkDatabase;->s()Lw0/m;

    move-result-object v0

    invoke-virtual {v0, v13}, Lw0/m;->e(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {v3, v4}, LF4/x;->h(Lf0/i;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {v4, v5}, LF4/x;->h(Lf0/i;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->k()V

    throw v0
.end method
