.class public final Lcom/samsung/android/weather/api/entity/weather/Temp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/weather/Temp;",
        "",
        "value",
        "",
        "convertedValue",
        "",
        "<init>",
        "(FI)V",
        "getValue",
        "()F",
        "getConvertedValue",
        "()I",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
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
.field private final convertedValue:I

.field private final value:F


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/samsung/android/weather/api/entity/weather/Temp;->value:F

    .line 4
    iput p2, p0, Lcom/samsung/android/weather/api/entity/weather/Temp;->convertedValue:I

    return-void
.end method

.method public synthetic constructor <init>(FIILF3/f;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const p1, 0x4479c000    # 999.0f

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/16 p2, 0x3e7

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/weather/Temp;FIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Temp;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/samsung/android/weather/api/entity/weather/Temp;->value:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/samsung/android/weather/api/entity/weather/Temp;->convertedValue:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/weather/api/entity/weather/Temp;->copy(FI)Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Temp;->value:F

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Temp;->convertedValue:I

    return p0
.end method

.method public final copy(FI)Lcom/samsung/android/weather/api/entity/weather/Temp;
    .locals 0

    new-instance p0, Lcom/samsung/android/weather/api/entity/weather/Temp;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FI)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/weather/Temp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/weather/Temp;

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Temp;->value:F

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/Temp;->value:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Temp;->convertedValue:I

    iget p1, p1, Lcom/samsung/android/weather/api/entity/weather/Temp;->convertedValue:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getConvertedValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Temp;->convertedValue:I

    return p0
.end method

.method public final getValue()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Temp;->value:F

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/weather/api/entity/weather/Temp;->value:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Temp;->convertedValue:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/samsung/android/weather/api/entity/weather/Temp;->value:F

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Temp;->convertedValue:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Temp(value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", convertedValue="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
