.class public final Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;
.super Lcom/samsung/android/weather/api/entity/content/InsightContent$AdditionalInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/weather/api/entity/content/InsightContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UV"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;",
        "Lcom/samsung/android/weather/api/entity/content/InsightContent$AdditionalInfo;",
        "uvValue",
        "",
        "maxValue",
        "<init>",
        "(II)V",
        "getUvValue",
        "()I",
        "getMaxValue",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
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
.field private final maxValue:I

.field private final uvValue:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/weather/api/entity/content/InsightContent$AdditionalInfo;-><init>()V

    iput p1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;->uvValue:I

    iput p2, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;->maxValue:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;IIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;->uvValue:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;->maxValue:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;->copy(II)Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;->uvValue:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;->maxValue:I

    return p0
.end method

.method public final copy(II)Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;
    .locals 0

    new-instance p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;-><init>(II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;

    iget v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;->uvValue:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;->uvValue:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;->maxValue:I

    iget p1, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;->maxValue:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getMaxValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;->maxValue:I

    return p0
.end method

.method public final getUvValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;->uvValue:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;->uvValue:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;->maxValue:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;->uvValue:I

    iget p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;->maxValue:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UV(uvValue="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maxValue="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
