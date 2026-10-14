.class Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector$SensorListener;
.super Ljava/lang/Object;
.source "TiltDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;


# direct methods
.method private constructor <init>(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector$SensorListener;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector$SensorListener;-><init>(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 57
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x1002b

    if-eq v0, v1, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x1

    aget p1, p1, v0

    .line 59
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector$SensorListener;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;

    invoke-static {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->access$100(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;)Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 60
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector$SensorListener;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->access$100(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;)Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;->onGyroDataChanged(F)V

    goto :goto_0

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error deltaY :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InfinityWallpaper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
