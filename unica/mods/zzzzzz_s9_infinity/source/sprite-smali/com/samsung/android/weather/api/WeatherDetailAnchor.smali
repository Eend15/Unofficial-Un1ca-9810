.class public final enum Lcom/samsung/android/weather/api/WeatherDetailAnchor;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/weather/api/WeatherDetailAnchor;",
        ">;"
    }
.end annotation

.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0087\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/WeatherDetailAnchor;",
        "",
        "type",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "WEATHER",
        "FEELS_LIKE",
        "DAILY",
        "HOURLY",
        "PROBABILITY",
        "AQI",
        "UV",
        "SUN",
        "HUMIDITY",
        "WIND",
        "DEW_POINT",
        "PRESSURE",
        "VISIBILITY",
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
.field private static final synthetic $ENTRIES:Lx3/a;

.field private static final synthetic $VALUES:[Lcom/samsung/android/weather/api/WeatherDetailAnchor;

.field public static final enum AQI:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

.field public static final enum DAILY:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

.field public static final enum DEW_POINT:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

.field public static final enum FEELS_LIKE:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

.field public static final enum HOURLY:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

.field public static final enum HUMIDITY:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

.field public static final enum PRESSURE:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

.field public static final enum PROBABILITY:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

.field public static final enum SUN:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

.field public static final enum UV:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

.field public static final enum VISIBILITY:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

.field public static final enum WEATHER:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

.field public static final enum WIND:Lcom/samsung/android/weather/api/WeatherDetailAnchor;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/weather/api/WeatherDetailAnchor;
    .locals 13

    sget-object v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->WEATHER:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    sget-object v1, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->FEELS_LIKE:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    sget-object v2, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->DAILY:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    sget-object v3, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->HOURLY:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    sget-object v4, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->PROBABILITY:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    sget-object v5, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->AQI:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    sget-object v6, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->UV:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    sget-object v7, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->SUN:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    sget-object v8, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->HUMIDITY:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    sget-object v9, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->WIND:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    sget-object v10, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->DEW_POINT:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    sget-object v11, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->PRESSURE:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    sget-object v12, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->VISIBILITY:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    filled-new-array/range {v0 .. v12}, [Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    const-string v1, "weather"

    const-string v2, "WEATHER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/WeatherDetailAnchor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->WEATHER:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    new-instance v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    const-string v1, "feelslike"

    const-string v2, "FEELS_LIKE"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/WeatherDetailAnchor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->FEELS_LIKE:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    new-instance v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    const-string v1, "daily"

    const-string v2, "DAILY"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/WeatherDetailAnchor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->DAILY:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    new-instance v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    const-string v1, "hourly"

    const-string v2, "HOURLY"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/WeatherDetailAnchor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->HOURLY:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    new-instance v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    const-string v1, "probability"

    const-string v2, "PROBABILITY"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/WeatherDetailAnchor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->PROBABILITY:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    new-instance v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    const-string v1, "aqi"

    const-string v2, "AQI"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/WeatherDetailAnchor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->AQI:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    new-instance v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    const-string v1, "uv"

    const-string v2, "UV"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/WeatherDetailAnchor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->UV:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    new-instance v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    const-string v1, "sun"

    const-string v2, "SUN"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/WeatherDetailAnchor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->SUN:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    new-instance v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    const-string v1, "humidity"

    const-string v2, "HUMIDITY"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/WeatherDetailAnchor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->HUMIDITY:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    new-instance v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    const-string v1, "wind"

    const-string v2, "WIND"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/WeatherDetailAnchor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->WIND:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    new-instance v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    const-string v1, "dewpoint"

    const-string v2, "DEW_POINT"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/WeatherDetailAnchor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->DEW_POINT:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    new-instance v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    const-string v1, "pressure"

    const-string v2, "PRESSURE"

    const/16 v3, 0xb

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/WeatherDetailAnchor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->PRESSURE:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    new-instance v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    const-string v1, "visibility"

    const-string v2, "VISIBILITY"

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/weather/api/WeatherDetailAnchor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->VISIBILITY:Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    invoke-static {}, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->$values()[Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->$VALUES:[Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    invoke-static {v0}, Lp4/g;->v([Ljava/lang/Enum;)Lx3/b;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->$ENTRIES:Lx3/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->type:Ljava/lang/String;

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

    sget-object v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->$ENTRIES:Lx3/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/weather/api/WeatherDetailAnchor;
    .locals 1

    const-class v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/weather/api/WeatherDetailAnchor;
    .locals 1

    sget-object v0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->$VALUES:[Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/weather/api/WeatherDetailAnchor;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/WeatherDetailAnchor;->type:Ljava/lang/String;

    return-object p0
.end method
