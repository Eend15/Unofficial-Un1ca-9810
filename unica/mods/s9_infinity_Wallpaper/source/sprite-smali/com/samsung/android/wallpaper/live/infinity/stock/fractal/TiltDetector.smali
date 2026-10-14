.class public Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;
.super Ljava/lang/Object;
.source "TiltDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector$SensorListener;
    }
.end annotation


# static fields
.field private static final SENSOR_TYPE_INTERRUPT_GYROSCOPE:I = 0x1002b


# instance fields
.field private mAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

.field private mContext:Landroid/content/Context;

.field private mGyroSensor:Landroid/hardware/Sensor;

.field private mResumed:Z

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 18
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mGyroSensor:Landroid/hardware/Sensor;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mResumed:Z

    .line 22
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->initSensor()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;)Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    return-object p0
.end method

.method private initSensor()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 29
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1002b

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mGyroSensor:Landroid/hardware/Sensor;

    .line 30
    new-instance v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector$SensorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector$SensorListener;-><init>(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector$1;)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    .line 42
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mResumed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "InfinityWallpaper"

    const-string v1, "Sensor paused."

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mResumed:Z

    .line 46
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public resume()V
    .locals 4
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mResumed:Z
    if-eqz v0, :register
    return-void
    :register
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->initSensor()V
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mSensorManager:Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mSensorListener:Landroid/hardware/SensorEventListener;
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mGyroSensor:Landroid/hardware/Sensor;
    if-eqz v2, :missing
    const/4 v3, 0x2
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    move-result v0
    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mResumed:Z
    const-string v1, "InfinityWallpaper"
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
    move-result-object v0
    const-string v2, "Interrupt gyro registered: "
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    return-void
    :missing
    const-string v0, "InfinityWallpaper"
    const-string v1, "Interrupt gyro unavailable; registration will retry on resume"
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    return-void
.end method


.method public setAnimator(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/TiltDetector;->mAnimator:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/ElementAnimator;

    return-void
.end method
