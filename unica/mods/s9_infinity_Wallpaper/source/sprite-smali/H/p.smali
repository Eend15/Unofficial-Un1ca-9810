.class public final LH/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LH/p;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/h;Ljava/util/ArrayList;Landroidx/fragment/app/W;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LH/p;->d:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH/p;->g:Ljava/lang/Object;

    iput-object p2, p0, LH/p;->e:Ljava/lang/Object;

    iput-object p3, p0, LH/p;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, LH/p;->d:I

    iput-object p1, p0, LH/p;->e:Ljava/lang/Object;

    iput-object p2, p0, LH/p;->f:Ljava/lang/Object;

    iput-object p3, p0, LH/p;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo0/n;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LH/p;->d:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, LH/p;->f:Ljava/lang/Object;

    iput-object p2, p0, LH/p;->g:Ljava/lang/Object;

    .line 5
    new-instance p1, Ly0/k;

    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, LH/p;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, LH/p;->f:Ljava/lang/Object;

    check-cast v1, Lo0/n;

    iget-object v1, v1, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v3, 0x1

    invoke-static {v3, v2}, La0/m;->h(ILjava/lang/String;)La0/m;

    move-result-object v2

    iget-object v0, v0, LH/p;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {v2, v3}, La0/m;->E(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, v0}, La0/m;->q(ILjava/lang/String;)V

    :goto_0
    iget-object v0, v1, Lw0/q;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    invoke-static {v4, v2, v3}, La4/x;->S(Landroidx/work/impl/WorkDatabase;La0/m;Z)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ln/f;

    const/4 v6, 0x0

    invoke-direct {v0, v6}, Ln/j;-><init>(I)V

    new-instance v7, Ln/f;

    invoke-direct {v7, v6}, Ln/j;-><init>(I)V

    :cond_1
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-nez v9, :cond_2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v8, v9}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_2
    :goto_2
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-nez v9, :cond_1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v8, v9}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v8, -0x1

    invoke-interface {v5, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-virtual {v1, v0}, Lw0/q;->b(Ln/f;)V

    invoke-virtual {v1, v7}, Lw0/q;->a(Ln/f;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    move-object v11, v9

    goto :goto_4

    :cond_4
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v11, v8

    :goto_4
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Lp4/g;->E(I)I

    move-result v12

    const/4 v8, 0x2

    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    :goto_5
    invoke-static {v9}, Ln0/g;->a([B)Ln0/g;

    move-result-object v13

    const/4 v8, 0x3

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v8, 0x4

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    move-object/from16 v16, v8

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    move-object/from16 v17, v8

    new-instance v8, Lw0/o;

    move-object v10, v8

    invoke-direct/range {v10 .. v17}, Lw0/o;-><init>(Ljava/lang/String;ILn0/g;IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, La0/m;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->k()V

    sget-object v0, Lw0/p;->v:LK/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw0/o;

    iget-object v3, v2, Lw0/o;->g:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln0/g;

    :goto_7
    move-object v12, v3

    goto :goto_8

    :cond_9
    sget-object v3, Ln0/g;->c:Ln0/g;

    goto :goto_7

    :goto_8
    new-instance v3, Ln0/y;

    iget-object v4, v2, Lw0/o;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    iget-object v10, v2, Lw0/o;->c:Ln0/g;

    iget-object v11, v2, Lw0/o;->f:Ljava/util/ArrayList;

    iget v9, v2, Lw0/o;->b:I

    iget v13, v2, Lw0/o;->d:I

    iget v14, v2, Lw0/o;->e:I

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Ln0/y;-><init>(Ljava/util/UUID;ILn0/g;Ljava/util/ArrayList;Ln0/g;II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_a

    :goto_9
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, La0/m;->j()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_a
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->k()V

    throw v0
.end method

.method public final run()V
    .locals 8

    iget v0, p0, LH/p;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LH/p;->e:Ljava/lang/Object;

    check-cast v0, Ly0/k;

    :try_start_0
    invoke-virtual {p0}, LH/p;->a()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ly0/k;->j(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, p0}, Ly0/k;->k(Ljava/lang/Throwable;)Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LH/p;->e:Ljava/lang/Object;

    check-cast v0, Lo0/n;

    iget-object v0, v0, Lo0/n;->i:Lo0/e;

    iget-object v1, p0, LH/p;->f:Ljava/lang/Object;

    check-cast v1, Lo0/i;

    iget-object p0, p0, LH/p;->g:Ljava/lang/Object;

    check-cast p0, LG4/d;

    invoke-virtual {v0, v1, p0}, Lo0/e;->f(Lo0/i;LG4/d;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, LH/p;->g:Ljava/lang/Object;

    check-cast v0, Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v1, p0, LH/p;->f:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, LH/p;->e:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    const-string v2, "Updating proxies: (BatteryNotLowProxy ("

    :try_start_1
    const-string v3, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    invoke-virtual {p0, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {p0, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "KEY_NETWORK_STATE_PROXY_ENABLED"

    invoke-virtual {p0, v7, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), BatteryChargingProxy ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), StorageNotLowProxy ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), NetworkStateProxy ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v4

    sget-object v7, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->a:Ljava/lang/String;

    invoke-virtual {v4, v7, v2}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryNotLowProxy;

    invoke-static {v1, v2, v3}, Lx0/l;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    const-class v2, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy;

    invoke-static {v1, v2, v5}, Lx0/l;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    const-class v2, Landroidx/work/impl/background/systemalarm/ConstraintProxy$StorageNotLowProxy;

    invoke-static {v1, v2, v6}, Lx0/l;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    const-class v2, Landroidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy;

    invoke-static {v1, v2, p0}, Lx0/l;->a(Landroid/content/Context;Ljava/lang/Class;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw p0

    :pswitch_2
    :try_start_2
    iget-object v0, p0, LH/p;->g:Ljava/lang/Object;

    check-cast v0, Ly0/k;

    invoke-virtual {v0}, Ly0/i;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, LH/p;->e:Ljava/lang/Object;

    check-cast v1, Lo0/e;

    iget-object p0, p0, LH/p;->f:Ljava/lang/Object;

    check-cast p0, Lw0/j;

    invoke-virtual {v1, p0, v0}, Lo0/e;->c(Lw0/j;Z)V

    return-void

    :pswitch_3
    iget-object v0, p0, LH/p;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, LH/p;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/W;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, LH/p;->g:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v1, Landroidx/fragment/app/W;->c:Landroidx/fragment/app/r;

    iget-object p0, p0, Landroidx/fragment/app/r;->H:Landroid/view/View;

    iget v0, v1, Landroidx/fragment/app/W;->a:I

    invoke-static {p0, v0}, LB/a;->a(Landroid/view/View;I)V

    :cond_0
    return-void

    :pswitch_4
    :try_start_3
    iget-object v0, p0, LH/p;->e:Ljava/lang/Object;

    check-cast v0, LH/g;

    invoke-virtual {v0}, LH/g;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    const/4 v0, 0x0

    :goto_2
    new-instance v1, LH/a;

    iget-object v2, p0, LH/p;->f:Ljava/lang/Object;

    check-cast v2, LH/h;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, LH/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p0, p0, LH/p;->g:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
