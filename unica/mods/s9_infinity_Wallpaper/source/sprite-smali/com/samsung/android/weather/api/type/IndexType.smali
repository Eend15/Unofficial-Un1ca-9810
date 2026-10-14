.class public interface abstract annotation Lcom/samsung/android/weather/api/type/IndexType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/weather/api/type/IndexType$Companion;
    }
.end annotation

.annotation build Le/a;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0002\u0008\u0081\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/type/IndexType;",
        "",
        "Companion",
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
.field public static final AQI:I = 0x1a

.field public static final ASTRONOMICAL_DAWN:I = 0x40

.field public static final ASTRONOMICAL_DUSK:I = 0x41

.field public static final CIVIL_DAWN:I = 0x3c

.field public static final CIVIL_DUSK:I = 0x3d

.field public static final Companion:Lcom/samsung/android/weather/api/type/IndexType$Companion;

.field public static final DEW_POINT:I = 0x3b

.field public static final GOLF:I = 0x2c

.field public static final HUMIDITY:I = 0x1b

.field public static final JOGGING:I = 0x2a

.field public static final MOONRISE:I = 0x37

.field public static final MOONSET:I = 0x38

.field public static final MOON_PHASE:I = 0x39

.field public static final NAUTICAL_DAWN:I = 0x3e

.field public static final NAUTICAL_DUSK:I = 0x3f

.field public static final NONE:I = -0x1

.field public static final PM10:I = 0x10

.field public static final PM2_5:I = 0x11

.field public static final POLLEN:I = 0xa

.field public static final PRECIPITATION_AMOUNT:I = 0x2f

.field public static final PRECIPITATION_AMOUNT_NIGHT:I = 0x30

.field public static final PRECIPITATION_PROBABILITY:I = 0x0

.field public static final PRECIPITATION_PROBABILITY_NIGHT:I = 0x2e

.field public static final PRESSURE:I = 0x3a

.field public static final SUNRISE:I = 0xd

.field public static final SUNSET:I = 0xe

.field public static final TRAFFIC:I = 0x1e

.field public static final UV:I = 0x1

.field public static final VISIBILITY:I = 0x18

.field public static final WIND:I = 0x12


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/weather/api/type/IndexType$Companion;->$$INSTANCE:Lcom/samsung/android/weather/api/type/IndexType$Companion;

    sput-object v0, Lcom/samsung/android/weather/api/type/IndexType;->Companion:Lcom/samsung/android/weather/api/type/IndexType$Companion;

    return-void
.end method
