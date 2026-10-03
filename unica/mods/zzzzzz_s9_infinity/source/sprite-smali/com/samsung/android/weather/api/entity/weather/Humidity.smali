.class public final Lcom/samsung/android/weather/api/entity/weather/Humidity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B7\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0007H\u00c6\u0003J;\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/weather/Humidity;",
        "",
        "value",
        "",
        "valueInt",
        "",
        "title",
        "",
        "valueUnitPhrase",
        "url",
        "<init>",
        "(FILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getValue",
        "()F",
        "getValueInt",
        "()I",
        "getTitle",
        "()Ljava/lang/String;",
        "getValueUnitPhrase",
        "getUrl",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final title:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final value:F

.field private final valueInt:I

.field private final valueUnitPhrase:Ljava/lang/String;


# direct methods
.method public constructor <init>(FILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueUnitPhrase"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p5, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->value:F

    .line 3
    iput p2, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->valueInt:I

    .line 4
    iput-object p3, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->title:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->valueUnitPhrase:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->url:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(FILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILF3/f;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    move v1, p1

    and-int/lit8 p1, p6, 0x4

    const-string p7, ""

    if-eqz p1, :cond_1

    move-object v3, p7

    goto :goto_0

    :cond_1
    move-object v3, p3

    :goto_0
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_2

    move-object v4, p7

    goto :goto_1

    :cond_2
    move-object v4, p4

    :goto_1
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_3

    move-object v5, p7

    goto :goto_2

    :cond_3
    move-object v5, p5

    :goto_2
    move-object v0, p0

    move v2, p2

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/weather/api/entity/weather/Humidity;-><init>(FILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/weather/Humidity;FILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Humidity;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->value:F

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->valueInt:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->title:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->valueUnitPhrase:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->url:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/samsung/android/weather/api/entity/weather/Humidity;->copy(FILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/Humidity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->value:F

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->valueInt:I

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->valueUnitPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(FILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/Humidity;
    .locals 6

    const-string p0, "title"

    invoke-static {p3, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "valueUnitPhrase"

    invoke-static {p4, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "url"

    invoke-static {p5, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/weather/api/entity/weather/Humidity;-><init>(FILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/weather/Humidity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/weather/Humidity;

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->value:F

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/Humidity;->value:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->valueInt:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/Humidity;->valueInt:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/Humidity;->title:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->valueUnitPhrase:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/Humidity;->valueUnitPhrase:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/weather/api/entity/weather/Humidity;->url:Ljava/lang/String;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->value:F

    return p0
.end method

.method public final getValueInt()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->valueInt:I

    return p0
.end method

.method public final getValueUnitPhrase()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->valueUnitPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->value:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->valueInt:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->valueUnitPhrase:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->url:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->value:F

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->valueInt:I

    iget-object v2, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->valueUnitPhrase:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Humidity;->url:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Humidity(value="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", valueInt="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", valueUnitPhrase="

    const-string v1, ", url="

    invoke-static {v4, v2, v0, v3, v1}, LB/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ")"

    invoke-static {v4, p0, v0}, LB/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
