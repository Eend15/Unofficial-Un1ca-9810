.class public final Lcom/samsung/android/weather/api/entity/weather/ForecastTime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/weather/api/entity/weather/ForecastTime$Companion;
    }
.end annotation

.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u00087\u0008\u0087\u0008\u0018\u0000 G2\u00020\u0001:\u0001GB\u0089\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\t\u00105\u001a\u00020\u0003H\u00c6\u0003J\t\u00106\u001a\u00020\u0005H\u00c6\u0003J\t\u00107\u001a\u00020\u0005H\u00c6\u0003J\t\u00108\u001a\u00020\u0008H\u00c6\u0003J\t\u00109\u001a\u00020\u0003H\u00c6\u0003J\t\u0010:\u001a\u00020\u0003H\u00c6\u0003J\t\u0010;\u001a\u00020\u0003H\u00c6\u0003J\t\u0010<\u001a\u00020\u0003H\u00c6\u0003J\t\u0010=\u001a\u00020\u0003H\u00c6\u0003J\t\u0010>\u001a\u00020\u0003H\u00c6\u0003J\t\u0010?\u001a\u00020\u0003H\u00c6\u0003J\t\u0010@\u001a\u00020\u0011H\u00c6\u0003J\t\u0010A\u001a\u00020\u0011H\u00c6\u0003J\u008b\u0001\u0010B\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011H\u00c6\u0001J\u0013\u0010C\u001a\u00020\u00082\u0008\u0010D\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010E\u001a\u00020\u0011H\u00d6\u0001J\t\u0010F\u001a\u00020\u0005H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001a\"\u0004\u0008\u001e\u0010\u001cR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0016\"\u0004\u0008#\u0010\u0018R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0016\"\u0004\u0008%\u0010\u0018R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0016\"\u0004\u0008\'\u0010\u0018R\u001a\u0010\u000c\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0016\"\u0004\u0008)\u0010\u0018R\u001a\u0010\r\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0016\"\u0004\u0008+\u0010\u0018R\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u0016\"\u0004\u0008-\u0010\u0018R\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0016\"\u0004\u0008/\u0010\u0018R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u00100\"\u0004\u00081\u00102R\u001a\u0010\u0012\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00100\"\u0004\u00084\u00102\u00a8\u0006H"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/weather/ForecastTime;",
        "",
        "epochTime",
        "",
        "timeZone",
        "",
        "ianaTimeZone",
        "isDST",
        "",
        "sunRiseTime",
        "sunSetTime",
        "moonRiseTime",
        "moonSetTime",
        "updateTime",
        "publishTime",
        "expireTime",
        "isDayOrNight",
        "",
        "arcticNightType",
        "<init>",
        "(JLjava/lang/String;Ljava/lang/String;ZJJJJJJJII)V",
        "getEpochTime",
        "()J",
        "setEpochTime",
        "(J)V",
        "getTimeZone",
        "()Ljava/lang/String;",
        "setTimeZone",
        "(Ljava/lang/String;)V",
        "getIanaTimeZone",
        "setIanaTimeZone",
        "()Z",
        "setDST",
        "(Z)V",
        "getSunRiseTime",
        "setSunRiseTime",
        "getSunSetTime",
        "setSunSetTime",
        "getMoonRiseTime",
        "setMoonRiseTime",
        "getMoonSetTime",
        "setMoonSetTime",
        "getUpdateTime",
        "setUpdateTime",
        "getPublishTime",
        "setPublishTime",
        "getExpireTime",
        "setExpireTime",
        "()I",
        "setDayOrNight",
        "(I)V",
        "getArcticNightType",
        "setArcticNightType",
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
        "component11",
        "component12",
        "component13",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/samsung/android/weather/api/entity/weather/ForecastTime$Companion;

.field public static final DAY:I = 0x1

.field public static final INVALID_EXPIRE_TIME:J = 0x0L

.field public static final NIGHT:I = 0x2

.field public static final NORMAL_SUN:I = 0x0

.field public static final POLAR_NIGHT:I = 0x2

.field public static final UNSPECIFIED:I = 0x3

.field public static final WHITE_NIGHT:I = 0x1


# instance fields
.field private arcticNightType:I

.field private epochTime:J

.field private expireTime:J

.field private ianaTimeZone:Ljava/lang/String;

.field private isDST:Z

.field private isDayOrNight:I

.field private moonRiseTime:J

.field private moonSetTime:J

.field private publishTime:J

.field private sunRiseTime:J

.field private sunSetTime:J

.field private timeZone:Ljava/lang/String;

.field private updateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime$Companion;-><init>(LF3/f;)V

    sput-object v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->Companion:Lcom/samsung/android/weather/api/entity/weather/ForecastTime$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 24

    move-object/from16 v0, p0

    const/16 v22, 0x1fff

    const/16 v23, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 1
    invoke-direct/range {v0 .. v23}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;-><init>(JLjava/lang/String;Ljava/lang/String;ZJJJJJJJIIILF3/f;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ZJJJJJJJII)V
    .locals 5

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    const-string v3, "timeZone"

    invoke-static {p3, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "ianaTimeZone"

    invoke-static {p4, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v3, p1

    .line 3
    iput-wide v3, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->epochTime:J

    .line 4
    iput-object v1, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->timeZone:Ljava/lang/String;

    .line 5
    iput-object v2, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->ianaTimeZone:Ljava/lang/String;

    move v1, p5

    .line 6
    iput-boolean v1, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDST:Z

    move-wide v1, p6

    .line 7
    iput-wide v1, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->sunRiseTime:J

    move-wide v1, p8

    .line 8
    iput-wide v1, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->sunSetTime:J

    move-wide v1, p10

    .line 9
    iput-wide v1, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->moonRiseTime:J

    move-wide/from16 v1, p12

    .line 10
    iput-wide v1, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->moonSetTime:J

    move-wide/from16 v1, p14

    .line 11
    iput-wide v1, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->updateTime:J

    move-wide/from16 v1, p16

    .line 12
    iput-wide v1, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->publishTime:J

    move-wide/from16 v1, p18

    .line 13
    iput-wide v1, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->expireTime:J

    move/from16 v1, p20

    .line 14
    iput v1, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDayOrNight:I

    move/from16 v1, p21

    .line 15
    iput v1, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->arcticNightType:I

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;ZJJJJJJJIIILF3/f;)V
    .locals 21

    move/from16 v0, p22

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    const-string v6, ""

    if-eqz v1, :cond_1

    move-object v1, v6

    goto :goto_1

    :cond_1
    move-object/from16 v1, p3

    :goto_1
    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p4

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    move/from16 v7, p5

    :goto_3
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_4

    const-wide/16 v9, 0x0

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p6

    :goto_4
    and-int/lit8 v11, v0, 0x20

    if-eqz v11, :cond_5

    const-wide/16 v11, 0x0

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p8

    :goto_5
    and-int/lit8 v13, v0, 0x40

    if-eqz v13, :cond_6

    const-wide/16 v13, 0x0

    goto :goto_6

    :cond_6
    move-wide/from16 v13, p10

    :goto_6
    and-int/lit16 v15, v0, 0x80

    if-eqz v15, :cond_7

    const-wide/16 v15, 0x0

    goto :goto_7

    :cond_7
    move-wide/from16 v15, p12

    :goto_7
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_8

    const-wide/16 v2, 0x0

    goto :goto_8

    :cond_8
    move-wide/from16 v2, p14

    :goto_8
    and-int/lit16 v8, v0, 0x200

    if-eqz v8, :cond_9

    const-wide/16 v19, 0x0

    goto :goto_9

    :cond_9
    move-wide/from16 v19, p16

    :goto_9
    and-int/lit16 v8, v0, 0x400

    if-eqz v8, :cond_a

    const-wide/16 v17, 0x0

    goto :goto_a

    :cond_a
    move-wide/from16 v17, p18

    :goto_a
    and-int/lit16 v8, v0, 0x800

    if-eqz v8, :cond_b

    const/4 v8, 0x3

    goto :goto_b

    :cond_b
    move/from16 v8, p20

    :goto_b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_c

    :cond_c
    move/from16 v0, p21

    :goto_c
    move-wide/from16 p1, v4

    move-object/from16 p3, v1

    move-object/from16 p4, v6

    move/from16 p5, v7

    move-wide/from16 p6, v9

    move-wide/from16 p8, v11

    move-wide/from16 p10, v13

    move-wide/from16 p12, v15

    move-wide/from16 p14, v2

    move-wide/from16 p16, v19

    move-wide/from16 p18, v17

    move/from16 p20, v8

    move/from16 p21, v0

    .line 16
    invoke-direct/range {p0 .. p21}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;-><init>(JLjava/lang/String;Ljava/lang/String;ZJJJJJJJII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/weather/ForecastTime;JLjava/lang/String;Ljava/lang/String;ZJJJJJJJIIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/ForecastTime;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p22

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->epochTime:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->timeZone:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->ianaTimeZone:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDST:Z

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-wide v7, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->sunRiseTime:J

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p6

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-wide v9, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->sunSetTime:J

    goto :goto_5

    :cond_5
    move-wide/from16 v9, p8

    :goto_5
    and-int/lit8 v11, v1, 0x40

    if-eqz v11, :cond_6

    iget-wide v11, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->moonRiseTime:J

    goto :goto_6

    :cond_6
    move-wide/from16 v11, p10

    :goto_6
    and-int/lit16 v13, v1, 0x80

    if-eqz v13, :cond_7

    iget-wide v13, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->moonSetTime:J

    goto :goto_7

    :cond_7
    move-wide/from16 v13, p12

    :goto_7
    and-int/lit16 v15, v1, 0x100

    move-wide/from16 p12, v13

    if-eqz v15, :cond_8

    iget-wide v13, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->updateTime:J

    goto :goto_8

    :cond_8
    move-wide/from16 v13, p14

    :goto_8
    and-int/lit16 v15, v1, 0x200

    move-wide/from16 p14, v13

    if-eqz v15, :cond_9

    iget-wide v13, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->publishTime:J

    goto :goto_9

    :cond_9
    move-wide/from16 v13, p16

    :goto_9
    and-int/lit16 v15, v1, 0x400

    move-wide/from16 p16, v13

    if-eqz v15, :cond_a

    iget-wide v13, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->expireTime:J

    goto :goto_a

    :cond_a
    move-wide/from16 v13, p18

    :goto_a
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget v15, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDayOrNight:I

    goto :goto_b

    :cond_b
    move/from16 v15, p20

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    iget v1, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->arcticNightType:I

    goto :goto_c

    :cond_c
    move/from16 v1, p21

    :goto_c
    move-wide/from16 p1, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-wide/from16 p6, v7

    move-wide/from16 p8, v9

    move-wide/from16 p10, v11

    move-wide/from16 p18, v13

    move/from16 p20, v15

    move/from16 p21, v1

    invoke-virtual/range {p0 .. p21}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->copy(JLjava/lang/String;Ljava/lang/String;ZJJJJJJJII)Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->epochTime:J

    return-wide v0
.end method

.method public final component10()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->publishTime:J

    return-wide v0
.end method

.method public final component11()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->expireTime:J

    return-wide v0
.end method

.method public final component12()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDayOrNight:I

    return p0
.end method

.method public final component13()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->arcticNightType:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->timeZone:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->ianaTimeZone:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDST:Z

    return p0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->sunRiseTime:J

    return-wide v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->sunSetTime:J

    return-wide v0
.end method

.method public final component7()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->moonRiseTime:J

    return-wide v0
.end method

.method public final component8()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->moonSetTime:J

    return-wide v0
.end method

.method public final component9()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->updateTime:J

    return-wide v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;ZJJJJJJJII)Lcom/samsung/android/weather/api/entity/weather/ForecastTime;
    .locals 23

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    move-wide/from16 v18, p18

    move/from16 v20, p20

    move/from16 v21, p21

    const-string v0, "timeZone"

    move-wide/from16 p0, v1

    move-object/from16 v1, p3

    invoke-static {v1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ianaTimeZone"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v22, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-object/from16 v0, v22

    move-wide/from16 v1, p0

    invoke-direct/range {v0 .. v21}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;-><init>(JLjava/lang/String;Ljava/lang/String;ZJJJJJJJII)V

    return-object v22
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->epochTime:J

    iget-wide v5, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->epochTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->timeZone:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->timeZone:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->ianaTimeZone:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->ianaTimeZone:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDST:Z

    iget-boolean v3, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDST:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->sunRiseTime:J

    iget-wide v5, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->sunRiseTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->sunSetTime:J

    iget-wide v5, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->sunSetTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->moonRiseTime:J

    iget-wide v5, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->moonRiseTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->moonSetTime:J

    iget-wide v5, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->moonSetTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->updateTime:J

    iget-wide v5, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->updateTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->publishTime:J

    iget-wide v5, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->publishTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->expireTime:J

    iget-wide v5, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->expireTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDayOrNight:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDayOrNight:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->arcticNightType:I

    iget p1, p1, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->arcticNightType:I

    if-eq p0, p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final getArcticNightType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->arcticNightType:I

    return p0
.end method

.method public final getEpochTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->epochTime:J

    return-wide v0
.end method

.method public final getExpireTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->expireTime:J

    return-wide v0
.end method

.method public final getIanaTimeZone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->ianaTimeZone:Ljava/lang/String;

    return-object p0
.end method

.method public final getMoonRiseTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->moonRiseTime:J

    return-wide v0
.end method

.method public final getMoonSetTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->moonSetTime:J

    return-wide v0
.end method

.method public final getPublishTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->publishTime:J

    return-wide v0
.end method

.method public final getSunRiseTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->sunRiseTime:J

    return-wide v0
.end method

.method public final getSunSetTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->sunSetTime:J

    return-wide v0
.end method

.method public final getTimeZone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->timeZone:Ljava/lang/String;

    return-object p0
.end method

.method public final getUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->updateTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->epochTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->timeZone:Ljava/lang/String;

    invoke-static {v0, v2}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->ianaTimeZone:Ljava/lang/String;

    invoke-static {v0, v2}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDST:Z

    invoke-static {v2, v0, v1}, Li4/b;->d(ZII)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->sunRiseTime:J

    invoke-static {v0, v1, v2}, Le0/a;->d(IJ)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->sunSetTime:J

    invoke-static {v0, v1, v2}, Le0/a;->d(IJ)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->moonRiseTime:J

    invoke-static {v0, v1, v2}, Le0/a;->d(IJ)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->moonSetTime:J

    invoke-static {v0, v1, v2}, Le0/a;->d(IJ)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->updateTime:J

    invoke-static {v0, v1, v2}, Le0/a;->d(IJ)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->publishTime:J

    invoke-static {v0, v1, v2}, Le0/a;->d(IJ)I

    move-result v0

    iget-wide v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->expireTime:J

    invoke-static {v0, v1, v2}, Le0/a;->d(IJ)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDayOrNight:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->arcticNightType:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isDST()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDST:Z

    return p0
.end method

.method public final isDayOrNight()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDayOrNight:I

    return p0
.end method

.method public final setArcticNightType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->arcticNightType:I

    return-void
.end method

.method public final setDST(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDST:Z

    return-void
.end method

.method public final setDayOrNight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDayOrNight:I

    return-void
.end method

.method public final setEpochTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->epochTime:J

    return-void
.end method

.method public final setExpireTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->expireTime:J

    return-void
.end method

.method public final setIanaTimeZone(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->ianaTimeZone:Ljava/lang/String;

    return-void
.end method

.method public final setMoonRiseTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->moonRiseTime:J

    return-void
.end method

.method public final setMoonSetTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->moonSetTime:J

    return-void
.end method

.method public final setPublishTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->publishTime:J

    return-void
.end method

.method public final setSunRiseTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->sunRiseTime:J

    return-void
.end method

.method public final setSunSetTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->sunSetTime:J

    return-void
.end method

.method public final setTimeZone(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->timeZone:Ljava/lang/String;

    return-void
.end method

.method public final setUpdateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->updateTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->epochTime:J

    iget-object v3, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->timeZone:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->ianaTimeZone:Ljava/lang/String;

    iget-boolean v5, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDST:Z

    iget-wide v6, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->sunRiseTime:J

    iget-wide v8, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->sunSetTime:J

    iget-wide v10, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->moonRiseTime:J

    iget-wide v12, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->moonSetTime:J

    iget-wide v14, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->updateTime:J

    move-wide/from16 v16, v14

    iget-wide v14, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->publishTime:J

    move-wide/from16 v18, v14

    iget-wide v14, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->expireTime:J

    move-wide/from16 v20, v14

    iget v14, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->isDayOrNight:I

    iget v0, v0, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->arcticNightType:I

    new-instance v15, Ljava/lang/StringBuilder;

    move/from16 p0, v0

    const-string v0, "ForecastTime(epochTime="

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", timeZone="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ianaTimeZone="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isDST="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", sunRiseTime="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", sunSetTime="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", moonRiseTime="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", moonSetTime="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", updateTime="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", publishTime="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", expireTime="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", isDayOrNight="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", arcticNightType="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
