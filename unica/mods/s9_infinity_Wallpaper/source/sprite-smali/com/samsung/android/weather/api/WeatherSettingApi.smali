.class public final Lcom/samsung/android/weather/api/WeatherSettingApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0013\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0013\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0017\u0010\u0014\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0014\u0010\u000cJ\u0015\u0010\u0015\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0015\u0010\u0012J\u0015\u0010\u0016\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0016\u0010\u0012J\u0015\u0010\u0017\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0017\u0010\u0012\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/WeatherSettingApi;",
        "",
        "<init>",
        "()V",
        "Lkotlinx/coroutines/flow/a;",
        "Lcom/samsung/android/weather/api/entity/settings/Setting;",
        "observeWeatherSettingChange",
        "()Lkotlinx/coroutines/flow/a;",
        "Landroid/content/Context;",
        "context",
        "",
        "getActiveCp",
        "(Landroid/content/Context;)Ljava/lang/String;",
        "Lcom/samsung/android/weather/api/WeatherCp;",
        "getActiveWeatherCp",
        "(Landroid/content/Context;)Lcom/samsung/android/weather/api/WeatherCp;",
        "",
        "getAutoRefreshInterval",
        "(Landroid/content/Context;)I",
        "supportAutoRefresh",
        "getFavoriteKey",
        "getSuccessOnLocation",
        "getUseCurrentLocation",
        "getTempScale",
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
.field public static final INSTANCE:Lcom/samsung/android/weather/api/WeatherSettingApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/weather/api/WeatherSettingApi;

    invoke-direct {v0}, Lcom/samsung/android/weather/api/WeatherSettingApi;-><init>()V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherSettingApi;->INSTANCE:Lcom/samsung/android/weather/api/WeatherSettingApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActiveCp(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm3/d;->c(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getActiveCp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getActiveWeatherCp(Landroid/content/Context;)Lcom/samsung/android/weather/api/WeatherCp;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm3/d;->c(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getActiveCp()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cp"

    invoke-static {p0, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x7d2d258b

    if-eq p1, v0, :cond_5

    const v0, 0x118d4

    if-eq p1, v0, :cond_3

    const v0, 0x11fc8

    if-eq p1, v0, :cond_1

    const v0, 0x1236e

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "KOR"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/samsung/android/weather/api/WeatherCp;->WeatherNewKorea:Lcom/samsung/android/weather/api/WeatherCp;

    goto :goto_1

    :cond_1
    const-string p1, "JPN"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/weather/api/WeatherCp;->WeatherNewJapan:Lcom/samsung/android/weather/api/WeatherCp;

    goto :goto_1

    :cond_3
    const-string p1, "HUA"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/samsung/android/weather/api/WeatherCp;->HuafengAccu:Lcom/samsung/android/weather/api/WeatherCp;

    goto :goto_1

    :cond_5
    const-string p1, "JPN_V4"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    :cond_6
    :goto_0
    sget-object p0, Lcom/samsung/android/weather/api/WeatherCp;->TheWeatherChannel:Lcom/samsung/android/weather/api/WeatherCp;

    goto :goto_1

    :cond_7
    sget-object p0, Lcom/samsung/android/weather/api/WeatherCp;->WeatherNewJapan:Lcom/samsung/android/weather/api/WeatherCp;

    :goto_1
    return-object p0
.end method

.method public final getAutoRefreshInterval(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm3/d;->c(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getAutoRefreshInterval()I

    move-result p0

    return p0
.end method

.method public final getFavoriteKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm3/d;->c(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getFavoriteKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSuccessOnLocation(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm3/d;->c(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getSuccessOnLocation()I

    move-result p0

    return p0
.end method

.method public final getTempScale(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm3/d;->c(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getUnits()Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getTempUnit()La3/J;

    move-result-object p0

    iget p0, p0, La3/J;->a:I

    return p0
.end method

.method public final getUseCurrentLocation(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm3/d;->c(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getUcl()I

    move-result p0

    return p0
.end method

.method public final observeWeatherSettingChange()Lkotlinx/coroutines/flow/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/a;"
        }
    .end annotation

    sget-object p0, La/d;->c:Lkotlinx/coroutines/flow/e;

    return-object p0
.end method

.method public final supportAutoRefresh(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm3/d;->c(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getSupportAutoRefresh()I

    move-result p0

    return p0
.end method
