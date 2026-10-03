.class public final Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/weather/api/entity/content/LifeStyleContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LifeStyleContentByTime"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;",
        "",
        "stateType",
        "",
        "stateText",
        "",
        "time",
        "",
        "<init>",
        "(ILjava/lang/String;J)V",
        "getStateType",
        "()I",
        "getStateText",
        "()Ljava/lang/String;",
        "getTime",
        "()J",
        "component1",
        "component2",
        "component3",
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
.field private final stateText:Ljava/lang/String;

.field private final stateType:I

.field private final time:J


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/samsung/android/weather/api/type/LifeStyleStateType;
        .end annotation
    .end param

    const-string v0, "stateText"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->stateType:I

    iput-object p2, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->stateText:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->time:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;ILjava/lang/String;JILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->stateType:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->stateText:Ljava/lang/String;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-wide p3, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->time:J

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->copy(ILjava/lang/String;J)Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->stateType:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->stateText:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->time:J

    return-wide v0
.end method

.method public final copy(ILjava/lang/String;J)Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/samsung/android/weather/api/type/LifeStyleStateType;
        .end annotation
    .end param

    const-string p0, "stateText"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;-><init>(ILjava/lang/String;J)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;

    iget v1, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->stateType:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->stateType:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->stateText:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->stateText:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->time:J

    iget-wide p0, p1, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->time:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getStateText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->stateText:Ljava/lang/String;

    return-object p0
.end method

.method public final getStateType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->stateType:I

    return p0
.end method

.method public final getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->time:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->stateType:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->stateText:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->stateType:I

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->stateText:Ljava/lang/String;

    iget-wide v2, p0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;->time:J

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "LifeStyleContentByTime(stateType="

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", stateText="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", time="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
