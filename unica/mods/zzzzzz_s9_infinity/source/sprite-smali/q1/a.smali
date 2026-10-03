.class public final Lq1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:F

.field public final f:Ljava/lang/String;

.field public final g:J

.field public h:J

.field public i:J

.field public j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;IFLjava/lang/String;JJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1/a;->a:Ljava/lang/String;

    iput-wide p2, p0, Lq1/a;->b:J

    iput-object p4, p0, Lq1/a;->c:Ljava/lang/String;

    iput p5, p0, Lq1/a;->d:I

    iput p6, p0, Lq1/a;->e:F

    iput-object p7, p0, Lq1/a;->f:Ljava/lang/String;

    iput-wide p8, p0, Lq1/a;->g:J

    iput-wide p10, p0, Lq1/a;->h:J

    iput-wide p12, p0, Lq1/a;->i:J

    iput p14, p0, Lq1/a;->j:I

    return-void
.end method


# virtual methods
.method public final a()Lq1/c;
    .locals 9

    new-instance v8, Lq1/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lq1/a;->h:J

    iget-wide v5, p0, Lq1/a;->i:J

    iget v7, p0, Lq1/a;->j:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lq1/c;-><init>(JJJI)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "time data : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CurrentWeatherData"

    invoke-static {v1, p0, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v8
.end method

.method public final b()Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;
    .locals 3

    invoke-virtual {p0}, Lq1/a;->a()Lq1/c;

    move-result-object p0

    invoke-virtual {p0}, Lq1/c;->b()Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get current time type = "

    invoke-static {v1, v0}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CurrentWeatherData"

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public final c()Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;
    .locals 5

    sget-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract;->INSTANCE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract;

    iget v1, p0, Lq1/a;->d:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract;->convertToWeatherEffect(I)Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->SUNNY:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    const/4 v3, 0x0

    const-string v4, "CurrentWeatherData"

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lq1/a;->b()Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract;->isSRDayTime(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Remove sunny effect. Because it is night time."

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->NONE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "get current weather effect type = "

    invoke-static {v0, p0}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lq1/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lq1/a;

    iget-object v1, p1, Lq1/a;->a:Ljava/lang/String;

    iget-object v3, p0, Lq1/a;->a:Ljava/lang/String;

    invoke-static {v3, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lq1/a;->b:J

    iget-wide v5, p1, Lq1/a;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lq1/a;->c:Ljava/lang/String;

    iget-object v3, p1, Lq1/a;->c:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lq1/a;->d:I

    iget v3, p1, Lq1/a;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lq1/a;->e:F

    iget v3, p1, Lq1/a;->e:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lq1/a;->f:Ljava/lang/String;

    iget-object v3, p1, Lq1/a;->f:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lq1/a;->g:J

    iget-wide v5, p1, Lq1/a;->g:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lq1/a;->h:J

    iget-wide v5, p1, Lq1/a;->h:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lq1/a;->i:J

    iget-wide v5, p1, Lq1/a;->i:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget p0, p0, Lq1/a;->j:I

    iget p1, p1, Lq1/a;->j:I

    if-eq p0, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lq1/a;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-wide v3, p0, Lq1/a;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lq1/a;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget v1, p0, Lq1/a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget v3, p0, Lq1/a;->e:F

    invoke-static {v3, v1, v2}, Li4/b;->c(FII)I

    move-result v1

    iget-object v3, p0, Lq1/a;->f:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-wide v3, p0, Lq1/a;->g:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-wide v3, p0, Lq1/a;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-wide v3, p0, Lq1/a;->i:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget p0, p0, Lq1/a;->j:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-wide v0, p0, Lq1/a;->h:J

    iget-wide v2, p0, Lq1/a;->i:J

    iget v4, p0, Lq1/a;->j:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CurrentWeatherData(locationName="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lq1/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", currentTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lq1/a;->b:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", timeZone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lq1/a;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", iconNum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lq1/a;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", currentTemp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lq1/a;->e:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", text="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lq1/a;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", updateTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lq1/a;->g:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", sunriseTime="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", sunsetTime="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", arcNightType="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
