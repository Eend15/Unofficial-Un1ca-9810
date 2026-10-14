.class public final Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WallpaperGenerationData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WallpaperGenerationData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WallpaperGenerationData;",
        "",
        "<init>",
        "()V",
        "FOREGROUND_TEXTURE",
        "",
        "BACKGROUND_TEXTURE",
        "WEATHER_EFFECT",
        "DEFAULT_PROJECTION",
        "",
        "getDEFAULT_PROJECTION",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
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


# static fields
.field public static final BACKGROUND_TEXTURE:Ljava/lang/String; = "background_texture"

.field private static final DEFAULT_PROJECTION:[Ljava/lang/String;

.field public static final FOREGROUND_TEXTURE:Ljava/lang/String; = "foreground_texture"

.field public static final INSTANCE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WallpaperGenerationData;

.field public static final WEATHER_EFFECT:Ljava/lang/String; = "weather_effect"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WallpaperGenerationData;

    invoke-direct {v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WallpaperGenerationData;-><init>()V

    sput-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WallpaperGenerationData;->INSTANCE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WallpaperGenerationData;

    const-string v0, "weather_effect"

    const-string v1, "foreground_texture"

    const-string v2, "background_texture"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WallpaperGenerationData;->DEFAULT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDEFAULT_PROJECTION()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WallpaperGenerationData;->DEFAULT_PROJECTION:[Ljava/lang/String;

    return-object p0
.end method
