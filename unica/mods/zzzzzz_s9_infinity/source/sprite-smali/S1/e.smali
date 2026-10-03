.class public final LS1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LS1/f;


# direct methods
.method public synthetic constructor <init>(LS1/f;I)V
    .locals 0

    iput p2, p0, LS1/e;->d:I

    iput-object p1, p0, LS1/e;->e:LS1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, LS1/e;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LS1/e;->e:LS1/f;

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "stopFrame"

    invoke-static {v0, v2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LS1/f;->k:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :pswitch_0
    iget-object p0, p0, LS1/e;->e:LS1/f;

    iget-object v0, p0, LS1/f;->d:Landroid/content/Context;

    invoke-static {v0}, LM1/h;->c(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, LS1/f;->i:Ljava/lang/String;

    iget-object v2, p0, LS1/f;->v:LH1/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "run interactiveCheckRunnable, interactive = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", displayState = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LS1/f;->d:Landroid/content/Context;

    invoke-static {v0}, LM1/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LH1/a;->f:LH1/a;

    invoke-virtual {p0, v0}, LS1/f;->e(LH1/a;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object p0, p0, LS1/e;->e:LS1/f;

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "run displayOnRunnable"

    invoke-static {v0, v2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LS1/f;->E:Landroid/os/Handler;

    iget-object v1, p0, LS1/f;->J:LS1/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, LH1/a;->f:LH1/a;

    invoke-virtual {p0, v0}, LS1/f;->e(LH1/a;)V

    return-void

    :pswitch_2
    iget-object p0, p0, LS1/e;->e:LS1/f;

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "run unfreezeLayoutRunnable"

    invoke-static {v0, v2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, LS1/f;->w()V

    return-void

    :pswitch_3
    iget-object p0, p0, LS1/e;->e:LS1/f;

    iget-object v0, p0, LS1/f;->i:Ljava/lang/String;

    const-string v1, "run updateWeatherRunnable"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LS1/f;->L:Ljava/util/EnumMap;

    sget-object v1, La2/i;->u:La2/i;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU1/b;

    if-eqz v0, :cond_8

    iget-object v1, p0, LS1/f;->N:Ls1/b;

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    new-instance v4, Ls1/a;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Ls1/a;-><init>(ZZ)V

    invoke-virtual {v1, v4}, Ls1/b;->a(Ls1/a;)Lq1/a;

    move-result-object v1

    new-instance v4, LF3/s;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const-string v6, "default"

    iput-object v6, v4, LF3/s;->d:Ljava/lang/Object;

    const/4 v6, -0x1

    if-eqz v1, :cond_1

    iget v7, v1, Lq1/a;->d:I

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    iget-object v0, v0, LU1/b;->h:La2/f;

    if-le v7, v6, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz v1, :cond_2

    iget-wide v8, v1, Lq1/a;->h:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :cond_2
    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-gez v3, :cond_3

    iget-wide v8, v1, Lq1/a;->i:J

    cmp-long v3, v6, v8

    if-ltz v3, :cond_4

    :cond_3
    iget-object v3, v0, La2/f;->o:Landroid/util/ArrayMap;

    const-string v8, "weather_night_enabled"

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, LS1/f;->e:Ln1/a;

    invoke-virtual {v3}, Ln1/a;->p()LS2/b;

    move-result-object v3

    iget v5, v1, Lq1/a;->d:I

    const/4 v9, 0x2

    invoke-virtual {v3, v5, v9}, LS2/b;->m(II)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, LS1/f;->e:Ln1/a;

    invoke-virtual {v3}, Ln1/a;->p()LS2/b;

    move-result-object v3

    invoke-virtual {v3, v0, v9}, LS2/b;->n(La2/f;I)V

    iput-object v8, v4, LF3/s;->d:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v3, p0, LS1/f;->e:Ln1/a;

    invoke-virtual {v3}, Ln1/a;->p()LS2/b;

    move-result-object v3

    iget v8, v1, Lq1/a;->d:I

    invoke-virtual {v3, v8, v5}, LS2/b;->m(II)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, LS1/f;->e:Ln1/a;

    invoke-virtual {v3}, Ln1/a;->p()LS2/b;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, LS2/b;->n(La2/f;I)V

    const-string v3, "weather_enabled"

    iput-object v3, v4, LF3/s;->d:Ljava/lang/Object;

    :cond_5
    :goto_1
    iget-object v3, p0, LS1/f;->i:Ljava/lang/String;

    iget v5, v1, Lq1/a;->d:I

    iget-wide v8, v1, Lq1/a;->h:J

    iget-wide v10, v1, Lq1/a;->i:J

    iget-object v1, v4, LF3/s;->d:Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "updateWeather : weather="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sunrise="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", sunset="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", current="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", trigger="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, LS1/f;->E:Landroid/os/Handler;

    new-instance v2, LS1/c;

    invoke-direct {v2, p0, v0, v4}, LS1/c;-><init>(LS1/f;La2/f;LF3/s;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    iget-object v1, p0, LS1/f;->E:Landroid/os/Handler;

    new-instance v2, LS1/c;

    invoke-direct {v2, v4, p0, v0}, LS1/c;-><init>(LF3/s;LS1/f;La2/f;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_7
    const-string p0, "getCurrentWeatherData"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_8
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
