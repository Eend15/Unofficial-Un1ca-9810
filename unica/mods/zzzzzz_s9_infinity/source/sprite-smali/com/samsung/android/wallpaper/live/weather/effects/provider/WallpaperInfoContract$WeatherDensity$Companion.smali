.class public final Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity$Companion;",
        "",
        "<init>",
        "()V",
        "getWeatherDensityType",
        "",
        "weatherIconId",
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
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWeatherDensityType(I)I
    .locals 1

    const/16 p0, 0x14

    if-ne p1, p0, :cond_0

    sget-object p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->HEAVY_RAIN:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->getValue()I

    move-result p0

    goto :goto_4

    :cond_0
    const/4 p0, 0x6

    if-eq p1, p0, :cond_8

    const/16 p0, 0x13

    if-ne p1, p0, :cond_1

    goto :goto_3

    :cond_1
    const/4 p0, 0x7

    if-eq p1, p0, :cond_7

    if-eq p1, p0, :cond_7

    const/16 p0, 0x8

    if-eq p1, p0, :cond_7

    const/16 p0, 0x1c

    if-ne p1, p0, :cond_2

    goto :goto_2

    :cond_2
    const/16 p0, 0xd

    if-eq p1, p0, :cond_6

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_6

    if-eq p1, p0, :cond_6

    const/16 p0, 0x1b

    if-ne p1, p0, :cond_3

    goto :goto_1

    :cond_3
    const/16 p0, 0xb

    if-eq p1, p0, :cond_5

    if-eq p1, p0, :cond_5

    const/16 p0, 0xc

    if-eq p1, p0, :cond_5

    const/16 p0, 0xe

    if-ne p1, p0, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->NONE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->getValue()I

    move-result p0

    goto :goto_4

    :cond_5
    :goto_0
    sget-object p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->LIGHT_SNOW:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->getValue()I

    move-result p0

    goto :goto_4

    :cond_6
    :goto_1
    sget-object p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->SNOW:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->getValue()I

    move-result p0

    goto :goto_4

    :cond_7
    :goto_2
    sget-object p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->LIGHT_RAIN:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->getValue()I

    move-result p0

    goto :goto_4

    :cond_8
    :goto_3
    sget-object p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->RAIN:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->getValue()I

    move-result p0

    :goto_4
    return p0
.end method
