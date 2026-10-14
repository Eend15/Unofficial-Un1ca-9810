.class public final Lcom/samsung/android/weather/api/entity/content/WeatherLogo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;
    }
.end annotation

.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\u0018B+\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J-\u0010\u0011\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/content/WeatherLogo;",
        "",
        "source",
        "Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;",
        "provider",
        "",
        "url",
        "<init>",
        "(Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;Ljava/lang/String;Ljava/lang/String;)V",
        "getSource",
        "()Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;",
        "getProvider",
        "()Ljava/lang/String;",
        "getUrl",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "Source",
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
.field private final provider:Ljava/lang/String;

.field private final source:Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;-><init>(Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;Ljava/lang/String;Ljava/lang/String;ILF3/f;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->source:Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->provider:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->url:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;Ljava/lang/String;Ljava/lang/String;ILF3/f;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;-><init>(Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/content/WeatherLogo;Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/content/WeatherLogo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->source:Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->provider:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->url:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->copy(Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/content/WeatherLogo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->source:Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->provider:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/content/WeatherLogo;
    .locals 0

    new-instance p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;-><init>(Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->source:Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->source:Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->provider:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->provider:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->url:Ljava/lang/String;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->provider:Ljava/lang/String;

    return-object p0
.end method

.method public final getSource()Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->source:Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->url:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->source:Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->provider:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->url:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->source:Lcom/samsung/android/weather/api/entity/content/WeatherLogo$Source;

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->provider:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/WeatherLogo;->url:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WeatherLogo(source="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", provider="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v2, p0, v0}, LB/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
