.class public final Lr2/a;
.super Lw3/g;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public final synthetic d:Lr2/b;


# direct methods
.method public constructor <init>(Lr2/b;Lu3/d;)V
    .locals 0

    iput-object p1, p0, Lr2/a;->d:Lr2/b;

    invoke-direct {p0, p2}, Lw3/g;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lu3/d;)Lu3/d;
    .locals 0

    new-instance p1, Lr2/a;

    iget-object p0, p0, Lr2/a;->d:Lr2/b;

    invoke-direct {p1, p0, p2}, Lr2/a;-><init>(Lr2/b;Lu3/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LW4/t;

    check-cast p2, Lu3/d;

    invoke-virtual {p0, p1, p2}, Lr2/a;->create(Ljava/lang/Object;Lu3/d;)Lu3/d;

    move-result-object p0

    check-cast p0, Lr2/a;

    sget-object p1, Lq3/m;->a:Lq3/m;

    invoke-virtual {p0, p1}, Lr2/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    const/4 v0, 0x1

    sget-object v1, Lv3/a;->d:Lv3/a;

    invoke-static/range {p1 .. p1}, Lp4/g;->X(Ljava/lang/Object;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "UpdateWeatherData"

    const-string v4, "Get weather data."

    invoke-static {v3, v4, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v2, p0

    iget-object v2, v2, Lr2/a;->d:Lr2/b;

    iget-object v4, v2, Lr2/b;->a:Ls1/b;

    new-instance v5, Ls1/a;

    invoke-direct {v5, v0, v1}, Ls1/a;-><init>(ZZ)V

    invoke-virtual {v4, v5}, Ls1/b;->a(Ls1/a;)Lq1/a;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Update weather data : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lp2/a;->b()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    const-string v7, "repository"

    iget-object v15, v2, Lr2/b;->d:Lp2/d;

    invoke-static {v15, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Lp2/d;->c(I)Lp2/c;

    move-result-object v7

    const/16 v16, 0x0

    if-eqz v7, :cond_0

    iget-object v7, v7, Lp2/c;->b:Landroidx/recyclerview/widget/y;

    goto :goto_1

    :cond_0
    move-object/from16 v7, v16

    :goto_1
    const-wide/16 v17, -0x1

    if-eqz v7, :cond_1

    iget-object v7, v7, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/flow/i;

    invoke-virtual {v7}, Lkotlinx/coroutines/flow/i;->i()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv2/a;

    if-eqz v7, :cond_1

    iget-object v8, v7, Lv2/a;->c:Landroid/graphics/Rect;

    iget-boolean v9, v7, Lv2/a;->f:Z

    iget-boolean v10, v7, Lv2/a;->g:Z

    iget-boolean v11, v7, Lv2/a;->h:Z

    iget-wide v12, v7, Lv2/a;->i:J

    move-object/from16 v19, v8

    move/from16 v26, v9

    move/from16 v27, v10

    move/from16 v28, v11

    move-wide/from16 v29, v12

    goto :goto_2

    :cond_1
    move/from16 v26, v1

    move/from16 v27, v26

    move/from16 v28, v27

    move-object/from16 v19, v16

    move-wide/from16 v29, v17

    :goto_2
    sget-object v7, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->NONE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    sget-object v8, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->NONE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lq1/a;->b()Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    move-result-object v7

    invoke-virtual {v4}, Lq1/a;->c()Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    move-result-object v8

    iget v9, v4, Lq1/a;->d:I

    :goto_3
    move-object v14, v8

    goto :goto_4

    :cond_2
    const/4 v9, -0x1

    goto :goto_3

    :goto_4
    invoke-virtual {v15, v6}, Lp2/d;->c(I)Lp2/c;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, v8, Lp2/c;->f:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    goto :goto_5

    :cond_3
    move-object/from16 v8, v16

    :goto_5
    if-eq v7, v8, :cond_4

    move v8, v0

    goto :goto_6

    :cond_4
    move v8, v1

    :goto_6
    invoke-virtual {v15, v6}, Lp2/d;->c(I)Lp2/c;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, v10, Lp2/c;->e:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    goto :goto_7

    :cond_5
    move-object/from16 v10, v16

    :goto_7
    if-eq v14, v10, :cond_6

    move v10, v0

    goto :goto_8

    :cond_6
    move v10, v1

    :goto_8
    iget-object v11, v2, Lr2/b;->c:Li2/a;

    invoke-virtual {v11, v6}, Li2/a;->H0(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v6}, Li2/a;->G0(I)Ljava/lang/String;

    move-result-object v13

    sget-object v1, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract;->INSTANCE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract;

    invoke-virtual {v1, v7}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract;->convertToSRTime(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 p0, v5

    const/16 v31, 0x1

    xor-int/lit8 v5, v0, 0x1

    move-object/from16 v20, v11

    invoke-virtual {v1, v9}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract;->convertToSRWeather(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    move/from16 v21, v9

    xor-int/lit8 v9, v11, 0x1

    if-nez v8, :cond_8

    if-nez v10, :cond_8

    if-eqz v0, :cond_8

    if-nez v11, :cond_7

    goto :goto_9

    :cond_7
    move-object/from16 v32, v4

    const/4 v6, 0x0

    goto/16 :goto_14

    :cond_8
    :goto_9
    move-object/from16 v32, v4

    move/from16 v22, v11

    if-eqz v4, :cond_9

    move/from16 v4, v31

    goto :goto_a

    :cond_9
    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v15, v6}, Lp2/d;->c(I)Lp2/c;

    move-result-object v11

    if-eqz v11, :cond_a

    iget-object v11, v11, Lp2/c;->f:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    goto :goto_b

    :cond_a
    move-object/from16 v11, v16

    :goto_b
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->getValue()Ljava/lang/String;

    move-result-object v11

    move/from16 v23, v0

    goto :goto_c

    :cond_b
    move/from16 v23, v0

    move-object/from16 v11, v16

    :goto_c
    invoke-virtual {v15, v6}, Lp2/d;->c(I)Lp2/c;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, v0, Lp2/c;->e:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    goto :goto_d

    :cond_c
    move-object/from16 v0, v16

    :goto_d
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->getValue()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v1

    goto :goto_e

    :cond_d
    move-object/from16 v24, v1

    move-object/from16 v0, v16

    :goto_e
    invoke-virtual {v7}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->getValue()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v25, v7

    invoke-virtual {v14}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->getValue()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v33, v14

    new-instance v14, Ljava/lang/StringBuilder;

    move/from16 v34, v6

    const-string v6, "Update weather has data = "

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", prev ["

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] cur ["

    invoke-static {v14, v0, v6, v1, v4}, LB/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "] sr ["

    invoke-static {v14, v7, v0, v12, v4}, LB/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] changed ["

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lr2/b;->g:Lh2/b;

    invoke-virtual {v1, v3, v0}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v34

    invoke-virtual {v15, v0}, Lp2/d;->c(I)Lp2/c;

    move-result-object v4

    move-object/from16 v7, v25

    if-eqz v4, :cond_e

    iput-object v7, v4, Lp2/c;->f:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    :cond_e
    invoke-virtual {v15, v0}, Lp2/d;->c(I)Lp2/c;

    move-result-object v4

    move-object/from16 v5, v33

    if-eqz v4, :cond_f

    iput-object v5, v4, Lp2/c;->e:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    :cond_f
    move-object/from16 v4, v24

    invoke-virtual {v4, v7}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract;->convertToSRTime(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "value"

    invoke-static {v6, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "set last requested SR weather time = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", which = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    const-string v9, "MagicianPreference"

    invoke-static {v9, v8, v10}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v8, "key_last_requested_sr_weather_time"

    invoke-static {v0, v8}, Li2/a;->F0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "key"

    invoke-static {v8, v10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v11, v20

    iget-object v12, v11, LD4/a;->d:Ljava/lang/Object;

    check-cast v12, Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    move/from16 v6, v21

    invoke-virtual {v4, v6}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract;->convertToSRWeather(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "set last requested SR weather effect, which = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v9, v6, v8}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "key_last_requested_sr_weather_effect"

    invoke-static {v0, v6}, Li2/a;->F0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v4, "Update weather because data is changed."

    invoke-virtual {v1, v3, v4}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v23, :cond_11

    if-nez v22, :cond_10

    goto :goto_f

    :cond_10
    move-object v1, v5

    move-object/from16 v4, v16

    const/4 v6, 0x0

    goto :goto_10

    :cond_11
    :goto_f
    invoke-virtual {v11, v0}, Li2/a;->G0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0}, Li2/a;->H0(I)Ljava/lang/String;

    move-result-object v12

    iget-object v7, v2, Lr2/b;->b:Lj2/b;

    move v8, v0

    move-wide/from16 v9, v29

    move-object v11, v1

    move/from16 v13, v26

    move-object v1, v5

    move/from16 v14, v27

    invoke-virtual/range {v7 .. v14}, Lj2/b;->b(IJLjava/lang/String;Ljava/lang/String;ZZ)Lw0/c;

    move-result-object v4

    const-string v5, "updateWeatherData, clear thumbnail: "

    invoke-static {v0, v5}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v7}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v7, v2, Lr2/b;->e:Ly2/d;

    iget-object v7, v7, Ly2/d;->b:Lf2/c;

    invoke-virtual {v7, v0, v5}, Lf2/c;->a(ILjava/lang/Long;)V

    :goto_10
    if-eqz v4, :cond_12

    iget-object v5, v4, Lw0/c;->f:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    goto :goto_11

    :cond_12
    move-object/from16 v5, v16

    :goto_11
    if-nez v5, :cond_13

    move-object/from16 v23, v16

    goto :goto_12

    :cond_13
    move-object/from16 v23, v19

    :goto_12
    new-instance v5, Lv2/a;

    if-eqz v4, :cond_14

    iget-object v7, v4, Lw0/c;->f:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Bitmap;

    move-object/from16 v21, v7

    goto :goto_13

    :cond_14
    move-object/from16 v21, v16

    :goto_13
    if-eqz v4, :cond_15

    iget-object v4, v4, Lw0/c;->e:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Landroid/graphics/Bitmap;

    :cond_15
    move-object/from16 v22, v16

    const/16 v25, 0x0

    move-object/from16 v20, v5

    move-object/from16 v24, v1

    invoke-direct/range {v20 .. v30}, Lv2/a;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;ZZZZJ)V

    invoke-virtual {v15, v0, v5}, Lp2/d;->f(ILv2/a;)V

    :goto_14
    move-object/from16 v5, p0

    move v1, v6

    move/from16 v0, v31

    move-object/from16 v4, v32

    goto/16 :goto_0

    :cond_16
    sget-object v0, Lq3/m;->a:Lq3/m;

    return-object v0
.end method
