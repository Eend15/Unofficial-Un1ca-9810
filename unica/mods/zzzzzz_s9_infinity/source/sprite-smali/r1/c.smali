.class public final Lr1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Li2/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Li2/b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "weatherEffectPreference"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lr1/c;->b:Li2/b;

    return-void
.end method

.method public static final a(Lr1/c;)Z
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lr1/c;->b:Li2/b;

    iget-object v3, v2, LD4/a;->d:Ljava/lang/Object;

    check-cast v3, Landroid/content/SharedPreferences;

    const-string v4, "weather_time_stamp"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/32 v7, 0x5265c00

    cmp-long v3, v5, v7

    const/4 v7, 0x0

    const-string v8, "WeatherApiRepository"

    if-lez v3, :cond_2

    invoke-virtual {v2, v4, v0, v1}, LD4/a;->D0(Ljava/lang/String;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkTimeDiff : true, timeDiff : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lr1/c;->c()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v7

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    if-eqz p0, :cond_3

    move v7, v0

    goto :goto_2

    :cond_2
    const-string p0, "checkTimeDiff : false, timeDiff : "

    invoke-static {p0, v5, v6}, Li4/b;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v8, p0, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return v7
.end method


# virtual methods
.method public final b()Z
    .locals 5

    iget-object p0, p0, Lr1/c;->a:Landroid/content/Context;

    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.UserManager"

    invoke-static {v0, v1}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    const-string v1, "User unlocked : "

    invoke-static {v1, v0}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "WeatherApiRepository"

    invoke-static {v4, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/weather/api/WeatherCompatApi;->INSTANCE:Lcom/samsung/android/weather/api/WeatherCompatApi;

    invoke-virtual {v0, p0}, Lcom/samsung/android/weather/api/WeatherCompatApi;->hasWeatherApp(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "Weather app available : "

    invoke-static {v1, v0}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/weather/api/WeatherApiConfigurator;->INSTANCE:Lcom/samsung/android/weather/api/WeatherApiConfigurator;

    invoke-virtual {v0, p0}, Lcom/samsung/android/weather/api/WeatherApiConfigurator;->init(Landroid/content/Context;)I

    move-result p0

    const-string v0, "Weather init result : "

    invoke-static {p0, v0}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    const-string v0, "Can query weather info : "

    invoke-static {v0, p0}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lr1/c;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/weather/api/WeatherSettingApi;->INSTANCE:Lcom/samsung/android/weather/api/WeatherSettingApi;

    iget-object p0, p0, Lr1/c;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/samsung/android/weather/api/WeatherSettingApi;->getFavoriteKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "Current favorite location = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "WeatherApiRepository"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "cityId:represent"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final d()Lcom/samsung/android/weather/api/entity/weather/Weather;
    .locals 6

    invoke-virtual {p0}, Lr1/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/weather/api/WeatherApi;->INSTANCE:Lcom/samsung/android/weather/api/WeatherApi;

    iget-object p0, p0, Lr1/c;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/samsung/android/weather/api/WeatherApi;->getFavoriteWeather(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/weather/Weather;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Favorite city weather = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "WeatherApiRepository"

    invoke-static {v5, v2, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/samsung/android/weather/api/WeatherApi;->getCurrentLocationWeather(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/weather/Weather;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current city weather = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_1
    return-object v1
.end method
