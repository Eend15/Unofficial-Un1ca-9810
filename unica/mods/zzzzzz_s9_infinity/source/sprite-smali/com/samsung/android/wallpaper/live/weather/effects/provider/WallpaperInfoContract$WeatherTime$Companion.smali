.class public final Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime$Companion;",
        "",
        "<init>",
        "()V",
        "fromStringValue",
        "Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;",
        "value",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LF3/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromStringValue(Ljava/lang/String;)Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;
    .locals 2

    sget-object p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->NONE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->SUNRISE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    move-object p0, v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->MORNING:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->NOON:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->AFTERNOON:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->SUNSET:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->EVENING:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->NIGHT:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->MIDNIGHT:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    :goto_1
    return-object p0
.end method
