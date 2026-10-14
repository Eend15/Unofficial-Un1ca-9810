.class public final Lcom/samsung/android/weather/persistence/DbConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0001\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/samsung/android/weather/persistence/DbConstants;",
        "",
        "<init>",
        "()V",
        "Companion",
        "j/a",
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
.field public static final AUTO_REFRESH_UNKNOWN:I = -0x1

.field public static final Companion:Ln3/a;

.field public static final SCHEMA_PATH:Ljava/lang/String; = "com.samsung.android.weather.database.WeatherDatabase/%d.%s"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln3/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/weather/persistence/DbConstants;->Companion:Ln3/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
