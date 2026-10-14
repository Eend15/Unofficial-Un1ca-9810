.class public interface abstract Lcom/samsung/android/weather/api/source/WeatherStorageApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008g\u0018\u00002\u00020\u0001J\u0011\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\nH&\u00a2\u0006\u0004\u0008\u0008\u0010\u000bJ\u001d\u0010\u000e\u001a\u00020\r2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\nH&\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0011\u0010\u0015\u001a\u0004\u0018\u00010\u0010H&\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0017H&\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u0017H&\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u001d\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/source/WeatherStorageApi;",
        "",
        "Lcom/samsung/android/weather/api/entity/weather/Weather;",
        "getFavoriteWeather",
        "()Lcom/samsung/android/weather/api/entity/weather/Weather;",
        "getCurrentWeather",
        "",
        "key",
        "getWeather",
        "(Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/Weather;",
        "",
        "()Ljava/util/List;",
        "weather",
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


# virtual methods
.method public abstract getCurrentWeather()Lcom/samsung/android/weather/api/entity/weather/Weather;
.end method

.method public abstract getFavoriteWeather()Lcom/samsung/android/weather/api/entity/weather/Weather;
.end method

.method public abstract getProfile()Lcom/samsung/android/weather/api/entity/profile/Profile;
.end method

.method public abstract getSetting()Lcom/samsung/android/weather/api/entity/settings/Setting;
.end method

.method public abstract getWeather(Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/Weather;
.end method

.method public abstract getWeather()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/weather/Weather;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V
.end method

.method public abstract updateSetting(Lcom/samsung/android/weather/api/entity/settings/Setting;)V
.end method

.method public abstract updateWeather(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/weather/Weather;",
            ">;)I"
        }
    .end annotation
.end method
