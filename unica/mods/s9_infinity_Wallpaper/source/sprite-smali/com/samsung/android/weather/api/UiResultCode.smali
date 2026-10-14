.class public final Lcom/samsung/android/weather/api/UiResultCode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/UiResultCode;",
        "",
        "<init>",
        "()V",
        "START_ACTIVITY_OK",
        "",
        "NOT_ALLOWED",
        "START_ACTIVITY_ERROR_PROFILE",
        "START_ACTIVITY_ERROR_NO_TARGET",
        "START_ACTIVITY_ERROR_UNKNOWN",
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
.field public static final INSTANCE:Lcom/samsung/android/weather/api/UiResultCode;

.field public static final NOT_ALLOWED:I = -0x1

.field public static final START_ACTIVITY_ERROR_NO_TARGET:I = -0x3

.field public static final START_ACTIVITY_ERROR_PROFILE:I = -0x2

.field public static final START_ACTIVITY_ERROR_UNKNOWN:I = -0x4

.field public static final START_ACTIVITY_OK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/weather/api/UiResultCode;

    invoke-direct {v0}, Lcom/samsung/android/weather/api/UiResultCode;-><init>()V

    sput-object v0, Lcom/samsung/android/weather/api/UiResultCode;->INSTANCE:Lcom/samsung/android/weather/api/UiResultCode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
