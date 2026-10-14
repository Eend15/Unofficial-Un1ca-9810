.class public final Ls1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr1/c;

.field public final b:Ls1/c;


# direct methods
.method public constructor <init>(Lr1/c;Ls1/c;)V
    .locals 1

    const-string v0, "weatherRepository"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestToUpdateWeather"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/b;->a:Lr1/c;

    iput-object p2, p0, Ls1/b;->b:Ls1/c;

    return-void
.end method

.method public static b(Ljava/util/ArrayList;)Lq1/a;
    .locals 22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq1/b;

    iget-wide v4, v3, Lq1/b;->a:J

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cur time = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", weather time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "GetCurrentWeatherData"

    invoke-static {v6, v4, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v9, v3, Lq1/b;->a:J

    cmp-long v4, v9, v0

    if-lez v4, :cond_0

    new-instance v0, Lq1/a;

    const-wide/16 v15, 0x0

    const/16 v21, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    iget v12, v3, Lq1/b;->c:I

    iget v13, v3, Lq1/b;->b:F

    const/4 v14, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v21}, Lq1/a;-><init>(Ljava/lang/String;JLjava/lang/String;IFLjava/lang/String;JJJI)V

    return-object v0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static/range {p0 .. p0}, Lr3/j;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq1/b;

    new-instance v16, Lq1/a;

    iget-wide v3, v0, Lq1/b;->a:J

    const-wide/16 v9, 0x0

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget v6, v0, Lq1/b;->c:I

    iget v7, v0, Lq1/b;->b:F

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lq1/a;-><init>(Ljava/lang/String;JLjava/lang/String;IFLjava/lang/String;JJJI)V

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    :goto_0
    return-object v16
.end method


# virtual methods
.method public final a(Ls1/a;)Lq1/a;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get current weather data request : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "GetCurrentWeatherData"

    invoke-static {v5, v2, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Ls1/b;->a:Lr1/c;

    iget-object v4, v2, Lr1/c;->b:Li2/b;

    invoke-virtual {v4}, Li2/b;->F0()Z

    move-result v4

    const/4 v8, 0x0

    if-eqz v4, :cond_2

    iget-object v4, v2, Lr1/c;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v4, "content://com.samsung.android.wallpaper.live.weather.test"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v4}, Lp4/g;->M(Landroid/database/Cursor;)Lq1/a;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v8}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v4, v8}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :goto_0
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v4, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    :goto_1
    move-object v9, v8

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v2}, Lr1/c;->d()Lcom/samsung/android/weather/api/entity/weather/Weather;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v24, Lq1/a;

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getLocation()Lcom/samsung/android/weather/api/entity/weather/Location;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/weather/api/entity/weather/Location;->getCityName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getTime()Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getEpochTime()J

    move-result-wide v11

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getTime()Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getTimeZone()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getIconNum()I

    move-result v14

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/weather/api/entity/weather/Temp;->getValue()F

    move-result v15

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getWeatherText()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getLocation()Lcom/samsung/android/weather/api/entity/weather/Location;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/weather/api/entity/weather/Location;->getUpdateTime()J

    move-result-wide v17

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getSunrise()Lcom/samsung/android/weather/api/entity/weather/Sunrise;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/samsung/android/weather/api/entity/weather/Sunrise;->getEpochTime()J

    move-result-wide v19

    goto :goto_2

    :cond_3
    const-wide/16 v19, 0x0

    :goto_2
    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getSunset()Lcom/samsung/android/weather/api/entity/weather/Sunset;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/samsung/android/weather/api/entity/weather/Sunset;->getEpochTime()J

    move-result-wide v21

    goto :goto_3

    :cond_4
    const-wide/16 v21, 0x0

    :goto_3
    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getSunrise()Lcom/samsung/android/weather/api/entity/weather/Sunrise;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/Sunrise;->getArcticType()Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    move-result-object v4

    if-nez v4, :cond_6

    :cond_5
    sget-object v4, Lcom/samsung/android/weather/api/entity/weather/ArcticType;->NORMAL:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    move-object/from16 v9, v24

    invoke-direct/range {v9 .. v23}, Lq1/a;-><init>(Ljava/lang/String;JLjava/lang/String;IFLjava/lang/String;JJJI)V

    :goto_4
    iget-boolean v4, v1, Ls1/a;->b:Z

    if-eqz v4, :cond_7

    return-object v9

    :cond_7
    invoke-virtual {v2}, Lr1/c;->d()Lcom/samsung/android/weather/api/entity/weather/Weather;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getHourlyObservations()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/weather/api/entity/weather/HourlyObservation;

    new-instance v11, Lq1/b;

    invoke-virtual {v10}, Lcom/samsung/android/weather/api/entity/weather/HourlyObservation;->getTime()Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getEpochTime()J

    move-result-wide v12

    invoke-virtual {v10}, Lcom/samsung/android/weather/api/entity/weather/HourlyObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/weather/api/entity/weather/Temp;->getValue()F

    move-result v14

    invoke-virtual {v10}, Lcom/samsung/android/weather/api/entity/weather/HourlyObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getIconNum()I

    move-result v10

    invoke-direct {v11, v12, v13, v14, v10}, Lq1/b;-><init>(JFI)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    const-string v2, "Returns near expected weather data."

    if-nez v9, :cond_a

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {v4}, Ls1/b;->b(Ljava/util/ArrayList;)Lq1/a;

    move-result-object v8

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v5, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    return-object v8

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v9, Lq1/a;->b:J

    sub-long v14, v10, v12

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v6, "Cur time = "

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", cur weather time = "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", diff = "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/32 v6, 0xa4cb80

    cmp-long v8, v14, v6

    if-lez v8, :cond_10

    iget-boolean v1, v1, Ls1/a;->a:Z

    if-eqz v1, :cond_c

    iget-object v0, v0, Ls1/b;->b:Ls1/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v8, "RequestToUpdateWeather"

    const-string v10, "Send update weather request to daemon if needed."

    invoke-static {v8, v10, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v1, v0, Ls1/c;->a:Lr1/a;

    iget-object v12, v1, LD4/a;->d:Ljava/lang/Object;

    check-cast v12, Landroid/content/SharedPreferences;

    const-string v13, "last_requested_time"

    const-wide/16 v14, 0x0

    invoke-interface {v12, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long v14, v10, v6

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v3, "curTime = "

    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", lastRequestedTime = "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", timeDiff = "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v8, v3, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-gez v3, :cond_b

    const-string v3, "Time differ is under 0. So we should store current time in preference."

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v8, v3, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v13, v10, v11}, LD4/a;->D0(Ljava/lang/String;J)V

    move-wide/from16 v14, v16

    :cond_b
    const-wide/32 v16, 0xa4cb80

    cmp-long v3, v14, v16

    if-lez v3, :cond_c

    const-string v3, "Send update weather request to daemon."

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v8, v3, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v13, v10, v11}, LD4/a;->D0(Ljava/lang/String;J)V

    iget-object v0, v0, Ls1/c;->b:Lr1/c;

    invoke-virtual {v0}, Lr1/c;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    new-array v1, v6, [Ljava/lang/Object;

    const-string v3, "WeatherApiRepository"

    const-string v6, "Request to update the weather."

    invoke-static {v3, v6, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/weather/api/WeatherCommandApi;->INSTANCE:Lcom/samsung/android/weather/api/WeatherCommandApi;

    iget-object v0, v0, Lr1/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/samsung/android/weather/api/WeatherCommandApi;->refresh(Landroid/content/Context;)Z

    :cond_c
    invoke-static {v4}, Ls1/b;->b(Ljava/util/ArrayList;)Lq1/a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_d

    iget-wide v1, v9, Lq1/a;->i:J

    iput-wide v1, v0, Lq1/a;->i:J

    :cond_d
    if-eqz v0, :cond_e

    iget-wide v1, v9, Lq1/a;->h:J

    iput-wide v1, v0, Lq1/a;->h:J

    :cond_e
    if-eqz v0, :cond_f

    iget v1, v9, Lq1/a;->j:I

    iput v1, v0, Lq1/a;->j:I

    :cond_f
    return-object v0

    :cond_10
    return-object v9
.end method
