.class public final Lcom/samsung/android/weather/api/entity/weather/ForecastTimeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004H\u0000\u00a8\u0006\t"
    }
    d2 = {
        "isDay",
        "",
        "Lcom/samsung/android/weather/api/entity/weather/ForecastTime;",
        "currentTime",
        "",
        "checkDayOrNight",
        "",
        "sunRiseTime",
        "sunSetTime",
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


# direct methods
.method public static final checkDayOrNight(JJJ)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p0

    if-eqz v2, :cond_4

    cmp-long v2, v0, p2

    if-eqz v2, :cond_4

    cmp-long v0, v0, p4

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-wide/32 v0, 0x5265c00

    rem-long/2addr p0, v0

    rem-long/2addr p2, v0

    rem-long/2addr p4, v0

    cmp-long v0, p2, p4

    const-wide/16 v1, 0x1

    if-gez v0, :cond_1

    add-long/2addr p2, v1

    cmp-long p2, p2, p0

    if-gtz p2, :cond_2

    cmp-long p0, p0, p4

    if-gtz p0, :cond_2

    goto :goto_0

    :cond_1
    add-long/2addr p4, v1

    cmp-long p4, p4, p0

    if-gtz p4, :cond_3

    cmp-long p0, p0, p2

    if-gtz p0, :cond_3

    :cond_2
    const/4 p0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_4
    :goto_2
    const/4 p0, 0x3

    return p0
.end method

.method public static final isDay(Lcom/samsung/android/weather/api/entity/weather/ForecastTime;J)Z
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p1

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getSunRiseTime()J

    move-result-wide v4

    cmp-long v2, v0, v4

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getSunSetTime()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDayOrNight()I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getSunRiseTime()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getSunSetTime()J

    move-result-wide v8

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/weather/api/entity/weather/ForecastTimeKt;->checkDayOrNight(JJJ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->setDayOrNight(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getArcticNightType()I

    move-result p1

    if-eq p1, v3, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDayOrNight()I

    move-result p0

    if-ne v3, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_0
    return v3
.end method
