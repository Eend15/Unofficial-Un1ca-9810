.class public final synthetic LK/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceStubFactory;
.implements LE3/c;


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LK/c;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createStub(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, LK/c;->d:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/samsung/android/visual/ai/sdkcommon/IImageEditorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/visual/ai/sdkcommon/IImageEditorService;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/aicore/sdkcommon/IOnDeviceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aicore/sdkcommon/IOnDeviceService;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget p0, p0, LK/c;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lb5/b;

    check-cast p2, Lb5/b;

    iget-object p0, p1, Lb5/b;->a:Lc5/e;

    iget-object p1, p2, Lb5/b;->a:Lc5/e;

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    iget-object v0, p0, Lc5/e;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    const-string v1, "cityId:current"

    invoke-static {v0, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_5

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lc5/e;->a:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v0, p2

    :goto_1
    invoke-static {v0, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_6

    :cond_3
    if-eqz p0, :cond_4

    iget-object v0, p0, Lc5/e;->Z:Ljava/lang/Integer;

    goto :goto_2

    :cond_4
    move-object v0, p2

    :goto_2
    if-eqz p1, :cond_5

    iget-object v2, p1, Lc5/e;->Z:Ljava/lang/Integer;

    goto :goto_3

    :cond_5
    move-object v2, p2

    :goto_3
    invoke-static {v0, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p0, :cond_6

    iget-object p0, p0, Lc5/e;->a:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object p0, p2

    :goto_4
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    :goto_5
    const/4 p0, -0x1

    goto :goto_7

    :cond_7
    if-eqz p1, :cond_8

    iget-object p2, p1, Lc5/e;->a:Ljava/lang/String;

    :cond_8
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    :goto_6
    const/4 p0, 0x1

    goto :goto_7

    :cond_9
    if-eqz p1, :cond_b

    iget-object p1, p1, Lc5/e;->Z:Ljava/lang/Integer;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p0, :cond_a

    iget-object p0, p0, Lc5/e;->Z:Ljava/lang/Integer;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0, p1}, LF3/k;->h(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_a
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_7

    :cond_b
    const/4 p0, 0x0

    :goto_7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/samsung/android/weather/api/entity/weather/Weather;

    check-cast p2, Lcom/samsung/android/weather/api/entity/weather/Weather;

    invoke-static {p1, p2}, Lcom/samsung/android/weather/api/entity/weather/WeatherKt;->c(Lcom/samsung/android/weather/api/entity/weather/Weather;Lcom/samsung/android/weather/api/entity/weather/Weather;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/weather/Weather;

    check-cast p2, Lcom/samsung/android/weather/api/entity/weather/Weather;

    invoke-static {p1, p2}, Lcom/samsung/android/weather/api/entity/weather/WeatherKt;->a(Lcom/samsung/android/weather/api/entity/weather/Weather;Lcom/samsung/android/weather/api/entity/weather/Weather;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
