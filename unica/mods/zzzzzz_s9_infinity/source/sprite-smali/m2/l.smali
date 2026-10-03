.class public final Lm2/l;
.super Lw3/g;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public final synthetic d:Landroid/graphics/Bitmap;

.field public final synthetic e:Landroid/graphics/Bitmap;

.field public final synthetic f:Lm2/n;

.field public final synthetic g:Lv2/a;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lm2/n;Lv2/a;Lu3/d;)V
    .locals 0

    iput-object p1, p0, Lm2/l;->d:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lm2/l;->e:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lm2/l;->f:Lm2/n;

    iput-object p4, p0, Lm2/l;->g:Lv2/a;

    invoke-direct {p0, p5}, Lw3/g;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lu3/d;)Lu3/d;
    .locals 6

    new-instance p1, Lm2/l;

    iget-object v3, p0, Lm2/l;->f:Lm2/n;

    iget-object v4, p0, Lm2/l;->g:Lv2/a;

    iget-object v1, p0, Lm2/l;->d:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lm2/l;->e:Landroid/graphics/Bitmap;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lm2/l;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lm2/n;Lv2/a;Lu3/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LW4/t;

    check-cast p2, Lu3/d;

    invoke-virtual {p0, p1, p2}, Lm2/l;->create(Ljava/lang/Object;Lu3/d;)Lu3/d;

    move-result-object p0

    check-cast p0, Lm2/l;

    sget-object p1, Lq3/m;->a:Lq3/m;

    invoke-virtual {p0, p1}, Lm2/l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lv3/a;->d:Lv3/a;

    invoke-static/range {p1 .. p1}, Lp4/g;->X(Ljava/lang/Object;)V

    iget-object v1, v0, Lm2/l;->f:Lm2/n;

    iget-boolean v2, v1, Lm2/n;->b:Z

    const/4 v3, 0x0

    iget-object v4, v0, Lm2/l;->g:Lv2/a;

    iget-object v5, v0, Lm2/l;->d:Landroid/graphics/Bitmap;

    iget-object v6, v0, Lm2/l;->e:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lm2/n;->f()Li2/a;

    move-result-object v2

    invoke-virtual {v1}, Lm2/n;->e()Lq2/a;

    move-result-object v7

    iget v7, v7, Lq2/a;->b:I

    invoke-virtual {v2, v7}, Li2/a;->I0(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v2

    const-string v7, "Has generated wallpapers."

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v2, v7, v8}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lm2/n;->g()Lj2/b;

    move-result-object v9

    invoke-virtual {v1}, Lm2/n;->e()Lq2/a;

    move-result-object v2

    iget v10, v2, Lq2/a;->b:I

    iget-wide v11, v4, Lv2/a;->i:J

    invoke-virtual {v1}, Lm2/n;->f()Li2/a;

    move-result-object v2

    invoke-virtual {v1}, Lm2/n;->e()Lq2/a;

    move-result-object v7

    iget v7, v7, Lq2/a;->b:I

    invoke-virtual {v2, v7}, Li2/a;->G0(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lm2/n;->f()Li2/a;

    move-result-object v2

    invoke-virtual {v1}, Lm2/n;->e()Lq2/a;

    move-result-object v7

    iget v7, v7, Lq2/a;->b:I

    invoke-virtual {v2, v7}, Li2/a;->H0(I)Ljava/lang/String;

    move-result-object v14

    iget-boolean v15, v4, Lv2/a;->f:Z

    iget-boolean v2, v4, Lv2/a;->g:Z

    move/from16 v16, v2

    invoke-virtual/range {v9 .. v16}, Lj2/b;->b(IJLjava/lang/String;Ljava/lang/String;ZZ)Lw0/c;

    move-result-object v2

    iget-object v7, v2, Lw0/c;->f:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    move-object v5, v7

    :cond_0
    iget-object v2, v2, Lw0/c;->e:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    move-object v6, v2

    :cond_1
    move-object v8, v5

    move-object v9, v6

    iget-object v10, v4, Lv2/a;->c:Landroid/graphics/Rect;

    iget-boolean v12, v4, Lv2/a;->f:Z

    iget-boolean v13, v4, Lv2/a;->g:Z

    iget-boolean v14, v4, Lv2/a;->h:Z

    iget-object v7, v0, Lm2/l;->f:Lm2/n;

    iget-object v11, v4, Lv2/a;->d:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    invoke-virtual/range {v7 .. v14}, Lm2/n;->b(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;ZZZ)V

    iget-object v0, v1, Lm2/n;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, v1, Lm2/n;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_2
    iget-boolean v0, v1, Lm2/n;->o:Z

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lm2/n;->j()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lm2/n;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    invoke-virtual {v1}, Lm2/n;->o()V

    :cond_3
    iget-object v0, v1, Lm2/n;->a:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "null cannot be cast to non-null type android.os.UserManager"

    invoke-static {v0, v5}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Lm2/n;->f()Li2/a;

    move-result-object v0

    invoke-virtual {v1}, Lm2/n;->e()Lq2/a;

    move-result-object v6

    iget v6, v6, Lq2/a;->b:I

    const-string v7, "key_need_to_request_generate_all"

    invoke-static {v6, v7}, Li2/a;->F0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "key"

    invoke-static {v7, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, LD4/a;->d:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "stored need to request generate all = "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", which = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "MagicianPreference"

    invoke-static {v7, v2, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Lm2/n;->f()Li2/a;

    move-result-object v0

    invoke-virtual {v1}, Lm2/n;->e()Lq2/a;

    move-result-object v2

    iget v2, v2, Lq2/a;->b:I

    invoke-virtual {v0, v2, v3}, Li2/a;->M0(IZ)V

    iget-boolean v0, v1, Lm2/n;->b:Z

    if-nez v0, :cond_e

    invoke-virtual {v1}, Lm2/n;->j()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v1, Lm2/n;->D:Lp2/d;

    const-string v6, "weatherEffectRepository"

    const/4 v7, 0x0

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lm2/n;->e()Lq2/a;

    move-result-object v8

    iget v8, v8, Lq2/a;->b:I

    const-string v9, "Write cache images start ("

    const-string v10, ") =============="

    invoke-static {v8, v9, v10}, LB/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    const-string v11, "WeatherEffectsRepository"

    invoke-static {v11, v9, v10}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v8, v3}, Lp2/d;->b(IZ)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v2, v8, v3}, Lp2/d;->a(IZ)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v10, "fg_image"

    const-string v12, "directAccessContext"

    iget-object v2, v2, Lp2/d;->f:Landroid/content/Context;

    if-eqz v9, :cond_4

    invoke-static {v2, v12}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x10

    invoke-static {v2, v10, v9, v13, v14}, Lp2/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Z

    :cond_4
    const-string v9, "bg_image"

    if-eqz v8, :cond_5

    invoke-static {v2, v12}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v13, 0x18

    invoke-static {v2, v9, v8, v7, v13}, Lp2/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Z

    :cond_5
    const-string v2, "Write cache images finished =============="

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v11, v2, v8}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v2

    new-array v8, v3, [Ljava/lang/Object;

    const-string v11, "requestGenerateSRImages"

    invoke-static {v2, v11, v8}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lm2/n;->e()Lq2/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lq2/a;->a(Z)Landroidx/recyclerview/widget/y;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, v0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/i;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/i;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/a;

    if-eqz v0, :cond_c

    iget-object v2, v1, Lm2/n;->D:Lp2/d;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lp2/d;->f:Landroid/content/Context;

    invoke-static {v2, v12}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v9}, Lp2/a;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-static {v2, v10}, Lp2/a;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v1}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Weather bg = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " fg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, v1, Lm2/n;->z:Ls1/b;

    if-eqz v8, :cond_a

    new-instance v9, Ls1/a;

    invoke-direct {v9, v3, v3}, Ls1/a;-><init>(ZZ)V

    invoke-virtual {v8, v9}, Ls1/b;->a(Ls1/a;)Lq1/a;

    move-result-object v8

    invoke-virtual {v1}, Lm2/n;->g()Lj2/b;

    move-result-object v9

    invoke-virtual {v1}, Lm2/n;->e()Lq2/a;

    move-result-object v10

    iget v10, v10, Lq2/a;->b:I

    if-eqz v8, :cond_6

    sget-object v11, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract;->INSTANCE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract;

    iget v12, v8, Lq1/a;->d:I

    invoke-virtual {v11, v12}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract;->convertToSRWeather(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_6
    move-object v11, v7

    :goto_0
    if-eqz v8, :cond_7

    sget-object v7, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract;->INSTANCE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract;

    invoke-virtual {v8}, Lq1/a;->b()Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract;->convertToSRTime(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;)Ljava/lang/String;

    move-result-object v7

    :cond_7
    const-string v8, "Call to generate all SR images, "

    const-string v12, ", "

    invoke-static {v10, v8, v12}, LB/a;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v13, v0, Lv2/a;->i:J

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v12, v7}, LB/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v12, v3, [Ljava/lang/Object;

    const-string v15, "MagicianRepository"

    invoke-static {v15, v8, v12}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v16, 0x0

    cmp-long v8, v13, v16

    if-gtz v8, :cond_8

    goto/16 :goto_1

    :cond_8
    iget-object v8, v9, Lj2/b;->a:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v4

    if-nez v4, :cond_9

    const-string v0, "cancel, user is not unlocked"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v15, v0, v2}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "caller_package_name"

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "id"

    invoke-virtual {v3, v4, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v4, "which"

    invoke-virtual {v3, v4, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "source_fd"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "source_alpha_fd"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "engine_type"

    const/16 v4, 0x65

    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "is_outdoor"

    iget-boolean v4, v0, Lv2/a;->f:Z

    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "is_night"

    iget-boolean v0, v0, Lv2/a;->g:Z

    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "current_time"

    invoke-virtual {v3, v0, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current_weather"

    invoke-virtual {v3, v0, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "call : generate_all_time_weather_images, with : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v9, Lj2/b;->c:Lh2/b;

    invoke-virtual {v2, v15, v0}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v9, Lj2/b;->d:LK2/b;

    const-string v4, "generate_all_time_weather_images"

    invoke-virtual {v2, v4}, LK2/b;->a(Ljava/lang/String;)LK2/a;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface {v2, v8, v3, v0}, LK2/a;->a(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_a
    const-string v0, "getCurrentWeatherData"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v7

    :cond_b
    invoke-static {v6}, LF3/k;->m(Ljava/lang/String;)V

    throw v7

    :cond_c
    :goto_1
    invoke-virtual {v1}, Lm2/n;->o()V

    goto :goto_2

    :cond_d
    invoke-static {v6}, LF3/k;->m(Ljava/lang/String;)V

    throw v7

    :cond_e
    :goto_2
    invoke-virtual {v1}, Lm2/n;->j()Z

    move-result v0

    iput-boolean v0, v1, Lm2/n;->o:Z

    :cond_f
    sget-object v0, Lq3/m;->a:Lq3/m;

    return-object v0
.end method
