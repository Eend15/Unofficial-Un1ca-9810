.class public final Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001BC\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003JE\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00d6\u0001J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000eR\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000e\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006$"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;",
        "",
        "id",
        "",
        "severityCode",
        "",
        "description",
        "expireTime",
        "",
        "issueTime",
        "webUrl",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V",
        "getId",
        "()Ljava/lang/String;",
        "getSeverityCode",
        "()I",
        "getDescription",
        "getExpireTime",
        "()J",
        "getIssueTime",
        "getWebUrl",
        "setWebUrl",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
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
.field private final description:Ljava/lang/String;

.field private final expireTime:J

.field private final id:Ljava/lang/String;

.field private final issueTime:Ljava/lang/String;

.field private final severityCode:I

.field private webUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x3f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;-><init>(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;ILF3/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "issueTime"

    invoke-static {p6, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webUrl"

    invoke-static {p7, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->id:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->severityCode:I

    .line 5
    iput-object p3, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->description:Ljava/lang/String;

    .line 6
    iput-wide p4, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->expireTime:J

    .line 7
    iput-object p6, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->issueTime:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->webUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;ILF3/f;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const-string v0, ""

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    const-wide/16 p4, 0x0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move-object p6, v0

    :cond_4
    and-int/lit8 p8, p8, 0x20

    if-eqz p8, :cond_5

    move-object p7, v0

    .line 9
    :cond_5
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;-><init>(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget p2, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->severityCode:I

    :cond_1
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->description:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->expireTime:J

    :cond_3
    move-wide v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p6, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->issueTime:Ljava/lang/String;

    :cond_4
    move-object v3, p6

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p7, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->webUrl:Ljava/lang/String;

    :cond_5
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move p4, p9

    move-object p5, v0

    move-wide p6, v1

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->copy(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->severityCode:I

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->expireTime:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->issueTime:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->webUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;
    .locals 8

    const-string p0, "id"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "description"

    invoke-static {p3, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "issueTime"

    invoke-static {p6, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "webUrl"

    invoke-static {p7, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;-><init>(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->id:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->severityCode:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->severityCode:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->description:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->expireTime:J

    iget-wide v5, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->expireTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->issueTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->issueTime:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->webUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->webUrl:Ljava/lang/String;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getExpireTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->expireTime:J

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getIssueTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->issueTime:Ljava/lang/String;

    return-object p0
.end method

.method public final getSeverityCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->severityCode:I

    return p0
.end method

.method public final getWebUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->webUrl:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->severityCode:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->expireTime:J

    invoke-static {v0, v1, v2}, Le0/a;->d(IJ)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->issueTime:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->webUrl:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setWebUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->webUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->id:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->severityCode:I

    iget-object v2, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->description:Ljava/lang/String;

    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->expireTime:J

    iget-object v5, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->issueTime:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;->webUrl:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ForecastAlert(id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", severityCode="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", description="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", expireTime="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", issueTime="

    const-string v1, ", webUrl="

    invoke-static {v6, v0, v5, v1, p0}, LB/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ")"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
