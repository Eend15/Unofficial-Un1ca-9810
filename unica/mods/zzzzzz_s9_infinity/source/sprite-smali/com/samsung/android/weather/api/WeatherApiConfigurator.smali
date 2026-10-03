.class public final Lcom/samsung/android/weather/api/WeatherApiConfigurator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/WeatherApiConfigurator;",
        "",
        "<init>",
        "()V",
        "SUCCESS",
        "",
        "NOT_ALLOWED",
        "WEATHER_APP_ABSENT",
        "HAS_NO_READ_PERMISSION",
        "SIG_MISMATCH",
        "SYSTEM_NOT_READY",
        "init",
        "application",
        "Landroid/app/Application;",
        "context",
        "Landroid/content/Context;",
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
.field public static final HAS_NO_READ_PERMISSION:I = 0x3

.field public static final INSTANCE:Lcom/samsung/android/weather/api/WeatherApiConfigurator;

.field public static final NOT_ALLOWED:I = 0x1

.field public static final SIG_MISMATCH:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final SYSTEM_NOT_READY:I = 0x5

.field public static final WEATHER_APP_ABSENT:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/weather/api/WeatherApiConfigurator;

    invoke-direct {v0}, Lcom/samsung/android/weather/api/WeatherApiConfigurator;-><init>()V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherApiConfigurator;->INSTANCE:Lcom/samsung/android/weather/api/WeatherApiConfigurator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Landroid/app/Application;)I
    .locals 1

    const-string p0, "application"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, LR3/f;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "WeatherApiConfigurator] ALREADY_INIT pkg : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-1.0.46"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WPI"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "getApplicationContext(...)"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    invoke-direct {p1}, Lcom/samsung/android/weather/api/source/WeatherCacheManager;-><init>()V

    invoke-static {p0, p1}, LR3/f;->a(Landroid/content/Context;Lcom/samsung/android/weather/api/source/WeatherStorageApi;)I

    move-result p0

    return p0
.end method

.method public final init(Landroid/content/Context;)I
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, LR3/f;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "WeatherApiConfigurator] ALREADY_INIT pkg : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-1.0.46"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WPI"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    new-instance p0, Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    invoke-direct {p0}, Lcom/samsung/android/weather/api/source/WeatherCacheManager;-><init>()V

    invoke-static {p1, p0}, LR3/f;->a(Landroid/content/Context;Lcom/samsung/android/weather/api/source/WeatherStorageApi;)I

    move-result p0

    return p0
.end method
