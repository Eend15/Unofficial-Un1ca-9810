.class public final Lcom/samsung/android/weather/api/entity/weather/PM10;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bk\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0006\u0010 \u001a\u00020!J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0006H\u00c6\u0003J\t\u0010%\u001a\u00020\u0008H\u00c6\u0003J\t\u0010&\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0008H\u00c6\u0003J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0003H\u00c6\u0003J\t\u0010*\u001a\u00020\u0003H\u00c6\u0003J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003Jm\u0010,\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010-\u001a\u00020!2\u0008\u0010.\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010/\u001a\u00020\u0008H\u00d6\u0001J\t\u00100\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017R\u0011\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0017R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0012R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0012R\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0012R\u0011\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0012R\u0011\u0010\u001e\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0017\u00a8\u00061"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/weather/PM10;",
        "",
        "category",
        "",
        "title",
        "value",
        "",
        "maxValue",
        "",
        "level",
        "levelRange",
        "levelPhrase",
        "valueUnitPhrase",
        "description",
        "url",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;FIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getCategory",
        "()Ljava/lang/String;",
        "getTitle",
        "getValue",
        "()F",
        "getMaxValue",
        "()I",
        "getLevel",
        "getLevelRange",
        "getLevelPhrase",
        "getValueUnitPhrase",
        "getDescription",
        "getUrl",
        "scaleColor",
        "getScaleColor",
        "aboveNormal",
        "",
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
.field private final category:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final level:I

.field private final levelPhrase:Ljava/lang/String;

.field private final levelRange:I

.field private final maxValue:I

.field private final title:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final value:F

.field private final valueUnitPhrase:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 13

    const/16 v11, 0x3ff

    const/4 v12, 0x0

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

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/weather/api/entity/weather/PM10;-><init>(Ljava/lang/String;Ljava/lang/String;FIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILF3/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "category"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "levelPhrase"

    invoke-static {p7, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueUnitPhrase"

    invoke-static {p8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p9, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p10, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->category:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->title:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->value:F

    .line 6
    iput p4, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->maxValue:I

    .line 7
    iput p5, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->level:I

    .line 8
    iput p6, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->levelRange:I

    .line 9
    iput-object p7, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->levelPhrase:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->valueUnitPhrase:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->description:Ljava/lang/String;

    .line 12
    iput-object p10, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->url:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;FIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILF3/f;)V
    .locals 2

    and-int/lit8 p12, p11, 0x1

    const-string v0, ""

    if-eqz p12, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p12, p11, 0x8

    const/4 v1, 0x0

    if-eqz p12, :cond_3

    move p4, v1

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    move p5, v1

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    move p6, v1

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    move-object p10, v0

    .line 13
    :cond_9
    invoke-direct/range {p0 .. p10}, Lcom/samsung/android/weather/api/entity/weather/PM10;-><init>(Ljava/lang/String;Ljava/lang/String;FIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/weather/PM10;Ljava/lang/String;Ljava/lang/String;FIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/PM10;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/weather/api/entity/weather/PM10;->category:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/samsung/android/weather/api/entity/weather/PM10;->title:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/samsung/android/weather/api/entity/weather/PM10;->value:F

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/samsung/android/weather/api/entity/weather/PM10;->maxValue:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/samsung/android/weather/api/entity/weather/PM10;->level:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/samsung/android/weather/api/entity/weather/PM10;->levelRange:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/samsung/android/weather/api/entity/weather/PM10;->levelPhrase:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/samsung/android/weather/api/entity/weather/PM10;->valueUnitPhrase:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/samsung/android/weather/api/entity/weather/PM10;->description:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/samsung/android/weather/api/entity/weather/PM10;->url:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p10

    :goto_9
    move-object p1, v2

    move-object p2, v3

    move p3, v4

    move p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/samsung/android/weather/api/entity/weather/PM10;->copy(Ljava/lang/String;Ljava/lang/String;FIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/PM10;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final aboveNormal()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->category:Ljava/lang/String;

    invoke-static {v0}, LR3/f;->a0(Ljava/lang/String;)Lcom/samsung/android/weather/api/unit/AQICategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/unit/AQICategory;->getCategory()Lcom/samsung/android/weather/api/unit/AQIC;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->level:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/weather/api/unit/AQIC;->aboveNormal(I)Z

    move-result p0

    return p0
.end method

.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->category:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->value:F

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->maxValue:I

    return p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->level:I

    return p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->levelRange:I

    return p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->levelPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->valueUnitPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;FIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/PM10;
    .locals 12

    const-string v0, "category"

    move-object v2, p1

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    move-object v3, p2

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "levelPhrase"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueUnitPhrase"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/weather/api/entity/weather/PM10;

    move-object v1, v0

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/weather/api/entity/weather/PM10;-><init>(Ljava/lang/String;Ljava/lang/String;FIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/weather/PM10;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/weather/PM10;

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->category:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/PM10;->category:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/PM10;->title:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->value:F

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/PM10;->value:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->maxValue:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/PM10;->maxValue:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->level:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/PM10;->level:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->levelRange:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/PM10;->levelRange:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->levelPhrase:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/PM10;->levelPhrase:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->valueUnitPhrase:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/PM10;->valueUnitPhrase:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/PM10;->description:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/weather/api/entity/weather/PM10;->url:Ljava/lang/String;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->category:Ljava/lang/String;

    return-object p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->level:I

    return p0
.end method

.method public final getLevelPhrase()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->levelPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public final getLevelRange()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->levelRange:I

    return p0
.end method

.method public final getMaxValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->maxValue:I

    return p0
.end method

.method public final getScaleColor()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->category:Ljava/lang/String;

    invoke-static {v0}, LR3/f;->a0(Ljava/lang/String;)Lcom/samsung/android/weather/api/unit/AQICategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/unit/AQICategory;->getCategory()Lcom/samsung/android/weather/api/unit/AQIC;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->level:I

    invoke-virtual {v0, p0}, Lcom/samsung/android/weather/api/unit/AQIC;->getScaleColor(I)I

    move-result p0

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->value:F

    return p0
.end method

.method public final getValueUnitPhrase()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->valueUnitPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->category:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->title:Ljava/lang/String;

    invoke-static {v0, v2}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->value:F

    invoke-static {v2, v0, v1}, Li4/b;->c(FII)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->maxValue:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->level:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->levelRange:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->levelPhrase:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->valueUnitPhrase:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->url:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->category:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->title:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->value:F

    iget v3, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->maxValue:I

    iget v4, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->level:I

    iget v5, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->levelRange:I

    iget-object v6, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->levelPhrase:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->valueUnitPhrase:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->description:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/PM10;->url:Ljava/lang/String;

    const-string v9, "PM10(category="

    const-string v10, ", title="

    const-string v11, ", value="

    invoke-static {v9, v0, v10, v1, v11}, LB/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", levelRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", levelPhrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", valueUnitPhrase="

    const-string v2, ", description="

    invoke-static {v0, v6, v1, v7, v2}, LB/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
