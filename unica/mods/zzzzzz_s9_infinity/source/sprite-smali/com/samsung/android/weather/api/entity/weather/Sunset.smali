.class public final Lcom/samsung/android/weather/api/entity/weather/Sunset;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B9\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J;\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/weather/Sunset;",
        "",
        "epochTime",
        "",
        "title",
        "",
        "phrase",
        "arcticType",
        "Lcom/samsung/android/weather/api/entity/weather/ArcticType;",
        "url",
        "<init>",
        "(JLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/weather/api/entity/weather/ArcticType;Ljava/lang/String;)V",
        "getEpochTime",
        "()J",
        "getTitle",
        "()Ljava/lang/String;",
        "getPhrase",
        "getArcticType",
        "()Lcom/samsung/android/weather/api/entity/weather/ArcticType;",
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
        "",
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
.field private final arcticType:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

.field private final epochTime:J

.field private final phrase:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/weather/api/entity/weather/Sunset;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/weather/api/entity/weather/ArcticType;Ljava/lang/String;ILF3/f;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/weather/api/entity/weather/ArcticType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phrase"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arcticType"

    invoke-static {p5, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p6, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->epochTime:J

    .line 4
    iput-object p3, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->title:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->phrase:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->arcticType:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    .line 7
    iput-object p6, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->url:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/weather/api/entity/weather/ArcticType;Ljava/lang/String;ILF3/f;)V
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    const-string p2, ""

    if-eqz p1, :cond_1

    move-object v3, p2

    goto :goto_0

    :cond_1
    move-object v3, p3

    :goto_0
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    move-object v4, p2

    goto :goto_1

    :cond_2
    move-object v4, p4

    :goto_1
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    .line 8
    sget-object p5, Lcom/samsung/android/weather/api/entity/weather/ArcticType;->NORMAL:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    :cond_3
    move-object v5, p5

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    move-object v6, p2

    goto :goto_2

    :cond_4
    move-object v6, p6

    :goto_2
    move-object v0, p0

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/weather/api/entity/weather/Sunset;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/weather/api/entity/weather/ArcticType;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/weather/Sunset;JLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/weather/api/entity/weather/ArcticType;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Sunset;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->epochTime:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->title:Ljava/lang/String;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-object p4, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->phrase:Ljava/lang/String;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget-object p5, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->arcticType:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    :cond_3
    move-object v5, p5

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    iget-object p6, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->url:Ljava/lang/String;

    :cond_4
    move-object v6, p6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/weather/api/entity/weather/Sunset;->copy(JLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/weather/api/entity/weather/ArcticType;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/Sunset;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->epochTime:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->phrase:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Lcom/samsung/android/weather/api/entity/weather/ArcticType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->arcticType:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/weather/api/entity/weather/ArcticType;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/Sunset;
    .locals 7

    const-string p0, "title"

    invoke-static {p3, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "phrase"

    invoke-static {p4, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "arcticType"

    invoke-static {p5, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "url"

    invoke-static {p6, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/weather/api/entity/weather/Sunset;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/weather/api/entity/weather/ArcticType;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/weather/Sunset;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/weather/Sunset;

    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->epochTime:J

    iget-wide v5, p1, Lcom/samsung/android/weather/api/entity/weather/Sunset;->epochTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/Sunset;->title:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->phrase:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/Sunset;->phrase:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->arcticType:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/Sunset;->arcticType:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/weather/api/entity/weather/Sunset;->url:Ljava/lang/String;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getArcticType()Lcom/samsung/android/weather/api/entity/weather/ArcticType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->arcticType:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    return-object p0
.end method

.method public final getEpochTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->epochTime:J

    return-wide v0
.end method

.method public final getPhrase()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->phrase:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->url:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->epochTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->phrase:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->arcticType:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->url:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->epochTime:J

    iget-object v2, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->phrase:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->arcticType:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Sunset;->url:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sunset(epochTime="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", phrase="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", arcticType="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
