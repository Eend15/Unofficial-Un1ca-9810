.class public final enum Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WeatherDensity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000eB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "NONE",
        "LIGHT_SNOW",
        "SNOW",
        "LIGHT_RAIN",
        "RAIN",
        "HEAVY_RAIN",
        "Companion",
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
.field private static final synthetic $ENTRIES:Lx3/a;

.field private static final synthetic $VALUES:[Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

.field public static final Companion:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity$Companion;

.field public static final enum HEAVY_RAIN:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

.field public static final enum LIGHT_RAIN:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

.field public static final enum LIGHT_SNOW:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

.field public static final enum NONE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

.field public static final enum RAIN:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

.field public static final enum SNOW:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;
    .locals 6

    sget-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->NONE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    sget-object v1, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->LIGHT_SNOW:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    sget-object v2, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->SNOW:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    sget-object v3, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->LIGHT_RAIN:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    sget-object v4, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->RAIN:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    sget-object v5, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->HEAVY_RAIN:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    const/4 v1, -0x1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->NONE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    new-instance v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    const-string v1, "LIGHT_SNOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->LIGHT_SNOW:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    new-instance v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    const-string v1, "SNOW"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->SNOW:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    new-instance v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    const-string v1, "LIGHT_RAIN"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->LIGHT_RAIN:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    new-instance v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    const-string v1, "RAIN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->RAIN:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    new-instance v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    const-string v1, "HEAVY_RAIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->HEAVY_RAIN:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    invoke-static {}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->$values()[Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->$VALUES:[Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    invoke-static {v0}, Lp4/g;->v([Ljava/lang/Enum;)Lx3/b;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->$ENTRIES:Lx3/a;

    new-instance v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity$Companion;-><init>(LF3/f;)V

    sput-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->Companion:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->value:I

    return-void
.end method

.method public static getEntries()Lx3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/a;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->$ENTRIES:Lx3/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;
    .locals 1

    const-class v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;
    .locals 1

    sget-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->$VALUES:[Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->value:I

    return p0
.end method
