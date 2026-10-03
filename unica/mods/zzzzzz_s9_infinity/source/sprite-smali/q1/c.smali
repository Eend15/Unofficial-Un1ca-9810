.class public final Lq1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:I

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:Li2/b;


# direct methods
.method public constructor <init>(JJJI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lq1/c;->a:J

    iput-wide p3, p0, Lq1/c;->b:J

    iput-wide p5, p0, Lq1/c;->c:J

    iput p7, p0, Lq1/c;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lq1/c;->e:J

    iput-wide v0, p0, Lq1/c;->f:J

    iput-wide v0, p0, Lq1/c;->g:J

    iput-wide v0, p0, Lq1/c;->h:J

    iput-wide v0, p0, Lq1/c;->i:J

    sget-object p7, Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;->d:Landroidx/recyclerview/widget/b;

    new-instance v2, Li2/b;

    iget-object p7, p7, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p7, Lh3/b;

    invoke-interface {p7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/Context;

    invoke-direct {v2, p7}, Li2/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lq1/c;->j:Li2/b;

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    cmp-long p1, p5, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 p1, 0x1b7740

    sub-long v0, p3, p1

    iput-wide v0, p0, Lq1/c;->e:J

    add-long/2addr p3, p1

    iput-wide p3, p0, Lq1/c;->f:J

    sub-long v0, p5, p1

    iput-wide v0, p0, Lq1/c;->h:J

    add-long/2addr p5, p1

    iput-wide p5, p0, Lq1/c;->i:J

    add-long/2addr p3, v0

    const/4 p1, 0x2

    int-to-long p1, p1

    div-long/2addr p3, p1

    iput-wide p3, p0, Lq1/c;->g:J

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 14

    iget-object v0, p0, Lq1/c;->j:Li2/b;

    const/4 v1, 0x0

    const-string v2, "weatherEffectPreference"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Li2/b;->F0()Z

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string v5, "WeatherTimeData"

    if-eqz v0, :cond_1

    const-string v0, "Test mode! set dummy noon position data"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lq1/c;->j:Li2/b;

    if-eqz p0, :cond_0

    iget-object p0, p0, LD4/a;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/SharedPreferences;

    const-string v0, "test_data_weather_noon_position"

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get noon position. Morning end : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lq1/c;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", evening start : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lq1/c;->h:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", arc night : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lq1/c;->d:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v9}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    const-string p0, "Return position 2 cause it is White Arctic"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v5, p0, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x2

    return p0

    :cond_2
    invoke-virtual {p0}, Lq1/c;->b()Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Weather time : "

    invoke-static {v9, v8}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v8, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->NOON:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    if-eq v0, v8, :cond_3

    sget-object v8, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->AFTERNOON:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    if-eq v0, v8, :cond_3

    const-string p0, "Current weather time isn\'t noon. So cannot calculate noon position."

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v5, p0, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_3
    sub-long/2addr v6, v1

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_4

    const-string p0, "Wrong noon duration = "

    invoke-static {p0, v6, v7}, Li4/b;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v5, p0, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_4
    const/4 v0, 0x5

    int-to-long v10, v0

    div-long/2addr v6, v10

    iget-wide v12, p0, Lq1/c;->a:J

    sub-long/2addr v12, v1

    div-long/2addr v12, v6

    cmp-long p0, v12, v8

    if-ltz p0, :cond_5

    cmp-long p0, v12, v10

    if-ltz p0, :cond_6

    :cond_5
    const-wide/16 v12, -0x1

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "divs = 5, pos dur = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", cur pos = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v5, p0, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    long-to-int p0, v12

    return p0

    :cond_7
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1
.end method

.method public final b()Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;
    .locals 9

    iget-object v0, p0, Lq1/c;->j:Li2/b;

    const/4 v1, 0x0

    const-string v2, "weatherEffectPreference"

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Li2/b;->F0()Z

    move-result v0

    const/4 v3, 0x0

    const-string v4, "WeatherTimeData"

    if-eqz v0, :cond_1

    const-string v0, "Test mode! set dummy time data"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->Companion:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime$Companion;

    iget-object p0, p0, Lq1/c;->j:Li2/b;

    if-eqz p0, :cond_0

    iget-object p0, p0, LD4/a;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/SharedPreferences;

    const-string v1, "none"

    const-string v2, "test_data_time"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime$Companion;->fromStringValue(Ljava/lang/String;)Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-wide v0, p0, Lq1/c;->a:J

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-nez v2, :cond_2

    sget-object p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->NONE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    return-object p0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "arcNightType = "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lq1/c;->d:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v4, v2, v8}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    if-ne v7, v2, :cond_3

    const-string p0, "Return noon cause it is White Arctic"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->NOON:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    return-object p0

    :cond_3
    const/4 v2, 0x2

    if-ne v7, v2, :cond_4

    const-string p0, "Return evening cause it is Polar Arctic."

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->EVENING:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    return-object p0

    :cond_4
    iget-wide v2, p0, Lq1/c;->b:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_a

    iget-wide v2, p0, Lq1/c;->c:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    iget-wide v2, p0, Lq1/c;->f:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_6

    iget-wide v4, p0, Lq1/c;->e:J

    cmp-long v4, v4, v0

    if-gtz v4, :cond_6

    sget-object p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->MORNING:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    goto :goto_0

    :cond_6
    iget-wide v4, p0, Lq1/c;->i:J

    cmp-long v4, v0, v4

    iget-wide v5, p0, Lq1/c;->h:J

    if-gtz v4, :cond_7

    cmp-long v4, v5, v0

    if-gtz v4, :cond_7

    sget-object p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->EVENING:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    goto :goto_0

    :cond_7
    iget-wide v7, p0, Lq1/c;->g:J

    cmp-long p0, v0, v7

    if-gtz p0, :cond_8

    cmp-long p0, v2, v0

    if-gtz p0, :cond_8

    sget-object p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->NOON:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    goto :goto_0

    :cond_8
    cmp-long p0, v0, v5

    if-gtz p0, :cond_9

    cmp-long p0, v7, v0

    if-gtz p0, :cond_9

    sget-object p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->AFTERNOON:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    goto :goto_0

    :cond_9
    sget-object p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->NIGHT:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    :goto_0
    return-object p0

    :cond_a
    :goto_1
    sget-object p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->NONE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    return-object p0

    :cond_b
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lq1/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lq1/c;

    iget-wide v3, p1, Lq1/c;->a:J

    iget-wide v5, p0, Lq1/c;->a:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lq1/c;->b:J

    iget-wide v5, p1, Lq1/c;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lq1/c;->c:J

    iget-wide v5, p1, Lq1/c;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lq1/c;->d:I

    iget v3, p1, Lq1/c;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lq1/c;->e:J

    iget-wide v5, p1, Lq1/c;->e:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lq1/c;->f:J

    iget-wide v5, p1, Lq1/c;->f:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lq1/c;->g:J

    iget-wide v5, p1, Lq1/c;->g:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lq1/c;->h:J

    iget-wide v5, p1, Lq1/c;->h:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lq1/c;->i:J

    iget-wide p0, p1, Lq1/c;->i:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lq1/c;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lq1/c;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lq1/c;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lq1/c;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lq1/c;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lq1/c;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lq1/c;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lq1/c;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lq1/c;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WeatherTimeData(current="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lq1/c;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sunrise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lq1/c;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sunset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lq1/c;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", arcNightType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lq1/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", morningStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lq1/c;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", morningEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lq1/c;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", noonEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lq1/c;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eveningStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lq1/c;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eveningEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lq1/c;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
