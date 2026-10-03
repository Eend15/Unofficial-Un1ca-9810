.class public final Lr0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/g;


# static fields
.field public static final h:Ljava/lang/String;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Landroid/app/job/JobScheduler;

.field public final f:Lo0/n;

.field public final g:Lr0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobScheduler"

    invoke-static {v0}, Ln0/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lr0/b;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo0/n;)V
    .locals 2

    const-string v0, "jobscheduler"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v1, Lr0/a;

    invoke-direct {v1, p1}, Lr0/a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/b;->d:Landroid/content/Context;

    iput-object p2, p0, Lr0/b;->f:Lo0/n;

    iput-object v0, p0, Lr0/b;->e:Landroid/app/job/JobScheduler;

    iput-object v1, p0, Lr0/b;->g:Lr0/a;

    return-void
.end method

.method public static a(Landroid/app/job/JobScheduler;I)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Exception while trying to cancel job (%d)"

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lr0/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p0}, Ln0/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    sget-object v2, Lr0/b;->h:Ljava/lang/String;

    const-string v3, "getAllPendingJobs() is not reliable on this device."

    invoke-virtual {v1, v2, v3, p1}, Ln0/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static c(Landroid/app/job/JobInfo;)Lw0/j;
    .locals 3

    const-string v0, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EXTRA_WORK_SPEC_GENERATION"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Lw0/j;

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lw0/j;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final cancel(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lr0/b;->d:Landroid/content/Context;

    iget-object v1, p0, Lr0/b;->e:Landroid/app/job/JobScheduler;

    invoke-static {v0, v1}, Lr0/b;->b(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    invoke-static {v3}, Lr0/b;->c(Landroid/app/job/JobInfo;)Lw0/j;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v4, Lw0/j;->a:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lr0/b;->a(Landroid/app/job/JobScheduler;I)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lr0/b;->f:Lo0/n;

    iget-object p0, p0, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->p()Lw0/i;

    move-result-object p0

    iget-object v0, p0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object p0, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast p0, Lw0/h;

    invoke-virtual {p0}, LF4/x;->a()Lf0/i;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_4

    invoke-interface {v1, v2}, Le0/d;->E(I)V

    goto :goto_3

    :cond_4
    invoke-interface {v1, v2, p1}, Le0/d;->q(ILjava/lang/String;)V

    :goto_3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    invoke-virtual {v1}, Lf0/i;->a()I

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v1}, LF4/x;->h(Lf0/i;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {p0, v1}, LF4/x;->h(Lf0/i;)V

    throw p1

    :cond_5
    :goto_4
    return-void
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final varargs e([Lw0/p;)V
    .locals 11

    iget-object v0, p0, Lr0/b;->f:Lo0/n;

    iget-object v1, v0, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    new-instance v2, Lx0/h;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lx0/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, p1, v4

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v6

    iget-object v7, v5, Lw0/p;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lw0/q;->l(Ljava/lang/String;)Lw0/p;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "Skipping scheduling "

    sget-object v8, Lr0/b;->h:Ljava/lang/String;

    iget-object v9, v5, Lw0/p;->a:Ljava/lang/String;

    if-nez v6, :cond_0

    :try_start_1
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " because it\'s no longer in the DB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Ln0/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :try_start_2
    iget v6, v6, Lw0/p;->b:I

    const/4 v10, 0x1

    if-eq v6, v10, :cond_1

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " because it is no longer enqueued"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Ln0/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->o()V

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lp4/g;->x(Lw0/p;)Lw0/j;

    move-result-object v6

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->p()Lw0/i;

    move-result-object v7

    invoke-virtual {v7, v6}, Lw0/i;->z(Lw0/j;)Lw0/g;

    move-result-object v7

    if-eqz v7, :cond_2

    iget v8, v7, Lw0/g;->c:I

    goto :goto_2

    :cond_2
    iget-object v8, v0, Lo0/n;->e:Ln0/c;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v0, Lo0/n;->e:Ln0/c;

    iget v8, v8, Ln0/c;->h:I

    new-instance v9, Lx0/g;

    invoke-direct {v9, v2, v8}, Lx0/g;-><init>(Lx0/h;I)V

    iget-object v8, v2, Lx0/h;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v8, v9}, Landroidx/work/impl/WorkDatabase;->n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "workDatabase.runInTransa\u2026            id\n        })"

    invoke-static {v8, v9}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    :goto_2
    if-nez v7, :cond_3

    new-instance v7, Lw0/g;

    iget-object v9, v6, Lw0/j;->a:Ljava/lang/String;

    iget v6, v6, Lw0/j;->b:I

    invoke-direct {v7, v9, v6, v8}, Lw0/g;-><init>(Ljava/lang/String;II)V

    iget-object v6, v0, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->p()Lw0/i;

    move-result-object v6

    invoke-virtual {v6, v7}, Lw0/i;->B(Lw0/g;)V

    :cond_3
    invoke-virtual {p0, v5, v8}, Lr0/b;->f(Lw0/p;I)V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :goto_4
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0

    :cond_4
    return-void
.end method

.method public final f(Lw0/p;I)V
    .locals 11

    iget-object v0, p0, Lr0/b;->e:Landroid/app/job/JobScheduler;

    iget-object v1, p0, Lr0/b;->g:Lr0/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Lw0/p;->j:Ln0/e;

    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    const-string v4, "EXTRA_WORK_SPEC_ID"

    iget-object v5, p1, Lw0/p;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "EXTRA_WORK_SPEC_GENERATION"

    iget v6, p1, Lw0/p;->t:I

    invoke-virtual {v3, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "EXTRA_IS_PERIODIC"

    invoke-virtual {p1}, Lw0/p;->d()Z

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v4, Landroid/app/job/JobInfo$Builder;

    iget-object v1, v1, Lr0/a;->a:Landroid/content/ComponentName;

    invoke-direct {v4, p2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    iget-boolean v1, v2, Ln0/e;->b:Z

    invoke-virtual {v4, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    iget-boolean v4, v2, Ln0/e;->c:Z

    invoke-virtual {v1, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x6

    const/4 v8, 0x0

    iget v9, v2, Ln0/e;->a:I

    if-ne v9, v7, :cond_0

    new-instance v7, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v7}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v9, 0x19

    invoke-virtual {v7, v9}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    goto :goto_1

    :cond_0
    invoke-static {v9}, Lq/e;->c(I)I

    move-result v7

    if-eqz v7, :cond_3

    if-eq v7, v6, :cond_1

    if-eq v7, v3, :cond_2

    const/4 v10, 0x3

    if-eq v7, v10, :cond_4

    const/4 v10, 0x4

    if-eq v7, v10, :cond_4

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v7

    invoke-static {v9}, Li4/b;->m(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "API version too low. Cannot convert network type value "

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lr0/a;->b:Ljava/lang/String;

    invoke-virtual {v7, v10, v9}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v10, v6

    goto :goto_0

    :cond_2
    move v10, v3

    goto :goto_0

    :cond_3
    move v10, v8

    :cond_4
    :goto_0
    invoke-virtual {v1, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :goto_1
    if-nez v4, :cond_6

    iget v4, p1, Lw0/p;->l:I

    if-ne v4, v3, :cond_5

    move v3, v8

    goto :goto_2

    :cond_5
    move v3, v6

    :goto_2
    iget-wide v9, p1, Lw0/p;->m:J

    invoke-virtual {v1, v9, v10, v3}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    :cond_6
    invoke-virtual {p1}, Lw0/p;->a()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v3, v9

    const-wide/16 v9, 0x0

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    cmp-long v7, v3, v9

    if-lez v7, :cond_7

    invoke-virtual {v1, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_3

    :cond_7
    iget-boolean v3, p1, Lw0/p;->q:Z

    if-nez v3, :cond_8

    invoke-virtual {v1, v6}, Landroid/app/job/JobInfo$Builder;->setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;

    :cond_8
    :goto_3
    iget-object v3, v2, Ln0/e;->h:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln0/d;

    iget-boolean v9, v4, Ln0/d;->b:Z

    new-instance v10, Landroid/app/job/JobInfo$TriggerContentUri;

    iget-object v4, v4, Ln0/d;->a:Landroid/net/Uri;

    invoke-direct {v10, v4, v9}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    invoke-virtual {v1, v10}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    goto :goto_4

    :cond_9
    iget-wide v3, v2, Ln0/e;->f:J

    invoke-virtual {v1, v3, v4}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    iget-wide v3, v2, Ln0/e;->g:J

    invoke-virtual {v1, v3, v4}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    :cond_a
    invoke-virtual {v1, v8}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    iget-boolean v3, v2, Ln0/e;->d:Z

    invoke-virtual {v1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    iget-boolean v2, v2, Ln0/e;->e:Z

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    iget v2, p1, Lw0/p;->k:I

    if-lez v2, :cond_b

    move v2, v6

    goto :goto_5

    :cond_b
    move v2, v8

    :goto_5
    if-lez v7, :cond_c

    move v3, v6

    goto :goto_6

    :cond_c
    move v3, v8

    :goto_6
    iget-boolean v4, p1, Lw0/p;->q:Z

    if-eqz v4, :cond_d

    if-nez v2, :cond_d

    if-nez v3, :cond_d

    invoke-virtual {v1, v6}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    :cond_d
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scheduling work ID "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Job ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lr0/b;->h:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v1

    if-nez v1, :cond_e

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to schedule work ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ln0/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p1, Lw0/p;->q:Z

    if-eqz v1, :cond_e

    iget v1, p1, Lw0/p;->r:I

    if-ne v1, v6, :cond_e

    iput-boolean v8, p1, Lw0/p;->q:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling a non-expedited job (work ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lr0/b;->f(Lw0/p;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception p0

    goto :goto_7

    :catch_0
    move-exception p1

    goto :goto_9

    :goto_7
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to schedule "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v4, p1, p0}, Ln0/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_8
    return-void

    :goto_9
    iget-object p2, p0, Lr0/b;->d:Landroid/content/Context;

    invoke-static {p2, v0}, Lr0/b;->b(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    :cond_f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lr0/b;->f:Lo0/n;

    iget-object v1, p0, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v1

    invoke-virtual {v1}, Lw0/q;->h()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lo0/n;->e:Ln0/c;

    iget v2, v2, Ln0/c;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d."

    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v0

    invoke-virtual {v0, v4, p2}, Ln0/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lo0/n;->e:Ln0/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0
.end method
