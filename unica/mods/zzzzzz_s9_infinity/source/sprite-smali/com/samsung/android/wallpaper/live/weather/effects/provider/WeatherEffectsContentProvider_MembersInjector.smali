.class public final Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg3/a;"
    }
.end annotation


# instance fields
.field private final getCurrentWeatherDataProvider:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a;"
        }
    .end annotation
.end field

.field private final interactorProvider:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a;"
        }
    .end annotation
.end field

.field private final mainScopeProvider:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a;"
        }
    .end annotation
.end field

.field private final startEnableWeatherProvider:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a;"
        }
    .end annotation
.end field

.field private final startRegisterCityProvider:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a;"
        }
    .end annotation
.end field

.field private final weatherEffectPreferenceProvider:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a;"
        }
    .end annotation
.end field

.field private final weatherRepositoryProvider:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a;",
            "Lo3/a;",
            "Lo3/a;",
            "Lo3/a;",
            "Lo3/a;",
            "Lo3/a;",
            "Lo3/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->mainScopeProvider:Lo3/a;

    iput-object p2, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->interactorProvider:Lo3/a;

    iput-object p3, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->getCurrentWeatherDataProvider:Lo3/a;

    iput-object p4, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->weatherRepositoryProvider:Lo3/a;

    iput-object p5, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->startEnableWeatherProvider:Lo3/a;

    iput-object p6, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->startRegisterCityProvider:Lo3/a;

    iput-object p7, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->weatherEffectPreferenceProvider:Lo3/a;

    return-void
.end method

.method public static create(Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;)Lg3/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a;",
            "Lo3/a;",
            "Lo3/a;",
            "Lo3/a;",
            "Lo3/a;",
            "Lo3/a;",
            "Lo3/a;",
            ")",
            "Lg3/a;"
        }
    .end annotation

    new-instance v8, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;-><init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V

    return-object v8
.end method

.method public static injectGetCurrentWeatherData(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Ls1/b;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->getCurrentWeatherData:Ls1/b;

    return-void
.end method

.method public static injectInteractor(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Lq2/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->interactor:Lq2/a;

    return-void
.end method

.method public static injectMainScope(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;LW4/t;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->mainScope:LW4/t;

    return-void
.end method

.method public static injectStartEnableWeather(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Lk2/c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->startEnableWeather:Lk2/c;

    return-void
.end method

.method public static injectStartRegisterCity(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Lk2/d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->startRegisterCity:Lk2/d;

    return-void
.end method

.method public static injectWeatherEffectPreference(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Li2/b;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->weatherEffectPreference:Li2/b;

    return-void
.end method

.method public static injectWeatherRepository(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Lr1/c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;->weatherRepository:Lr1/c;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->mainScopeProvider:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW4/t;

    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->injectMainScope(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;LW4/t;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->interactorProvider:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq2/a;

    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->injectInteractor(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Lq2/a;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->getCurrentWeatherDataProvider:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/b;

    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->injectGetCurrentWeatherData(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Ls1/b;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->weatherRepositoryProvider:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr1/c;

    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->injectWeatherRepository(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Lr1/c;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->startEnableWeatherProvider:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk2/c;

    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->injectStartEnableWeather(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Lk2/c;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->startRegisterCityProvider:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk2/d;

    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->injectStartRegisterCity(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Lk2/d;)V

    .line 8
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->weatherEffectPreferenceProvider:Lo3/a;

    invoke-interface {p0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li2/b;

    invoke-static {p1, p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->injectWeatherEffectPreference(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;Li2/b;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider_MembersInjector;->injectMembers(Lcom/samsung/android/wallpaper/live/weather/effects/provider/WeatherEffectsContentProvider;)V

    return-void
.end method
