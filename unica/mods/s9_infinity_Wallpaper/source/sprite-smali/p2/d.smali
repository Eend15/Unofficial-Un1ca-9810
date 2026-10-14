.class public final Lp2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp2/a;

.field public final b:Ls1/b;

.field public final c:Li2/a;

.field public final d:Lh2/b;

.field public e:Landroid/content/Context;

.field public final f:Landroid/content/Context;

.field public final g:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lp2/a;Ls1/b;Li2/a;Lh2/b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "weatherEffectContract"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getCurrentWeatherData"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "magicianPreference"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpUtil"

    invoke-static {p5, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lp2/d;->a:Lp2/a;

    iput-object p3, p0, Lp2/d;->b:Ls1/b;

    iput-object p4, p0, Lp2/d;->c:Li2/a;

    iput-object p5, p0, Lp2/d;->d:Lh2/b;

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lp2/d;->f:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lp2/d;->g:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(IZ)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lp2/d;->d(IZ)Lkotlinx/coroutines/flow/i;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/i;->i()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/a;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lv2/a;->b:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final b(IZ)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lp2/d;->d(IZ)Lkotlinx/coroutines/flow/i;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/i;->i()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/a;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lv2/a;->a:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final c(I)Lp2/c;
    .locals 3

    iget-object v0, p0, Lp2/d;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lp2/d;->a:Lp2/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lp2/a;->b()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lp2/c;

    invoke-direct {v2}, Lp2/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp2/c;

    return-object p0
.end method

.method public final d(IZ)Lkotlinx/coroutines/flow/i;
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lp2/d;->c(I)Lp2/c;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v0, p0, Lp2/c;->c:Lkotlinx/coroutines/flow/i;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lp2/d;->c(I)Lp2/c;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v0, p0, Lp2/c;->a:Lkotlinx/coroutines/flow/i;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final e()Lv2/a;
    .locals 9

    const-string v0, "Unable to load wallpaper: "

    const-string v1, "directAccessContext"

    iget-object p0, p0, Lp2/d;->f:Landroid/content/Context;

    const-string v2, "load wallpaper file name = "

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "load wallpaper from storage isPreview =============="

    const-string v6, "WeatherEffectsRepository"

    invoke-static {v6, v5, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "fg_image_preview"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v5}, Lp2/a;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v5, "bg_image_preview"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6, v2, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v5}, Lp2/a;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lv2/a;

    const/16 v3, 0x1e0

    const/4 v5, 0x1

    invoke-direct {v2, v1, p0, v5, v3}, Lv2/a;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZI)V

    return-object v2

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const-string p0, "Cannot load wallpaper from local storage."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v6, p0, v1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :goto_1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v6, v0, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :goto_2
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v6, v0, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4
.end method

.method public final f(ILv2/a;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lp2/d;->d:Lh2/b;

    const-string v4, "Cannot update wallpaper. asset: "

    const-string v5, "updateWallpaperLocked for "

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "updateWallpaperLocked: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "WeatherEffectsRepository"

    invoke-static {v9, v6, v8}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v6, v2, Lv2/a;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v8, v2, Lv2/a;->e:Z

    if-nez v6, :cond_0

    :try_start_1
    invoke-virtual {v0, v1, v8}, Lp2/d;->b(IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_0
    move-object v11, v6

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :goto_0
    iget-object v6, v2, Lv2/a;->b:Landroid/graphics/Bitmap;

    if-nez v6, :cond_1

    invoke-virtual {v0, v1, v8}, Lp2/d;->a(IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_1
    move-object v12, v6

    invoke-virtual {v0, v1, v8}, Lp2/d;->d(IZ)Lkotlinx/coroutines/flow/i;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lkotlinx/coroutines/flow/i;->i()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv2/a;

    if-eqz v6, :cond_2

    iget-object v6, v6, Lv2/a;->c:Landroid/graphics/Rect;

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v11, :cond_8

    if-nez v12, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object v4, v2, Lv2/a;->c:Landroid/graphics/Rect;

    if-eqz v4, :cond_4

    move-object v13, v4

    goto :goto_2

    :cond_4
    move-object v13, v6

    :goto_2
    if-nez v8, :cond_6

    invoke-virtual {v0, v1, v7}, Lp2/d;->d(IZ)Lkotlinx/coroutines/flow/i;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lkotlinx/coroutines/flow/i;->i()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/a;

    if-eqz v4, :cond_5

    iget-wide v14, v4, Lv2/a;->i:J

    :goto_3
    move v10, v8

    goto :goto_4

    :cond_5
    const-wide/16 v14, -0x1

    goto :goto_3

    :goto_4
    iget-wide v7, v2, Lv2/a;->i:J

    cmp-long v4, v14, v7

    if-nez v4, :cond_7

    const-string v4, "Updated weather data has same SR key. So we need to reuse it when init in WeatherEngine."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v9, v4, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v0, Lp2/d;->c:Li2/a;

    const/4 v6, 0x1

    invoke-virtual {v4, v1, v6}, Li2/a;->K0(IZ)V

    goto :goto_5

    :cond_6
    move v10, v8

    :cond_7
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v10}, Lp2/d;->d(IZ)Lkotlinx/coroutines/flow/i;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Lv2/a;

    iget-object v14, v2, Lv2/a;->d:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    iget-boolean v15, v2, Lv2/a;->e:Z

    iget-boolean v4, v2, Lv2/a;->f:Z

    iget-boolean v5, v2, Lv2/a;->g:Z

    iget-boolean v6, v2, Lv2/a;->h:Z

    iget-wide v7, v2, Lv2/a;->i:J

    move-object v10, v1

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move-wide/from16 v19, v7

    invoke-direct/range {v10 .. v20}, Lv2/a;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;ZZZZJ)V

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/i;->j(Ljava/lang/Object;)V

    goto :goto_8

    :cond_8
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v9, v0}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_7
    const-string v1, "Unable to load wallpaper: "

    invoke-static {v1, v0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v9, v0}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_8
    return-void
.end method
