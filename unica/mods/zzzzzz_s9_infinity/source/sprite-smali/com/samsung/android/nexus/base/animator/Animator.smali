.class public Lcom/samsung/android/nexus/base/animator/Animator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Animator"


# instance fields
.field private mAlive:Z

.field private mCurrentValue:F

.field private mDummyAnimator:Landroid/animation/ValueAnimator;

.field private mEndValue:F

.field private mListener:Lcom/samsung/android/nexus/base/animator/AnimatorListener;

.field private mPauseTime:J

.field private mRunning:Z

.field private mStartTime:J

.field private mStartValue:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mRunning:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mAlive:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mStartTime:J

    iput-wide v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mPauseTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mStartValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mEndValue:F

    iput v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mCurrentValue:F

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mRunning:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mStartTime:J

    iput-wide v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mPauseTime:J

    iget-object v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mListener:Lcom/samsung/android/nexus/base/animator/AnimatorListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mStartValue:F

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/nexus/base/animator/AnimatorListener;->onAnimationUpdate(Lcom/samsung/android/nexus/base/animator/Animator;F)V

    iget-object v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mListener:Lcom/samsung/android/nexus/base/animator/AnimatorListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/nexus/base/animator/AnimatorListener;->onAnimationCancel(Lcom/samsung/android/nexus/base/animator/Animator;)V

    :cond_0
    return-void
.end method

.method public end()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mRunning:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mStartTime:J

    iput-wide v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mPauseTime:J

    iget-object v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mListener:Lcom/samsung/android/nexus/base/animator/AnimatorListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mEndValue:F

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/nexus/base/animator/AnimatorListener;->onAnimationUpdate(Lcom/samsung/android/nexus/base/animator/Animator;F)V

    iget-object v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mListener:Lcom/samsung/android/nexus/base/animator/AnimatorListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/nexus/base/animator/AnimatorListener;->onAnimationEnd(Lcom/samsung/android/nexus/base/animator/Animator;)V

    :cond_0
    return-void
.end method

.method public getCurrentValue()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mCurrentValue:F

    return p0
.end method

.method public getDuraion()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAlive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mAlive:Z

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mRunning:Z

    return p0
.end method

.method public onTick()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mRunning:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    iget-object v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mCurrentValue:F

    iget-object v1, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mListener:Lcom/samsung/android/nexus/base/animator/AnimatorListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0, v0}, Lcom/samsung/android/nexus/base/animator/AnimatorListener;->onAnimationUpdate(Lcom/samsung/android/nexus/base/animator/Animator;F)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mCurrentValue:F

    iget v1, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mEndValue:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/animator/Animator;->end()V

    :cond_2
    return-void
.end method

.method public pause()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mRunning:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mPauseTime:J

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mRunning:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mPauseTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mPauseTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mStartTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mStartTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mRunning:Z

    :cond_0
    return-void
.end method

.method public setAlive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mAlive:Z

    return-void
.end method

.method public setAnimatorListener(Lcom/samsung/android/nexus/base/animator/AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mListener:Lcom/samsung/android/nexus/base/animator/AnimatorListener;

    return-void
.end method

.method public setDuration(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/nexus/base/animator/Animator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDuration() : Do NOT set a negative duration: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setStartDelay(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/nexus/base/animator/Animator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDuration() : Do NOT set a negative delay: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-void
.end method

.method public varargs setValues([F)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mStartValue:F

    aget v0, p1, v1

    iput v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mEndValue:F

    goto :goto_0

    :cond_0
    array-length v0, p1

    if-le v0, v2, :cond_1

    aget v0, p1, v1

    iput v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mStartValue:F

    aget v0, p1, v2

    iput v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mEndValue:F

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-void
.end method

.method public start()V
    .locals 4

    sget-object v0, Lcom/samsung/android/nexus/base/animator/Animator;->TAG:Ljava/lang/String;

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mRunning:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mDummyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mStartTime:J

    iget-object v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mListener:Lcom/samsung/android/nexus/base/animator/AnimatorListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/samsung/android/nexus/base/animator/AnimatorListener;->onAnimationStart(Lcom/samsung/android/nexus/base/animator/Animator;)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mPauseTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mPauseTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mStartTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mStartTime:J

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/animator/Animator;->mRunning:Z

    :cond_2
    return-void
.end method
