.class public final Lcom/samsung/android/weather/api/WeatherApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u001b\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J\u0015\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001b\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/WeatherApi;",
        "",
        "<init>",
        "()V",
        "",
        "isInit",
        "()Z",
        "Lkotlinx/coroutines/flow/a;",
        "",
        "Lcom/samsung/android/weather/api/entity/weather/Weather;",
        "observeWeatherChange",
        "()Lkotlinx/coroutines/flow/a;",
        "observeShortTermPrecip",
        "Landroid/content/Context;",
        "context",
        "getAllWeather",
        "(Landroid/content/Context;)Ljava/util/List;",
        "",
        "key",
        "getWeather",
        "(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/Weather;",
        "getFavoriteWeather",
        "(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/weather/Weather;",
        "getCurrentLocationWeather",
        "",
        "getLocationCount",
        "(Landroid/content/Context;)I",
        "getWidgetCount",
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
.field public static final INSTANCE:Lcom/samsung/android/weather/api/WeatherApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/weather/api/WeatherApi;

    invoke-direct {v0}, Lcom/samsung/android/weather/api/WeatherApi;-><init>()V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherApi;->INSTANCE:Lcom/samsung/android/weather/api/WeatherApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAllWeather(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/weather/Weather;",
            ">;"
        }
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm3/d;->m(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lr3/r;->d:Lr3/r;

    :cond_0
    return-object p0
.end method

.method public final getCurrentLocationWeather(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/weather/Weather;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cityId:current"

    invoke-static {p1, p0}, Lm3/d;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/Weather;

    move-result-object p0

    return-object p0
.end method

.method public final getFavoriteWeather(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/weather/Weather;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm3/d;->m(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/weather/api/entity/weather/Weather;

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getLocation()Lcom/samsung/android/weather/api/entity/weather/Location;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Location;->isFavorite()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/weather/Weather;

    :cond_2
    return-object p1
.end method

.method public final getLocationCount(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm3/d;->m(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getWeather(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/Weather;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "key"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lm3/d;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/Weather;

    move-result-object p0

    return-object p0
.end method

.method public final getWidgetCount(Landroid/content/Context;)I
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm3/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    move p0, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WPI"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    if-eqz p0, :cond_3

    invoke-static {p1}, LR3/f;->e(Landroid/content/Context;)Z

    sget-object p0, Lk3/b;->c:LA1/e;

    iget-object p0, p0, LA1/e;->d:Ljava/lang/Object;

    check-cast p0, La5/a;

    iget-object p1, p0, La5/a;->a:LU3/w;

    const-string v1, "widget"

    invoke-static {p1, v1}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "COL_WIDGET_ID"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, La5/a;->b:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_2
    sget-object p1, Lq3/m;->a:Lq3/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_2
    invoke-static {p1}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p1

    :goto_4
    invoke-static {p1}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "Cursor2Count"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_6

    :cond_2
    :goto_5
    invoke-static {p0, v2}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_6
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {p0, p1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_7
    return v0
.end method

.method public final isInit()Z
    .locals 0

    invoke-static {}, LR3/f;->d()Z

    move-result p0

    return p0
.end method

.method public final observeShortTermPrecip()Lkotlinx/coroutines/flow/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/a;"
        }
    .end annotation

    sget-object p0, La/d;->d:Lkotlinx/coroutines/flow/e;

    return-object p0
.end method

.method public final observeWeatherChange()Lkotlinx/coroutines/flow/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/a;"
        }
    .end annotation

    sget-object p0, La/d;->b:Lkotlinx/coroutines/flow/e;

    return-object p0
.end method
