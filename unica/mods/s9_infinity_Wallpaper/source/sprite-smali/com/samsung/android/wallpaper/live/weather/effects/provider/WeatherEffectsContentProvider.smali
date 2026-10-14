.class public final Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 ]2\u00020\u0001:\u0001]B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010JO\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0010\u0010\u0014\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0004\u0018\u00010\u00132\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0010\u0010\u0015\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0004\u0018\u00010\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ#\u0010\u001d\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ3\u0010 \u001a\u00020\u001f2\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0010\u0010\u0015\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008 \u0010!J=\u0010\"\u001a\u00020\u001f2\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0010\u0010\u0015\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J-\u0010&\u001a\u0004\u0018\u00010\t2\u0006\u0010$\u001a\u00020\u00042\u0008\u0010%\u001a\u0004\u0018\u00010\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008&\u0010\'R(\u0010)\u001a\u00020(8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008)\u0010*\u0012\u0004\u0008/\u0010\u0003\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\"\u00101\u001a\u0002008\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\"\u00108\u001a\u0002078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\"\u0010?\u001a\u00020>8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\"\u0010F\u001a\u00020E8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008F\u0010G\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\"\u0010M\u001a\u00020L8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008M\u0010N\u001a\u0004\u0008O\u0010P\"\u0004\u0008Q\u0010RR\"\u0010T\u001a\u00020S8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010YR\u0014\u0010[\u001a\u00020Z8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\\u00a8\u0006^"
    }
    d2 = {
        "Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;",
        "Landroid/content/ContentProvider;",
        "<init>",
        "()V",
        "",
        "selection",
        "Landroid/database/Cursor;",
        "getWeatherInfo",
        "(Ljava/lang/String;)Landroid/database/Cursor;",
        "Landroid/os/Bundle;",
        "extras",
        "Lq3/m;",
        "updateWallpaper",
        "(Landroid/os/Bundle;)V",
        "",
        "onCreate",
        "()Z",
        "Landroid/net/Uri;",
        "uri",
        "",
        "projection",
        "selectionArgs",
        "sortOrder",
        "query",
        "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;",
        "getType",
        "(Landroid/net/Uri;)Ljava/lang/String;",
        "Landroid/content/ContentValues;",
        "values",
        "insert",
        "(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;",
        "",
        "delete",
        "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I",
        "update",
        "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I",
        "method",
        "arg",
        "call",
        "(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;",
        "LW4/t;",
        "mainScope",
        "LW4/t;",
        "getMainScope",
        "()LW4/t;",
        "setMainScope",
        "(LW4/t;)V",
        "getMainScope$annotations",
        "Lq2/a;",
        "interactor",
        "Lq2/a;",
        "getInteractor",
        "()Lq2/a;",
        "setInteractor",
        "(Lq2/a;)V",
        "Ls1/b;",
        "getCurrentWeatherData",
        "Ls1/b;",
        "getGetCurrentWeatherData",
        "()Ls1/b;",
        "setGetCurrentWeatherData",
        "(Ls1/b;)V",
        "Lr1/c;",
        "weatherRepository",
        "Lr1/c;",
        "getWeatherRepository",
        "()Lr1/c;",
        "setWeatherRepository",
        "(Lr1/c;)V",
        "Lk2/c;",
        "startEnableWeather",
        "Lk2/c;",
        "getStartEnableWeather",
        "()Lk2/c;",
        "setStartEnableWeather",
        "(Lk2/c;)V",
        "Lk2/d;",
        "startRegisterCity",
        "Lk2/d;",
        "getStartRegisterCity",
        "()Lk2/d;",
        "setStartRegisterCity",
        "(Lk2/d;)V",
        "Li2/b;",
        "weatherEffectPreference",
        "Li2/b;",
        "getWeatherEffectPreference",
        "()Li2/b;",
        "setWeatherEffectPreference",
        "(Li2/b;)V",
        "Landroid/content/UriMatcher;",
        "uriMatcher",
        "Landroid/content/UriMatcher;",
        "Companion",
        "SpriteWallpaper_release"
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
.field public static final Companion:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$Companion;

.field public static final TAG:Ljava/lang/String; = "WeatherEffectsContentProvider"


# instance fields
.field public getCurrentWeatherData:Ls1/b;

.field public interactor:Lq2/a;

.field public mainScope:LW4/t;

.field public startEnableWeather:Lk2/c;

.field public startRegisterCity:Lk2/d;

.field private final uriMatcher:Landroid/content/UriMatcher;

.field public weatherEffectPreference:Li2/b;

.field public weatherRepository:Lr1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$Companion;-><init>(LF3/f;)V

    sput-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->Companion:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    const-string v1, "update_wallpaper"

    const/4 v2, 0x0

    const-string v3, "com.samsung.android.wallpaper.live.weather.effectprovider"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "weather_info"

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method public static synthetic getMainScope$annotations()V
    .locals 0

    return-void
.end method

.method private final getWeatherInfo(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    const-string v0, "Get wether info : "

    invoke-static {v0, p1}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "WeatherEffectsContentProvider"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "current_weather"

    invoke-static {p1, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->getGetCurrentWeatherData()Ls1/b;

    move-result-object p0

    new-instance p1, Ls1/a;

    invoke-direct {p1, v1, v1}, Ls1/a;-><init>(ZZ)V

    invoke-virtual {p0, p1}, Ls1/b;->a(Ls1/a;)Lq1/a;

    move-result-object p0

    if-eqz p0, :cond_8

    new-instance p1, Landroid/database/MatrixCursor;

    const-string v8, "COL_WEATHER_SUNSET_TIME"

    const-string v9, "COL_WEATHER_ARCTIC_NIGHT_TYPE"

    const-string v0, "COL_WEATHER_NAME"

    const-string v1, "COL_WEATHER_TIME"

    const-string v2, "COL_WEATHER_TIMEZONE"

    const-string v3, "COL_WEATHER_CONVERTED_ICON_NUM"

    const-string v4, "COL_WEATHER_CURRENT_TEMP"

    const-string v5, "COL_WEATHER_WEATHER_TEXT"

    const-string v6, "COL_WEATHER_UPDATE_TIME"

    const-string v7, "COL_WEATHER_SUNRISE_TIME"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iget-wide v0, p0, Lq1/a;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v0, p0, Lq1/a;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Lq1/a;->e:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-wide v0, p0, Lq1/a;->g:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v0, p0, Lq1/a;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v0, p0, Lq1/a;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget v0, p0, Lq1/a;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v7, p0, Lq1/a;->f:Ljava/lang/String;

    iget-object v2, p0, Lq1/a;->a:Ljava/lang/String;

    iget-object v4, p0, Lq1/a;->c:Ljava/lang/String;

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string v0, "weather_daemon_state"

    invoke-static {p1, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Landroid/database/MatrixCursor;

    const-string v0, "COL_HAS_ANY_FAVORITE_CITY"

    const-string v2, "COL_HAS_CURRENT_CITY"

    const-string v3, "COL_FAVORITE_IS_CURRENT_CITY"

    const-string v4, "COL_CURRENT_CITY_NAME"

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->getWeatherRepository()Lr1/c;

    move-result-object v0

    invoke-virtual {v0}, Lr1/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->getWeatherRepository()Lr1/c;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    :goto_1
    xor-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->getWeatherRepository()Lr1/c;

    move-result-object v4

    invoke-virtual {v4}, Lr1/c;->b()Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "cityId:current"

    if-eqz v5, :cond_5

    sget-object v5, Lcom/samsung/android/weather/api/WeatherApi;->INSTANCE:Lcom/samsung/android/weather/api/WeatherApi;

    iget-object v4, v4, Lr1/c;->a:Landroid/content/Context;

    invoke-virtual {v5, v4}, Lcom/samsung/android/weather/api/WeatherApi;->getAllWeather(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/samsung/android/weather/api/entity/weather/Weather;

    invoke-virtual {v8}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getLocation()Lcom/samsung/android/weather/api/entity/weather/Location;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/weather/api/entity/weather/Location;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_4
    move-object v5, v6

    :goto_2
    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    move v2, v1

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->getWeatherRepository()Lr1/c;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->getWeatherRepository()Lr1/c;

    move-result-object p0

    invoke-virtual {p0}, Lr1/c;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/samsung/android/weather/api/WeatherApi;->INSTANCE:Lcom/samsung/android/weather/api/WeatherApi;

    iget-object p0, p0, Lr1/c;->a:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/samsung/android/weather/api/WeatherApi;->getCurrentLocationWeather(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/weather/Weather;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getLocation()Lcom/samsung/android/weather/api/entity/weather/Location;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Location;->getCityName()Ljava/lang/String;

    move-result-object v6

    :cond_7
    filled-new-array {v3, v2, v0, v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p1

    :cond_8
    new-instance p0, Landroid/database/MatrixCursor;

    new-array p1, v1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method private final updateWallpaper(Landroid/os/Bundle;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "foreground_texture_pfd"

    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    const-string v0, "background_texture_pfd"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    const-string v0, "foreground_bounds"

    const-class v1, Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/graphics/Rect;

    const-string v0, "weather_effect"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "is_preview"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "is_outdoor"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v2, "is_night"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v2, "has_object"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Update wallpaper type = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", is preview = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bounds: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WeatherEffectsContentProvider"

    invoke-static {v2, p1, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->getMainScope()LW4/t;

    move-result-object p1

    invoke-interface {p1}, LW4/t;->c()Lu3/i;

    move-result-object p1

    sget-object v0, LW4/r;->e:LW4/r;

    invoke-interface {p1, v0}, Lu3/i;->W(Lu3/h;)Lu3/g;

    move-result-object p1

    check-cast p1, LW4/P;

    if-eqz p1, :cond_1

    invoke-interface {p1}, LW4/P;->a()Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->getInteractor()Lq2/a;

    move-result-object p0

    new-instance p1, Lv2/b;

    sget-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->Companion:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect$Companion;

    invoke-virtual {v0, v7}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect$Companion;->fromStringValue(Ljava/lang/String;)Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    move-result-object v0

    move-object v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v0

    move v7, v8

    move v8, v9

    move v9, v10

    invoke-direct/range {v2 .. v9}, Lv2/b;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;ZZZ)V

    invoke-virtual {p0, p1}, Lq2/a;->b(Lv2/b;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->getMainScope()LW4/t;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;

    const/4 v11, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider$updateWallpaper$1;-><init>(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/graphics/Rect;Ljava/lang/String;ZZZLu3/d;)V

    invoke-static {p1, v0}, LW4/u;->h(LW4/t;LE3/c;)LW4/x;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    const-string p2, "method"

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "Call method = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "WeatherEffectsContentProvider"

    invoke-static {v2, p2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string p0, "Context is null."

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v2, -0x7d5f54a

    const/high16 v3, 0x10000000

    const-string v4, "com.sec.android.daemonapp"

    const-string v5, "com.samsung.android.wallpaper.live"

    const-string v6, "PACKAGE"

    if-eq p2, v2, :cond_5

    const v2, 0x120fc27b

    if-eq p2, v2, :cond_3

    const v0, 0x3bd19a0c

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "update_wallpaper"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0, p3}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->updateWallpaper(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const-string p2, "show_weather_settings_screen"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->getStartEnableWeather()Lk2/c;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "CheckWeatherEnabled"

    const-string p3, "Start enable weather screen."

    invoke-static {p2, p3, p1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.android.weather.intent.action.SETTING"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lk2/c;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string p2, "show_city_register_screen"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->getStartRegisterCity()Lk2/d;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "CheckCityRegistered"

    const-string p3, "Start register city screen."

    invoke-static {p2, p3, p1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.sec.android.widgetapp.weather.intent.action.START_ACTIVITY_SETTING_VIEW"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lk2/d;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_7
    :goto_0
    return-object v1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getGetCurrentWeatherData()Ls1/b;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->getCurrentWeatherData:Ls1/b;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "getCurrentWeatherData"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getInteractor()Lq2/a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->interactor:Lq2/a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "interactor"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getMainScope()LW4/t;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->mainScope:LW4/t;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mainScope"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getStartEnableWeather()Lk2/c;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->startEnableWeather:Lk2/c;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "startEnableWeather"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getStartRegisterCity()Lk2/d;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->startRegisterCity:Lk2/d;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "startRegisterCity"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getWeatherEffectPreference()Li2/b;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->weatherEffectPreference:Li2/b;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "weatherEffectPreference"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getWeatherRepository()Lr1/c;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->weatherRepository:Lr1/c;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "weatherRepository"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 11

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    sget-object v1, Lj0/s;->a:Ll2/a;

    if-nez v1, :cond_0

    sget-object v10, Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;->d:Landroidx/recyclerview/widget/b;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LT2/b;

    const/4 v1, 0x3

    invoke-direct {v3, v0, v1}, LT2/b;-><init>(Landroid/content/Context;I)V

    new-instance v4, LG4/d;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {v4, v0, v1}, LG4/d;-><init>(IZ)V

    new-instance v5, LG4/d;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, LG4/d;-><init>(IZ)V

    new-instance v6, LU0/e;

    const/4 v0, 0x2

    invoke-direct {v6, v0}, LU0/e;-><init>(I)V

    new-instance v7, LD2/b;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v8, LG4/d;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {v8, v0, v1}, LG4/d;-><init>(IZ)V

    new-instance v9, LU0/e;

    const/4 v0, 0x3

    invoke-direct {v9, v0}, LU0/e;-><init>(I)V

    new-instance v1, Ll2/a;

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ll2/a;-><init>(LT2/b;LG4/d;LG4/d;LU0/e;LD2/b;LG4/d;LU0/e;Landroidx/recyclerview/widget/b;)V

    sput-object v1, Lj0/s;->a:Ll2/a;

    :cond_0
    iget-object v0, v1, Ll2/a;->a:Landroidx/recyclerview/widget/b;

    iget-object v2, v0, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    check-cast v2, Lh3/b;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LW4/t;

    invoke-static {v2}, Le0/a;->t(Ljava/lang/Object;)V

    invoke-static {p0, v2}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->injectMainScope(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;LW4/t;)V

    new-instance v2, Lq2/a;

    iget-object v3, v1, Ll2/a;->p:Lh3/b;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp2/d;

    invoke-direct {v2, v3}, Lq2/a;-><init>(Lp2/d;)V

    invoke-static {p0, v2}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->injectInteractor(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Lq2/a;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->I()Ls1/b;

    move-result-object v2

    invoke-static {v2}, Le0/a;->t(Ljava/lang/Object;)V

    invoke-static {p0, v2}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->injectGetCurrentWeatherData(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Ls1/b;)V

    new-instance v2, Lr1/c;

    iget-object v3, v0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v3, Lh3/b;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    new-instance v4, Li2/b;

    iget-object v0, v0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lh3/b;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v4, v0}, Li2/b;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3, v4}, Lr1/c;-><init>(Landroid/content/Context;Li2/b;)V

    invoke-static {p0, v2}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->injectWeatherRepository(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Lr1/c;)V

    new-instance v0, Lk2/c;

    iget-object v2, v1, Ll2/a;->c:Lh3/b;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Lk2/c;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->injectStartEnableWeather(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Lk2/c;)V

    new-instance v0, Lk2/d;

    iget-object v2, v1, Ll2/a;->c:Lh3/b;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Lk2/d;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->injectStartRegisterCity(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Lk2/d;)V

    new-instance v0, Li2/b;

    iget-object v1, v1, Ll2/a;->c:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Li2/b;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->injectWeatherEffectPreference(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Li2/b;)V

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const-string p2, "uri"

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Query uri : "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", selection = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    new-array p5, p4, [Ljava/lang/Object;

    const-string v0, "WeatherEffectsContentProvider"

    invoke-static {v0, p2, p5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->getWeatherInfo(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/database/MatrixCursor;

    new-array p1, p4, [Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method public final setGetCurrentWeatherData(Ls1/b;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->getCurrentWeatherData:Ls1/b;

    return-void
.end method

.method public final setInteractor(Lq2/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->interactor:Lq2/a;

    return-void
.end method

.method public final setMainScope(LW4/t;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->mainScope:LW4/t;

    return-void
.end method

.method public final setStartEnableWeather(Lk2/c;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->startEnableWeather:Lk2/c;

    return-void
.end method

.method public final setStartRegisterCity(Lk2/d;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->startRegisterCity:Lk2/d;

    return-void
.end method

.method public final setWeatherEffectPreference(Li2/b;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->weatherEffectPreference:Li2/b;

    return-void
.end method

.method public final setWeatherRepository(Lr1/c;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->weatherRepository:Lr1/c;

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
