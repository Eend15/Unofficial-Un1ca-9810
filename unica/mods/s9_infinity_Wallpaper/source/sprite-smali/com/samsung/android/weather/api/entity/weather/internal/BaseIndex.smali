.class public final Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008-\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bk\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\u0003H\u00c6\u0003J\t\u0010.\u001a\u00020\u0007H\u00c6\u0003J\t\u0010/\u001a\u00020\tH\u00c6\u0003J\t\u00100\u001a\u00020\u0003H\u00c6\u0003J\t\u00101\u001a\u00020\u0007H\u00c6\u0003J\t\u00102\u001a\u00020\u0003H\u00c6\u0003J\t\u00103\u001a\u00020\u0003H\u00c6\u0003J\t\u00104\u001a\u00020\u0007H\u00c6\u0003Jm\u00105\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0007H\u00c6\u0001J\u0013\u00106\u001a\u0002072\u0008\u00108\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00109\u001a\u00020\u0003H\u00d6\u0001J\t\u0010:\u001a\u00020\u0007H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012\"\u0004\u0008\u0016\u0010\u0014R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012\"\u0004\u0008\u0018\u0010\u0014R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0012\"\u0004\u0008\"\u0010\u0014R\u001a\u0010\u000b\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u001a\"\u0004\u0008$\u0010\u001cR\u001a\u0010\u000c\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0012\"\u0004\u0008&\u0010\u0014R\u001a\u0010\r\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0012\"\u0004\u0008(\u0010\u0014R\u001a\u0010\u000e\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u001a\"\u0004\u0008*\u0010\u001c\u00a8\u0006;"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;",
        "",
        "type",
        "",
        "category",
        "level",
        "levelText",
        "",
        "value",
        "",
        "priority",
        "webUrl",
        "unit",
        "extra",
        "description",
        "<init>",
        "(IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;)V",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "getCategory",
        "setCategory",
        "getLevel",
        "setLevel",
        "getLevelText",
        "()Ljava/lang/String;",
        "setLevelText",
        "(Ljava/lang/String;)V",
        "getValue",
        "()F",
        "setValue",
        "(F)V",
        "getPriority",
        "setPriority",
        "getWebUrl",
        "setWebUrl",
        "getUnit",
        "setUnit",
        "getExtra",
        "setExtra",
        "getDescription",
        "setDescription",
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
.field private category:I

.field private description:Ljava/lang/String;

.field private extra:I

.field private level:I

.field private levelText:Ljava/lang/String;

.field private priority:I

.field private type:I

.field private unit:I

.field private value:F

.field private webUrl:Ljava/lang/String;


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
    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;-><init>(IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;ILF3/f;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;)V
    .locals 1

    const-string v0, "levelText"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webUrl"

    invoke-static {p7, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p10, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->type:I

    .line 4
    iput p2, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->category:I

    .line 5
    iput p3, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->level:I

    .line 6
    iput-object p4, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->levelText:Ljava/lang/String;

    .line 7
    iput p5, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->value:F

    .line 8
    iput p6, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->priority:I

    .line 9
    iput-object p7, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->webUrl:Ljava/lang/String;

    .line 10
    iput p8, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->unit:I

    .line 11
    iput p9, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->extra:I

    .line 12
    iput-object p10, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->description:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;ILF3/f;)V
    .locals 2

    and-int/lit8 p12, p11, 0x1

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p12, p11, 0x8

    const-string v1, ""

    if-eqz p12, :cond_3

    move-object p4, v1

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    const/4 p5, 0x0

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    move-object p7, v1

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    const/4 p8, -0x1

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    move p9, v0

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    move-object p10, v1

    .line 13
    :cond_9
    invoke-direct/range {p0 .. p10}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;-><init>(IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->type:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->category:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->level:I

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->levelText:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->value:F

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->priority:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->webUrl:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->unit:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->extra:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->description:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p10

    :goto_9
    move p1, v2

    move p2, v3

    move p3, v4

    move-object p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->copy(IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->type:I

    return p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->category:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->level:I

    return p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->levelText:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->value:F

    return p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->priority:I

    return p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->webUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->unit:I

    return p0
.end method

.method public final component9()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->extra:I

    return p0
.end method

.method public final copy(IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;
    .locals 12

    const-string v0, "levelText"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webUrl"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;-><init>(IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->type:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->type:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->category:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->category:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->level:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->level:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->levelText:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->levelText:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->value:F

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->value:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->priority:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->priority:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->webUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->webUrl:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->unit:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->unit:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->extra:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->extra:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->description:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->description:Ljava/lang/String;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getCategory()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->category:I

    return p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getExtra()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->extra:I

    return p0
.end method

.method public final getLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->level:I

    return p0
.end method

.method public final getLevelText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->levelText:Ljava/lang/String;

    return-object p0
.end method

.method public final getPriority()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->priority:I

    return p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->type:I

    return p0
.end method

.method public final getUnit()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->unit:I

    return p0
.end method

.method public final getValue()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->value:F

    return p0
.end method

.method public final getWebUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->webUrl:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->category:I

    invoke-static {v2, v0}, Le0/a;->c(II)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->level:I

    invoke-static {v2, v0}, Le0/a;->c(II)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->levelText:Ljava/lang/String;

    invoke-static {v0, v2}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->value:F

    invoke-static {v2, v0, v1}, Li4/b;->c(FII)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->priority:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->webUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->unit:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->extra:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->description:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setCategory(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->category:I

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->description:Ljava/lang/String;

    return-void
.end method

.method public final setExtra(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->extra:I

    return-void
.end method

.method public final setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->level:I

    return-void
.end method

.method public final setLevelText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->levelText:Ljava/lang/String;

    return-void
.end method

.method public final setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->priority:I

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->type:I

    return-void
.end method

.method public final setUnit(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->unit:I

    return-void
.end method

.method public final setValue(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->value:F

    return-void
.end method

.method public final setWebUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->webUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget v0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->type:I

    iget v1, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->category:I

    iget v2, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->level:I

    iget-object v3, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->levelText:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->value:F

    iget v5, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->priority:I

    iget-object v6, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->webUrl:Ljava/lang/String;

    iget v7, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->unit:I

    iget v8, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->extra:I

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->description:Ljava/lang/String;

    const-string v9, "BaseIndex(type="

    const-string v10, ", category="

    const-string v11, ", level="

    invoke-static {v0, v9, v1, v10, v11}, LB/a;->p(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", levelText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", webUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
