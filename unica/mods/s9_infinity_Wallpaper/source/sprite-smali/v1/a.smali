.class public final synthetic Lv1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lv1/d;


# direct methods
.method public synthetic constructor <init>(Lv1/d;I)V
    .locals 0

    iput p2, p0, Lv1/a;->d:I

    iput-object p1, p0, Lv1/a;->e:Lv1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lv1/a;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lv1/a;->e:Lv1/d;

    iget-object v0, p0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const-string v2, "valueAnimator"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "stopAnimation: cancel animation"

    invoke-static {v0, v4, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_0
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object p0, p0, Lv1/a;->e:Lv1/d;

    iget-object v0, p0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const-string v2, "valueAnimator"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    const-string v4, "startAnimation: cancel animation"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1

    :cond_3
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    const-string v5, "startAnimation: valueAnimator.isRunning="

    invoke-static {v5, v4}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_5
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    iget-object p0, p0, Lv1/a;->e:Lv1/d;

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lv1/d;->m:I

    iget v2, p0, Lv1/d;->n:I

    iget-object v3, p0, Lv1/d;->x:LH1/a;

    const-string v4, "displayOFF: currentTimeIdx="

    const-string v5, " prevTimeIdx="

    const-string v6, " currentDisplayState="

    invoke-static {v1, v4, v2, v5, v6}, LB/a;->p(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lv1/d;->n(Z)Lx1/b;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lv1/d;->w(Lx1/b;)V

    :cond_8
    invoke-virtual {p0}, Lv1/d;->l()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
