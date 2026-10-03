.class Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$2;
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

    .line 444
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$2;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 447
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$2;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$700(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3a83126f    # 0.001f

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_2

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$2;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$1100(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)F

    move-result p1

    .line 455
    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$2;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {v3}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$500(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)F

    move-result v3

    cmpl-float v1, v3, v1

    if-nez v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$2;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$600(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateY:F

    invoke-static {v1, v3}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$502(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;F)F

    .line 458
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$2;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$500(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)F

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$2;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {v3}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$600(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateY:F

    sub-float/2addr v1, v3

    .line 459
    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$2;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {v3}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$700(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)F

    move-result v3

    const/high16 v4, -0x3d380000    # -100.0f

    div-float/2addr v4, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr v4, p1

    add-float/2addr v4, v0

    const/high16 p1, 0x42480000    # 50.0f

    div-float/2addr v4, p1

    mul-float/2addr v3, v4

    .line 461
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$2;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$600(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateY:F

    sub-float/2addr v0, v3

    iput v0, p1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementData;->rotateY:F

    .line 462
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$2;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$1200(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)Landroid/opengl/GLSurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 463
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$2;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$900(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0xa

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 449
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$2;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {p1, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$802(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;Z)Z

    .line 450
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$2;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {p1, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$702(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;F)F

    .line 451
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$2;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$900(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$2;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$1000(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :goto_1
    return-void
.end method
