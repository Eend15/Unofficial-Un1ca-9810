.class public final Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;
.super Lcom/samsung/android/weather/api/entity/content/InsightContent$AdditionalInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/weather/api/entity/content/InsightContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SunRiseSunSet"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008!\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0006H\u00c6\u0003J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003Jm\u0010&\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u00d6\u0003J\t\u0010+\u001a\u00020\u0006H\u00d6\u0001J\t\u0010,\u001a\u00020-H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0011R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0011R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0011R\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0011\u00a8\u0006."
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;",
        "Lcom/samsung/android/weather/api/entity/content/InsightContent$AdditionalInfo;",
        "sunriseTimeStamp",
        "",
        "sunsetTimeStamp",
        "sunriseSetType",
        "",
        "timeFormat",
        "civilDuskTimeStamp",
        "civilDawnTimeStamp",
        "nauticalDuskTimeStamp",
        "nauticalDawnTimeStamp",
        "astronomicalDuskTimeStamp",
        "astronomicalDawnTimeStamp",
        "<init>",
        "(JJIIJJJJJJ)V",
        "getSunriseTimeStamp",
        "()J",
        "getSunsetTimeStamp",
        "getSunriseSetType",
        "()I",
        "getTimeFormat",
        "getCivilDuskTimeStamp",
        "getCivilDawnTimeStamp",
        "getNauticalDuskTimeStamp",
        "getNauticalDawnTimeStamp",
        "getAstronomicalDuskTimeStamp",
        "getAstronomicalDawnTimeStamp",
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
.field private final astronomicalDawnTimeStamp:J

.field private final astronomicalDuskTimeStamp:J

.field private final civilDawnTimeStamp:J

.field private final civilDuskTimeStamp:J

.field private final nauticalDawnTimeStamp:J

.field private final nauticalDuskTimeStamp:J

.field private final sunriseSetType:I

.field private final sunriseTimeStamp:J

.field private final sunsetTimeStamp:J

.field private final timeFormat:I


# direct methods
.method public constructor <init>(JJIIJJJJJJ)V
    .locals 3

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/weather/api/entity/content/InsightContent$AdditionalInfo;-><init>()V

    move-wide v1, p1

    .line 3
    iput-wide v1, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunriseTimeStamp:J

    move-wide v1, p3

    .line 4
    iput-wide v1, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunsetTimeStamp:J

    move v1, p5

    .line 5
    iput v1, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunriseSetType:I

    move v1, p6

    .line 6
    iput v1, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->timeFormat:I

    move-wide v1, p7

    .line 7
    iput-wide v1, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->civilDuskTimeStamp:J

    move-wide v1, p9

    .line 8
    iput-wide v1, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->civilDawnTimeStamp:J

    move-wide v1, p11

    .line 9
    iput-wide v1, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->nauticalDuskTimeStamp:J

    move-wide/from16 v1, p13

    .line 10
    iput-wide v1, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->nauticalDawnTimeStamp:J

    move-wide/from16 v1, p15

    .line 11
    iput-wide v1, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->astronomicalDuskTimeStamp:J

    move-wide/from16 v1, p17

    .line 12
    iput-wide v1, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->astronomicalDawnTimeStamp:J

    return-void
.end method

.method public synthetic constructor <init>(JJIIJJJJJJILF3/f;)V
    .locals 21

    move/from16 v0, p19

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    move v8, v1

    goto :goto_0

    :cond_0
    move/from16 v8, p6

    :goto_0
    and-int/lit8 v1, v0, 0x10

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    move-wide v9, v2

    goto :goto_1

    :cond_1
    move-wide/from16 v9, p7

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move-wide v11, v2

    goto :goto_2

    :cond_2
    move-wide/from16 v11, p9

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move-wide v13, v2

    goto :goto_3

    :cond_3
    move-wide/from16 v13, p11

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    move-wide v15, v2

    goto :goto_4

    :cond_4
    move-wide/from16 v15, p13

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    move-wide/from16 v17, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v17, p15

    :goto_5
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_6

    move-wide/from16 v19, v2

    goto :goto_6

    :cond_6
    move-wide/from16 v19, p17

    :goto_6
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p5

    .line 1
    invoke-direct/range {v2 .. v20}, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;-><init>(JJIIJJJJJJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;JJIIJJJJJJILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p19

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunriseTimeStamp:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunsetTimeStamp:J

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget v6, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunriseSetType:I

    goto :goto_2

    :cond_2
    move/from16 v6, p5

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    iget v7, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->timeFormat:I

    goto :goto_3

    :cond_3
    move/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget-wide v8, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->civilDuskTimeStamp:J

    goto :goto_4

    :cond_4
    move-wide/from16 v8, p7

    :goto_4
    and-int/lit8 v10, v1, 0x20

    if-eqz v10, :cond_5

    iget-wide v10, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->civilDawnTimeStamp:J

    goto :goto_5

    :cond_5
    move-wide/from16 v10, p9

    :goto_5
    and-int/lit8 v12, v1, 0x40

    if-eqz v12, :cond_6

    iget-wide v12, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->nauticalDuskTimeStamp:J

    goto :goto_6

    :cond_6
    move-wide/from16 v12, p11

    :goto_6
    and-int/lit16 v14, v1, 0x80

    if-eqz v14, :cond_7

    iget-wide v14, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->nauticalDawnTimeStamp:J

    goto :goto_7

    :cond_7
    move-wide/from16 v14, p13

    :goto_7
    move-wide/from16 p13, v14

    and-int/lit16 v14, v1, 0x100

    if-eqz v14, :cond_8

    iget-wide v14, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->astronomicalDuskTimeStamp:J

    goto :goto_8

    :cond_8
    move-wide/from16 v14, p15

    :goto_8
    and-int/lit16 v1, v1, 0x200

    move-wide/from16 p15, v14

    if-eqz v1, :cond_9

    iget-wide v14, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->astronomicalDawnTimeStamp:J

    goto :goto_9

    :cond_9
    move-wide/from16 v14, p17

    :goto_9
    move-wide/from16 p1, v2

    move-wide/from16 p3, v4

    move/from16 p5, v6

    move/from16 p6, v7

    move-wide/from16 p7, v8

    move-wide/from16 p9, v10

    move-wide/from16 p11, v12

    move-wide/from16 p17, v14

    invoke-virtual/range {p0 .. p18}, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->copy(JJIIJJJJJJ)Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunriseTimeStamp:J

    return-wide v0
.end method

.method public final component10()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->astronomicalDawnTimeStamp:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunsetTimeStamp:J

    return-wide v0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunriseSetType:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->timeFormat:I

    return p0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->civilDuskTimeStamp:J

    return-wide v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->civilDawnTimeStamp:J

    return-wide v0
.end method

.method public final component7()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->nauticalDuskTimeStamp:J

    return-wide v0
.end method

.method public final component8()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->nauticalDawnTimeStamp:J

    return-wide v0
.end method

.method public final component9()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->astronomicalDuskTimeStamp:J

    return-wide v0
.end method

.method public final copy(JJIIJJJJJJ)Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;
    .locals 20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    move-wide/from16 v17, p17

    new-instance v19, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v18}, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;-><init>(JJIIJJJJJJ)V

    return-object v19
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;

    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunriseTimeStamp:J

    iget-wide v5, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunriseTimeStamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunsetTimeStamp:J

    iget-wide v5, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunsetTimeStamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunriseSetType:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunriseSetType:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->timeFormat:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->timeFormat:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->civilDuskTimeStamp:J

    iget-wide v5, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->civilDuskTimeStamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->civilDawnTimeStamp:J

    iget-wide v5, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->civilDawnTimeStamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->nauticalDuskTimeStamp:J

    iget-wide v5, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->nauticalDuskTimeStamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->nauticalDawnTimeStamp:J

    iget-wide v5, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->nauticalDawnTimeStamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->astronomicalDuskTimeStamp:J

    iget-wide v5, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->astronomicalDuskTimeStamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->astronomicalDawnTimeStamp:J

    iget-wide p0, p1, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->astronomicalDawnTimeStamp:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getAstronomicalDawnTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->astronomicalDawnTimeStamp:J

    return-wide v0
.end method

.method public final getAstronomicalDuskTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->astronomicalDuskTimeStamp:J

    return-wide v0
.end method

.method public final getCivilDawnTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->civilDawnTimeStamp:J

    return-wide v0
.end method

.method public final getCivilDuskTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->civilDuskTimeStamp:J

    return-wide v0
.end method

.method public final getNauticalDawnTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->nauticalDawnTimeStamp:J

    return-wide v0
.end method

.method public final getNauticalDuskTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->nauticalDuskTimeStamp:J

    return-wide v0
.end method

.method public final getSunriseSetType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunriseSetType:I

    return p0
.end method

.method public final getSunriseTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunriseTimeStamp:J

    return-wide v0
.end method

.method public final getSunsetTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunsetTimeStamp:J

    return-wide v0
.end method

.method public final getTimeFormat()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->timeFormat:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunriseTimeStamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunsetTimeStamp:J

    invoke-static {v0, v1, v2}, Le0/a;->d(IJ)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunriseSetType:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->timeFormat:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->civilDuskTimeStamp:J

    invoke-static {v0, v1, v2}, Le0/a;->d(IJ)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->civilDawnTimeStamp:J

    invoke-static {v0, v1, v2}, Le0/a;->d(IJ)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->nauticalDuskTimeStamp:J

    invoke-static {v0, v1, v2}, Le0/a;->d(IJ)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->nauticalDawnTimeStamp:J

    invoke-static {v0, v1, v2}, Le0/a;->d(IJ)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->astronomicalDuskTimeStamp:J

    invoke-static {v0, v1, v2}, Le0/a;->d(IJ)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->astronomicalDawnTimeStamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 21

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunriseTimeStamp:J

    iget-wide v3, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunsetTimeStamp:J

    iget v5, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->sunriseSetType:I

    iget v6, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->timeFormat:I

    iget-wide v7, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->civilDuskTimeStamp:J

    iget-wide v9, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->civilDawnTimeStamp:J

    iget-wide v11, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->nauticalDuskTimeStamp:J

    iget-wide v13, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->nauticalDawnTimeStamp:J

    move-wide v15, v13

    iget-wide v13, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->astronomicalDuskTimeStamp:J

    move-wide/from16 v17, v13

    iget-wide v13, v0, Lcom/samsung/android/weather/api/entity/content/InsightContent$SunRiseSunSet;->astronomicalDawnTimeStamp:J

    new-instance v0, Ljava/lang/StringBuilder;

    move-wide/from16 v19, v15

    const-string v15, "SunRiseSunSet(sunriseTimeStamp="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sunsetTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sunriseSetType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", civilDuskTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", civilDawnTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", nauticalDuskTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", nauticalDawnTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", astronomicalDuskTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", astronomicalDawnTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
