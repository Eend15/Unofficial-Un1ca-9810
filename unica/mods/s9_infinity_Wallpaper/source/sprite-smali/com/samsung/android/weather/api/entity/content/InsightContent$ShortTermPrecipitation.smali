.class public final Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;
.super Lcom/samsung/android/weather/api/entity/content/InsightContent$AdditionalInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/weather/api/entity/content/InsightContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShortTermPrecipitation"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;",
        "Lcom/samsung/android/weather/api/entity/content/InsightContent$AdditionalInfo;",
        "data",
        "",
        "precipType",
        "",
        "expiredTime",
        "",
        "<init>",
        "(Ljava/lang/String;IJ)V",
        "getData",
        "()Ljava/lang/String;",
        "getPrecipType",
        "()I",
        "getExpiredTime",
        "()J",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
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
.field private final data:Ljava/lang/String;

.field private final expiredTime:J

.field private final precipType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/weather/api/entity/content/InsightContent$AdditionalInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->data:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->precipType:I

    iput-wide p3, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->expiredTime:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;Ljava/lang/String;IJILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->data:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->precipType:I

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-wide p3, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->expiredTime:J

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->copy(Ljava/lang/String;IJ)Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->data:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->precipType:I

    return p0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->expiredTime:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;IJ)Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;
    .locals 0

    const-string p0, "data"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;-><init>(Ljava/lang/String;IJ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->data:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->precipType:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->precipType:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->expiredTime:J

    iget-wide p0, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->expiredTime:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->data:Ljava/lang/String;

    return-object p0
.end method

.method public final getExpiredTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->expiredTime:J

    return-wide v0
.end method

.method public final getPrecipType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->precipType:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->precipType:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->expiredTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->data:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->precipType:I

    iget-wide v2, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;->expiredTime:J

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "ShortTermPrecipitation(data="

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", precipType="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", expiredTime="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
