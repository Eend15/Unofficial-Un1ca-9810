.class public final Lcom/samsung/android/weather/api/entity/weather/Precipitation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008!\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bk\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0008H\u00c6\u0003J\t\u0010$\u001a\u00020\nH\u00c6\u0003J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\nH\u00c6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\t\u0010(\u001a\u00020\u0008H\u00c6\u0003J\t\u0010)\u001a\u00020\u0003H\u00c6\u0003Jm\u0010*\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010+\u001a\u00020,2\u0008\u0010-\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010.\u001a\u00020\u0008H\u00d6\u0001J\t\u0010/\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0013R\u0011\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001aR\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0013R\u0011\u0010\u000e\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0018R\u0011\u0010\u000f\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0013\u00a8\u00060"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/weather/Precipitation;",
        "",
        "title",
        "",
        "epochTime",
        "",
        "timeZone",
        "type",
        "",
        "probability",
        "",
        "probabilityPhrase",
        "amount",
        "amountPhrase",
        "amountUnit",
        "url",
        "<init>",
        "(Ljava/lang/String;JLjava/lang/String;IFLjava/lang/String;FLjava/lang/String;ILjava/lang/String;)V",
        "getTitle",
        "()Ljava/lang/String;",
        "getEpochTime",
        "()J",
        "getTimeZone",
        "getType",
        "()I",
        "getProbability",
        "()F",
        "getProbabilityPhrase",
        "getAmount",
        "getAmountPhrase",
        "getAmountUnit",
        "getUrl",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
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
.field private final amount:F

.field private final amountPhrase:Ljava/lang/String;

.field private final amountUnit:I

.field private final epochTime:J

.field private final probability:F

.field private final probabilityPhrase:Ljava/lang/String;

.field private final timeZone:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final type:I

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 14

    const/16 v12, 0x3ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v13}, Lcom/samsung/android/weather/api/entity/weather/Precipitation;-><init>(Ljava/lang/String;JLjava/lang/String;IFLjava/lang/String;FLjava/lang/String;ILjava/lang/String;ILF3/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;IFLjava/lang/String;FLjava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeZone"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "probabilityPhrase"

    invoke-static {p7, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountPhrase"

    invoke-static {p9, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p11, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->title:Ljava/lang/String;

    .line 4
    iput-wide p2, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->epochTime:J

    .line 5
    iput-object p4, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->timeZone:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->type:I

    .line 7
    iput p6, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->probability:F

    .line 8
    iput-object p7, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->probabilityPhrase:Ljava/lang/String;

    .line 9
    iput p8, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amount:F

    .line 10
    iput-object p9, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amountPhrase:Ljava/lang/String;

    .line 11
    iput p10, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amountUnit:I

    .line 12
    iput-object p11, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;IFLjava/lang/String;FLjava/lang/String;ILjava/lang/String;ILF3/f;)V
    .locals 13

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_1
    move-wide v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v0, 0x8

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    move v6, v7

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v8, v0, 0x10

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    move v8, v9

    goto :goto_4

    :cond_4
    move/from16 v8, p6

    :goto_4
    and-int/lit8 v10, v0, 0x20

    if-eqz v10, :cond_5

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object/from16 v10, p7

    :goto_5
    and-int/lit8 v11, v0, 0x40

    if-eqz v11, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    move-object v11, v2

    goto :goto_7

    :cond_7
    move-object/from16 v11, p9

    :goto_7
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v7, p10

    :goto_8
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    move-object/from16 v2, p11

    :goto_9
    move-object p1, v1

    move-wide p2, v3

    move-object/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v8

    move-object/from16 p7, v10

    move/from16 p8, v9

    move-object/from16 p9, v11

    move/from16 p10, v7

    move-object/from16 p11, v2

    .line 13
    invoke-direct/range {p0 .. p11}, Lcom/samsung/android/weather/api/entity/weather/Precipitation;-><init>(Ljava/lang/String;JLjava/lang/String;IFLjava/lang/String;FLjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/weather/Precipitation;Ljava/lang/String;JLjava/lang/String;IFLjava/lang/String;FLjava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Precipitation;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->epochTime:J

    goto :goto_1

    :cond_1
    move-wide v3, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->timeZone:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->type:I

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->probability:F

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->probabilityPhrase:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget v9, v0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amount:F

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amountPhrase:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget v11, v0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amountUnit:I

    goto :goto_8

    :cond_8
    move/from16 v11, p10

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->url:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p11

    :goto_9
    move-object p1, v2

    move-wide p2, v3

    move-object/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->copy(Ljava/lang/String;JLjava/lang/String;IFLjava/lang/String;FLjava/lang/String;ILjava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/Precipitation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->epochTime:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->timeZone:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->type:I

    return p0
.end method

.method public final component5()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->probability:F

    return p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->probabilityPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amount:F

    return p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amountPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amountUnit:I

    return p0
.end method

.method public final copy(Ljava/lang/String;JLjava/lang/String;IFLjava/lang/String;FLjava/lang/String;ILjava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/Precipitation;
    .locals 13

    const-string v0, "title"

    move-object v2, p1

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeZone"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "probabilityPhrase"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountPhrase"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;

    move-object v1, v0

    move-wide v3, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    move/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/weather/api/entity/weather/Precipitation;-><init>(Ljava/lang/String;JLjava/lang/String;IFLjava/lang/String;FLjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/weather/Precipitation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/weather/Precipitation;

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->title:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->epochTime:J

    iget-wide v5, p1, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->epochTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->timeZone:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->timeZone:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->type:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->type:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->probability:F

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->probability:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->probabilityPhrase:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->probabilityPhrase:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amount:F

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amount:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amountPhrase:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amountPhrase:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amountUnit:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amountUnit:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->url:Ljava/lang/String;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getAmount()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amount:F

    return p0
.end method

.method public final getAmountPhrase()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amountPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public final getAmountUnit()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amountUnit:I

    return p0
.end method

.method public final getEpochTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->epochTime:J

    return-wide v0
.end method

.method public final getProbability()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->probability:F

    return p0
.end method

.method public final getProbabilityPhrase()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->probabilityPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public final getTimeZone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->timeZone:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->type:I

    return p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->url:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->epochTime:J

    invoke-static {v0, v2, v3}, Le0/a;->d(IJ)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->timeZone:Ljava/lang/String;

    invoke-static {v0, v2}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->type:I

    invoke-static {v2, v0}, Le0/a;->c(II)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->probability:F

    invoke-static {v2, v0, v1}, Li4/b;->c(FII)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->probabilityPhrase:Ljava/lang/String;

    invoke-static {v0, v2}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amount:F

    invoke-static {v2, v0, v1}, Li4/b;->c(FII)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amountPhrase:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amountUnit:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->url:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->title:Ljava/lang/String;

    iget-wide v1, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->epochTime:J

    iget-object v3, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->timeZone:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->type:I

    iget v5, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->probability:F

    iget-object v6, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->probabilityPhrase:Ljava/lang/String;

    iget v7, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amount:F

    iget-object v8, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amountPhrase:Ljava/lang/String;

    iget v9, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->amountUnit:I

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Precipitation;->url:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Precipitation(title="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", epochTime="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", timeZone="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", probability="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", probabilityPhrase="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", amount="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", amountPhrase="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", amountUnit="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
