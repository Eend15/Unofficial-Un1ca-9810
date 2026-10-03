.class public final Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;
.super Lcom/google/android/torus/core/wallpaper/LiveWallpaper;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;",
        "Lcom/google/android/torus/core/wallpaper/LiveWallpaper;",
        "<init>",
        "()V",
        "SpriteWallpaper_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public d:LW4/t;

.field public e:Lz2/a;

.field public f:Lm2/o;

.field public g:I

.field public final h:Landroid/net/Uri;

.field public final i:LE1/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;->g:I

    const-string v0, "photo_ambient_wallpaper_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;->h:Landroid/net/Uri;

    new-instance v0, LE1/f;

    invoke-direct {v0, p0}, LE1/f;-><init>(Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;->i:LE1/f;

    return-void
.end method


# virtual methods
.method public final getWallpaperEngine(Landroid/content/Context;Landroid/view/SurfaceHolder;ZI)Lcom/google/android/torus/core/engine/TorusEngine;
    .locals 6

    const-string v0, "displayContext"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surfaceHolder"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "migrationGeneratedImages, whichType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "WeatherWallpaperService"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;->e:Lz2/a;

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p4}, Lz2/a;->b(Landroid/content/Context;I)Z

    move-result v0

    const/4 v4, 0x2

    if-nez v0, :cond_0

    const-string v0, "initUserUnlockedReceiver, whichType: "

    invoke-static {p4, v0}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lm2/o;

    invoke-direct {v0, p0, p4}, Lm2/o;-><init>(Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;I)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;->f:Lm2/o;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;->f:Lm2/o;

    invoke-virtual {v3, v5, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    iput p4, p0, Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;->g:I

    new-instance p4, Lm2/n;

    invoke-direct {p4, p2, p1, p3}, Lm2/n;-><init>(Landroid/view/SurfaceHolder;Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;->d:LW4/t;

    if-eqz p1, :cond_8

    iget p0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;->g:I

    const-string p2, "initialize, which:"

    const-string p3, ", isPreview:"

    invoke-static {p0, p2, p3}, LB/a;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p4, Lm2/n;->b:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "WeatherEngine"

    invoke-static {v1, p2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p4, Lm2/n;->D:Lp2/d;

    if-eqz p2, :cond_7

    iget-object v0, p4, Lm2/n;->a:Landroid/content/Context;

    iput-object v0, p2, Lp2/d;->e:Landroid/content/Context;

    if-nez p3, :cond_6

    invoke-virtual {p4}, Lm2/n;->e()Lq2/a;

    move-result-object p2

    invoke-static {}, Lf2/g;->b()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p0, v4}, LK/I;->Y(II)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x6

    goto :goto_0

    :cond_1
    move p3, p0

    :goto_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, LK/I;->Y(II)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p3, 0x11

    goto :goto_3

    :cond_2
    and-int/lit8 p3, p0, 0x3c

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    and-int/lit8 p0, p0, 0x3

    invoke-static {v0}, LM1/i;->c(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/16 p3, 0x10

    goto :goto_1

    :cond_4
    const/4 p3, 0x4

    :goto_1
    or-int/2addr p0, p3

    :goto_2
    move p3, p0

    :cond_5
    :goto_3
    iput p3, p2, Lq2/a;->b:I

    :cond_6
    iput-object p1, p4, Lm2/n;->h:LW4/t;

    return-object p4

    :cond_7
    const-string p0, "weatherEffectRepository"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_8
    const-string p0, "applicationScope"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_9
    const-string p0, "magicianSpriteMigrator"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v2
.end method

.method public final onCreate()V
    .locals 11

    invoke-super {p0}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lj0/s;->a:Ll2/a;

    if-nez v1, :cond_0

    sget-object v10, Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;->d:Landroidx/recyclerview/widget/b;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LT2/b;

    const/4 v1, 0x3

    invoke-direct {v3, v0, v1}, LT2/b;-><init>(Landroid/content/Context;I)V

    new-instance v4, LG4/d;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {v4, v0, v1}, LG4/d;-><init>(IZ)V

    new-instance v5, LG4/d;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, LG4/d;-><init>(IZ)V

    new-instance v6, LU0/e;

    const/4 v0, 0x2

    invoke-direct {v6, v0}, LU0/e;-><init>(I)V

    new-instance v7, LD2/b;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v8, LG4/d;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {v8, v0, v1}, LG4/d;-><init>(IZ)V

    new-instance v9, LU0/e;

    const/4 v0, 0x3

    invoke-direct {v9, v0}, LU0/e;-><init>(I)V

    new-instance v1, Ll2/a;

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ll2/a;-><init>(LT2/b;LG4/d;LG4/d;LU0/e;LD2/b;LG4/d;LU0/e;Landroidx/recyclerview/widget/b;)V

    sput-object v1, Lj0/s;->a:Ll2/a;

    :cond_0
    iget-object v0, v1, Ll2/a;->a:Landroidx/recyclerview/widget/b;

    iget-object v0, v0, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    check-cast v0, Lh3/b;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW4/t;

    invoke-static {v0}, Le0/a;->t(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;->d:LW4/t;

    new-instance v0, Lz2/a;

    invoke-virtual {v1}, Ll2/a;->a()Li2/a;

    move-result-object v2

    new-instance v3, LT2/b;

    iget-object v4, v1, Ll2/a;->c:Lh3/b;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, LT2/b;-><init>(Landroid/content/Context;I)V

    iget-object v1, v1, Ll2/a;->e:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh2/b;

    invoke-direct {v0, v2, v3, v1}, Lz2/a;-><init>(Li2/a;LT2/b;Lh2/b;)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;->e:Lz2/a;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;->i:LE1/f;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;->h:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/torus/core/wallpaper/LiveWallpaper;->onDestroy()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/WeatherWallpaperService;->i:LE1/f;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
