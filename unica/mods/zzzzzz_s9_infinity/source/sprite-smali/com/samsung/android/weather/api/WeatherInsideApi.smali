.class public final Lcom/samsung/android/weather/api/WeatherInsideApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0013\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001b\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0015\u0010\u0010J\u000f\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0015\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001e\u0010\u001cJ\u0015\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010\"\u001a\u00020\u00082\u0006\u0010!\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\"\u0010\u001cJ\u0015\u0010#\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008#\u0010 J\u0015\u0010%\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u0019\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010\'\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\'\u0010(J\u0015\u0010*\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u0019\u00a2\u0006\u0004\u0008*\u0010\u001cJ\u0015\u0010,\u001a\u00020+2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008,\u0010-J\u0015\u0010.\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008.\u0010 J\u0015\u0010/\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008/\u0010 J\u0017\u00100\u001a\u0004\u0018\u00010+2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u00080\u0010-J\u0015\u00101\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u00081\u0010 J\u0015\u00102\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u00082\u0010 J\u0015\u00104\u001a\u0002032\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u00084\u00105J\u0015\u00106\u001a\u00020+2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u00086\u0010-J\u0015\u00107\u001a\u00020+2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u00087\u0010-J\u0015\u00108\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u00088\u0010 J\u0015\u00109\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u00089\u0010 \u00a8\u0006:"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/WeatherInsideApi;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lcom/samsung/android/weather/api/source/WeatherStorageApi;",
        "storageApi",
        "Lq3/m;",
        "init",
        "(Landroid/content/Context;Lcom/samsung/android/weather/api/source/WeatherStorageApi;)V",
        "Lkotlinx/coroutines/flow/a;",
        "Lcom/samsung/android/weather/api/entity/settings/Setting;",
        "observeWeatherSettingChange",
        "()Lkotlinx/coroutines/flow/a;",
        "fetchSetting",
        "(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;",
        "",
        "Lcom/samsung/android/weather/api/entity/weather/Weather;",
        "fetchWeathers",
        "(Landroid/content/Context;)Ljava/util/List;",
        "getSetting",
        "",
        "getAutoRefreshNextTime",
        "()Ljava/lang/Long;",
        "",
        "ucl",
        "updateUseCurrentLocation",
        "(I)V",
        "scale",
        "updateTempScale",
        "getLocationAuthority",
        "(Landroid/content/Context;)I",
        "auth",
        "updateLocationAuthority",
        "getPermissionNotice",
        "notice",
        "updatePermissionNotice",
        "(I)I",
        "getNetworkCharges",
        "(Landroid/content/Context;)Ljava/lang/Integer;",
        "value",
        "updateNetworkCharges",
        "",
        "getActiveCp",
        "(Landroid/content/Context;)Ljava/lang/String;",
        "getAutoRefreshInterval",
        "supportAutoRefresh",
        "getFavoriteKey",
        "getSuccessOnLocation",
        "getUseCurrentLocation",
        "Lcom/samsung/android/weather/api/unit/WeatherUnits;",
        "getDisplayUnits",
        "(Landroid/content/Context;)Lcom/samsung/android/weather/api/unit/WeatherUnits;",
        "getCountryCode",
        "getSalesCode",
        "getOneUiVersion",
        "getFirstApi",
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
.field public static final INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/weather/api/WeatherInsideApi;

    invoke-direct {v0}, Lcom/samsung/android/weather/api/WeatherInsideApi;-><init>()V

    sput-object v0, Lcom/samsung/android/weather/api/WeatherInsideApi;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fetchSetting(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getDataLevel()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-gt v0, p0, :cond_3

    invoke-static {p1}, LR3/f;->e(Landroid/content/Context;)Z

    sget-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-nez p0, :cond_0

    invoke-static {}, LR3/f;->b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    move-result-object p0

    sput-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    :cond_0
    sget-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->getProfile()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    :cond_1
    invoke-static {p1}, Lm3/d;->d(Lcom/samsung/android/weather/api/entity/profile/Profile;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string p0, "storage"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public final fetchWeathers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getDataLevel()I

    move-result v0

    const/4 v1, 0x3

    sget-object v2, Lr3/r;->d:Lr3/r;

    if-gt v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/weather/api/WeatherInsideApi;->fetchSetting(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Lm3/d;->j(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/settings/Setting;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_0
    return-object v2
.end method

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

.method public final getAutoRefreshNextTime()Ljava/lang/Long;
    .locals 2

    sget-object p0, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getDataLevel()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-gt v0, p0, :cond_2

    sget-object p0, Lk3/b;->b:LZ4/c;

    invoke-virtual {p0}, LZ4/c;->b()Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "COL_SETTING_AUTO_REF_NEXT_TIME"

    invoke-static {p0, v0}, Lj0/s;->t(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final getCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LR3/f;->e(Landroid/content/Context;)Z

    sget-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-nez p0, :cond_0

    invoke-static {}, LR3/f;->b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    move-result-object p0

    sput-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    :cond_0
    sget-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->getProfile()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/profile/Profile;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "storage"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getDisplayUnits(Landroid/content/Context;)Lcom/samsung/android/weather/api/unit/WeatherUnits;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lm3/d;->c(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getUnits()Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object p0

    return-object p0
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

.method public final getFirstApi(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LR3/f;->e(Landroid/content/Context;)Z

    sget-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-nez p0, :cond_0

    invoke-static {}, LR3/f;->b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    move-result-object p0

    sput-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    :cond_0
    sget-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->getProfile()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/profile/Profile;->getFirstApi()I

    move-result p0

    return p0

    :cond_2
    const-string p0, "storage"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getLocationAuthority(Landroid/content/Context;)I
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getDataLevel()I

    move-result p0

    const/4 v0, 0x3

    if-gt v0, p0, :cond_3

    invoke-static {p1}, Lm3/d;->c(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getLocationAuthority()I

    move-result p0

    sget-object v0, Lcom/samsung/android/weather/domain/WeatherRegion;->INSTANCE:Lcom/samsung/android/weather/domain/WeatherRegion;

    invoke-static {p1}, LR3/f;->e(Landroid/content/Context;)Z

    sget-object p1, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-nez p1, :cond_0

    invoke-static {}, LR3/f;->b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    move-result-object p1

    sput-object p1, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    :cond_0
    sget-object p1, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->getProfile()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/profile/Profile;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/weather/domain/WeatherRegion;->isChina(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "storage"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    const/4 p0, 0x0

    :cond_4
    :goto_0
    return p0
.end method

.method public final getNetworkCharges(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getDataLevel()I

    move-result p0

    const/4 v0, 0x3

    if-gt v0, p0, :cond_0

    invoke-static {p1}, Lm3/d;->c(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getNetworkCharges()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getOneUiVersion(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LR3/f;->e(Landroid/content/Context;)Z

    sget-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-nez p0, :cond_0

    invoke-static {}, LR3/f;->b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    move-result-object p0

    sput-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    :cond_0
    sget-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->getProfile()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/profile/Profile;->getOneUiVersion()I

    move-result p0

    return p0

    :cond_2
    const-string p0, "storage"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getPermissionNotice(Landroid/content/Context;)I
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getDataLevel()I

    move-result p0

    const/4 v0, 0x3

    if-gt v0, p0, :cond_3

    invoke-static {p1}, Lm3/d;->c(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getPermissionNotice()I

    move-result p0

    sget-object v0, Lcom/samsung/android/weather/domain/WeatherRegion;->INSTANCE:Lcom/samsung/android/weather/domain/WeatherRegion;

    invoke-static {p1}, LR3/f;->e(Landroid/content/Context;)Z

    sget-object p1, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-nez p1, :cond_0

    invoke-static {}, LR3/f;->b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    move-result-object p1

    sput-object p1, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    :cond_0
    sget-object p1, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->getProfile()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/profile/Profile;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/weather/domain/WeatherRegion;->isChina(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "storage"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    const/4 p0, 0x0

    :cond_4
    :goto_0
    return p0
.end method

.method public final getSalesCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LR3/f;->e(Landroid/content/Context;)Z

    sget-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-nez p0, :cond_0

    invoke-static {}, LR3/f;->b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    move-result-object p0

    sput-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    :cond_0
    sget-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->getProfile()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/profile/Profile;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "storage"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getSetting(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getDataLevel()I

    move-result p0

    const/4 v0, 0x3

    if-gt v0, p0, :cond_0

    invoke-static {p1}, Lm3/d;->c(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

.method public final init(Landroid/content/Context;Lcom/samsung/android/weather/api/source/WeatherStorageApi;)V
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "storageApi"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getDataLevel()I

    move-result p0

    const/4 v0, 0x3

    if-gt v0, p0, :cond_0

    invoke-static {p1, p2}, LR3/f;->a(Landroid/content/Context;Lcom/samsung/android/weather/api/source/WeatherStorageApi;)I

    :cond_0
    return-void
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

.method public final updateLocationAuthority(I)V
    .locals 2

    sget-object p0, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getDataLevel()I

    move-result p0

    const/4 v0, 0x3

    if-gt v0, p0, :cond_0

    sget-object p0, Lk3/b;->b:LZ4/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "COL_SETTING_SHOW_WLAN_POPUP"

    invoke-virtual {p0, v0, v1}, LZ4/c;->a(Ljava/lang/Object;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "COL_SETTING_SHOW_MOBILE_POPUP"

    invoke-virtual {p0, p1, v0}, LZ4/c;->a(Ljava/lang/Object;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final updateNetworkCharges(I)V
    .locals 1

    sget-object p0, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getDataLevel()I

    move-result p0

    const/4 v0, 0x3

    if-gt v0, p0, :cond_0

    sget-object p0, Lk3/b;->b:LZ4/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "COL_SETTING_SHOW_CHARGER_POPUP"

    invoke-virtual {p0, p1, v0}, LZ4/c;->a(Ljava/lang/Object;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final updatePermissionNotice(I)I
    .locals 1

    sget-object p0, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getDataLevel()I

    move-result p0

    const/4 v0, 0x3

    if-gt v0, p0, :cond_0

    sget-object p0, Lk3/b;->b:LZ4/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "COL_SETTING_PERMISSION_NOTICE"

    invoke-virtual {p0, p1, v0}, LZ4/c;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final updateTempScale(I)V
    .locals 1

    sget-object p0, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getDataLevel()I

    move-result p0

    const/4 v0, 0x3

    if-gt v0, p0, :cond_0

    sget-object p0, Lk3/b;->b:LZ4/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "COL_SETTING_TEMP_SCALE"

    invoke-virtual {p0, p1, v0}, LZ4/c;->a(Ljava/lang/Object;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final updateUseCurrentLocation(I)V
    .locals 2

    sget-object p0, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getDataLevel()I

    move-result p0

    const/4 v0, 0x3

    if-gt v0, p0, :cond_4

    sget-object p0, Lk3/b;->b:LZ4/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "COL_SETTING_SHOW_USE_LOCATION_POPUP"

    invoke-virtual {p0, p1, v0}, LZ4/c;->a(Ljava/lang/Object;Ljava/lang/String;)I

    invoke-virtual {p0}, LZ4/c;->b()Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "COL_SETTING_PP_VERSION"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    const-string p1, "2"

    :cond_3
    const-string v0, "COL_SETTING_DEFAULT_LOCATION"

    invoke-virtual {p0, p1, v0}, LZ4/c;->a(Ljava/lang/Object;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
