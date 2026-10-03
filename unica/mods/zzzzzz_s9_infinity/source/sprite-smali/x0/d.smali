.class public final Lx0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final f:Ljava/lang/String;


# instance fields
.field public final d:Lo0/j;

.field public final e:Lw0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, Ln0/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lx0/d;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo0/j;Lw0/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/d;->d:Lo0/j;

    iput-object p2, p0, Lx0/d;->e:Lw0/e;

    return-void
.end method

.method public static a(Lo0/j;)Z
    .locals 24

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p0}, Lo0/j;->N(Lo0/j;)Ljava/util/HashSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v0, Lo0/j;->d:Lo0/n;

    iget-object v6, v5, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    if-eqz v1, :cond_0

    array-length v8, v1

    if-lez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_0
    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x6

    if-eqz v8, :cond_6

    array-length v12, v1

    move v13, v2

    move v15, v13

    move/from16 v16, v15

    const/4 v14, 0x1

    :goto_1
    if-ge v13, v12, :cond_7

    aget-object v2, v1, v13

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v7

    invoke-virtual {v7, v2}, Lw0/q;->l(Ljava/lang/String;)Lw0/p;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Prerequisite "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t exist; not enqueuing"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lx0/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ln0/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_16

    :cond_2
    iget v2, v7, Lw0/p;->b:I

    if-ne v2, v10, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    and-int/2addr v14, v7

    if-ne v2, v9, :cond_4

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    if-ne v2, v11, :cond_5

    const/4 v15, 0x1

    :cond_5
    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    :cond_7
    iget-object v2, v0, Lo0/j;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_18

    if-nez v8, :cond_18

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v12

    invoke-virtual {v12, v2}, Lw0/q;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_18

    iget v13, v0, Lo0/j;->f:I

    if-eq v13, v10, :cond_c

    if-ne v13, v9, :cond_8

    goto :goto_7

    :cond_8
    const/4 v10, 0x2

    if-ne v13, v10, :cond_a

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v11, v18

    check-cast v11, Lw0/n;

    iget v11, v11, Lw0/n;->b:I

    const/4 v9, 0x1

    if-eq v11, v9, :cond_1

    if-ne v11, v10, :cond_9

    goto :goto_2

    :cond_9
    const/4 v9, 0x4

    const/4 v11, 0x6

    goto :goto_5

    :cond_a
    new-instance v9, Lx0/b;

    const/4 v10, 0x1

    invoke-direct {v9, v5, v2, v10}, Lx0/b;-><init>(Lo0/n;Ljava/lang/Object;I)V

    invoke-virtual {v9}, Lx0/b;->run()V

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v9

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lw0/n;

    iget-object v11, v11, Lw0/n;->a:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lw0/q;->d(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    move/from16 v21, v7

    const/4 v7, 0x1

    goto/16 :goto_11

    :cond_c
    :goto_7
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->f()Lw0/c;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lw0/n;

    iget-object v10, v12, Lw0/n;->a:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v20, v11

    const-string v11, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    move/from16 v21, v7

    const/4 v7, 0x1

    invoke-static {v7, v11}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v11

    if-nez v10, :cond_d

    invoke-virtual {v11, v7}, La0/m;->E(I)V

    goto :goto_9

    :cond_d
    invoke-virtual {v11, v7, v10}, La0/m;->q(ILjava/lang/String;)V

    :goto_9
    iget-object v7, v8, Lw0/c;->e:Ljava/lang/Object;

    check-cast v7, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->b()V

    const/4 v10, 0x0

    invoke-static {v7, v11, v10}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object v7

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v17, :cond_e

    const/16 v17, 0x1

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_e

    :cond_e
    move/from16 v17, v10

    :goto_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {v11}, La0/m;->j()V

    if-nez v17, :cond_12

    iget v7, v12, Lw0/n;->b:I

    const/4 v11, 0x3

    if-ne v7, v11, :cond_f

    const/16 v17, 0x1

    goto :goto_b

    :cond_f
    move/from16 v17, v10

    :goto_b
    and-int v14, v14, v17

    const/4 v10, 0x4

    if-ne v7, v10, :cond_10

    const/16 v16, 0x1

    goto :goto_c

    :cond_10
    const/4 v10, 0x6

    if-ne v7, v10, :cond_11

    const/4 v15, 0x1

    :cond_11
    :goto_c
    iget-object v7, v12, Lw0/n;->a:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_12
    const/4 v11, 0x3

    :goto_d
    move v10, v11

    move-object/from16 v11, v20

    move/from16 v7, v21

    goto :goto_8

    :goto_e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {v11}, La0/m;->j()V

    throw v0

    :cond_13
    move/from16 v21, v7

    const/4 v7, 0x4

    if-ne v13, v7, :cond_16

    if-nez v15, :cond_14

    if-eqz v16, :cond_16

    :cond_14
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v7

    invoke-virtual {v7, v2}, Lw0/q;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lw0/n;

    iget-object v9, v9, Lw0/n;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lw0/q;->d(Ljava/lang/String;)V

    goto :goto_f

    :cond_15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v15, 0x0

    const/16 v16, 0x0

    :cond_16
    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v7, v1

    if-lez v7, :cond_17

    const/4 v8, 0x1

    goto :goto_10

    :cond_17
    const/4 v8, 0x0

    :goto_10
    const/4 v7, 0x0

    goto :goto_11

    :cond_18
    move/from16 v21, v7

    goto :goto_10

    :goto_11
    iget-object v9, v0, Lo0/j;->g:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ln0/z;

    iget-object v11, v10, Ln0/z;->b:Lw0/p;

    if-eqz v8, :cond_1b

    if-nez v14, :cond_1b

    if-eqz v16, :cond_19

    const/4 v12, 0x4

    iput v12, v11, Lw0/p;->b:I

    const/4 v13, 0x6

    goto :goto_13

    :cond_19
    const/4 v12, 0x4

    if-eqz v15, :cond_1a

    const/4 v13, 0x6

    iput v13, v11, Lw0/p;->b:I

    goto :goto_13

    :cond_1a
    const/4 v13, 0x6

    const/4 v12, 0x5

    iput v12, v11, Lw0/p;->b:I

    goto :goto_13

    :cond_1b
    const/4 v13, 0x6

    iput-wide v3, v11, Lw0/p;->n:J

    :goto_13
    iget v12, v11, Lw0/p;->b:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1c

    const/4 v7, 0x1

    :cond_1c
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v12

    iget-object v13, v5, Lo0/n;->h:Ljava/util/List;

    move-wide/from16 v19, v3

    const-string v3, "schedulers"

    invoke-static {v13, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v12, Lw0/q;->a:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_1
    iget-object v4, v12, Lw0/q;->b:Ljava/lang/Object;

    check-cast v4, Lw0/b;

    invoke-virtual {v4, v11}, Lw0/b;->k(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->k()V

    const-string v3, "id.toString()"

    iget-object v4, v10, Ln0/z;->a:Ljava/util/UUID;

    if-eqz v8, :cond_1d

    array-length v11, v1

    const/4 v12, 0x0

    :goto_14
    if-ge v12, v11, :cond_1d

    aget-object v13, v1, v12

    move-object/from16 v22, v1

    new-instance v1, Lw0/a;

    move-object/from16 v23, v5

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v5, v13}, Lw0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->f()Lw0/c;

    move-result-object v5

    iget-object v13, v5, Lw0/c;->e:Ljava/lang/Object;

    check-cast v13, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v13}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v13}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_2
    iget-object v5, v5, Lw0/c;->f:Ljava/lang/Object;

    check-cast v5, Lw0/b;

    invoke-virtual {v5, v1}, Lw0/b;->k(Ljava/lang/Object;)V

    invoke-virtual {v13}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v13}, Landroidx/work/impl/WorkDatabase;->k()V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v22

    move-object/from16 v5, v23

    goto :goto_14

    :catchall_1
    move-exception v0

    invoke-virtual {v13}, Landroidx/work/impl/WorkDatabase;->k()V

    throw v0

    :cond_1d
    move-object/from16 v22, v1

    move-object/from16 v23, v5

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->u()Lw0/s;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v10, Ln0/z;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v5, v10}, Lw0/s;->c(Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    if-nez v21, :cond_1e

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->r()Lw0/l;

    move-result-object v1

    new-instance v5, Lw0/k;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v2, v4}, Lw0/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lw0/l;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_3
    iget-object v1, v1, Lw0/l;->f:Ljava/lang/Object;

    check-cast v1, Lw0/b;

    invoke-virtual {v1, v5}, Lw0/b;->k(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->k()V

    goto :goto_15

    :catchall_2
    move-exception v0

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->k()V

    throw v0

    :cond_1e
    :goto_15
    move-wide/from16 v3, v19

    move-object/from16 v1, v22

    move-object/from16 v5, v23

    goto/16 :goto_12

    :catchall_3
    move-exception v0

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->k()V

    throw v0

    :cond_1f
    move v2, v7

    const/4 v1, 0x1

    :goto_16
    iput-boolean v1, v0, Lo0/j;->j:Z

    return v2
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lx0/d;->e:Lw0/e;

    iget-object p0, p0, Lx0/d;->d:Lo0/j;

    const-string v1, "WorkContinuation has cycles ("

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lo0/j;->d:Lo0/n;

    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v4, p0, Lo0/j;->h:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0}, Lo0/j;->N(Lo0/j;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lo0/j;->h:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    iget-object v1, v2, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p0}, Lx0/d;->a(Lo0/j;)Z

    move-result p0

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    if-eqz p0, :cond_2

    iget-object p0, v2, Lo0/n;->d:Landroid/content/Context;

    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Lx0/l;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    iget-object p0, v2, Lo0/n;->e:Ln0/c;

    iget-object v1, v2, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    iget-object v2, v2, Lo0/n;->h:Ljava/util/List;

    invoke-static {p0, v1, v2}, Lo0/h;->a(Ln0/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    sget-object p0, Ln0/u;->b:Ln0/t;

    invoke-virtual {v0, p0}, Lw0/e;->v0(Lj0/s;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0

    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    new-instance v1, Ln0/r;

    invoke-direct {v1, p0}, Ln0/r;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lw0/e;->v0(Lj0/s;)V

    :goto_3
    return-void
.end method
