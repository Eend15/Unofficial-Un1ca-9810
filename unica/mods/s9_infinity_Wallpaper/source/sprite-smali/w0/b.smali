.class public final Lw0/b;
.super LF4/x;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkDatabase;I)V
    .locals 0

    iput p2, p0, Lw0/b;->e:I

    invoke-direct {p0, p1}, LF4/x;-><init>(Landroidx/work/impl/WorkDatabase;)V

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lw0/b;->e:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)"

    return-object p0

    :pswitch_0
    const-string p0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0

    :pswitch_1
    const-string p0, "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)"

    return-object p0

    :pswitch_2
    const-string p0, "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)"

    return-object p0

    :pswitch_3
    const-string p0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)"

    return-object p0

    :pswitch_4
    const-string p0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    return-object p0

    :pswitch_5
    const-string p0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Lf0/i;Ljava/lang/Object;)V
    .locals 9

    iget p0, p0, Lw0/b;->e:I

    packed-switch p0, :pswitch_data_0

    check-cast p2, Lw0/r;

    iget-object p0, p2, Lw0/r;->a:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Le0/d;->E(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, Le0/d;->q(ILjava/lang/String;)V

    :goto_0
    const/4 p0, 0x2

    iget-object p2, p2, Lw0/r;->b:Ljava/lang/String;

    if-nez p2, :cond_1

    invoke-interface {p1, p0}, Le0/d;->E(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, p0, p2}, Le0/d;->q(ILjava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    check-cast p2, Lw0/p;

    iget-object p0, p2, Lw0/p;->a:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, Le0/d;->E(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0, p0}, Le0/d;->q(ILjava/lang/String;)V

    :goto_2
    iget p0, p2, Lw0/p;->b:I

    invoke-static {p0}, Lp4/g;->V(I)I

    move-result p0

    const/4 v1, 0x2

    int-to-long v2, p0

    invoke-interface {p1, v1, v2, v3}, Le0/d;->s(IJ)V

    iget-object p0, p2, Lw0/p;->c:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez p0, :cond_3

    invoke-interface {p1, v1}, Le0/d;->E(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v1, p0}, Le0/d;->q(ILjava/lang/String;)V

    :goto_3
    iget-object p0, p2, Lw0/p;->d:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez p0, :cond_4

    invoke-interface {p1, v1}, Le0/d;->E(I)V

    goto :goto_4

    :cond_4
    invoke-interface {p1, v1, p0}, Le0/d;->q(ILjava/lang/String;)V

    :goto_4
    iget-object p0, p2, Lw0/p;->e:Ln0/g;

    invoke-static {p0}, Ln0/g;->e(Ln0/g;)[B

    move-result-object p0

    const/4 v1, 0x5

    if-nez p0, :cond_5

    invoke-interface {p1, v1}, Le0/d;->E(I)V

    goto :goto_5

    :cond_5
    invoke-interface {p1, v1, p0}, Le0/d;->D(I[B)V

    :goto_5
    iget-object p0, p2, Lw0/p;->f:Ln0/g;

    invoke-static {p0}, Ln0/g;->e(Ln0/g;)[B

    move-result-object p0

    const/4 v1, 0x6

    if-nez p0, :cond_6

    invoke-interface {p1, v1}, Le0/d;->E(I)V

    goto :goto_6

    :cond_6
    invoke-interface {p1, v1, p0}, Le0/d;->D(I[B)V

    :goto_6
    const/4 p0, 0x7

    iget-wide v1, p2, Lw0/p;->g:J

    invoke-interface {p1, p0, v1, v2}, Le0/d;->s(IJ)V

    const/16 p0, 0x8

    iget-wide v1, p2, Lw0/p;->h:J

    invoke-interface {p1, p0, v1, v2}, Le0/d;->s(IJ)V

    const/16 p0, 0x9

    iget-wide v1, p2, Lw0/p;->i:J

    invoke-interface {p1, p0, v1, v2}, Le0/d;->s(IJ)V

    iget p0, p2, Lw0/p;->k:I

    int-to-long v1, p0

    const/16 p0, 0xa

    invoke-interface {p1, p0, v1, v2}, Le0/d;->s(IJ)V

    iget p0, p2, Lw0/p;->l:I

    const-string v1, "backoffPolicy"

    invoke-static {p0, v1}, LB/a;->t(ILjava/lang/String;)V

    invoke-static {p0}, Lq/e;->c(I)I

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    if-ne p0, v0, :cond_7

    move p0, v0

    goto :goto_7

    :cond_7
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_8
    move p0, v1

    :goto_7
    const/16 v2, 0xb

    int-to-long v3, p0

    invoke-interface {p1, v2, v3, v4}, Le0/d;->s(IJ)V

    const/16 p0, 0xc

    iget-wide v2, p2, Lw0/p;->m:J

    invoke-interface {p1, p0, v2, v3}, Le0/d;->s(IJ)V

    const/16 p0, 0xd

    iget-wide v2, p2, Lw0/p;->n:J

    invoke-interface {p1, p0, v2, v3}, Le0/d;->s(IJ)V

    const/16 p0, 0xe

    iget-wide v2, p2, Lw0/p;->o:J

    invoke-interface {p1, p0, v2, v3}, Le0/d;->s(IJ)V

    const/16 p0, 0xf

    iget-wide v2, p2, Lw0/p;->p:J

    invoke-interface {p1, p0, v2, v3}, Le0/d;->s(IJ)V

    iget-boolean p0, p2, Lw0/p;->q:Z

    const/16 v2, 0x10

    int-to-long v3, p0

    invoke-interface {p1, v2, v3, v4}, Le0/d;->s(IJ)V

    iget p0, p2, Lw0/p;->r:I

    const-string v2, "policy"

    invoke-static {p0, v2}, LB/a;->t(ILjava/lang/String;)V

    invoke-static {p0}, Lq/e;->c(I)I

    move-result p0

    if-eqz p0, :cond_a

    if-ne p0, v0, :cond_9

    goto :goto_8

    :cond_9
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_a
    move v0, v1

    :goto_8
    const/16 p0, 0x11

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Le0/d;->s(IJ)V

    iget p0, p2, Lw0/p;->s:I

    int-to-long v0, p0

    const/16 p0, 0x12

    invoke-interface {p1, p0, v0, v1}, Le0/d;->s(IJ)V

    iget p0, p2, Lw0/p;->t:I

    int-to-long v0, p0

    const/16 p0, 0x13

    invoke-interface {p1, p0, v0, v1}, Le0/d;->s(IJ)V

    iget-object p0, p2, Lw0/p;->j:Ln0/e;

    const/16 p2, 0x1b

    const/16 v0, 0x1a

    const/16 v1, 0x19

    const/16 v2, 0x18

    const/16 v3, 0x17

    const/16 v4, 0x16

    const/16 v5, 0x15

    const/16 v6, 0x14

    if-eqz p0, :cond_b

    iget v7, p0, Ln0/e;->a:I

    invoke-static {v7}, Lp4/g;->L(I)I

    move-result v7

    int-to-long v7, v7

    invoke-interface {p1, v6, v7, v8}, Le0/d;->s(IJ)V

    iget-boolean v6, p0, Ln0/e;->b:Z

    int-to-long v6, v6

    invoke-interface {p1, v5, v6, v7}, Le0/d;->s(IJ)V

    iget-boolean v5, p0, Ln0/e;->c:Z

    int-to-long v5, v5

    invoke-interface {p1, v4, v5, v6}, Le0/d;->s(IJ)V

    iget-boolean v4, p0, Ln0/e;->d:Z

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, Le0/d;->s(IJ)V

    iget-boolean v3, p0, Ln0/e;->e:Z

    int-to-long v3, v3

    invoke-interface {p1, v2, v3, v4}, Le0/d;->s(IJ)V

    iget-wide v2, p0, Ln0/e;->f:J

    invoke-interface {p1, v1, v2, v3}, Le0/d;->s(IJ)V

    iget-wide v1, p0, Ln0/e;->g:J

    invoke-interface {p1, v0, v1, v2}, Le0/d;->s(IJ)V

    iget-object p0, p0, Ln0/e;->h:Ljava/util/Set;

    invoke-static {p0}, Lp4/g;->U(Ljava/util/Set;)[B

    move-result-object p0

    invoke-interface {p1, p2, p0}, Le0/d;->D(I[B)V

    goto :goto_9

    :cond_b
    invoke-interface {p1, v6}, Le0/d;->E(I)V

    invoke-interface {p1, v5}, Le0/d;->E(I)V

    invoke-interface {p1, v4}, Le0/d;->E(I)V

    invoke-interface {p1, v3}, Le0/d;->E(I)V

    invoke-interface {p1, v2}, Le0/d;->E(I)V

    invoke-interface {p1, v1}, Le0/d;->E(I)V

    invoke-interface {p1, v0}, Le0/d;->E(I)V

    invoke-interface {p1, p2}, Le0/d;->E(I)V

    :goto_9
    return-void

    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_2
    check-cast p2, Lw0/k;

    iget-object p0, p2, Lw0/k;->a:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_c

    invoke-interface {p1, v0}, Le0/d;->E(I)V

    goto :goto_a

    :cond_c
    invoke-interface {p1, v0, p0}, Le0/d;->q(ILjava/lang/String;)V

    :goto_a
    iget-object p0, p2, Lw0/k;->b:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-interface {p1, p2, p0}, Le0/d;->q(ILjava/lang/String;)V

    return-void

    :pswitch_3
    check-cast p2, Lw0/g;

    iget-object p0, p2, Lw0/g;->a:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_d

    invoke-interface {p1, v0}, Le0/d;->E(I)V

    goto :goto_b

    :cond_d
    invoke-interface {p1, v0, p0}, Le0/d;->q(ILjava/lang/String;)V

    :goto_b
    iget p0, p2, Lw0/g;->b:I

    int-to-long v0, p0

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, Le0/d;->s(IJ)V

    iget p0, p2, Lw0/g;->c:I

    int-to-long v0, p0

    const/4 p0, 0x3

    invoke-interface {p1, p0, v0, v1}, Le0/d;->s(IJ)V

    return-void

    :pswitch_4
    check-cast p2, Lw0/d;

    iget-object p0, p2, Lw0/d;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0, p0}, Le0/d;->q(ILjava/lang/String;)V

    iget-object p0, p2, Lw0/d;->b:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, Le0/d;->s(IJ)V

    return-void

    :pswitch_5
    check-cast p2, Lw0/a;

    iget-object p0, p2, Lw0/a;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0, p0}, Le0/d;->q(ILjava/lang/String;)V

    const/4 p0, 0x2

    iget-object p2, p2, Lw0/a;->b:Ljava/lang/String;

    if-nez p2, :cond_e

    invoke-interface {p1, p0}, Le0/d;->E(I)V

    goto :goto_c

    :cond_e
    invoke-interface {p1, p0, p2}, Le0/d;->q(ILjava/lang/String;)V

    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, LF4/x;->a()Lf0/i;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lw0/b;->j(Lf0/i;Ljava/lang/Object;)V

    iget-object p1, v0, Lf0/i;->e:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, LF4/x;->h(Lf0/i;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, LF4/x;->h(Lf0/i;)V

    throw p1
.end method
