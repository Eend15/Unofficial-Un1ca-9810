.class public final Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bq\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0005H\u00c6\u0003J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0003H\u00c6\u0003J\t\u0010*\u001a\u00020\u0003H\u00c6\u0003J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u00c6\u0003Js\u0010-\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u00c6\u0001J\u0013\u0010.\u001a\u00020/2\u0008\u00100\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00101\u001a\u00020\u0003H\u00d6\u0001J\t\u00102\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0014R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0014R\u001a\u0010\u000c\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0014\"\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0014R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"\u00a8\u00063"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;",
        "",
        "widgetId",
        "",
        "weatherKey",
        "",
        "widgetBGColor",
        "widgetBGTransparency",
        "",
        "widgetNightMode",
        "widgetRestoreMode",
        "widgetAddedInDCMLauncher",
        "showNews",
        "showHourly",
        "components",
        "",
        "Lcom/samsung/android/weather/api/entity/widget/WidgetComponent;",
        "<init>",
        "(ILjava/lang/String;IFIIIIILjava/util/List;)V",
        "getWidgetId",
        "()I",
        "getWeatherKey",
        "()Ljava/lang/String;",
        "getWidgetBGColor",
        "getWidgetBGTransparency",
        "()F",
        "getWidgetNightMode",
        "getWidgetRestoreMode",
        "getWidgetAddedInDCMLauncher",
        "getShowNews",
        "setShowNews",
        "(I)V",
        "getShowHourly",
        "getComponents",
        "()Ljava/util/List;",
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
.field private final components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/widget/WidgetComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final showHourly:I

.field private showNews:I

.field private final weatherKey:Ljava/lang/String;

.field private final widgetAddedInDCMLauncher:I

.field private final widgetBGColor:I

.field private final widgetBGTransparency:F

.field private final widgetId:I

.field private final widgetNightMode:I

.field private final widgetRestoreMode:I


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
    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;-><init>(ILjava/lang/String;IFIIIIILjava/util/List;ILF3/f;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IFIIIIILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "IFIIIII",
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/widget/WidgetComponent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "weatherKey"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "components"

    invoke-static {p10, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetId:I

    .line 4
    iput-object p2, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->weatherKey:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetBGColor:I

    .line 6
    iput p4, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetBGTransparency:F

    .line 7
    iput p5, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetNightMode:I

    .line 8
    iput p6, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetRestoreMode:I

    .line 9
    iput p7, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetAddedInDCMLauncher:I

    .line 10
    iput p8, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->showNews:I

    .line 11
    iput p9, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->showHourly:I

    .line 12
    iput-object p10, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->components:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;IFIIIIILjava/util/List;ILF3/f;)V
    .locals 1

    and-int/lit8 p12, p11, 0x1

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    .line 13
    const-string p2, ""

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    const/4 p4, 0x0

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    const/4 p5, 0x1

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    const/4 p7, -0x1

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    move p8, v0

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    move p9, v0

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    .line 14
    sget-object p10, Lr3/r;->d:Lr3/r;

    .line 15
    :cond_9
    invoke-direct/range {p0 .. p10}, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;-><init>(ILjava/lang/String;IFIIIIILjava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;ILjava/lang/String;IFIIIIILjava/util/List;ILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetId:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->weatherKey:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetBGColor:I

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetBGTransparency:F

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetNightMode:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetRestoreMode:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetAddedInDCMLauncher:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->showNews:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->showHourly:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->components:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p10

    :goto_9
    move p1, v2

    move-object p2, v3

    move p3, v4

    move p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->copy(ILjava/lang/String;IFIIIIILjava/util/List;)Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetId:I

    return p0
.end method

.method public final component10()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/widget/WidgetComponent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->components:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->weatherKey:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetBGColor:I

    return p0
.end method

.method public final component4()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetBGTransparency:F

    return p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetNightMode:I

    return p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetRestoreMode:I

    return p0
.end method

.method public final component7()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetAddedInDCMLauncher:I

    return p0
.end method

.method public final component8()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->showNews:I

    return p0
.end method

.method public final component9()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->showHourly:I

    return p0
.end method

.method public final copy(ILjava/lang/String;IFIIIIILjava/util/List;)Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "IFIIIII",
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/widget/WidgetComponent;",
            ">;)",
            "Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;"
        }
    .end annotation

    const-string v0, "weatherKey"

    move-object v3, p2

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "components"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;

    move-object v1, v0

    move v2, p1

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;-><init>(ILjava/lang/String;IFIIIIILjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;

    iget v1, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetId:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->weatherKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->weatherKey:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetBGColor:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetBGColor:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetBGTransparency:F

    iget v3, p1, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetBGTransparency:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetNightMode:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetNightMode:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetRestoreMode:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetRestoreMode:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetAddedInDCMLauncher:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetAddedInDCMLauncher:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->showNews:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->showNews:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->showHourly:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->showHourly:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->components:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->components:Ljava/util/List;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getComponents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/weather/api/entity/widget/WidgetComponent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->components:Ljava/util/List;

    return-object p0
.end method

.method public final getShowHourly()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->showHourly:I

    return p0
.end method

.method public final getShowNews()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->showNews:I

    return p0
.end method

.method public final getWeatherKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->weatherKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getWidgetAddedInDCMLauncher()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetAddedInDCMLauncher:I

    return p0
.end method

.method public final getWidgetBGColor()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetBGColor:I

    return p0
.end method

.method public final getWidgetBGTransparency()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetBGTransparency:F

    return p0
.end method

.method public final getWidgetId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetId:I

    return p0
.end method

.method public final getWidgetNightMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetNightMode:I

    return p0
.end method

.method public final getWidgetRestoreMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetRestoreMode:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->weatherKey:Ljava/lang/String;

    invoke-static {v0, v2}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetBGColor:I

    invoke-static {v2, v0}, Le0/a;->c(II)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetBGTransparency:F

    invoke-static {v2, v0, v1}, Li4/b;->c(FII)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetNightMode:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetRestoreMode:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetAddedInDCMLauncher:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->showNews:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->showHourly:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->components:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setShowNews(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->showNews:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget v0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetId:I

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->weatherKey:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetBGColor:I

    iget v3, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetBGTransparency:F

    iget v4, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetNightMode:I

    iget v5, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetRestoreMode:I

    iget v6, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->widgetAddedInDCMLauncher:I

    iget v7, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->showNews:I

    iget v8, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->showHourly:I

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/widget/WidgetInfo;->components:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "WidgetInfo(widgetId="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", weatherKey="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", widgetBGColor="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", widgetBGTransparency="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", widgetNightMode="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", widgetRestoreMode="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", widgetAddedInDCMLauncher="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", showNews="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", showHourly="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", components="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
