.class Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$3;
.super Landroid/os/Handler;
.source "ElementAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;Landroid/os/Looper;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$3;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 471
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$3;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$700(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41f00000    # 30.0f

    div-float/2addr p1, v0

    .line 472
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$3;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$700(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$3;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {v0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$724(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;F)F

    goto :goto_0

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$3;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$700(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$3;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {v0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$716(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;F)F

    .line 477
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$3;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$1000(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    const-wide/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
