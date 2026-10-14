.class public final Lcom/samsung/android/weather/api/entity/weather/AQIKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "toPM10",
        "Lcom/samsung/android/weather/api/entity/weather/PM10;",
        "Lcom/samsung/android/weather/api/entity/weather/AQI;",
        "toPM25",
        "Lcom/samsung/android/weather/api/entity/weather/PM25;",
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
.method public static final toPM10(Lcom/samsung/android/weather/api/entity/weather/AQI;)Lcom/samsung/android/weather/api/entity/weather/PM10;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getValue()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getMaxValue()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getLevel()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getLevelRange()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getLevelPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getValuePhrase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getUrl()Ljava/lang/String;

    move-result-object v11

    new-instance p0, Lcom/samsung/android/weather/api/entity/weather/PM10;

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/weather/api/entity/weather/PM10;-><init>(Ljava/lang/String;Ljava/lang/String;FIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toPM25(Lcom/samsung/android/weather/api/entity/weather/AQI;)Lcom/samsung/android/weather/api/entity/weather/PM25;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getValue()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getMaxValue()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getLevel()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getLevelRange()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getLevelPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getValuePhrase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/AQI;->getUrl()Ljava/lang/String;

    move-result-object v11

    new-instance p0, Lcom/samsung/android/weather/api/entity/weather/PM25;

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/weather/api/entity/weather/PM25;-><init>(Ljava/lang/String;Ljava/lang/String;FIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
