.class public final Lcom/samsung/android/weather/api/type/PrecType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/type/PrecType;",
        "",
        "<init>",
        "()V",
        "REPRESENTATION",
        "",
        "RAIN",
        "SNOW",
        "HAIL",
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
.field public static final HAIL:I = 0x3

.field public static final INSTANCE:Lcom/samsung/android/weather/api/type/PrecType;

.field public static final RAIN:I = 0x1

.field public static final REPRESENTATION:I = 0x0

.field public static final SNOW:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/weather/api/type/PrecType;

    invoke-direct {v0}, Lcom/samsung/android/weather/api/type/PrecType;-><init>()V

    sput-object v0, Lcom/samsung/android/weather/api/type/PrecType;->INSTANCE:Lcom/samsung/android/weather/api/type/PrecType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
