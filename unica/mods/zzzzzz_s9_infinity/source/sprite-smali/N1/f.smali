.class public final synthetic LN1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/c;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;I)V
    .locals 0

    iput p2, p0, LN1/f;->d:I

    iput-object p1, p0, LN1/f;->e:Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(FF)V
    .locals 5

    iget v0, p0, LN1/f;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LN1/f;->e:Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;

    check-cast p0, Ld2/h;

    iget-object p0, p0, Ld2/h;->f:Ld2/c;

    if-eqz p0, :cond_b

    iget-boolean v0, p0, Ld2/c;->c:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Ld2/c;->h:Landroid/animation/ValueAnimator;

    const-string v1, "tiltclock_Choreographer"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Ld2/c;->o:Z

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "skip tilt "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Ld2/c;->o:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Ld2/c;->o:Z

    iput p2, p0, Ld2/c;->i:F

    iput p2, p0, Ld2/c;->k:F

    iput p1, p0, Ld2/c;->j:F

    iput p1, p0, Ld2/c;->l:F

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "sensor tilt = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Ld2/c;->i:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Ld2/c;->j:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Ld2/c;->i:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x3cf5c28f    # 0.03f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    iget v0, p0, Ld2/c;->j:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "base tilt =  "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Ld2/c;->k:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Ld2/c;->l:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "animate tilt = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Ld2/c;->m:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ld2/c;->n:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p2, p0, Ld2/c;->i:F

    iput p1, p0, Ld2/c;->j:F

    iget v0, p0, Ld2/c;->k:F

    sub-float/2addr p2, v0

    const v0, -0x4099999a    # -0.9f

    const v1, 0x3f666666    # 0.9f

    invoke-static {p2, v0, v1}, Lw0/f;->i(FFF)F

    move-result p2

    iget v2, p0, Ld2/c;->l:F

    sub-float/2addr p1, v2

    invoke-static {p1, v0, v1}, Lw0/f;->i(FFF)F

    move-result p1

    iget-object v0, p0, Ld2/c;->b:Landroid/os/Handler;

    if-eqz v0, :cond_5

    iget-object v1, p0, Ld2/c;->r:LA0/a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    iget-object v0, p0, Ld2/c;->q:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ld2/c;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_6
    iget-object v0, p0, Ld2/c;->d:LO/f;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ld2/c;->a()LO/f;

    move-result-object v0

    iput-object v0, p0, Ld2/c;->d:LO/f;

    :cond_7
    iget-object v0, p0, Ld2/c;->d:LO/f;

    iget-boolean v1, v0, LO/f;->e:Z

    const/4 v2, 0x1

    if-nez v1, :cond_8

    iget v1, p0, Ld2/c;->m:F

    iput v1, v0, LO/f;->b:F

    iput-boolean v2, v0, LO/f;->c:Z

    :cond_8
    invoke-virtual {v0, p2}, LO/f;->a(F)V

    iget-object p2, p0, Ld2/c;->e:LO/f;

    if-nez p2, :cond_9

    invoke-virtual {p0}, Ld2/c;->a()LO/f;

    move-result-object p2

    iput-object p2, p0, Ld2/c;->e:LO/f;

    :cond_9
    iget-object p2, p0, Ld2/c;->e:LO/f;

    iget-boolean v0, p2, LO/f;->e:Z

    if-nez v0, :cond_a

    iget p0, p0, Ld2/c;->n:F

    iput p0, p2, LO/f;->b:F

    iput-boolean v2, p2, LO/f;->c:Z

    :cond_a
    invoke-virtual {p2, p1}, LO/f;->a(F)V

    :cond_b
    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, LN1/f;->e:Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;

    check-cast p0, LN1/j;

    iget-object p0, p0, LN1/j;->n:LN1/i;

    if-eqz p0, :cond_c

    iget-object v0, p0, LN1/i;->f:LN1/h;

    if-eqz v0, :cond_c

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p0, p0, LN1/i;->f:LN1/h;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
