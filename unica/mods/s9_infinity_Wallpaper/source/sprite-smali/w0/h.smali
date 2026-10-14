.class public final Lw0/h;
.super LF4/x;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkDatabase;I)V
    .locals 0

    iput p2, p0, Lw0/h;->e:I

    invoke-direct {p0, p1}, LF4/x;-><init>(Landroidx/work/impl/WorkDatabase;)V

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lw0/h;->e:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "DELETE FROM worktag WHERE work_spec_id=?"

    return-object p0

    :pswitch_0
    const-string p0, "UPDATE workspec SET run_attempt_count=0 WHERE id=?"

    return-object p0

    :pswitch_1
    const-string p0, "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?"

    return-object p0

    :pswitch_2
    const-string p0, "UPDATE workspec SET last_enqueue_time=? WHERE id=?"

    return-object p0

    :pswitch_3
    const-string p0, "UPDATE workspec SET output=? WHERE id=?"

    return-object p0

    :pswitch_4
    const-string p0, "UPDATE workspec SET period_count=period_count+1 WHERE id=?"

    return-object p0

    :pswitch_5
    const-string p0, "UPDATE workspec SET state=? WHERE id=?"

    return-object p0

    :pswitch_6
    const-string p0, "DELETE FROM workspec WHERE id=?"

    return-object p0

    :pswitch_7
    const-string p0, "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`required_network_type` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?"

    return-object p0

    :pswitch_8
    const-string p0, "UPDATE workspec SET generation=generation+1 WHERE id=?"

    return-object p0

    :pswitch_9
    const-string p0, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    return-object p0

    :pswitch_a
    const-string p0, "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)"

    return-object p0

    :pswitch_b
    const-string p0, "UPDATE workspec SET schedule_requested_at=? WHERE id=?"

    return-object p0

    :pswitch_c
    const-string p0, "DELETE FROM WorkProgress"

    return-object p0

    :pswitch_d
    const-string p0, "DELETE from WorkProgress where work_spec_id=?"

    return-object p0

    :pswitch_e
    const-string p0, "DELETE FROM SystemIdInfo where work_spec_id=?"

    return-object p0

    :pswitch_f
    const-string p0, "DELETE FROM SystemIdInfo where work_spec_id=? AND generation=?"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j(Lf0/i;Ljava/lang/Object;)V
    .locals 10

    check-cast p2, Lw0/p;

    const/4 p0, 0x1

    iget-object v0, p2, Lw0/p;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Le0/d;->E(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0, v0}, Le0/d;->q(ILjava/lang/String;)V

    :goto_0
    iget v1, p2, Lw0/p;->b:I

    invoke-static {v1}, Lp4/g;->V(I)I

    move-result v1

    const/4 v2, 0x2

    int-to-long v3, v1

    invoke-interface {p1, v2, v3, v4}, Le0/d;->s(IJ)V

    iget-object v1, p2, Lw0/p;->c:Ljava/lang/String;

    const/4 v2, 0x3

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Le0/d;->E(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v2, v1}, Le0/d;->q(ILjava/lang/String;)V

    :goto_1
    iget-object v1, p2, Lw0/p;->d:Ljava/lang/String;

    const/4 v2, 0x4

    if-nez v1, :cond_2

    invoke-interface {p1, v2}, Le0/d;->E(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v2, v1}, Le0/d;->q(ILjava/lang/String;)V

    :goto_2
    iget-object v1, p2, Lw0/p;->e:Ln0/g;

    invoke-static {v1}, Ln0/g;->e(Ln0/g;)[B

    move-result-object v1

    const/4 v2, 0x5

    if-nez v1, :cond_3

    invoke-interface {p1, v2}, Le0/d;->E(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v2, v1}, Le0/d;->D(I[B)V

    :goto_3
    iget-object v1, p2, Lw0/p;->f:Ln0/g;

    invoke-static {v1}, Ln0/g;->e(Ln0/g;)[B

    move-result-object v1

    const/4 v2, 0x6

    if-nez v1, :cond_4

    invoke-interface {p1, v2}, Le0/d;->E(I)V

    goto :goto_4

    :cond_4
    invoke-interface {p1, v2, v1}, Le0/d;->D(I[B)V

    :goto_4
    const/4 v1, 0x7

    iget-wide v2, p2, Lw0/p;->g:J

    invoke-interface {p1, v1, v2, v3}, Le0/d;->s(IJ)V

    const/16 v1, 0x8

    iget-wide v2, p2, Lw0/p;->h:J

    invoke-interface {p1, v1, v2, v3}, Le0/d;->s(IJ)V

    const/16 v1, 0x9

    iget-wide v2, p2, Lw0/p;->i:J

    invoke-interface {p1, v1, v2, v3}, Le0/d;->s(IJ)V

    iget v1, p2, Lw0/p;->k:I

    int-to-long v1, v1

    const/16 v3, 0xa

    invoke-interface {p1, v3, v1, v2}, Le0/d;->s(IJ)V

    iget v1, p2, Lw0/p;->l:I

    const-string v2, "backoffPolicy"

    invoke-static {v1, v2}, LB/a;->t(ILjava/lang/String;)V

    invoke-static {v1}, Lq/e;->c(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    if-ne v1, p0, :cond_5

    move v1, p0

    goto :goto_5

    :cond_5
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_6
    move v1, v2

    :goto_5
    const/16 v3, 0xb

    int-to-long v4, v1

    invoke-interface {p1, v3, v4, v5}, Le0/d;->s(IJ)V

    const/16 v1, 0xc

    iget-wide v3, p2, Lw0/p;->m:J

    invoke-interface {p1, v1, v3, v4}, Le0/d;->s(IJ)V

    const/16 v1, 0xd

    iget-wide v3, p2, Lw0/p;->n:J

    invoke-interface {p1, v1, v3, v4}, Le0/d;->s(IJ)V

    const/16 v1, 0xe

    iget-wide v3, p2, Lw0/p;->o:J

    invoke-interface {p1, v1, v3, v4}, Le0/d;->s(IJ)V

    const/16 v1, 0xf

    iget-wide v3, p2, Lw0/p;->p:J

    invoke-interface {p1, v1, v3, v4}, Le0/d;->s(IJ)V

    iget-boolean v1, p2, Lw0/p;->q:Z

    const/16 v3, 0x10

    int-to-long v4, v1

    invoke-interface {p1, v3, v4, v5}, Le0/d;->s(IJ)V

    iget v1, p2, Lw0/p;->r:I

    const-string v3, "policy"

    invoke-static {v1, v3}, LB/a;->t(ILjava/lang/String;)V

    invoke-static {v1}, Lq/e;->c(I)I

    move-result v1

    if-eqz v1, :cond_8

    if-ne v1, p0, :cond_7

    goto :goto_6

    :cond_7
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_8
    move p0, v2

    :goto_6
    const/16 v1, 0x11

    int-to-long v2, p0

    invoke-interface {p1, v1, v2, v3}, Le0/d;->s(IJ)V

    iget p0, p2, Lw0/p;->s:I

    int-to-long v1, p0

    const/16 p0, 0x12

    invoke-interface {p1, p0, v1, v2}, Le0/d;->s(IJ)V

    iget p0, p2, Lw0/p;->t:I

    int-to-long v1, p0

    const/16 p0, 0x13

    invoke-interface {p1, p0, v1, v2}, Le0/d;->s(IJ)V

    iget-object p0, p2, Lw0/p;->j:Ln0/e;

    const/16 p2, 0x1b

    const/16 v1, 0x1a

    const/16 v2, 0x19

    const/16 v3, 0x18

    const/16 v4, 0x17

    const/16 v5, 0x16

    const/16 v6, 0x15

    const/16 v7, 0x14

    if-eqz p0, :cond_9

    iget v8, p0, Ln0/e;->a:I

    invoke-static {v8}, Lp4/g;->L(I)I

    move-result v8

    int-to-long v8, v8

    invoke-interface {p1, v7, v8, v9}, Le0/d;->s(IJ)V

    iget-boolean v7, p0, Ln0/e;->b:Z

    int-to-long v7, v7

    invoke-interface {p1, v6, v7, v8}, Le0/d;->s(IJ)V

    iget-boolean v6, p0, Ln0/e;->c:Z

    int-to-long v6, v6

    invoke-interface {p1, v5, v6, v7}, Le0/d;->s(IJ)V

    iget-boolean v5, p0, Ln0/e;->d:Z

    int-to-long v5, v5

    invoke-interface {p1, v4, v5, v6}, Le0/d;->s(IJ)V

    iget-boolean v4, p0, Ln0/e;->e:Z

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, Le0/d;->s(IJ)V

    iget-wide v3, p0, Ln0/e;->f:J

    invoke-interface {p1, v2, v3, v4}, Le0/d;->s(IJ)V

    iget-wide v2, p0, Ln0/e;->g:J

    invoke-interface {p1, v1, v2, v3}, Le0/d;->s(IJ)V

    iget-object p0, p0, Ln0/e;->h:Ljava/util/Set;

    invoke-static {p0}, Lp4/g;->U(Ljava/util/Set;)[B

    move-result-object p0

    invoke-interface {p1, p2, p0}, Le0/d;->D(I[B)V

    goto :goto_7

    :cond_9
    invoke-interface {p1, v7}, Le0/d;->E(I)V

    invoke-interface {p1, v6}, Le0/d;->E(I)V

    invoke-interface {p1, v5}, Le0/d;->E(I)V

    invoke-interface {p1, v4}, Le0/d;->E(I)V

    invoke-interface {p1, v3}, Le0/d;->E(I)V

    invoke-interface {p1, v2}, Le0/d;->E(I)V

    invoke-interface {p1, v1}, Le0/d;->E(I)V

    invoke-interface {p1, p2}, Le0/d;->E(I)V

    :goto_7
    const/16 p0, 0x1c

    if-nez v0, :cond_a

    invoke-interface {p1, p0}, Le0/d;->E(I)V

    goto :goto_8

    :cond_a
    invoke-interface {p1, p0, v0}, Le0/d;->q(ILjava/lang/String;)V

    :goto_8
    return-void
.end method
