.class public final Lm2/h;
.super Lw3/g;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public d:I

.field public final synthetic e:Lm2/n;


# direct methods
.method public constructor <init>(Lm2/n;Lu3/d;)V
    .locals 0

    iput-object p1, p0, Lm2/h;->e:Lm2/n;

    invoke-direct {p0, p2}, Lw3/g;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lu3/d;)Lu3/d;
    .locals 0

    new-instance p1, Lm2/h;

    iget-object p0, p0, Lm2/h;->e:Lm2/n;

    invoke-direct {p1, p0, p2}, Lm2/h;-><init>(Lm2/n;Lu3/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LW4/t;

    check-cast p2, Lu3/d;

    invoke-virtual {p0, p1, p2}, Lm2/h;->create(Ljava/lang/Object;Lu3/d;)Lu3/d;

    move-result-object p0

    check-cast p0, Lm2/h;

    sget-object p1, Lq3/m;->a:Lq3/m;

    invoke-virtual {p0, p1}, Lm2/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    sget-object v1, Lv3/a;->d:Lv3/a;

    iget v2, v0, Lm2/h;->d:I

    sget-object v3, Lq3/m;->a:Lq3/m;

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lp4/g;->X(Ljava/lang/Object;)V

    move-object v2, v3

    goto/16 :goto_1b

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lp4/g;->X(Ljava/lang/Object;)V

    iget-object v2, v0, Lm2/h;->e:Lm2/n;

    invoke-virtual {v2}, Lm2/n;->e()Lq2/a;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->NONE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    if-eqz v6, :cond_2

    iget v7, v5, Lq2/a;->b:I

    iget-object v5, v5, Lq2/a;->a:Lp2/d;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v7}, Lp2/d;->c(I)Lp2/c;

    move-result-object v5

    if-eqz v5, :cond_2

    iput-object v6, v5, Lp2/c;->e:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    :cond_2
    invoke-virtual {v2}, Lm2/n;->e()Lq2/a;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->NONE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    if-eqz v6, :cond_3

    iget v7, v5, Lq2/a;->b:I

    iget-object v5, v5, Lq2/a;->a:Lp2/d;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v7}, Lp2/d;->c(I)Lp2/c;

    move-result-object v5

    if-eqz v5, :cond_3

    iput-object v6, v5, Lp2/c;->f:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    :cond_3
    invoke-virtual {v2}, Lm2/n;->e()Lq2/a;

    move-result-object v5

    iput v4, v0, Lm2/h;->d:I

    const/4 v0, 0x0

    iget-boolean v2, v2, Lm2/n;->b:Z

    const-string v6, "WeatherEffectsRepository"

    const-string v7, ") =============="

    const-string v8, "Unable to load wallpaper: "

    iget-object v9, v5, Lq2/a;->a:Lp2/d;

    if-eqz v2, :cond_5

    iget v2, v5, Lq2/a;->b:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "load wallpaper from storage ("

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6, v5, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v9}, Lp2/d;->e()Lv2/a;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v9, v2, v4}, Lp2/d;->d(IZ)Lkotlinx/coroutines/flow/i;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/flow/i;->j(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v8, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v8, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    sget-object v0, Lv3/a;->d:Lv3/a;

    move-object v2, v3

    goto/16 :goto_1a

    :cond_5
    iget v2, v5, Lq2/a;->b:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "object.png"

    const-string v10, "set last effect = "

    const-string v11, "Load wallpaper result from WM. which = "

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "load wallpaper locked from Wallpaper Manager ("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v12, v0, [Ljava/lang/Object;

    invoke-static {v6, v7, v12}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    iget-object v7, v9, Lp2/d;->e:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    iget-object v12, v9, Lp2/d;->f:Landroid/content/Context;

    if-nez v7, :cond_6

    move-object v7, v12

    :cond_6
    :try_start_2
    new-instance v13, LE1/d;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-direct {v13, v7, v2, v0}, LE1/d;-><init>(Landroid/content/Context;IZ)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    iget-object v7, v13, LE1/d;->c:Ljava/util/ArrayList;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2

    const-string v15, "background.png"

    if-eqz v7, :cond_8

    :try_start_5
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v13, v15}, LE1/d;->a(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_9

    :cond_8
    :goto_3
    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    invoke-virtual {v13, v7}, LE1/d;->e(I)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_4
    :try_start_6
    invoke-virtual {v13, v15}, LE1/d;->a(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_a

    const/4 v14, 0x0

    goto :goto_5

    :cond_a
    invoke-virtual {v13, v14}, LE1/d;->g(I)Landroid/graphics/Rect;

    move-result-object v14

    :goto_5
    invoke-virtual {v13, v15}, LE1/d;->a(Ljava/lang/String;)I

    move-result v15

    if-gez v15, :cond_b

    const/4 v15, 0x0

    goto :goto_6

    :cond_b
    invoke-virtual {v13, v15}, LE1/d;->b(I)Landroid/graphics/Rect;

    move-result-object v15
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2

    if-nez v7, :cond_c

    :try_start_8
    const-string v0, "loadWallpaperFromSystem : origBgBitmap is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_2

    move-object/from16 v16, v1

    move-object/from16 v18, v3

    goto/16 :goto_19

    :catch_2
    move-exception v0

    move-object/from16 v16, v1

    :goto_7
    move-object/from16 v18, v3

    :goto_8
    move-object/from16 v17, v8

    goto/16 :goto_17

    :catch_3
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v18, v3

    :goto_9
    move-object v1, v8

    goto/16 :goto_18

    :cond_c
    move-object/from16 v16, v1

    :try_start_9
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_9

    move-object/from16 v18, v3

    const/4 v3, 0x1

    :try_start_a
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_4

    if-nez v3, :cond_d

    :try_start_b
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_9

    :cond_d
    :goto_a
    :try_start_c
    invoke-static {v4, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_4

    move-object/from16 v17, v8

    :try_start_d
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v7, v14, v15, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v13}, LE1/d;->d()I

    move-result v8

    const/4 v14, 0x2

    if-lt v8, v14, :cond_14

    invoke-virtual {v13, v5}, LE1/d;->a(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_e

    const/4 v8, 0x0

    goto :goto_b

    :cond_e
    invoke-virtual {v13, v8}, LE1/d;->g(I)Landroid/graphics/Rect;

    move-result-object v8

    :goto_b
    invoke-virtual {v13, v5}, LE1/d;->a(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_f

    const/4 v14, 0x0

    goto :goto_c

    :cond_f
    invoke-virtual {v13, v14}, LE1/d;->b(I)Landroid/graphics/Rect;

    move-result-object v14

    :goto_c
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    if-nez v7, :cond_10

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_e

    :catch_6
    move-exception v0

    goto/16 :goto_17

    :catch_7
    move-exception v0

    :goto_d
    move-object/from16 v1, v17

    goto/16 :goto_18

    :cond_10
    :goto_e
    invoke-static {v4, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v7, v13, LE1/d;->c:Ljava/util/ArrayList;

    if-eqz v7, :cond_12

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    goto :goto_f

    :cond_11
    invoke-virtual {v13, v5}, LE1/d;->a(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_13

    :cond_12
    :goto_f
    const/4 v5, 0x0

    goto :goto_10

    :cond_13
    invoke-virtual {v13, v5}, LE1/d;->e(I)Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_10
    invoke-virtual {v4, v5, v8, v14, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v22, v14

    goto :goto_11

    :cond_14
    const/4 v0, 0x0

    const/16 v22, 0x0

    :goto_11
    invoke-static {v12, v2}, Lcom/samsung/android/wallpaper/live/util/WallpaperManagerHelper;->getWallpaperExtras(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_15

    const-string v4, "isOutdoor"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v7, "isNight"

    invoke-virtual {v1, v7, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "hasWeatherObject"

    invoke-virtual {v1, v8, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v5, "weatherId"

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    goto :goto_12

    :cond_15
    const-wide/16 v4, -0x1

    move-wide v12, v4

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", fg = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", bg = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", isOutdoor = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isNight = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", hasObject= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", weatherId= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v6, v1, v11}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v9, Lp2/d;->b:Ls1/b;

    new-instance v11, Ls1/a;

    invoke-direct {v11, v5, v5}, Ls1/a;-><init>(ZZ)V

    invoke-virtual {v1, v11}, Ls1/b;->a(Ls1/a;)Lq1/a;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lq1/a;->c()Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    move-result-object v14

    invoke-virtual {v1}, Lq1/a;->c()Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    move-result-object v5

    invoke-virtual {v9, v2}, Lp2/d;->c(I)Lp2/c;

    move-result-object v11

    if-eqz v11, :cond_16

    iput-object v5, v11, Lp2/c;->e:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    :cond_16
    invoke-virtual {v1}, Lq1/a;->b()Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    move-result-object v5

    invoke-virtual {v9, v2}, Lp2/d;->c(I)Lp2/c;

    move-result-object v11

    if-eqz v11, :cond_17

    iput-object v5, v11, Lp2/c;->f:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    :cond_17
    invoke-virtual {v1}, Lq1/a;->c()Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lq1/a;->b()Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->getValue()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", time = "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v1, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v23, v14

    goto :goto_13

    :cond_18
    const/16 v23, 0x0

    :goto_13
    new-instance v1, Lv2/a;

    const/16 v24, 0x0

    move-object/from16 v19, v1

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move/from16 v25, v4

    move/from16 v26, v7

    move/from16 v27, v8

    move-wide/from16 v28, v12

    invoke-direct/range {v19 .. v29}, Lv2/a;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;ZZZZJ)V

    invoke-virtual {v9, v2, v1}, Lp2/d;->f(ILv2/a;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_19

    :catch_8
    move-exception v0

    :goto_14
    move-object/from16 v17, v8

    goto/16 :goto_d

    :catch_9
    move-exception v0

    goto/16 :goto_7

    :catch_a
    move-exception v0

    :goto_15
    move-object/from16 v18, v3

    goto :goto_14

    :catch_b
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_15

    :catch_c
    move-exception v0

    :goto_16
    move-object/from16 v16, v1

    move-object/from16 v18, v3

    goto :goto_14

    :catch_d
    move-exception v0

    goto :goto_16

    :goto_17
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-static {v6, v1, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    :goto_18
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v1, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_19
    move-object/from16 v1, v16

    move-object/from16 v2, v18

    :goto_1a
    if-ne v2, v1, :cond_19

    return-object v1

    :cond_19
    :goto_1b
    return-object v2
.end method
