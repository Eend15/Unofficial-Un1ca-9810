.class public final Lj3/a;
.super Lw3/g;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public final synthetic d:I

.field public e:I

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lu3/d;I)V
    .locals 0

    iput p3, p0, Lj3/a;->d:I

    iput-object p1, p0, Lj3/a;->f:Landroid/content/Context;

    invoke-direct {p0, p2}, Lw3/g;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lu3/d;)Lu3/d;
    .locals 1

    iget p1, p0, Lj3/a;->d:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lj3/a;

    iget-object p0, p0, Lj3/a;->f:Landroid/content/Context;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p2, v0}, Lj3/a;-><init>(Landroid/content/Context;Lu3/d;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lj3/a;

    iget-object p0, p0, Lj3/a;->f:Landroid/content/Context;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lj3/a;-><init>(Landroid/content/Context;Lu3/d;I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lj3/a;

    iget-object p0, p0, Lj3/a;->f:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lj3/a;-><init>(Landroid/content/Context;Lu3/d;I)V

    return-object p1

    :pswitch_2
    new-instance p1, Lj3/a;

    iget-object p0, p0, Lj3/a;->f:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lj3/a;-><init>(Landroid/content/Context;Lu3/d;I)V

    return-object p1

    :pswitch_3
    new-instance p1, Lj3/a;

    iget-object p0, p0, Lj3/a;->f:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj3/a;-><init>(Landroid/content/Context;Lu3/d;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lj3/a;->d:I

    check-cast p1, LW4/t;

    check-cast p2, Lu3/d;

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lj3/a;

    iget-object p0, p0, Lj3/a;->f:Landroid/content/Context;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p2, v0}, Lj3/a;-><init>(Landroid/content/Context;Lu3/d;I)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    invoke-virtual {p1, p0}, Lj3/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p1, Lj3/a;

    iget-object p0, p0, Lj3/a;->f:Landroid/content/Context;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lj3/a;-><init>(Landroid/content/Context;Lu3/d;I)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    invoke-virtual {p1, p0}, Lj3/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p1, Lj3/a;

    iget-object p0, p0, Lj3/a;->f:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lj3/a;-><init>(Landroid/content/Context;Lu3/d;I)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    invoke-virtual {p1, p0}, Lj3/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance p1, Lj3/a;

    iget-object p0, p0, Lj3/a;->f:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lj3/a;-><init>(Landroid/content/Context;Lu3/d;I)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    invoke-virtual {p1, p0}, Lj3/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance p1, Lj3/a;

    iget-object p0, p0, Lj3/a;->f:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj3/a;-><init>(Landroid/content/Context;Lu3/d;I)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    invoke-virtual {p1, p0}, Lj3/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lm3/h;->a:Lm3/h;

    sget-object v1, Lq3/m;->a:Lq3/m;

    iget-object v2, p0, Lj3/a;->f:Landroid/content/Context;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v4, 0x1

    iget v5, p0, Lj3/a;->d:I

    packed-switch v5, :pswitch_data_0

    sget-object v5, Lv3/a;->d:Lv3/a;

    iget v6, p0, Lj3/a;->e:I

    if-eqz v6, :cond_1

    if-ne v6, v4, :cond_0

    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    iput v4, p0, Lj3/a;->e:I

    invoke-virtual {v0, v2, p0}, Lm3/h;->a(Landroid/content/Context;Lu3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v5, :cond_2

    move-object v1, v5

    :cond_2
    :goto_0
    return-object v1

    :pswitch_0
    sget-object v5, Lv3/a;->d:Lv3/a;

    iget v6, p0, Lj3/a;->e:I

    if-eqz v6, :cond_4

    if-ne v6, v4, :cond_3

    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    iput v4, p0, Lj3/a;->e:I

    invoke-virtual {v0, v2, p0}, Lm3/h;->a(Landroid/content/Context;Lu3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v5, :cond_5

    move-object v1, v5

    :cond_5
    :goto_1
    return-object v1

    :pswitch_1
    sget-object v5, Lv3/a;->d:Lv3/a;

    iget v6, p0, Lj3/a;->e:I

    if-eqz v6, :cond_7

    if-ne v6, v4, :cond_6

    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    iput v4, p0, Lj3/a;->e:I

    invoke-virtual {v0, v2, p0}, Lm3/h;->a(Landroid/content/Context;Lu3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v5, :cond_8

    move-object v1, v5

    :cond_8
    :goto_2
    return-object v1

    :pswitch_2
    sget-object v5, Lv3/a;->d:Lv3/a;

    iget v6, p0, Lj3/a;->e:I

    if-eqz v6, :cond_a

    if-ne v6, v4, :cond_9

    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    iput v4, p0, Lj3/a;->e:I

    invoke-virtual {v0, v2, p0}, Lm3/h;->a(Landroid/content/Context;Lu3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v5, :cond_b

    move-object v1, v5

    :cond_b
    :goto_3
    return-object v1

    :pswitch_3
    sget-object v0, Lv3/a;->d:Lv3/a;

    iget v5, p0, Lj3/a;->e:I

    if-eqz v5, :cond_d

    if-ne v5, v4, :cond_c

    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    invoke-static {v2}, LR3/f;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_18

    sget-object p1, La/d;->a:La/d;

    iput v4, p0, Lj3/a;->e:I

    sget-object p1, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-nez p1, :cond_e

    invoke-static {}, LR3/f;->b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    move-result-object p1

    sput-object p1, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    :cond_e
    sget-object p1, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    const/4 v3, 0x0

    if-eqz p1, :cond_17

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    invoke-static {v4}, Lm3/d;->d(Lcom/samsung/android/weather/api/entity/profile/Profile;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-interface {p1, v4}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateSetting(Lcom/samsung/android/weather/api/entity/settings/Setting;)V

    invoke-static {v2, v4}, Lm3/d;->j(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/settings/Setting;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateWeather(Ljava/util/List;)I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/samsung/android/weather/api/entity/weather/Weather;

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getForecastChange()Lcom/samsung/android/weather/api/entity/weather/internal/ForecastChange;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/ForecastChange;->getCode()I

    move-result v5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_5

    :cond_10
    move-object v6, v3

    :goto_5
    if-nez v6, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0x8

    if-eq v5, v7, :cond_13

    :goto_6
    if-nez v6, :cond_12

    goto :goto_4

    :cond_12
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_f

    :cond_13
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    move-object v3, p1

    :cond_15
    if-eqz v3, :cond_16

    sget-object p1, La/d;->d:Lkotlinx/coroutines/flow/e;

    invoke-virtual {p1, v3, p0}, Lkotlinx/coroutines/flow/e;->a(Ljava/lang/Object;Lw3/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lv3/a;->d:Lv3/a;

    if-ne p0, p1, :cond_16

    goto :goto_7

    :cond_16
    move-object p0, v1

    :goto_7
    if-ne p0, v0, :cond_19

    move-object v1, v0

    goto :goto_8

    :cond_17
    const-string p0, "storage"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_18
    const-string p0, "WeatherApiConfigurator.init should be done."

    const-string p1, "WPI"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    :cond_19
    :goto_8
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
