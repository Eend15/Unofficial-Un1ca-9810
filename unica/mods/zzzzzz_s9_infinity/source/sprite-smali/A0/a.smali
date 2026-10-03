.class public final synthetic LA0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LA0/a;->d:I

    iput-object p2, p0, LA0/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 4

    iget-object p0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/o;

    const-string v0, "fetchFonts result is not OK. ("

    iget-object v1, p0, Landroidx/emoji2/text/o;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/emoji2/text/o;->h:La4/x;

    if-nez v2, :cond_0

    monitor-exit v1

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Landroidx/emoji2/text/o;->c()LH/l;

    move-result-object v1

    iget v2, v1, LH/l;->e:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Landroidx/emoji2/text/o;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    goto/16 :goto_3

    :cond_1
    :goto_0
    if-nez v2, :cond_4

    :try_start_4
    const-string v0, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/emoji2/text/o;->c:LG4/d;

    iget-object v2, p0, Landroidx/emoji2/text/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v1}, [LH/l;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, LC/d;->a(Landroid/content/Context;[LH/l;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v2, p0, Landroidx/emoji2/text/o;->a:Landroid/content/Context;

    iget-object v1, v1, LH/l;->a:Landroid/net/Uri;

    invoke-static {v2, v1}, Lw0/f;->E(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    :try_start_5
    const-string v2, "EmojiCompat.MetadataRepo.create"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v2, Lw0/i;

    invoke-static {v1}, La4/x;->T(Ljava/nio/MappedByteBuffer;)LP/b;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lw0/i;-><init>(Landroid/graphics/Typeface;LP/b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, p0, Landroidx/emoji2/text/o;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v1, p0, Landroidx/emoji2/text/o;->h:La4/x;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, La4/x;->Q(Lw0/i;)V

    goto :goto_1

    :catchall_3
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual {p0}, Landroidx/emoji2/text/o;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    :goto_2
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_4
    move-exception v0

    :try_start_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to open file."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_3
    iget-object v2, p0, Landroidx/emoji2/text/o;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_e
    iget-object v1, p0, Landroidx/emoji2/text/o;->h:La4/x;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, La4/x;->N(Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_6
    move-exception p0

    goto :goto_6

    :cond_5
    :goto_4
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    invoke-virtual {p0}, Landroidx/emoji2/text/o;->b()V

    :goto_5
    return-void

    :goto_6
    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw p0

    :goto_7
    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, LA0/a;->d:I

    packed-switch v3, :pswitch_data_0

    iget-object p0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/work/CoroutineWorker;

    const-string v0, "this$0"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/CoroutineWorker;->i:Ly0/k;

    iget-object v0, v0, Ly0/i;->a:Ljava/lang/Object;

    instance-of v0, v0, Ly0/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/CoroutineWorker;->h:LW4/T;

    invoke-static {p0}, LW4/u;->b(LW4/P;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast p0, Lj2/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    iget-object p0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast p0, Ld2/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "recover run"

    const-string v5, "tiltclock_Choreographer"

    invoke-static {v5, v4, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Ld2/c;->d:LO/f;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, LO/f;->b()V

    :cond_1
    iget-object v3, p0, Ld2/c;->e:LO/f;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, LO/f;->b()V

    :cond_2
    iget-object v3, p0, Ld2/c;->q:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ld2/c;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_3
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iget v4, p0, Ld2/c;->m:F

    const/4 v6, 0x0

    new-array v7, v0, [F

    aput v4, v7, v2

    aput v6, v7, v1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-static {v4}, Lf2/b;->a(Landroid/animation/ValueAnimator;)V

    new-instance v7, Ld2/a;

    invoke-direct {v7, p0, v1}, Ld2/a;-><init>(Ld2/c;I)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v7, p0, Ld2/c;->n:F

    new-array v8, v0, [F

    aput v7, v8, v2

    aput v6, v8, v1

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v1}, Lf2/b;->a(Landroid/animation/ValueAnimator;)V

    new-instance v6, Ld2/a;

    invoke-direct {v6, p0, v0}, Ld2/a;-><init>(Ld2/c;I)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "newRecoverAnimator  "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Ld2/c;->m:F

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Ld2/c;->n:F

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    filled-new-array {v4}, [Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    filled-new-array {v1}, [Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-object v0, Ld2/c;->w:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iput-object v3, p0, Ld2/c;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    return-void

    :pswitch_2
    iget-object p0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->c(Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;)V

    return-void

    :pswitch_3
    iget-object p0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/E;

    const-string v0, "this$0"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/lifecycle/E;->e:I

    iget-object v2, p0, Landroidx/lifecycle/E;->i:Landroidx/lifecycle/v;

    if-nez v0, :cond_4

    iput-boolean v1, p0, Landroidx/lifecycle/E;->f:Z

    sget-object v0, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    :cond_4
    iget v0, p0, Landroidx/lifecycle/E;->d:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroidx/lifecycle/E;->f:Z

    if-eqz v0, :cond_5

    sget-object v0, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    iput-boolean v1, p0, Landroidx/lifecycle/E;->g:Z

    :cond_5
    return-void

    :pswitch_4
    invoke-direct {p0}, LA0/a;->a()V

    return-void

    :pswitch_5
    iget-object p0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/j;

    invoke-static {p0}, Landroidx/activity/j;->a(Landroidx/activity/j;)V

    return-void

    :pswitch_6
    iget-object p0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/h;

    iget-object v0, p0, Landroidx/activity/h;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/h;->e:Ljava/lang/Runnable;

    :cond_6
    return-void

    :pswitch_7
    iget-object p0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/w;

    invoke-virtual {p0}, Landroidx/activity/i;->invalidateMenu()V

    return-void

    :pswitch_8
    iget-object p0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast p0, LW1/c;

    iget-object v0, p0, LW1/c;->i:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "stopFrame"

    invoke-static {v0, v3, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LW1/c;->k:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iput-boolean v2, p0, LW1/c;->t:Z

    return-void

    :pswitch_9
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "TimeContainer"

    const-string v4, "onDozeTimeTick"

    invoke-static {v3, v4, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast p0, LQ1/i;

    invoke-virtual {p0}, LQ1/i;->b()LQ1/b;

    move-result-object v0

    check-cast v0, LW1/c;

    iget-object v3, v0, LW1/c;->i:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "onPauseFrame"

    invoke-static {v3, v5, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, v0, LW1/c;->z:Z

    invoke-virtual {v0, v2, v1}, LW1/c;->r(ZZ)V

    invoke-virtual {p0}, LQ1/i;->d()Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, LQ1/i;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lo1/b;->b(Landroid/content/Context;)Lo1/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo1/b;->d(Ljava/util/Calendar;)Lo1/a;

    move-result-object v0

    const-string v1, "getTargetTime(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, LQ1/i;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQ1/a;

    iget-object v4, p0, LQ1/i;->f:Ljava/lang/Object;

    check-cast v4, Ljava/util/EnumMap;

    invoke-virtual {v3, v0, v4}, LQ1/a;->b(Lo1/a;Ljava/util/EnumMap;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, LQ1/i;->b()LQ1/b;

    move-result-object v0

    check-cast v0, LW1/c;

    iget-object v1, v0, LW1/c;->i:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "onResumeFrame"

    invoke-static {v1, v4, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, v0, LW1/c;->z:Z

    invoke-virtual {p0}, LQ1/i;->b()LQ1/b;

    move-result-object p0

    check-cast p0, LW1/c;

    invoke-virtual {p0}, LW1/c;->q()V

    return-void

    :pswitch_a
    iget-object p0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast p0, LN1/j;

    iget-object p0, p0, Lp1/b;->d:Lcom/samsung/android/wallpaper/live/common/video/VideoController;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->a:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v2}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    :cond_8
    return-void

    :pswitch_b
    iget-object p0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast p0, LF2/c;

    iget-object p0, p0, LF2/c;->c:LE2/b;

    iget-object p0, p0, LE2/b;->a:LX2/a;

    invoke-interface {p0}, LX2/a;->release()V

    return-void

    :pswitch_c
    iget-object p0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast p0, LE1/i;

    invoke-virtual {p0}, LE1/i;->d()V

    return-void

    :pswitch_d
    iget-object p0, p0, LA0/a;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    const-string v0, "this$0"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->k:Ly0/k;

    iget-object v0, v0, Ly0/i;->a:Ljava/lang/Object;

    instance-of v0, v0, Ly0/a;

    if-eqz v0, :cond_9

    goto/16 :goto_4

    :cond_9
    iget-object v0, p0, Ln0/n;->e:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->b:Ln0/g;

    const-string v1, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v0, v1}, Ln0/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    const-string v3, "get()"

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_3

    :cond_a
    iget-object v3, p0, Ln0/n;->e:Landroidx/work/WorkerParameters;

    iget-object v3, v3, Landroidx/work/WorkerParameters;->e:Ln0/B;

    iget-object v4, p0, Ln0/n;->d:Landroid/content/Context;

    iget-object v5, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Landroidx/work/WorkerParameters;

    invoke-virtual {v3, v4, v0, v5}, Ln0/B;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Ln0/n;

    move-result-object v3

    iput-object v3, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->l:Ln0/n;

    if-nez v3, :cond_b

    sget-object v0, LA0/c;->a:Ljava/lang/String;

    const-string v2, "No worker to delegate to."

    invoke-virtual {v1, v0, v2}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->k:Ly0/k;

    const-string v0, "future"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/j;

    invoke-direct {v0}, Ln0/j;-><init>()V

    invoke-virtual {p0, v0}, Ly0/k;->j(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_b
    iget-object v3, p0, Ln0/n;->d:Landroid/content/Context;

    invoke-static {v3}, Lo0/n;->N(Landroid/content/Context;)Lo0/n;

    move-result-object v3

    const-string v4, "getInstance(applicationContext)"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v3, Lo0/n;->f:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->t()Lw0/q;

    move-result-object v4

    iget-object v5, p0, Ln0/n;->e:Landroidx/work/WorkerParameters;

    iget-object v5, v5, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id.toString()"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lw0/q;->l(Ljava/lang/String;)Lw0/p;

    move-result-object v4

    if-nez v4, :cond_c

    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->k:Ly0/k;

    const-string v0, "future"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LA0/c;->a:Ljava/lang/String;

    new-instance v0, Ln0/j;

    invoke-direct {v0}, Ln0/j;-><init>()V

    invoke-virtual {p0, v0}, Ly0/k;->j(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_c
    new-instance v5, Ln1/a;

    iget-object v3, v3, Lo0/n;->m:Lw0/i;

    const-string v6, "workManagerImpl.trackers"

    invoke-static {v3, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v3, p0}, Ln1/a;-><init>(Lw0/i;Ls0/b;)V

    invoke-static {v4}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5, v3}, Ln1/a;->y(Ljava/util/Collection;)V

    iget-object v3, p0, Ln0/n;->e:Landroidx/work/WorkerParameters;

    iget-object v3, v3, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id.toString()"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ln1/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, LA0/c;->a:Ljava/lang/String;

    const-string v4, "Constraints met for delegate "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->l:Ln0/n;

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ln0/n;->d()Ly0/k;

    move-result-object v3

    const-string v4, "delegate!!.startWork()"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, LA0/b;

    invoke-direct {v4, p0, v2, v3}, LA0/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v2, p0, Ln0/n;->e:Landroidx/work/WorkerParameters;

    iget-object v2, v2, Landroidx/work/WorkerParameters;->c:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v3, v4, v2}, Ly0/i;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    sget-object v3, LA0/c;->a:Ljava/lang/String;

    const-string v4, "Delegated worker "

    const-string v5, " threw exception in startWork."

    invoke-static {v4, v0, v5}, LB/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v4, v1, Ln0/o;->a:I

    const/4 v5, 0x3

    if-gt v4, v5, :cond_d

    invoke-static {v3, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-boolean v2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->j:Z

    if-eqz v2, :cond_e

    const-string v2, "Constraints were unmet, Retrying."

    invoke-virtual {v1, v3, v2}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->k:Ly0/k;

    const-string v1, "future"

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ln0/k;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Ly0/k;->j(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_e
    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->k:Ly0/k;

    const-string v1, "future"

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ln0/j;

    invoke-direct {v1}, Ln0/j;-><init>()V

    invoke-virtual {p0, v1}, Ly0/k;->j(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    monitor-exit v0

    goto :goto_4

    :goto_2
    monitor-exit v0

    throw p0

    :cond_f
    sget-object v2, LA0/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Constraints not met for delegate "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Requesting retry."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->k:Ly0/k;

    const-string v0, "future"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Ly0/k;->j(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    :goto_3
    sget-object v0, LA0/c;->a:Ljava/lang/String;

    const-string v2, "No worker to delegate to."

    invoke-virtual {v1, v0, v2}, Ln0/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->k:Ly0/k;

    const-string v0, "future"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/j;

    invoke-direct {v0}, Ln0/j;-><init>()V

    invoke-virtual {p0, v0}, Ly0/k;->j(Ljava/lang/Object;)Z

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
