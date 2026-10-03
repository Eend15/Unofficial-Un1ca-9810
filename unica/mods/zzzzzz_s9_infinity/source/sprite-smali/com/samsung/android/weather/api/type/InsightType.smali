.class public interface abstract annotation Lcom/samsung/android/weather/api/type/InsightType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/weather/api/type/InsightType$Companion;
    }
.end annotation

.annotation build Le/a;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0002\u0008\u0081\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/type/InsightType;",
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
.field public static final AIR_QUALITY:I = 0xd

.field public static final AI_INSIGHT:I = 0x1c

.field public static final BREAKING_NEWS:I = 0xe

.field public static final Companion:Lcom/samsung/android/weather/api/type/InsightType$Companion;

.field public static final DEW_POINT_CONDITION:I = 0x16

.field public static final FEELS_LIKE_TEMPERATURE:I = 0x7

.field public static final FINE_DUST:I = 0x11

.field public static final FLU:I = 0xa

.field public static final HUMIDITY_CONDITION:I = 0x19

.field public static final LIFE_STYLE:I = 0x1b

.field public static final NONE:I = 0x0

.field public static final POLLEN:I = 0xb

.field public static final PRECIPITATION:I = 0x4

.field public static final PRESSURE_CONDITION:I = 0x17

.field public static final RECORD_TEMPERATURE:I = 0x5

.field public static final SEASON_INFO:I = 0x13

.field public static final SHORT_TERM_PRECIP:I = 0x3

.field public static final SNOW_FALL:I = 0x2

.field public static final SUNNYDAY:I = 0x6

.field public static final SUNRISE_SUNSET:I = 0x10

.field public static final TEMPERATURE_CHANGE:I = 0xc

.field public static final THUNDERSTORM_IMPACT:I = 0x1

.field public static final TOMORROW_COMMENT:I = 0x14

.field public static final TRENDING_VIDEO:I = 0xf

.field public static final ULTRA_FINE_DUST:I = 0x12

.field public static final UV:I = 0x8

.field public static final UV_CONDITION:I = 0x18

.field public static final VISIBILITY_CONDITION:I = 0x1a

.field public static final WIND:I = 0x9

.field public static final WIND_CONDITION:I = 0x15


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/weather/api/type/InsightType$Companion;->$$INSTANCE:Lcom/samsung/android/weather/api/type/InsightType$Companion;

    sput-object v0, Lcom/samsung/android/weather/api/type/InsightType;->Companion:Lcom/samsung/android/weather/api/type/InsightType$Companion;

    return-void
.end method
