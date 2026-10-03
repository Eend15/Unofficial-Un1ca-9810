.class public final Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme$Companion;",
        "",
        "<init>",
        "()V",
        "fromStringValue",
        "Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;",
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
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromStringValue(Ljava/lang/String;)Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;
    .locals 1

    sget-object p0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;->SKY:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;->LAND:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
