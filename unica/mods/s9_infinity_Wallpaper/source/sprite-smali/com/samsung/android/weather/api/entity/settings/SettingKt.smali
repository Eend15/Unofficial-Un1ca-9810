.class public final Lcom/samsung/android/weather/api/entity/settings/SettingKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toDisplayUnit",
        "Lcom/samsung/android/weather/api/unit/WeatherUnits;",
        "Lcom/samsung/android/weather/api/entity/settings/Setting;",
        "weather-api-1.0.46_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toDisplayUnit(Lcom/samsung/android/weather/api/entity/settings/Setting;)Lcom/samsung/android/weather/api/unit/WeatherUnits;
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/weather/api/unit/WeatherUnits;

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getUnits()Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getUnitType()La3/G;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getUnits()Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getTempUnit()La3/J;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getUnits()Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getWindSpeedUnit()La3/B;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getUnits()Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getVisibilityUnit()La3/n;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getUnits()Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getPressureUnit()La3/u;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getUnits()Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getHumidityUnit()La3/q;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getUnits()Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getAirPollutantUnit()La3/g;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getUnits()Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getProbabilityUnit()La3/w;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getUnits()Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getPrecipitationAmountUnit()La3/k;

    move-result-object v10

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/weather/api/unit/WeatherUnits;-><init>(La3/G;La3/J;La3/B;La3/n;La3/u;La3/q;La3/g;La3/w;La3/k;)V

    return-object v0
.end method
