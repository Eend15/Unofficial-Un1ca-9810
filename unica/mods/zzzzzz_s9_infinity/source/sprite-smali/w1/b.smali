.class public abstract synthetic Lw1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;->values()[Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;->LINEAR:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;->CIRCULAR:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lw1/b;->a:[I

    invoke-static {}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;->values()[Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2
    sget-object v3, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;->SKY:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;->LAND:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lw1/b;->b:[I

    invoke-static {}, Lz1/a;->values()[Lz1/a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_4
    aput v1, v0, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lz1/a;->d:Lz1/a;

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
