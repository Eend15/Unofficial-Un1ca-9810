.class public Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;
.super Ljava/lang/Object;
.source "TiltDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;

# instance fields
.field public a:Ljava/lang/ref/WeakReference;
.field public b:Landroid/hardware/SensorManager;
.field public c:Landroid/hardware/Sensor;
.field public d:Z
.field public e:F
.field public f:J

# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;)V
    .locals 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->a:Ljava/lang/ref/WeakReference;

    iget-object p1, p1, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;
    const-string v0, "sensor"
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p1
    check-cast p1, Landroid/hardware/SensorManager;
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->b:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_0
    const/4 v0, 0x1
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;
    move-result-object p1
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->c:Landroid/hardware/Sensor;
    :cond_0
    const/4 p1, 0x0
    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->d:Z
    const/4 p1, 0x0
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->e:F
    const-wide/16 v0, 0x0
    iput-wide v0, p0, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->f:J
    return-void
.end method

.method public final start()V
    .locals 3
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->d:Z
    if-nez v0, :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->b:Landroid/hardware/SensorManager;
    if-eqz v0, :cond_0
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->c:Landroid/hardware/Sensor;
    if-eqz v1, :cond_0
    const/4 v2, 0x2
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->d:Z
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 2
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->d:Z
    if-eqz v0, :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->b:Landroid/hardware/SensorManager;
    if-eqz v0, :cond_0
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->d:Z
    :cond_0
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I
    move-result v0
    const/4 v1, 0x1
    if-eq v0, v1, :cond_check_ref
    return-void

    :cond_check_ref
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->a:Ljava/lang/ref/WeakReference;
    if-nez v0, :cond_ref_ok
    return-void

    :cond_ref_ok
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;
    if-nez v0, :cond_check_visible
    return-void

    :cond_check_visible
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z
    move-result v1
    # Exit if wallpaper is NOT visible
    if-eqz v1, :cond_exit

    # Exit if user is touching the screen
    iget-boolean v1, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->u:Z
    if-eqz v1, :cond_check_choreo
    return-void

    :cond_check_choreo
    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->c:LC1/b;
    if-nez v1, :cond_check_state
    return-void

    :cond_check_state
    # Exit if mode is 0 (AOD)
    iget v4, v1, LC1/b;->g:I
    if-nez v4, :cond_check_frame
    return-void

    :cond_check_frame
    # Check current frame: crystal is around 350
    iget v5, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->d:I
    if-nez v5, :cond_check_span
    goto :cond_is_lock

    :cond_check_span
    const/16 v6, 0x136    # 310 min frame
    if-ge v5, v6, :cond_check_high
    return-void

    :cond_check_high
    const/16 v6, 0x186    # 390 max frame
    if-le v5, v6, :cond_is_lock
    return-void

    :cond_is_lock
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    iget-wide v4, p0, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->f:J
    sub-long v4, v2, v4
    const-wide/16 v6, 0x23    # 35ms throttling (~28fps, smooth and light on GPU/decoder)
    cmp-long v4, v4, v6
    if-gez v4, :cond_throttle_ok
    return-void

    :cond_throttle_ok
    iput-wide v2, p0, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->f:J

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F
    const/4 v2, 0x0
    aget p1, p1, v2

    # Smooth low-pass filter: 0.80f old + 0.20f new
    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->e:F
    const v3, 0x3f4ccccd    # 0.80f
    mul-float/2addr v2, v3
    const v3, 0x3e4ccccd    # 0.20f
    mul-float/2addr p1, v3
    add-float/2addr v2, p1
    iput v2, p0, Lcom/samsung/android/wallpaper/live/infinity/TiltDetector;->e:F

    # Multiplier: 2.5f for smooth responsive span
    const v3, 0x40200000    # 2.5f
    mul-float/2addr v2, v3
    float-to-int v8, v2
    add-int/lit16 v8, v8, 0x15e    # 350 base

    # Strict clamping: [332, 368] (crystal never disappears)
    const/16 v2, 0x14c    # 332 min
    if-ge v8, v2, :cond_clamp_high
    move v8, v2
    goto :cond_clamped

    :cond_clamp_high
    const/16 v2, 0x170    # 368 max
    if-le v8, v2, :cond_clamped
    move v8, v2

    :cond_clamped
    iget v2, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->d:I
    if-ne v8, v2, :cond_dispatch
    return-void

    :cond_dispatch
    iget-object v1, v1, LC1/b;->f:LA1/h;
    if-eqz v1, :cond_fallback
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual {v1, v0}, LA1/h;->accept(Ljava/lang/Object;)V
    goto :cond_exit

    :cond_fallback
    invoke-virtual {v0, v8}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->e(I)Z
    move-result v1
    if-eqz v1, :cond_exit
    iput v8, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->d:I

    :cond_exit
    return-void
.end method
