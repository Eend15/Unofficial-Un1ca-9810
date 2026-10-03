.class public final Lcom/samsung/android/weather/api/entity/settings/Setting;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Le/a;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008(\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bk\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010-\u001a\u00020\u0005H\u00c6\u0003J\t\u0010.\u001a\u00020\u0003H\u00c6\u0003J\t\u0010/\u001a\u00020\u0003H\u00c6\u0003J\t\u00100\u001a\u00020\u0003H\u00c6\u0003J\t\u00101\u001a\u00020\u0003H\u00c6\u0003J\t\u00102\u001a\u00020\u0003H\u00c6\u0003J\t\u00103\u001a\u00020\u0003H\u00c6\u0003J\t\u00104\u001a\u00020\u000eH\u00c6\u0003Jo\u00105\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eH\u00c6\u0001J\u0013\u00106\u001a\u0002072\u0008\u00108\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00109\u001a\u00020\u0003H\u00d6\u0001J\t\u0010:\u001a\u00020\u0005H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016\"\u0004\u0008\u001a\u0010\u0018R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0012\"\u0004\u0008\u001c\u0010\u0014R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0012\"\u0004\u0008\u001e\u0010\u0014R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0012\"\u0004\u0008 \u0010\u0014R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0012\"\u0004\u0008\"\u0010\u0014R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0012\"\u0004\u0008$\u0010\u0014R\u001a\u0010\u000c\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0012\"\u0004\u0008&\u0010\u0014R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006;"
    }
    d2 = {
        "Lcom/samsung/android/weather/api/entity/settings/Setting;",
        "",
        "ucl",
        "",
        "favoriteKey",
        "",
        "activeCp",
        "supportAutoRefresh",
        "autoRefreshInterval",
        "successOnLocation",
        "locationAuthority",
        "permissionNotice",
        "networkCharges",
        "units",
        "Lcom/samsung/android/weather/api/unit/WeatherUnits;",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/String;IIIIIILcom/samsung/android/weather/api/unit/WeatherUnits;)V",
        "getUcl",
        "()I",
        "setUcl",
        "(I)V",
        "getFavoriteKey",
        "()Ljava/lang/String;",
        "setFavoriteKey",
        "(Ljava/lang/String;)V",
        "getActiveCp",
        "setActiveCp",
        "getSupportAutoRefresh",
        "setSupportAutoRefresh",
        "getAutoRefreshInterval",
        "setAutoRefreshInterval",
        "getSuccessOnLocation",
        "setSuccessOnLocation",
        "getLocationAuthority",
        "setLocationAuthority",
        "getPermissionNotice",
        "setPermissionNotice",
        "getNetworkCharges",
        "setNetworkCharges",
        "getUnits",
        "()Lcom/samsung/android/weather/api/unit/WeatherUnits;",
        "setUnits",
        "(Lcom/samsung/android/weather/api/unit/WeatherUnits;)V",
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
.field private activeCp:Ljava/lang/String;

.field private autoRefreshInterval:I

.field private favoriteKey:Ljava/lang/String;

.field private locationAuthority:I

.field private networkCharges:I

.field private permissionNotice:I

.field private successOnLocation:I

.field private supportAutoRefresh:I

.field private ucl:I

.field private units:Lcom/samsung/android/weather/api/unit/WeatherUnits;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIIIILcom/samsung/android/weather/api/unit/WeatherUnits;)V
    .locals 1

    const-string v0, "activeCp"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "units"

    invoke-static {p10, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->ucl:I

    .line 3
    iput-object p2, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->favoriteKey:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->activeCp:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->supportAutoRefresh:I

    .line 6
    iput p5, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->autoRefreshInterval:I

    .line 7
    iput p6, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->successOnLocation:I

    .line 8
    iput p7, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->locationAuthority:I

    .line 9
    iput p8, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->permissionNotice:I

    .line 10
    iput p9, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->networkCharges:I

    .line 11
    iput-object p10, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->units:Lcom/samsung/android/weather/api/unit/WeatherUnits;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIIIILcom/samsung/android/weather/api/unit/WeatherUnits;ILF3/f;)V
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 12
    const-string v1, ""

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move/from16 v7, p4

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move v8, v2

    goto :goto_4

    :cond_4
    move/from16 v8, p5

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    move v9, v2

    goto :goto_5

    :cond_5
    move/from16 v9, p6

    :goto_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    move v10, v2

    goto :goto_6

    :cond_6
    move/from16 v10, p7

    :goto_6
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    move v11, v2

    goto :goto_7

    :cond_7
    move/from16 v11, p8

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    move v12, v2

    goto :goto_8

    :cond_8
    move/from16 v12, p9

    :goto_8
    move-object v3, p0

    move-object/from16 v13, p10

    .line 13
    invoke-direct/range {v3 .. v13}, Lcom/samsung/android/weather/api/entity/settings/Setting;-><init>(ILjava/lang/String;Ljava/lang/String;IIIIIILcom/samsung/android/weather/api/unit/WeatherUnits;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/weather/api/entity/settings/Setting;ILjava/lang/String;Ljava/lang/String;IIIIIILcom/samsung/android/weather/api/unit/WeatherUnits;ILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/settings/Setting;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/samsung/android/weather/api/entity/settings/Setting;->ucl:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/samsung/android/weather/api/entity/settings/Setting;->favoriteKey:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/samsung/android/weather/api/entity/settings/Setting;->activeCp:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/samsung/android/weather/api/entity/settings/Setting;->supportAutoRefresh:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/samsung/android/weather/api/entity/settings/Setting;->autoRefreshInterval:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/samsung/android/weather/api/entity/settings/Setting;->successOnLocation:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/samsung/android/weather/api/entity/settings/Setting;->locationAuthority:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/samsung/android/weather/api/entity/settings/Setting;->permissionNotice:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/samsung/android/weather/api/entity/settings/Setting;->networkCharges:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/samsung/android/weather/api/entity/settings/Setting;->units:Lcom/samsung/android/weather/api/unit/WeatherUnits;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p10

    :goto_9
    move p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/samsung/android/weather/api/entity/settings/Setting;->copy(ILjava/lang/String;Ljava/lang/String;IIIIIILcom/samsung/android/weather/api/unit/WeatherUnits;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->ucl:I

    return p0
.end method

.method public final component10()Lcom/samsung/android/weather/api/unit/WeatherUnits;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->units:Lcom/samsung/android/weather/api/unit/WeatherUnits;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->favoriteKey:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->activeCp:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->supportAutoRefresh:I

    return p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->autoRefreshInterval:I

    return p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->successOnLocation:I

    return p0
.end method

.method public final component7()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->locationAuthority:I

    return p0
.end method

.method public final component8()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->permissionNotice:I

    return p0
.end method

.method public final component9()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->networkCharges:I

    return p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;IIIIIILcom/samsung/android/weather/api/unit/WeatherUnits;)Lcom/samsung/android/weather/api/entity/settings/Setting;
    .locals 12

    const-string v0, "activeCp"

    move-object v4, p3

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "units"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/weather/api/entity/settings/Setting;-><init>(ILjava/lang/String;Ljava/lang/String;IIIIIILcom/samsung/android/weather/api/unit/WeatherUnits;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/weather/api/entity/settings/Setting;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/weather/api/entity/settings/Setting;

    iget v1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->ucl:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/settings/Setting;->ucl:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->favoriteKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/settings/Setting;->favoriteKey:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->activeCp:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/weather/api/entity/settings/Setting;->activeCp:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->supportAutoRefresh:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/settings/Setting;->supportAutoRefresh:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->autoRefreshInterval:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/settings/Setting;->autoRefreshInterval:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->successOnLocation:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/settings/Setting;->successOnLocation:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->locationAuthority:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/settings/Setting;->locationAuthority:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->permissionNotice:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/settings/Setting;->permissionNotice:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->networkCharges:I

    iget v3, p1, Lcom/samsung/android/weather/api/entity/settings/Setting;->networkCharges:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->units:Lcom/samsung/android/weather/api/unit/WeatherUnits;

    iget-object p1, p1, Lcom/samsung/android/weather/api/entity/settings/Setting;->units:Lcom/samsung/android/weather/api/unit/WeatherUnits;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getActiveCp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->activeCp:Ljava/lang/String;

    return-object p0
.end method

.method public final getAutoRefreshInterval()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->autoRefreshInterval:I

    return p0
.end method

.method public final getFavoriteKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->favoriteKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocationAuthority()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->locationAuthority:I

    return p0
.end method

.method public final getNetworkCharges()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->networkCharges:I

    return p0
.end method

.method public final getPermissionNotice()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->permissionNotice:I

    return p0
.end method

.method public final getSuccessOnLocation()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->successOnLocation:I

    return p0
.end method

.method public final getSupportAutoRefresh()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->supportAutoRefresh:I

    return p0
.end method

.method public final getUcl()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->ucl:I

    return p0
.end method

.method public final getUnits()Lcom/samsung/android/weather/api/unit/WeatherUnits;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->units:Lcom/samsung/android/weather/api/unit/WeatherUnits;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->ucl:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->favoriteKey:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->activeCp:Ljava/lang/String;

    invoke-static {v0, v1}, Le0/a;->e(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->supportAutoRefresh:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->autoRefreshInterval:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->successOnLocation:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->locationAuthority:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->permissionNotice:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->networkCharges:I

    invoke-static {v1, v0}, Le0/a;->c(II)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->units:Lcom/samsung/android/weather/api/unit/WeatherUnits;

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setActiveCp(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->activeCp:Ljava/lang/String;

    return-void
.end method

.method public final setAutoRefreshInterval(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->autoRefreshInterval:I

    return-void
.end method

.method public final setFavoriteKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->favoriteKey:Ljava/lang/String;

    return-void
.end method

.method public final setLocationAuthority(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->locationAuthority:I

    return-void
.end method

.method public final setNetworkCharges(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->networkCharges:I

    return-void
.end method

.method public final setPermissionNotice(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->permissionNotice:I

    return-void
.end method

.method public final setSuccessOnLocation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->successOnLocation:I

    return-void
.end method

.method public final setSupportAutoRefresh(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->supportAutoRefresh:I

    return-void
.end method

.method public final setUcl(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->ucl:I

    return-void
.end method

.method public final setUnits(Lcom/samsung/android/weather/api/unit/WeatherUnits;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->units:Lcom/samsung/android/weather/api/unit/WeatherUnits;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget v0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->ucl:I

    iget-object v1, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->favoriteKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->activeCp:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->supportAutoRefresh:I

    iget v4, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->autoRefreshInterval:I

    iget v5, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->successOnLocation:I

    iget v6, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->locationAuthority:I

    iget v7, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->permissionNotice:I

    iget v8, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->networkCharges:I

    iget-object p0, p0, Lcom/samsung/android/weather/api/entity/settings/Setting;->units:Lcom/samsung/android/weather/api/unit/WeatherUnits;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Setting(ucl="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", favoriteKey="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", activeCp="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", supportAutoRefresh="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", autoRefreshInterval="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", successOnLocation="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", locationAuthority="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", permissionNotice="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", networkCharges="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", units="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
