.class public final Lx0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final h:Ljava/lang/String;

.field public static final i:J


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Lo0/n;

.field public final f:Lx0/h;

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ForceStopRunnable"

    invoke-static {v0}, Ln0/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lx0/e;->h:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe42

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lx0/e;->i:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo0/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lx0/e;->d:Landroid/content/Context;

    iput-object p2, p0, Lx0/e;->e:Lo0/n;

    iget-object p1, p2, Lo0/n;->j:Lx0/h;

    iput-object p1, p0, Lx0/e;->f:Lx0/h;

    const/4 p1, 0x0

    iput p1, p0, Lx0/e;->g:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const-string v2, "last_force_stop_ms"

    iget-object v3, v0, Lx0/e;->f:Lx0/h;

    sget-object v4, Lr0/b;->h:Ljava/lang/String;

    iget-object v4, v0, Lx0/e;->d:Landroid/content/Context;

    const-string v5, "jobscheduler"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobScheduler;

    invoke-static {v4, v5}, Lr0/b;->b(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, v0, Lx0/e;->e:Lo0/n;

    iget-object v0, v7, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->p()Lw0/i;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    const/4 v9, 0x0

    invoke-static {v9, v8}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v8

    iget-object v0, v0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-static {v0, v8, v9}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object v10

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    invoke-interface {v10, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_1
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual {v8}, La0/m;->j()V

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_2

    :cond_2
    move v8, v9

    :goto_2
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v8}, Ljava/util/HashSet;-><init>(I)V

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/job/JobInfo;

    invoke-static {v8}, Lr0/b;->c(Landroid/app/job/JobInfo;)Lw0/j;

    move-result-object v11

    if-eqz v11, :cond_3

    iget-object v8, v11, Lw0/j;->a:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getId()I

    move-result v8

    invoke-static {v5, v8}, Lr0/b;->a(Landroid/app/job/JobScheduler;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v5

    sget-object v6, Lr0/b;->h:Ljava/lang/String;

    const-string v8, "Reconciling jobs"

    invoke-virtual {v5, v6, v8}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v1

    goto :goto_4

    :cond_6
    move v5, v9

    :goto_4
    const-wide/16 v10, -0x1

    if-eqz v5, :cond_8

    iget-object v6, v7, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_1
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v8, v13, v10, v11}, Lw0/q;->n(Ljava/lang/String;J)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_7
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->k()V

    goto :goto_7

    :goto_6
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->k()V

    throw v0

    :cond_8
    :goto_7
    iget-object v6, v7, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v0

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->s()Lw0/m;

    move-result-object v8

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_2
    invoke-virtual {v0}, Lw0/q;->g()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_9

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lw0/p;

    iget-object v9, v15, Lw0/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Lw0/q;->q(ILjava/lang/String;)V

    iget-object v9, v15, Lw0/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v9, v10, v11}, Lw0/q;->n(Ljava/lang/String;J)V

    const/4 v9, 0x0

    goto :goto_8

    :catchall_2
    move-exception v0

    goto/16 :goto_10

    :cond_9
    iget-object v0, v8, Lw0/m;->b:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object v0, v8, Lw0/m;->d:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lw0/h;

    invoke-virtual {v8}, LF4/x;->a()Lf0/i;

    move-result-object v10

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v10}, Lf0/i;->a()I

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {v8, v10}, LF4/x;->h(Lf0/i;)V

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->k()V

    if-eqz v14, :cond_b

    if-eqz v5, :cond_a

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    goto :goto_a

    :cond_b
    :goto_9
    move v0, v1

    :goto_a
    iget-object v5, v7, Lo0/n;->j:Lx0/h;

    iget-object v5, v5, Lx0/h;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->l()Lw0/e;

    move-result-object v5

    const-string v6, "reschedule_needed"

    invoke-virtual {v5, v6}, Lw0/e;->t0(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v8, 0x0

    sget-object v10, Lx0/e;->h:Ljava/lang/String;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x1

    cmp-long v5, v13, v15

    if-nez v5, :cond_c

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v0

    const-string v1, "Rescheduling Workers."

    invoke-virtual {v0, v10, v1}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lo0/n;->Q()V

    iget-object v0, v7, Lo0/n;->j:Lx0/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lw0/d;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lw0/d;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, v0, Lx0/h;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->l()Lw0/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw0/e;->u0(Lw0/d;)V

    goto/16 :goto_f

    :cond_c
    :try_start_5
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    const-class v11, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    invoke-direct {v6, v4, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v6, "ACTION_FORCE_STOP_RESCHEDULE"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, -0x1

    const/high16 v11, 0x22000000

    invoke-static {v4, v6, v5, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_d

    :cond_d
    :goto_b
    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v12, v5, v5}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, v3, Lx0/h;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->l()Lw0/e;

    move-result-object v6

    invoke-virtual {v6, v2}, Lw0/e;->t0(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :cond_e
    :goto_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_10

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_f

    invoke-virtual {v6}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v11
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    cmp-long v6, v11, v8

    if-ltz v6, :cond_f

    goto :goto_e

    :cond_f
    add-int/2addr v5, v1

    goto :goto_c

    :cond_10
    if-eqz v0, :cond_12

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v0

    const-string v1, "Found unfinished work, scheduling it."

    invoke-virtual {v0, v10, v1}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lo0/n;->e:Ln0/c;

    iget-object v1, v7, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    iget-object v2, v7, Lo0/n;->h:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lo0/h;->a(Ln0/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    goto :goto_f

    :goto_d
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    iget v1, v1, Ln0/o;->a:I

    const/4 v4, 0x5

    if-gt v1, v4, :cond_11

    const-string v1, "Ignoring exception"

    invoke-static {v10, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_e
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v0

    const-string v1, "Application was force-stopped, rescheduling."

    invoke-virtual {v0, v10, v1}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lo0/n;->Q()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lw0/d;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v4, v2, v0}, Lw0/d;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, v3, Lx0/h;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->l()Lw0/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lw0/e;->u0(Lw0/d;)V

    :cond_12
    :goto_f
    return-void

    :catchall_3
    move-exception v0

    :try_start_6
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {v8, v10}, LF4/x;->h(Lf0/i;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_10
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->k()V

    throw v0

    :goto_11
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual {v8}, La0/m;->j()V

    throw v0
.end method

.method public final b()Z
    .locals 4

    iget-object v0, p0, Lx0/e;->e:Lo0/n;

    iget-object v0, v0, Lo0/n;->e:Ln0/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    sget-object v1, Lx0/e;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object p0

    const-string v0, "The default process name was not specified."

    invoke-virtual {p0, v1, v0}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    sget v0, Lx0/m;->a:I

    const-string v0, "context"

    iget-object p0, p0, Lx0/e;->d:Landroid/content/Context;

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lx0/a;->a:Lx0/a;

    invoke-virtual {v0}, Lx0/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v0, p0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Is default app process = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final run()V
    .locals 11

    sget-object v0, Lx0/e;->h:Ljava/lang/String;

    iget-object v1, p0, Lx0/e;->e:Lo0/n;

    :try_start_0
    invoke-virtual {p0}, Lx0/e;->b()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lo0/n;->P()V

    return-void

    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lx0/e;->d:Landroid/content/Context;

    invoke-static {v2}, Lj0/s;->A(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v2

    const-string v3, "Performing cleanup operations."

    invoke-virtual {v2, v0, v3}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Lx0/e;->a()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :catch_1
    move-exception v2

    :try_start_4
    iget v3, p0, Lx0/e;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lx0/e;->g:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    const-string p0, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v3

    invoke-virtual {v3, v0, p0, v2}, Ln0/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, v1, Lo0/n;->e:Ln0/c;

    iget-object p0, p0, Ln0/c;->f:Li1/k;

    if-eqz p0, :cond_2

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v2

    const-string v5, "Routing exception to the specified exception handler"

    iget v2, v2, Ln0/o;->a:I

    if-gt v2, v4, :cond_1

    invoke-static {v0, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    invoke-virtual {p0, v3}, Li1/k;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    throw v3

    :cond_3
    int-to-long v5, v3

    const-wide/16 v7, 0x12c

    mul-long/2addr v5, v7

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Retrying after "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v3, v3, Ln0/o;->a:I

    if-gt v3, v4, :cond_4

    invoke-static {v0, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    iget v2, p0, Lx0/e;->g:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    int-to-long v2, v2

    mul-long/2addr v2, v7

    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_2
    move-exception p0

    :try_start_6
    const-string v2, "Unexpected SQLite exception during migrations"

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ln0/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, v1, Lo0/n;->e:Ln0/c;

    iget-object p0, p0, Ln0/c;->f:Li1/k;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v0}, Li1/k;->accept(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    invoke-virtual {v1}, Lo0/n;->P()V

    return-void

    :cond_5
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    invoke-virtual {v1}, Lo0/n;->P()V

    throw p0
.end method
