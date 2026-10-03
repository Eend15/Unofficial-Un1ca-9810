.class public final Li2/b;
.super LD4/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pref_weather_effect"

    invoke-direct {p0, p1, v0}, LD4/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final F0()Z
    .locals 3

    iget-object p0, p0, LD4/a;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/SharedPreferences;

    const-string v0, "test_mode_enabled"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const-string v0, "test_mode_enabled = "

    invoke-static {v0, p0}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WeatherEffectPreference"

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method
