.class public final Lcom/samsung/android/weather/api/entity/weather/Condition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008-\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B{\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\t\u00102\u001a\u00020\u0003H\u00c6\u0003J\t\u00103\u001a\u00020\u0003H\u00c6\u0003J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\t\u00105\u001a\u00020\u0003H\u00c6\u0003J\t\u00106\u001a\u00020\u0008H\u00c6\u0003J\t\u00107\u001a\u00020\u0008H\u00c6\u0003J\t\u00108\u001a\u00020\u0008H\u00c6\u0003J\t\u00109\u001a\u00020\u0008H\u00c6\u0003J\t\u0010:\u001a\u00020\rH\u00c6\u0003J\t\u0010;\u001a\u00020\rH\u00c6\u0003J\u000f\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u00c6\u0003J}\u0010=\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u00c6\u0001J\u0013\u0010>\u001a\u00020?2\u0008\u0010@\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010A\u001a\u00020\u0003H\u00d6\u0001J\t\u0010B\u001a\u00020\rH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015\"\u0004\u0008\u0019\u0010\u0017R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0015\"\u0004\u0008\u001b\u0010\u0017R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015\"\u0004\u0008\u001d\u0010\u0017R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\t\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001f\"\u0004\u0008#\u0010!R\u001a\u0010\n\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u001f\"\u0004\u0008%\u0010!R\u001a\u0010\u000b\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u001f\"\u0004\u0008\'\u0010!R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001a\u0010\u000e\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010)\"\u0004\u0008-\u0010+R \u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101\u00a8\u0006C"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/weather/Condition;",
        "",
        "externalCode",
        "",
        "internalCode",
        "expansionCode",
        "iconNum",
        "temp",
        "Lcom/samsung/android/weather/api/entity/weather/Temp;",
        "feelsLikeTemp",
        "maxTemp",
        "minTemp",
        "weatherText",
        "",
        "narrative",
        "indexList",
        "",
        "Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;",
        "<init>",
        "(IIIILcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V",
        "getExternalCode",
        "()I",
        "setExternalCode",
        "(I)V",
        "getInternalCode",
        "setInternalCode",
        "getExpansionCode",
        "setExpansionCode",
        "getIconNum",
        "setIconNum",
        "getTemp",
        "()Lcom/samsung/android/weather/api/entity/weather/Temp;",
        "setTemp",
        "(Lcom/samsung/android/weather/api/entity/weather/Temp;)V",
        "getFeelsLikeTemp",
        "setFeelsLikeTemp",
        "getMaxTemp",
        "setMaxTemp",
        "getMinTemp",
        "setMinTemp",
        "getWeatherText",
        "()Ljava/lang/String;",
        "setWeatherText",
        "(Ljava/lang/String;)V",
        "getNarrative",
        "setNarrative",
        "getIndexList",
        "()Ljava/util/List;",
        "setIndexList",
        "(Ljava/util/List;)V",
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
.field private expansionCode:I

.field private externalCode:I

.field private feelsLikeTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

.field private iconNum:I

.field private indexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;",
            ">;"
        }
    .end annotation
.end field

.field private internalCode:I

.field private maxTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

.field private minTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

.field private narrative:Ljava/lang/String;

.field private temp:Lcom/samsung/android/weather/api/entity/weather/Temp;

.field private weatherText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 14

    const/16 v12, 0x7ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

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
    invoke-direct/range {v0 .. v13}, Lcom/samsung/android/weather/api/entity/weather/Condition;-><init>(IIIILcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILF3/f;)V

    return-void
.end method

.method public constructor <init>(IIIILcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/samsung/android/weather/api/entity/weather/Temp;",
            "Lcom/samsung/android/weather/api/entity/weather/Temp;",
            "Lcom/samsung/android/weather/api/entity/weather/Temp;",
            "Lcom/samsung/android/weather/api/entity/weather/Temp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;",
            ">;)V"
        }
    .end annotation

    const-string v0, "temp"

    invoke-static {p5, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feelsLikeTemp"

    invoke-static {p6, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maxTemp"

    invoke-static {p7, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minTemp"

    invoke-static {p8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "weatherText"

    invoke-static {p9, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "narrative"

    invoke-static {p10, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indexList"

    invoke-static {p11, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->externalCode:I

    .line 4
    iput p2, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->internalCode:I

    .line 5
    iput p3, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->expansionCode:I

    .line 6
    iput p4, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->iconNum:I

    .line 7
    iput-object p5, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->temp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    .line 8
    iput-object p6, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->feelsLikeTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    .line 9
    iput-object p7, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->maxTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    .line 10
    iput-object p8, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->minTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    .line 11
    iput-object p9, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->weatherText:Ljava/lang/String;

    .line 12
    iput-object p10, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->narrative:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->indexList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(IIIILcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILF3/f;)V
    .locals 13

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v2, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v5, :cond_4

    .line 14
    new-instance v5, Lcom/samsung/android/weather/api/entity/weather/Temp;

    invoke-direct {v5, v9, v8, v7, v6}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    goto :goto_4

    :cond_4
    move-object/from16 v5, p5

    :goto_4
    and-int/lit8 v10, v0, 0x20

    if-eqz v10, :cond_5

    .line 15
    new-instance v10, Lcom/samsung/android/weather/api/entity/weather/Temp;

    invoke-direct {v10, v9, v8, v7, v6}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    goto :goto_5

    :cond_5
    move-object/from16 v10, p6

    :goto_5
    and-int/lit8 v11, v0, 0x40

    if-eqz v11, :cond_6

    .line 16
    new-instance v11, Lcom/samsung/android/weather/api/entity/weather/Temp;

    invoke-direct {v11, v9, v8, v7, v6}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    goto :goto_6

    :cond_6
    move-object/from16 v11, p7

    :goto_6
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_7

    .line 17
    new-instance v12, Lcom/samsung/android/weather/api/entity/weather/Temp;

    invoke-direct {v12, v9, v8, v7, v6}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    goto :goto_7

    :cond_7
    move-object/from16 v12, p8

    :goto_7
    and-int/lit16 v6, v0, 0x100

    const-string v7, ""

    if-eqz v6, :cond_8

    move-object v6, v7

    goto :goto_8

    :cond_8
    move-object/from16 v6, p9

    :goto_8
    and-int/lit16 v8, v0, 0x200

    if-eqz v8, :cond_9

    goto :goto_9

    :cond_9
    move-object/from16 v7, p10

    :goto_9
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_a

    :cond_a
    move-object/from16 v0, p11

    :goto_a
    move p1, v1

    move p2, v3

    move/from16 p3, v4

    move/from16 p4, v2

    move-object/from16 p5, v5

    move-object/from16 p6, v10

    move-object/from16 p7, v11

    move-object/from16 p8, v12

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move-object/from16 p11, v0

    .line 19
    invoke-direct/range {p0 .. p11}, Lcom/samsung/android/weather/api/entity/weather/Condition;-><init>(IIIILcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/weather/Condition;IIIILcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Condition;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/samsung/android/weather/api/entity/weather/Condition;->externalCode:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/samsung/android/weather/api/entity/weather/Condition;->internalCode:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/samsung/android/weather/api/entity/weather/Condition;->expansionCode:I

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/samsung/android/weather/api/entity/weather/Condition;->iconNum:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/samsung/android/weather/api/entity/weather/Condition;->temp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/samsung/android/weather/api/entity/weather/Condition;->feelsLikeTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/samsung/android/weather/api/entity/weather/Condition;->maxTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/samsung/android/weather/api/entity/weather/Condition;->minTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/samsung/android/weather/api/entity/weather/Condition;->weatherText:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/samsung/android/weather/api/entity/weather/Condition;->narrative:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/samsung/android/weather/api/entity/weather/Condition;->indexList:Ljava/util/List;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p11

    :goto_a
    move p1, v2

    move p2, v3

    move p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/samsung/android/weather/api/entity/weather/Condition;->copy(IIIILcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->externalCode:I

    return p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->narrative:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->indexList:Ljava/util/List;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->internalCode:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->expansionCode:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->iconNum:I

    return p0
.end method

.method public final component5()Lcom/samsung/android/weather/api/entity/weather/Temp;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->temp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    return-object p0
.end method

.method public final component6()Lcom/samsung/android/weather/api/entity/weather/Temp;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->feelsLikeTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    return-object p0
.end method

.method public final component7()Lcom/samsung/android/weather/api/entity/weather/Temp;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->maxTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    return-object p0
.end method

.method public final component8()Lcom/samsung/android/weather/api/entity/weather/Temp;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->minTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->weatherText:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(IIIILcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/weather/api/entity/weather/Condition;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/samsung/android/weather/api/entity/weather/Temp;",
            "Lcom/samsung/android/weather/api/entity/weather/Temp;",
            "Lcom/samsung/android/weather/api/entity/weather/Temp;",
            "Lcom/samsung/android/weather/api/entity/weather/Temp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;",
            ">;)",
            "Lcom/samsung/android/weather/api/entity/weather/Condition;"
        }
    .end annotation

    const-string v0, "temp"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feelsLikeTemp"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maxTemp"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minTemp"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "weatherText"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "narrative"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indexList"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/weather/api/entity/weather/Condition;-><init>(IIIILcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/weather/Condition;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/weather/Condition;

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->externalCode:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/Condition;->externalCode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->internalCode:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/Condition;->internalCode:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->expansionCode:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/Condition;->expansionCode:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->iconNum:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/Condition;->iconNum:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->temp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/Condition;->temp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->feelsLikeTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/Condition;->feelsLikeTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->maxTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/Condition;->maxTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->minTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/Condition;->minTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->weatherText:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/Condition;->weatherText:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->narrative:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/Condition;->narrative:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->indexList:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/weather/api/entity/weather/Condition;->indexList:Ljava/util/List;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getExpansionCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->expansionCode:I

    return p0
.end method

.method public final getExternalCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->externalCode:I

    return p0
.end method

.method public final getFeelsLikeTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->feelsLikeTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    return-object p0
.end method

.method public final getIconNum()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->iconNum:I

    return p0
.end method

.method public final getIndexList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->indexList:Ljava/util/List;

    return-object p0
.end method

.method public final getInternalCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->internalCode:I

    return p0
.end method

.method public final getMaxTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->maxTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    return-object p0
.end method

.method public final getMinTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->minTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    return-object p0
.end method

.method public final getNarrative()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->narrative:Ljava/lang/String;

    return-object p0
.end method

.method public final getTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->temp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    return-object p0
.end method

.method public final getWeatherText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->weatherText:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->externalCode:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->internalCode:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->expansionCode:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->iconNum:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->temp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Temp;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->feelsLikeTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/Temp;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->maxTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Temp;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->minTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/Temp;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->weatherText:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->narrative:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->indexList:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setExpansionCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->expansionCode:I

    return-void
.end method

.method public final setExternalCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->externalCode:I

    return-void
.end method

.method public final setFeelsLikeTemp(Lcom/samsung/android/weather/api/entity/weather/Temp;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->feelsLikeTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    return-void
.end method

.method public final setIconNum(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->iconNum:I

    return-void
.end method

.method public final setIndexList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->indexList:Ljava/util/List;

    return-void
.end method

.method public final setInternalCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->internalCode:I

    return-void
.end method

.method public final setMaxTemp(Lcom/samsung/android/weather/api/entity/weather/Temp;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->maxTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    return-void
.end method

.method public final setMinTemp(Lcom/samsung/android/weather/api/entity/weather/Temp;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->minTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    return-void
.end method

.method public final setNarrative(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->narrative:Ljava/lang/String;

    return-void
.end method

.method public final setTemp(Lcom/samsung/android/weather/api/entity/weather/Temp;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->temp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    return-void
.end method

.method public final setWeatherText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->weatherText:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget v0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->externalCode:I

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->internalCode:I

    iget v2, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->expansionCode:I

    iget v3, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->iconNum:I

    iget-object v4, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->temp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    iget-object v5, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->feelsLikeTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    iget-object v6, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->maxTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    iget-object v7, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->minTemp:Lcom/samsung/android/weather/api/entity/weather/Temp;

    iget-object v8, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->weatherText:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->narrative:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/Condition;->indexList:Ljava/util/List;

    const-string v10, "Condition(externalCode="

    const-string v11, ", internalCode="

    const-string v12, ", expansionCode="

    invoke-static {v0, v10, v1, v11, v12}, LB/a;->p(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", temp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feelsLikeTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", weatherText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", narrative="

    const-string v2, ", indexList="

    invoke-static {v0, v8, v1, v9, v2}, LB/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
