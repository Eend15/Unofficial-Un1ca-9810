.class Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$1;
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

    .line 67
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$1;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InfinityWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$1;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$000(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 74
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$1;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$100(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 76
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$1;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->access$200(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 78
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator$1;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->changeModeInner(IZ)V

    :cond_4
    :goto_1
    return-void
.end method
