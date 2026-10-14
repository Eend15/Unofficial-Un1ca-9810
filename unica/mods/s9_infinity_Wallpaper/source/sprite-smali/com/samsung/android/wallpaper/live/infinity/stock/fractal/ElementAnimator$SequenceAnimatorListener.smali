.class Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$SequenceAnimatorListener;
.super Ljava/lang/Object;
.source "ElementAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SequenceAnimatorListener"
.end annotation


# instance fields
.field mSequence:J

.field final synthetic this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;J)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$SequenceAnimatorListener;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-wide p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$SequenceAnimatorListener;->mSequence:J

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .line 223
    iget-wide v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$SequenceAnimatorListener;->mSequence:J

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$SequenceAnimatorListener;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$300(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 224
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$SequenceAnimatorListener;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$402(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;I)I

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 215
    iget-wide v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$SequenceAnimatorListener;->mSequence:J

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$SequenceAnimatorListener;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$300(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$SequenceAnimatorListener;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$402(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;I)I

    .line 218
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$SequenceAnimatorListener;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$600(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    move-result-object p1

    iget p1, p1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateY:F

    invoke-static {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$502(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;F)F

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
