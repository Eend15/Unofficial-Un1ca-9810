.class public final Lcom/samsung/android/weather/api/entity/weather/LocationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a\u0013\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0003\u001a\u0011\u0010\u0006\u001a\u00020\u0005*\u00020\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a\u0011\u0010\u0008\u001a\u00020\u0005*\u00020\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/weather/Location;",
        "",
        "isCurrentLocation",
        "(Lcom/samsung/android/weather/api/entity/weather/Location;)Z",
        "isRepresentative",
        "Lq3/m;",
        "assignToCurrent",
        "(Lcom/samsung/android/weather/api/entity/weather/Location;)V",
        "assignToRepresent",
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
.method public static final assignToCurrent(Lcom/samsung/android/weather/api/entity/weather/Location;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cityId:current"

    invoke-virtual {p0, v0}, Lcom/samsung/android/weather/api/entity/weather/Location;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method public static final assignToRepresent(Lcom/samsung/android/weather/api/entity/weather/Location;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cityId:represent"

    invoke-virtual {p0, v0}, Lcom/samsung/android/weather/api/entity/weather/Location;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method public static final isCurrentLocation(Lcom/samsung/android/weather/api/entity/weather/Location;)Z
    .locals 1
    .annotation build Le/a;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Location;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "cityId:current"

    invoke-static {p0, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isRepresentative(Lcom/samsung/android/weather/api/entity/weather/Location;)Z
    .locals 1
    .annotation build Le/a;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Location;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "cityId:represent"

    invoke-static {p0, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
