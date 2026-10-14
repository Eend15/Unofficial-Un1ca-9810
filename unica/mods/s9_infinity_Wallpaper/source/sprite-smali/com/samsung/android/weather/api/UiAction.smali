.class public final Lcom/samsung/android/weather/api/UiAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/UiAction;",
        "",
        "<init>",
        "()V",
        "ACTION_GO_TO_DETAIL",
        "",
        "ACTION_GO_TO_LOCATIONS",
        "ACTION_GO_TO_SEARCH",
        "ACTION_GO_TO_SETTING",
        "ACTION_GO_TO_EULA",
        "ACTION_REFRESH",
        "ACTION_INTERVAL_REFRESH",
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
.field public static final ACTION_GO_TO_DETAIL:Ljava/lang/String; = "com.samsung.android.weather.intent.action.DETAIL"

.field public static final ACTION_GO_TO_EULA:Ljava/lang/String; = "com.samsung.android.weather.intent.action.USE_CURRENT_LOCATION"

.field public static final ACTION_GO_TO_LOCATIONS:Ljava/lang/String; = "com.samsung.android.weather.intent.action.CITYLIST"

.field public static final ACTION_GO_TO_SEARCH:Ljava/lang/String; = "com.samsung.android.weather.intent.action.SEARCH"

.field public static final ACTION_GO_TO_SETTING:Ljava/lang/String; = "com.samsung.android.weather.intent.action.SETTING"

.field public static final ACTION_INTERVAL_REFRESH:Ljava/lang/String; = "com.samsung.android.weather.action.INTERVAL_REFRESH"

.field public static final ACTION_REFRESH:Ljava/lang/String; = "com.samsung.android.weather.daemon.REQUEST_LOCATION_WEATHER_DATA_REFRESH"

.field public static final INSTANCE:Lcom/samsung/android/weather/api/UiAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/weather/api/UiAction;

    invoke-direct {v0}, Lcom/samsung/android/weather/api/UiAction;-><init>()V

    sput-object v0, Lcom/samsung/android/weather/api/UiAction;->INSTANCE:Lcom/samsung/android/weather/api/UiAction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
