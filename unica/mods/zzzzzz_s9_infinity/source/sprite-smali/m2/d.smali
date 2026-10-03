.class public abstract synthetic Lm2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->values()[Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->RAIN_OUTDOOR:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->RAIN_INDOOR:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->RAIN:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->FOG:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->SNOW:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->SUNNY:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    sput-object v0, Lm2/d;->a:[I

    return-void
.end method
