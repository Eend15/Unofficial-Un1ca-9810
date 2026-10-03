.class public Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;
.super Ljava/lang/Object;
.source "FlickDetector.java"


# instance fields
.field private mAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

.field private mVelocityTracingStartTime:J

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;->mAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;->mVelocityTracingStartTime:J

    .line 26
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 27
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 30
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ne v0, p1, :cond_3

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 33
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, p1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 34
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    .line 36
    iget-wide v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;->mVelocityTracingStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x50

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3fb33333    # 1.4f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;->mAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->onFlick(F)V

    .line 39
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_3
    :goto_0
    return-void
.end method

.method public setAnimator(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/FlickDetector;->mAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    return-void
.end method
