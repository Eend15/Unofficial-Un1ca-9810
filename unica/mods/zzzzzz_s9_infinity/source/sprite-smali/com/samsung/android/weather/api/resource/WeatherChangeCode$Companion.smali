.class public final Lcom/samsung/android/weather/api/resource/WeatherChangeCode$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/weather/api/resource/WeatherChangeCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/resource/WeatherChangeCode$Companion;",
        "",
        "<init>",
        "()V",
        "NONE",
        "",
        "FOG",
        "HEAVY_RAIN",
        "THUNDER",
        "SNOW",
        "ICE",
        "HOT",
        "COLD",
        "WINDY",
        "P_RAIN",
        "P_SNOW",
        "WARNING",
        "weather-api-1.0.46_release"
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
.field static final synthetic $$INSTANCE:Lcom/samsung/android/weather/api/resource/WeatherChangeCode$Companion;

.field public static final COLD:I = 0x6

.field public static final FOG:I = 0x0

.field public static final HEAVY_RAIN:I = 0x1

.field public static final HOT:I = 0x5

.field public static final ICE:I = 0x4

.field public static final NONE:I = -0x1

.field public static final P_RAIN:I = 0x8

.field public static final P_SNOW:I = 0x9

.field public static final SNOW:I = 0x3

.field public static final THUNDER:I = 0x2

.field public static final WARNING:I = 0xa

.field public static final WINDY:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/weather/api/resource/WeatherChangeCode$Companion;

    invoke-direct {v0}, Lcom/samsung/android/weather/api/resource/WeatherChangeCode$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/weather/api/resource/WeatherChangeCode$Companion;->$$INSTANCE:Lcom/samsung/android/weather/api/resource/WeatherChangeCode$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
