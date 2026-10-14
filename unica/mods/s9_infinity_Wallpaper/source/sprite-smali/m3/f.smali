.class public abstract Lm3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/content/WeatherLogo;
    .locals 12

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeCp"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCode"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/weather/domain/WeatherRegion;->INSTANCE:Lcom/samsung/android/weather/domain/WeatherRegion;

    invoke-static {p0}, LR3/f;->e(Landroid/content/Context;)Z

    sget-object v1, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-nez v1, :cond_0

    invoke-static {}, LR3/f;->b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    move-result-object v1

    sput-object v1, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    :cond_0
    sget-object v1, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    const/4 v2, 0x0

    const-string v3, "storage"

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->getProfile()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    :cond_1
    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/profile/Profile;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/weather/domain/WeatherRegion;->isKorea(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "KOR"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;

    new-instance v1, Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source$Text;

    sget p2, LY2/d;->weather_news:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(...)"

    invoke-static {p2, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p2}, Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source$Text;-><init>(Ljava/lang/String;)V

    sget p2, LY2/d;->korea_meteorological_administration:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;-><init>(Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;Ljava/lang/String;Ljava/lang/String;ILF3/f;)V

    goto/16 :goto_4

    :cond_2
    const-string p1, "KR"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, LY2/d;->korea_meteorological_administration:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_3
    const-string p1, ""

    goto :goto_0

    :goto_1
    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    new-instance p1, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;

    new-instance v1, Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source$Image;

    sget p2, LY2/b;->weather_detail_ic_twc_mtrl:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source$Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;-><init>(Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;Ljava/lang/String;Ljava/lang/String;ILF3/f;)V

    goto/16 :goto_4

    :cond_4
    invoke-static {p0}, LR3/f;->e(Landroid/content/Context;)Z

    sget-object p2, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-nez p2, :cond_5

    invoke-static {}, LR3/f;->b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    move-result-object p2

    sput-object p2, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    :cond_5
    sget-object p2, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-eqz p2, :cond_e

    invoke-interface {p2}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->getProfile()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    :cond_6
    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/profile/Profile;->getCountryCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/weather/domain/WeatherRegion;->isJapan(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "JPN_V4"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "JPN"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;

    new-instance v1, Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source$Image;

    sget p2, LY2/b;->weather_detail_ic_twc_mtrl:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source$Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;-><init>(Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;Ljava/lang/String;Ljava/lang/String;ILF3/f;)V

    goto/16 :goto_4

    :cond_8
    :goto_2
    new-instance p1, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;

    new-instance v7, Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source$Image;

    sget p2, LY2/b;->weather_detail_ic_weathernews_logo:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v7, p0}, Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source$Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;-><init>(Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;Ljava/lang/String;Ljava/lang/String;ILF3/f;)V

    :goto_3
    move-object v0, p1

    goto :goto_4

    :cond_9
    invoke-static {p0}, LR3/f;->e(Landroid/content/Context;)Z

    sget-object p1, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-nez p1, :cond_a

    invoke-static {}, LR3/f;->b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    move-result-object p1

    sput-object p1, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    :cond_a
    sget-object p1, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->getProfile()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object p2

    if-nez p2, :cond_b

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    :cond_b
    invoke-virtual {p2}, Lcom/samsung/android/weather/api/entity/profile/Profile;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/weather/domain/WeatherRegion;->isChina(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    new-instance p1, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;

    new-instance v1, Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source$Image;

    sget p2, LY2/b;->weather_detail_ic_cn_mtrl:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source$Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;-><init>(Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;Ljava/lang/String;Ljava/lang/String;ILF3/f;)V

    goto :goto_4

    :cond_c
    new-instance p1, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;

    new-instance v7, Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source$Image;

    sget p2, LY2/b;->weather_detail_ic_twc_mtrl:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v7, p0}, Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source$Image;-><init>(Landroid/graphics/drawable/Drawable;)V

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;-><init>(Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;Ljava/lang/String;Ljava/lang/String;ILF3/f;)V

    goto :goto_3

    :goto_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->copy$default(Lcom/samsung/android/weather/api/entity/content/WeatherLogo;Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/content/WeatherLogo;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_e
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_f
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v2
.end method
