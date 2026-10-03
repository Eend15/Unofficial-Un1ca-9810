.class public final LA1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LA1/n;->a:I

    iput-object p2, p0, LA1/n;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method private final b(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    iget p0, p0, LA1/n;->a:I

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget v0, p0, LA1/n;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget-object v1, p0, LA1/n;->b:Ljava/lang/Object;

    check-cast v1, Ln1/a;

    iget-object v1, v1, Ln1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, LA1/n;->b:Ljava/lang/Object;

    check-cast v2, Ln1/a;

    iget-object v2, v2, Ln1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, LA1/n;->b:Ljava/lang/Object;

    check-cast p0, Ln1/a;

    iget-object p0, p0, Ln1/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln1/b;

    invoke-virtual {v0, p1}, Ln1/b;->a(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    iget-object p0, p0, LA1/n;->b:Ljava/lang/Object;

    check-cast p0, LA1/o;

    iput p1, p0, LA1/o;->p:F

    iget-object v0, p0, LA1/o;->e:LA1/f;

    invoke-virtual {v0, p1}, LA1/f;->d(F)V

    iget p1, p0, LA1/o;->p:F

    iget v0, p0, LA1/o;->b:F

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, LA1/o;->e:LA1/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    iget p1, p0, LA1/o;->p:F

    iput p1, p0, LA1/o;->b:F

    iget-object p1, p0, LA1/o;->j:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, LA1/o;->j:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
