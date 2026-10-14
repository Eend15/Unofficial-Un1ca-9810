.class public final Lcom/samsung/android/weather/api/entity/weather/WeatherKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\u001a\n\u0010\u0006\u001a\u00020\u0007*\u00020\u0008\u001a\n\u0010\t\u001a\u00020\u0007*\u00020\u0008\u001a\u0010\u0010\n\u001a\u00020\u0007*\u0008\u0012\u0004\u0012\u00020\u00080\u000b\u001a\u0010\u0010\u000c\u001a\u00020\u0007*\u0008\u0012\u0004\u0012\u00020\u00080\u000b\u001a\u0010\u0010\r\u001a\u00020\u0007*\u0008\u0012\u0004\u0012\u00020\u00080\u000b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0003X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "ABNORMAL_TEMP",
        "",
        "ABNORMAL_VALUE",
        "",
        "KEY_CURRENT_LOCATION",
        "KEY_REPRESENT_LOCATION",
        "getUpdateTime",
        "",
        "Lcom/samsung/android/weather/api/entity/weather/Weather;",
        "getForecastExpireTime",
        "getMinUpdateTime",
        "",
        "getObservationExpireTime",
        "getMinForecastExpireTime",
        "weather-api-1.0.46_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ABNORMAL_TEMP:F = 999.0f

.field public static final ABNORMAL_VALUE:Ljava/lang/String; = "--"

.field public static final KEY_CURRENT_LOCATION:Ljava/lang/String; = "cityId:current"

.field public static final KEY_REPRESENT_LOCATION:Ljava/lang/String; = "cityId:represent"


# direct methods
.method public static synthetic a(Lcom/samsung/android/weather/api/entity/weather/Weather;Lcom/samsung/android/weather/api/entity/weather/Weather;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/weather/api/entity/weather/WeatherKt;->getMinForecastExpireTime$lambda$6$lambda$4(Lcom/samsung/android/weather/api/entity/weather/Weather;Lcom/samsung/android/weather/api/entity/weather/Weather;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(LK/c;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/weather/api/entity/weather/WeatherKt;->getMinForecastExpireTime$lambda$6$lambda$5(LE3/c;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/samsung/android/weather/api/entity/weather/Weather;Lcom/samsung/android/weather/api/entity/weather/Weather;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/weather/api/entity/weather/WeatherKt;->getMinUpdateTime$lambda$2$lambda$0(Lcom/samsung/android/weather/api/entity/weather/Weather;Lcom/samsung/android/weather/api/entity/weather/Weather;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(LK/c;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/weather/api/entity/weather/WeatherKt;->getMinUpdateTime$lambda$2$lambda$1(LE3/c;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final getForecastExpireTime(Lcom/samsung/android/weather/api/entity/weather/Weather;)J
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getHourlyObservations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getHourlyObservations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/weather/api/entity/weather/HourlyObservation;

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/HourlyObservation;->getTime()Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getExpireTime()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getDailyObservations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getDailyObservations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/weather/api/entity/weather/DailyObservation;

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/DailyObservation;->getTime()Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getExpireTime()J

    move-result-wide v1

    :cond_1
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getMinForecastExpireTime(Ljava/util/List;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/weather/Weather;",
            ">;)J"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, LK/c;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LK/c;-><init>(I)V

    new-instance v1, Lcom/samsung/android/weather/api/entity/weather/a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/weather/api/entity/weather/a;-><init>(LE3/c;I)V

    invoke-static {p0, v1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "min(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/samsung/android/weather/api/entity/weather/Weather;

    invoke-static {p0}, Lcom/samsung/android/weather/api/entity/weather/WeatherKt;->getForecastExpireTime(Lcom/samsung/android/weather/api/entity/weather/Weather;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p0

    :goto_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    instance-of v1, p0, Lq3/g;

    if-eqz v1, :cond_0

    move-object p0, v0

    :cond_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final getMinForecastExpireTime$lambda$6$lambda$4(Lcom/samsung/android/weather/api/entity/weather/Weather;Lcom/samsung/android/weather/api/entity/weather/Weather;)I
    .locals 2

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/samsung/android/weather/api/entity/weather/WeatherKt;->getForecastExpireTime(Lcom/samsung/android/weather/api/entity/weather/Weather;)J

    move-result-wide v0

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/samsung/android/weather/api/entity/weather/WeatherKt;->getForecastExpireTime(Lcom/samsung/android/weather/api/entity/weather/Weather;)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static final getMinForecastExpireTime$lambda$6$lambda$5(LE3/c;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, LE3/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final getMinUpdateTime(Ljava/util/List;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/weather/Weather;",
            ">;)J"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, LK/c;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LK/c;-><init>(I)V

    new-instance v1, Lcom/samsung/android/weather/api/entity/weather/a;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/weather/api/entity/weather/a;-><init>(LE3/c;I)V

    invoke-static {p0, v1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "min(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/samsung/android/weather/api/entity/weather/Weather;

    invoke-static {p0}, Lcom/samsung/android/weather/api/entity/weather/WeatherKt;->getUpdateTime(Lcom/samsung/android/weather/api/entity/weather/Weather;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p0

    :goto_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    instance-of v1, p0, Lq3/g;

    if-eqz v1, :cond_0

    move-object p0, v0

    :cond_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final getMinUpdateTime$lambda$2$lambda$0(Lcom/samsung/android/weather/api/entity/weather/Weather;Lcom/samsung/android/weather/api/entity/weather/Weather;)I
    .locals 2

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/samsung/android/weather/api/entity/weather/WeatherKt;->getUpdateTime(Lcom/samsung/android/weather/api/entity/weather/Weather;)J

    move-result-wide v0

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/samsung/android/weather/api/entity/weather/WeatherKt;->getUpdateTime(Lcom/samsung/android/weather/api/entity/weather/Weather;)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static final getMinUpdateTime$lambda$2$lambda$1(LE3/c;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, LE3/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final getObservationExpireTime(Ljava/util/List;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/weather/Weather;",
            ">;)J"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/weather/api/entity/weather/Weather;

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getTime()Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getExpireTime()J

    move-result-wide v0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/weather/api/entity/weather/Weather;

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getTime()Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getExpireTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    move-wide v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public static final getUpdateTime(Lcom/samsung/android/weather/api/entity/weather/Weather;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getTime()Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getUpdateTime()J

    move-result-wide v0

    return-wide v0
.end method
