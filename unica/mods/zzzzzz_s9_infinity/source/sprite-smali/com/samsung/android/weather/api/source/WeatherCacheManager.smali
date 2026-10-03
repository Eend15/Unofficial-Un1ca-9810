.class public final Lcom/samsung/android/weather/api/source/WeatherCacheManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/weather/api/source/WeatherStorageApi;


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0011\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\t\u0010\rJ\u001d\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u001c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u001c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u001f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\"\u0010!R\u001c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u001f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008#\u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/source/WeatherCacheManager;",
        "Lcom/samsung/android/weather/api/source/WeatherStorageApi;",
        "<init>",
        "()V",
        "Lcom/samsung/android/weather/api/entity/weather/Weather;",
        "getFavoriteWeather",
        "()Lcom/samsung/android/weather/api/entity/weather/Weather;",
        "getCurrentWeather",
        "",
        "getWeather",
        "()Ljava/util/List;",
        "",
        "key",
        "(Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/Weather;",
        "weathers",
        "",
        "updateWeather",
        "(Ljava/util/List;)I",
        "Lcom/samsung/android/weather/api/entity/settings/Setting;",
        "setting",
        "Lq3/m;",
        "updateSetting",
        "(Lcom/samsung/android/weather/api/entity/settings/Setting;)V",
        "getSetting",
        "()Lcom/samsung/android/weather/api/entity/settings/Setting;",
        "Lcom/samsung/android/weather/api/entity/profile/Profile;",
        "profile",
        "updateProfile",
        "(Lcom/samsung/android/weather/api/entity/profile/Profile;)V",
        "getProfile",
        "()Lcom/samsung/android/weather/api/entity/profile/Profile;",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "_weatherCache",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "_settingCache",
        "_profileCache",
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


# instance fields
.field private _profileCache:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/weather/api/entity/profile/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private _settingCache:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/weather/api/entity/settings/Setting;",
            ">;"
        }
    .end annotation
.end field

.field private _weatherCache:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/weather/api/entity/weather/Weather;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentWeather()Lcom/samsung/android/weather/api/entity/weather/Weather;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/source/WeatherCacheManager;->getWeather()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/weather/api/entity/weather/Weather;

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getLocation()Lcom/samsung/android/weather/api/entity/weather/Location;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/weather/api/entity/weather/LocationKt;->isCurrentLocation(Lcom/samsung/android/weather/api/entity/weather/Location;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_1
    check-cast v0, Lcom/samsung/android/weather/api/entity/weather/Weather;

    :cond_2
    return-object v0
.end method

.method public getFavoriteWeather()Lcom/samsung/android/weather/api/entity/weather/Weather;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/source/WeatherCacheManager;->getWeather()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/weather/api/entity/weather/Weather;

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getLocation()Lcom/samsung/android/weather/api/entity/weather/Location;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/Location;->isFavorite()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_1
    check-cast v0, Lcom/samsung/android/weather/api/entity/weather/Weather;

    :cond_2
    return-object v0
.end method

.method public getProfile()Lcom/samsung/android/weather/api/entity/profile/Profile;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/weather/api/source/WeatherCacheManager;->_profileCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/weather/api/entity/profile/Profile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    move-object p0, v0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p0

    :goto_2
    instance-of v1, p0, Lq3/g;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, p0

    :goto_3
    check-cast v0, Lcom/samsung/android/weather/api/entity/profile/Profile;

    :goto_4
    return-object v0
.end method

.method public getSetting()Lcom/samsung/android/weather/api/entity/settings/Setting;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/weather/api/source/WeatherCacheManager;->_settingCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/weather/api/entity/settings/Setting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    move-object p0, v0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p0

    :goto_2
    instance-of v1, p0, Lq3/g;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, p0

    :goto_3
    check-cast v0, Lcom/samsung/android/weather/api/entity/settings/Setting;

    :goto_4
    return-object v0
.end method

.method public getWeather(Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/Weather;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/weather/api/source/WeatherCacheManager;->getWeather()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/weather/api/entity/weather/Weather;

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getLocation()Lcom/samsung/android/weather/api/entity/weather/Location;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/Location;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_1
    check-cast v0, Lcom/samsung/android/weather/api/entity/weather/Weather;

    :cond_2
    return-object v0
.end method

.method public getWeather()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/weather/Weather;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/weather/api/source/WeatherCacheManager;->_weatherCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V
    .locals 3

    const-string v0, "profile"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/weather/api/source/WeatherCacheManager;->_profileCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/weather/api/source/WeatherCacheManager;->_profileCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/weather/api/source/WeatherCacheManager;->_profileCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    const-string v2, "_profileCache"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object p0, p0, Lcom/samsung/android/weather/api/source/WeatherCacheManager;->_profileCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1
.end method

.method public updateSetting(Lcom/samsung/android/weather/api/entity/settings/Setting;)V
    .locals 3

    const-string v0, "setting"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/weather/api/source/WeatherCacheManager;->_settingCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/weather/api/source/WeatherCacheManager;->_settingCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/weather/api/source/WeatherCacheManager;->_settingCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    const-string v2, "_settingCache"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object p0, p0, Lcom/samsung/android/weather/api/source/WeatherCacheManager;->_settingCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1
.end method

.method public updateWeather(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/weather/Weather;",
            ">;)I"
        }
    .end annotation

    const-string v0, "weathers"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/weather/api/source/WeatherCacheManager;->_weatherCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/weather/api/source/WeatherCacheManager;->_weatherCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/weather/api/source/WeatherCacheManager;->_weatherCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    const-string v2, "_weatherCache"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object p0, p0, Lcom/samsung/android/weather/api/source/WeatherCacheManager;->_weatherCache:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v1
.end method
