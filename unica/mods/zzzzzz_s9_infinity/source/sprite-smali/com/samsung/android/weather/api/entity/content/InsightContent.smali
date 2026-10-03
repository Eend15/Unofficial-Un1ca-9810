.class public final Lcom/samsung/android/weather/api/entity/content/InsightContent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/weather/api/entity/content/InsightContent$AdditionalInfo;,
        Lcom/samsung/android/weather/api/entity/content/InsightContent$AirQuality;,
        Lcom/samsung/android/weather/api/entity/content/InsightContent$Card;,
        Lcom/samsung/android/weather/api/entity/content/InsightContent$ChanceOfPrecipitation;,
        Lcom/samsung/android/weather/api/entity/content/InsightContent$EmptyAdditionalInfo;,
        Lcom/samsung/android/weather/api/entity/content/InsightContent$FeelsLike;,
        Lcom/samsung/android/weather/api/entity/content/InsightContent$FineDust;,
        Lcom/samsung/android/weather/api/entity/content/InsightContent$PollenChange;,
        Lcom/samsung/android/weather/api/entity/content/InsightContent$RecordTemperature;,
        Lcom/samsung/android/weather/api/entity/content/InsightContent$ShortTermPrecipitation;,
        Lcom/samsung/android/weather/api/entity/content/InsightContent$SnowFall;,
        Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;,
        Lcom/samsung/android/weather/api/entity/content/InsightContent$TemperatureChange;,
        Lcom/samsung/android/weather/api/entity/content/InsightContent$ThunderstormImpact;,
        Lcom/samsung/android/weather/api/entity/content/InsightContent$TomorrowComment;,
        Lcom/samsung/android/weather/api/entity/content/InsightContent$UV;,
        Lcom/samsung/android/weather/api/entity/content/InsightContent$UltraFineDust;,
        Lcom/samsung/android/weather/api/entity/content/InsightContent$Wind;
    }
.end annotation

.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u00082\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0012-./0123456789:;<=>BW\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0006H\u00c6\u0003J\t\u0010#\u001a\u00020\u0006H\u00c6\u0003J\t\u0010$\u001a\u00020\u0006H\u00c6\u0003J\t\u0010%\u001a\u00020\u0006H\u00c6\u0003J\t\u0010&\u001a\u00020\u000bH\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\rH\u00c6\u0003J[\u0010(\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00c6\u0001J\u0013\u0010)\u001a\u00020\u00062\u0008\u0010*\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010+\u001a\u00020\u0003H\u00d6\u0001J\t\u0010,\u001a\u00020\rH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0008\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014\"\u0004\u0008\u0019\u0010\u0017R\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0014\"\u0004\u0008\u001b\u0010\u0017R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006?"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/content/InsightContent;",
        "",
        "insightType",
        "",
        "order",
        "showNotification",
        "",
        "showWidget",
        "showDetail",
        "showDefault",
        "card",
        "Lcom/samsung/android/weather/api/entity/content/InsightContent$Card;",
        "serializedJson",
        "",
        "<init>",
        "(IIZZZZLcom/samsung/android/weather/api/entity/content/InsightContent$Card;Ljava/lang/String;)V",
        "getInsightType",
        "()I",
        "getOrder",
        "getShowNotification",
        "()Z",
        "getShowWidget",
        "setShowWidget",
        "(Z)V",
        "getShowDetail",
        "setShowDetail",
        "getShowDefault",
        "setShowDefault",
        "getCard",
        "()Lcom/samsung/android/weather/api/entity/content/InsightContent$Card;",
        "getSerializedJson",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "Card",
        "AdditionalInfo",
        "EmptyAdditionalInfo",
        "ThunderstormImpact",
        "SnowFall",
        "ChanceOfPrecipitation",
        "ShortTermPrecipitation",
        "RecordTemperature",
        "UV",
        "Wind",
        "PollenChange",
        "TemperatureChange",
        "FeelsLike",
        "TomorrowComment",
        "AirQuality",
        "FineDust",
        "UltraFineDust",
        "SunRiseSunSet",
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
.field private final card:Lcom/samsung/android/weather/api/entity/content/InsightContent$Card;

.field private final insightType:I

.field private final order:I

.field private final serializedJson:Ljava/lang/String;

.field private showDefault:Z

.field private showDetail:Z

.field private final showNotification:Z

.field private showWidget:Z


# direct methods
.method public constructor <init>(IIZZZZLcom/samsung/android/weather/api/entity/content/InsightContent$Card;Ljava/lang/String;)V
    .locals 1

    const-string v0, "card"

    invoke-static {p7, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->insightType:I

    .line 3
    iput p2, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->order:I

    .line 4
    iput-boolean p3, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showNotification:Z

    .line 5
    iput-boolean p4, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showWidget:Z

    .line 6
    iput-boolean p5, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showDetail:Z

    .line 7
    iput-boolean p6, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showDefault:Z

    .line 8
    iput-object p7, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->card:Lcom/samsung/android/weather/api/entity/content/InsightContent$Card;

    .line 9
    iput-object p8, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->serializedJson:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IIZZZZLcom/samsung/android/weather/api/entity/content/InsightContent$Card;Ljava/lang/String;ILF3/f;)V
    .locals 18

    and-int/lit8 v0, p9, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move/from16 v3, p1

    :goto_0
    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move/from16 v4, p2

    :goto_1
    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move/from16 v5, p3

    :goto_2
    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    move/from16 v6, p4

    :goto_3
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_4

    move v7, v1

    goto :goto_4

    :cond_4
    move/from16 v7, p5

    :goto_4
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_5

    move v8, v1

    goto :goto_5

    :cond_5
    move/from16 v8, p6

    :goto_5
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_6

    .line 10
    new-instance v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$Card;

    const/16 v16, 0x3f

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v17}, Lcom/samsung/android/weather/api/entity/content/InsightContent$Card;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILF3/f;)V

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    move-object/from16 v2, p0

    move-object/from16 v10, p8

    .line 11
    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/weather/api/entity/content/InsightContent;-><init>(IIZZZZLcom/samsung/android/weather/api/entity/content/InsightContent$Card;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/content/InsightContent;IIZZZZLcom/samsung/android/weather/api/entity/content/InsightContent$Card;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/content/InsightContent;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->insightType:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->order:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showNotification:Z

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showWidget:Z

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showDetail:Z

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showDefault:Z

    goto :goto_5

    :cond_5
    move v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->card:Lcom/samsung/android/weather/api/entity/content/InsightContent$Card;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->serializedJson:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move p1, v2

    move p2, v3

    move p3, v4

    move p4, v5

    move p5, v6

    move p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/samsung/android/weather/api/entity/content/InsightContent;->copy(IIZZZZLcom/samsung/android/weather/api/entity/content/InsightContent$Card;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/content/InsightContent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->insightType:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->order:I

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showNotification:Z

    return p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showWidget:Z

    return p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showDetail:Z

    return p0
.end method

.method public final component6()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showDefault:Z

    return p0
.end method

.method public final component7()Lcom/samsung/android/weather/api/entity/content/InsightContent$Card;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->card:Lcom/samsung/android/weather/api/entity/content/InsightContent$Card;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->serializedJson:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(IIZZZZLcom/samsung/android/weather/api/entity/content/InsightContent$Card;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/content/InsightContent;
    .locals 10

    const-string v0, "card"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/weather/api/entity/content/InsightContent;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/weather/api/entity/content/InsightContent;-><init>(IIZZZZLcom/samsung/android/weather/api/entity/content/InsightContent$Card;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/content/InsightContent;

    iget v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->insightType:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent;->insightType:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->order:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent;->order:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showNotification:Z

    iget-boolean v3, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showNotification:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showWidget:Z

    iget-boolean v3, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showWidget:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showDetail:Z

    iget-boolean v3, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showDetail:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showDefault:Z

    iget-boolean v3, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showDefault:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->card:Lcom/samsung/android/weather/api/entity/content/InsightContent$Card;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent;->card:Lcom/samsung/android/weather/api/entity/content/InsightContent$Card;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->serializedJson:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent;->serializedJson:Ljava/lang/String;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getCard()Lcom/samsung/android/weather/api/entity/content/InsightContent$Card;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->card:Lcom/samsung/android/weather/api/entity/content/InsightContent$Card;

    return-object p0
.end method

.method public final getInsightType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->insightType:I

    return p0
.end method

.method public final getOrder()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->order:I

    return p0
.end method

.method public final getSerializedJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->serializedJson:Ljava/lang/String;

    return-object p0
.end method

.method public final getShowDefault()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showDefault:Z

    return p0
.end method

.method public final getShowDetail()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showDetail:Z

    return p0
.end method

.method public final getShowNotification()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showNotification:Z

    return p0
.end method

.method public final getShowWidget()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showWidget:Z

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->insightType:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->order:I

    invoke-static {v2, v0}, Le0/a;->c(II)I

    move-result v0

    iget-boolean v2, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showNotification:Z

    invoke-static {v2, v0, v1}, Li4/b;->d(ZII)I

    move-result v0

    iget-boolean v2, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showWidget:Z

    invoke-static {v2, v0, v1}, Li4/b;->d(ZII)I

    move-result v0

    iget-boolean v2, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showDetail:Z

    invoke-static {v2, v0, v1}, Li4/b;->d(ZII)I

    move-result v0

    iget-boolean v2, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showDefault:Z

    invoke-static {v2, v0, v1}, Li4/b;->d(ZII)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->card:Lcom/samsung/android/weather/api/entity/content/InsightContent$Card;

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/content/InsightContent$Card;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->serializedJson:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v2, p0

    return v2
.end method

.method public final setShowDefault(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showDefault:Z

    return-void
.end method

.method public final setShowDetail(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showDetail:Z

    return-void
.end method

.method public final setShowWidget(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showWidget:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->insightType:I

    iget v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->order:I

    iget-boolean v2, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showNotification:Z

    iget-boolean v3, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showWidget:Z

    iget-boolean v4, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showDetail:Z

    iget-boolean v5, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->showDefault:Z

    iget-object v6, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->card:Lcom/samsung/android/weather/api/entity/content/InsightContent$Card;

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent;->serializedJson:Ljava/lang/String;

    const-string v7, "InsightContent(insightType="

    const-string v8, ", order="

    const-string v9, ", showNotification="

    invoke-static {v0, v7, v1, v8, v9}, LB/a;->p(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showWidget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serializedJson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
