.class public abstract Lm3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lm3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm3/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm3/d;->a:Lm3/c;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/Condition;)I
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LR3/f;->e(Landroid/content/Context;)Z

    sget-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-nez p0, :cond_0

    invoke-static {}, LR3/f;->b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    move-result-object p0

    sput-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    :cond_0
    sget-object p0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->getProfile()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/profile/Profile;->getOneUiVersion()I

    move-result p0

    const v1, 0x11170

    if-lt p0, v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getExpansionCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v2, p0, :cond_2

    move-object v0, v1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getInternalCode()I

    move-result p0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getInternalCode()I

    move-result p0

    :goto_0
    return p0

    :cond_5
    const-string p0, "storage"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v0
.end method

.method public static b()Lcom/samsung/android/weather/api/entity/profile/Profile;
    .locals 7

    new-instance v0, Lcom/samsung/android/weather/api/entity/profile/Profile;

    invoke-static {}, Lk3/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lk3/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lk3/a;->d()I

    move-result v3

    :try_start_0
    sget-object v4, Lk3/a;->a:LZ4/b;

    invoke-virtual {v4}, LZ4/b;->d()Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "COL_PROFILE_LOCAL_FIRST_API_LEVEL"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-static {}, La/b;->b()I

    move-result v4

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {v4}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v4

    :goto_3
    invoke-static {}, La/b;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    instance-of v6, v4, Lq3/g;

    if-eqz v6, :cond_2

    move-object v4, v5

    :cond_2
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/weather/api/entity/profile/Profile;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetch profile : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WPI"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;
    .locals 28

    move-object/from16 v1, p0

    const-string v2, "WPI"

    const-string v0, "context"

    invoke-static {v1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lm3/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const v0, 0x13880

    const-string v4, "US"

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-static/range {p0 .. p0}, LR3/f;->e(Landroid/content/Context;)Z

    invoke-static {}, Lw0/f;->a()Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->getSetting()Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "cache is empty, fetch all weather data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v2

    invoke-static {}, Lw0/f;->a()Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    invoke-static {v2}, Lm3/d;->d(Lcom/samsung/android/weather/api/entity/profile/Profile;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lw0/f;->a()Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateSetting(Lcom/samsung/android/weather/api/entity/settings/Setting;)V

    invoke-static {v1, v3}, Lm3/d;->j(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/settings/Setting;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lw0/f;->a()Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateWeather(Ljava/util/List;)I

    :cond_1
    if-nez v3, :cond_3

    new-instance v3, Lcom/samsung/android/weather/api/entity/settings/Setting;

    invoke-static {v5, v0, v4}, La4/x;->G(IILjava/lang/String;)Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object v16

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v16}, Lcom/samsung/android/weather/api/entity/settings/Setting;-><init>(ILjava/lang/String;Ljava/lang/String;IIIIIILcom/samsung/android/weather/api/unit/WeatherUnits;)V

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/samsung/android/weather/api/entity/settings/Setting;

    invoke-static {v5, v0, v4}, La4/x;->G(IILjava/lang/String;)Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object v27

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, ""

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v27}, Lcom/samsung/android/weather/api/entity/settings/Setting;-><init>(ILjava/lang/String;Ljava/lang/String;IIIIIILcom/samsung/android/weather/api/unit/WeatherUnits;)V

    :cond_3
    :goto_1
    return-object v3
.end method

.method public static d(Lcom/samsung/android/weather/api/entity/profile/Profile;)Lcom/samsung/android/weather/api/entity/settings/Setting;
    .locals 27

    new-instance v11, Lcom/samsung/android/weather/api/entity/settings/Setting;

    sget-object v0, Lk3/b;->b:LZ4/c;

    invoke-virtual {v0}, LZ4/c;->b()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "COL_SETTING_SHOW_USE_LOCATION_POPUP"

    invoke-static {v1, v3, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0}, LZ4/c;->b()Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "COL_SETTING_LAST_SEL_LOCATION"

    invoke-static {v4, v5}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0}, LZ4/c;->b()Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "COL_SETTING_INITIAL_CP_TYPE"

    invoke-static {v5, v6}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_4

    const-string v5, ""

    :cond_4
    invoke-virtual {v0}, LZ4/c;->b()Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v7, "COL_SETTING_AUTO_REFRESH"

    invoke-static {v6, v7, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_5

    :cond_6
    move v6, v3

    :goto_5
    invoke-virtual {v0}, LZ4/c;->b()Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_7

    const-string v8, "COL_SETTING_AUTO_REFRESH_TIME"

    invoke-static {v7, v8, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    :goto_6
    const/4 v8, 0x1

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_7

    :cond_8
    move v7, v8

    :goto_7
    invoke-virtual {v0}, LZ4/c;->b()Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_9

    const-string v10, "COL_SETTING_LOCATION_SERVICES"

    invoke-static {v9, v10, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_8

    :cond_9
    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_9

    :cond_a
    move v9, v3

    :goto_9
    invoke-virtual {v0}, LZ4/c;->b()Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_b

    const-string v13, "COL_SETTING_SHOW_MOBILE_POPUP"

    invoke-static {v10, v13, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v10

    goto :goto_a

    :cond_b
    move v10, v2

    :goto_a
    invoke-virtual {v0}, LZ4/c;->b()Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_c

    const-string v14, "COL_SETTING_SHOW_WLAN_POPUP"

    invoke-static {v13, v14, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v13

    goto :goto_b

    :cond_c
    move v13, v2

    :goto_b
    if-ge v10, v13, :cond_d

    move v10, v13

    :cond_d
    invoke-virtual {v0}, LZ4/c;->b()Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_e

    const-string v14, "COL_SETTING_PERMISSION_NOTICE"

    invoke-static {v13, v14, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_c

    :cond_e
    const/4 v13, 0x0

    :goto_c
    if-eqz v13, :cond_f

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_f
    move v13, v3

    invoke-virtual {v0}, LZ4/c;->b()Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_10

    const-string v14, "COL_SETTING_SHOW_CHARGER_POPUP"

    invoke-static {v3, v14, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_d

    :cond_10
    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v14, v3

    goto :goto_e

    :cond_11
    move v14, v2

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/weather/api/entity/profile/Profile;->getOneUiVersion()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/weather/api/entity/profile/Profile;->getCountryCode()Ljava/lang/String;

    move-result-object v15

    const-string v12, "countryCode"

    invoke-static {v15, v12}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LZ4/c;->b()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2a

    const-string v12, "COL_SETTING_TEMP_SCALE"

    invoke-static {v0, v12, v8}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v12

    const-string v2, "COL_SETTING_STANDARD_UNIT_TYPE"

    invoke-static {v0, v2, v12}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8, v3, v15}, La4/x;->G(IILjava/lang/String;)Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object v3

    new-instance v8, Lcom/samsung/android/weather/api/unit/WeatherUnits;

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getUnitType()La3/G;

    move-result-object v15

    iget v15, v15, La3/G;->a:I

    invoke-static {v0, v2, v15}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    const/4 v15, 0x2

    if-eqz v2, :cond_15

    sget-object v16, La3/E;->b:La3/E;

    move/from16 v26, v14

    const/4 v14, 0x1

    if-eq v2, v14, :cond_12

    if-eq v2, v15, :cond_14

    const/4 v14, 0x3

    if-eq v2, v14, :cond_13

    :cond_12
    move-object/from16 v17, v16

    goto :goto_10

    :cond_13
    sget-object v2, La3/C;->b:La3/C;

    :goto_f
    move-object/from16 v17, v2

    goto :goto_10

    :cond_14
    sget-object v2, La3/F;->b:La3/F;

    goto :goto_f

    :cond_15
    move/from16 v26, v14

    sget-object v2, La3/D;->b:La3/D;

    goto :goto_f

    :goto_10
    if-eqz v12, :cond_16

    sget-object v2, La3/H;->b:La3/H;

    :goto_11
    move-object/from16 v18, v2

    goto :goto_12

    :cond_16
    sget-object v2, La3/I;->b:La3/I;

    goto :goto_11

    :goto_12
    invoke-virtual {v3}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getWindSpeedUnit()La3/B;

    move-result-object v2

    iget v2, v2, La3/B;->a:I

    const-string v12, "COL_SETTING_WIND_SPEED_UNIT"

    invoke-static {v0, v12, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sget-object v12, La3/y;->b:La3/y;

    if-eqz v2, :cond_17

    const/4 v14, 0x1

    if-eq v2, v14, :cond_1a

    if-eq v2, v15, :cond_19

    const/4 v14, 0x3

    if-eq v2, v14, :cond_18

    :cond_17
    move-object/from16 v19, v12

    goto :goto_14

    :cond_18
    sget-object v2, La3/x;->b:La3/x;

    :goto_13
    move-object/from16 v19, v2

    goto :goto_14

    :cond_19
    sget-object v2, La3/A;->b:La3/A;

    goto :goto_13

    :cond_1a
    sget-object v2, La3/z;->b:La3/z;

    goto :goto_13

    :goto_14
    invoke-virtual {v3}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getVisibilityUnit()La3/n;

    move-result-object v2

    iget v2, v2, La3/n;->a:I

    const-string v12, "COL_SETTING_VISIBILITY_UNIT"

    invoke-static {v0, v12, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sget-object v12, La3/l;->b:La3/l;

    if-eqz v2, :cond_1b

    const/4 v14, 0x1

    if-eq v2, v14, :cond_1c

    :cond_1b
    move-object/from16 v20, v12

    goto :goto_15

    :cond_1c
    sget-object v2, La3/m;->b:La3/m;

    move-object/from16 v20, v2

    :goto_15
    invoke-virtual {v3}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getPressureUnit()La3/u;

    move-result-object v2

    iget v2, v2, La3/u;->a:I

    const-string v12, "COL_SETTING_PRESSURE_UNIT"

    invoke-static {v0, v12, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sget-object v12, La3/t;->b:La3/t;

    if-eqz v2, :cond_1d

    const/4 v14, 0x1

    if-eq v2, v14, :cond_1f

    if-eq v2, v15, :cond_1e

    :cond_1d
    move-object/from16 v21, v12

    goto :goto_17

    :cond_1e
    sget-object v2, La3/r;->b:La3/r;

    :goto_16
    move-object/from16 v21, v2

    goto :goto_17

    :cond_1f
    sget-object v2, La3/s;->b:La3/s;

    goto :goto_16

    :goto_17
    invoke-virtual {v3}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getHumidityUnit()La3/q;

    move-result-object v2

    iget v2, v2, La3/q;->a:I

    const-string v12, "COL_SETTING_HUMIDITY_UNIT"

    invoke-static {v0, v12, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sget-object v12, La3/p;->b:La3/p;

    if-eqz v2, :cond_20

    const/4 v14, 0x1

    if-eq v2, v14, :cond_21

    :cond_20
    move-object/from16 v22, v12

    goto :goto_18

    :cond_21
    sget-object v2, La3/o;->b:La3/o;

    move-object/from16 v22, v2

    :goto_18
    invoke-virtual {v3}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getAirPollutantUnit()La3/g;

    move-result-object v2

    iget v2, v2, La3/g;->a:I

    const-string v12, "COL_SETTING_AIR_POLLUTANT_UNIT"

    invoke-static {v0, v12, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    sget-object v12, La3/f;->b:La3/f;

    if-eqz v2, :cond_22

    const/4 v14, 0x1

    if-eq v2, v14, :cond_26

    if-eq v2, v15, :cond_25

    const/4 v14, 0x3

    if-eq v2, v14, :cond_24

    const/4 v14, 0x4

    if-eq v2, v14, :cond_23

    :cond_22
    move-object/from16 v23, v12

    goto :goto_1a

    :cond_23
    sget-object v2, La3/d;->b:La3/d;

    :goto_19
    move-object/from16 v23, v2

    goto :goto_1a

    :cond_24
    sget-object v2, La3/c;->b:La3/c;

    goto :goto_19

    :cond_25
    sget-object v2, La3/e;->b:La3/e;

    goto :goto_19

    :cond_26
    sget-object v2, La3/b;->b:La3/b;

    goto :goto_19

    :goto_1a
    invoke-virtual {v3}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getProbabilityUnit()La3/w;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "COL_SETTING_PRECIPITATION_PROB_UNIT"

    const/4 v12, 0x0

    invoke-static {v0, v2, v12}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    sget-object v24, La3/v;->a:La3/v;

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getPrecipitationAmountUnit()La3/k;

    move-result-object v2

    iget v2, v2, La3/k;->a:I

    const-string v3, "COL_SETTING_PRECIPITATION_AMOUNT_UNIT"

    invoke-static {v0, v3, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    sget-object v2, La3/j;->b:La3/j;

    if-eqz v0, :cond_27

    const/4 v3, 0x1

    if-eq v0, v3, :cond_29

    if-eq v0, v15, :cond_28

    :cond_27
    move-object/from16 v25, v2

    goto :goto_1c

    :cond_28
    sget-object v0, La3/h;->b:La3/h;

    :goto_1b
    move-object/from16 v25, v0

    goto :goto_1c

    :cond_29
    sget-object v0, La3/i;->b:La3/i;

    goto :goto_1b

    :goto_1c
    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v25}, Lcom/samsung/android/weather/api/unit/WeatherUnits;-><init>(La3/G;La3/J;La3/B;La3/n;La3/u;La3/q;La3/g;La3/w;La3/k;)V

    move-object v12, v8

    goto :goto_1d

    :cond_2a
    move v0, v8

    move/from16 v26, v14

    invoke-static {v0, v3, v15}, La4/x;->G(IILjava/lang/String;)Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object v0

    move-object v12, v0

    :goto_1d
    move-object v0, v11

    move-object v2, v4

    move-object v3, v5

    move v4, v6

    move v5, v7

    move v6, v9

    move v7, v10

    move v8, v13

    move/from16 v9, v26

    move-object v10, v12

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/weather/api/entity/settings/Setting;-><init>(ILjava/lang/String;Ljava/lang/String;IIIIIILcom/samsung/android/weather/api/unit/WeatherUnits;)V

    invoke-virtual {v11}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getUcl()I

    move-result v0

    const-string v1, "WPI"

    if-gez v0, :cond_2b

    const-string v0, "failed to fetch weather setting"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto :goto_1e

    :cond_2b
    invoke-virtual {v11}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getUcl()I

    move-result v0

    invoke-virtual {v11}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getUnits()Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getTempUnit()La3/J;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fetch weather setting ucl : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " scale :"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-object v11
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/Weather;
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lm3/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WPI"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_3

    invoke-static {p0}, LR3/f;->e(Landroid/content/Context;)Z

    invoke-static {p0}, Lm3/d;->m(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/weather/api/entity/weather/Weather;

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getLocation()Lcom/samsung/android/weather/api/entity/weather/Location;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/Location;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_2
    check-cast v0, Lcom/samsung/android/weather/api/entity/weather/Weather;

    :cond_3
    return-object v0
.end method

.method public static f(Lcom/samsung/android/weather/api/entity/weather/Condition;I)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getIndexList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getType()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    return-object v0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;
    .locals 17

    move-object/from16 v1, p1

    const-string v0, "context"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, La/a;->e:Ljava/util/ArrayList;

    sget-object v4, La/a;->f:Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    sget-object v0, La/a;->f:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    invoke-static/range {p0 .. p0}, LR3/f;->e(Landroid/content/Context;)Z

    sget-object v0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-nez v0, :cond_1

    invoke-static {}, LR3/f;->b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    move-result-object v0

    sput-object v0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    :cond_1
    sget-object v0, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->getProfile()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    :cond_2
    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/profile/Profile;->getOneUiVersion()I

    move-result v0

    const v5, 0x13880

    if-lt v0, v5, :cond_13

    sget-object v0, La/a;->a:Ljava/util/ArrayList;

    sget-object v5, La/a;->b:Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v5, La/a;->c:Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v5, La/a;->d:Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_4
    move-object v5, v2

    :goto_2
    check-cast v5, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    if-nez v5, :cond_18

    sget-object v5, Lm3/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lm3/b;->a:Lq3/j;

    invoke-virtual {v0}, Lq3/j;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZ4/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v0, LZ4/a;->a:LU3/w;

    const-string v8, "corp_app_list"

    invoke-static {v7, v8}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :try_start_0
    iget-object v9, v0, LZ4/a;->b:Landroid/content/ContentResolver;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_5

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v7, v2

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v8, ""

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    if-eqz v7, :cond_a

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_5
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "COL_NAME"

    invoke-static {v7, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "COL_PACKAGE_NAME"

    invoke-static {v7, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "COL_KEY"

    const/4 v8, 0x0

    invoke-static {v7, v0, v8}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v11

    const-string v0, "COL_CERTIFICATE"

    invoke-static {v7, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "COL_DATA_LEVEL"

    invoke-static {v7, v0, v8}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v13

    const-string v0, "COL_COMMAND_LEVEL"

    invoke-static {v7, v0, v8}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v14

    new-instance v0, Lb5/a;

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lb5/a;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_6
    sget-object v0, Lq3/m;->a:Lq3/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :goto_6
    :try_start_3
    invoke-static {v0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v8, "[WEATHER_PERSISTENCE]"

    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_b

    :cond_7
    :goto_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v10, "Corp App Cursor Info] "

    if-eqz v9, :cond_8

    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb5/a;

    iget-object v9, v9, Lb5/a;->b:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb5/a;

    iget-object v9, v9, Lb5/a;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_a

    :cond_9
    invoke-static {v7, v2}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_c

    :goto_b
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-static {v7, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_a
    :goto_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v6}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb5/a;

    iget-object v8, v7, Lb5/a;->b:Ljava/lang/String;

    const-string v9, "fetchCorpAppList] "

    const-string v10, " : "

    invoke-static {v9, v8, v10}, LB/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v7, Lb5/a;->a:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WPI"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    iget-object v13, v7, Lb5/a;->d:Ljava/lang/String;

    const-string v9, "34df0e7a9f1cf1892e45c056b4973cd81ccf148a4050d11aea4ac5a65f900a42"

    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "0a012131b1bdf9e80ef97d37f3b48362be363a464c8445ecf83627ebe8493a1e"

    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    sget-object v9, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v9, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8"

    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_f

    :cond_b
    const/4 v9, 0x2

    :goto_e
    move v12, v9

    goto :goto_10

    :cond_c
    :goto_f
    const/4 v9, 0x1

    goto :goto_e

    :goto_10
    iget-object v10, v7, Lb5/a;->b:Ljava/lang/String;

    iget v14, v7, Lb5/a;->c:I

    iget v15, v7, Lb5/a;->e:I

    iget v7, v7, Lb5/a;->f:I

    move-object v9, v8

    move/from16 v16, v7

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_d
    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_e
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_11

    :cond_10
    move-object v3, v2

    :goto_11
    move-object v5, v3

    check-cast v5, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    if-nez v5, :cond_18

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object v2, v3

    :cond_12
    move-object v5, v2

    check-cast v5, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    goto :goto_13

    :cond_13
    sget-object v0, La/a;->a:Ljava/util/ArrayList;

    sget-object v3, La/a;->b:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v3, La/a;->c:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v3, La/a;->d:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_12

    :cond_15
    move-object v3, v2

    :goto_12
    move-object v5, v3

    check-cast v5, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    if-nez v5, :cond_18

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object v2, v3

    :cond_17
    move-object v5, v2

    check-cast v5, Lcom/samsung/android/weather/api/entity/weather/internal/CorpApp;

    :cond_18
    :goto_13
    return-object v5

    :cond_19
    const-string v0, "storage"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v2
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.samsung.android.watch.weather"

    goto :goto_0

    :cond_0
    const-string p0, "com.sec.android.daemonapp"

    :goto_0
    return-object p0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "context"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "partnerCode"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    const-string v4, ""

    if-nez v1, :cond_0

    return-object v4

    :cond_0
    sget-object v1, Lk3/b;->b:LZ4/c;

    invoke-virtual {v1}, LZ4/c;->b()Landroid/database/Cursor;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const-string v7, "COL_SETTING_INITIAL_CP_TYPE"

    invoke-static {v5, v7}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v6

    :goto_0
    if-nez v5, :cond_2

    move-object v5, v4

    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x7d2d258b

    if-eq v7, v8, :cond_7

    const v8, 0x118d4

    if-eq v7, v8, :cond_4

    const v8, 0x1236e

    if-eq v7, v8, :cond_3

    goto :goto_1

    :cond_3
    const-string v7, "KOR"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto/16 :goto_d

    :cond_4
    const-string v7, "HUA"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    const-string v2, "partner"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_6
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_e

    :cond_7
    const-string v7, "JPN_V4"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    :cond_8
    :goto_1
    invoke-virtual {v1}, LZ4/c;->b()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v5, "COL_SETTING_TEMP_SCALE"

    const/4 v7, 0x0

    invoke-static {v1, v5, v7}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_9
    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_a
    const/4 v1, 0x1

    :goto_3
    invoke-static/range {p0 .. p0}, LR3/f;->e(Landroid/content/Context;)Z

    sget-object v7, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-nez v7, :cond_b

    invoke-static {}, LR3/f;->b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    move-result-object v7

    sput-object v7, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    :cond_b
    sget-object v7, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-eqz v7, :cond_1c

    invoke-interface {v7}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->getProfile()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v8

    if-nez v8, :cond_c

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    :cond_c
    invoke-virtual {v8}, Lcom/samsung/android/weather/api/entity/profile/Profile;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    const-string v8, "salesCode"

    invoke-static {v7, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v8, "parse(...)"

    invoke-static {v3, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    const-string v10, "par"

    const-string v11, "getQueryParameterNames(...)"

    if-nez v9, :cond_10

    invoke-virtual {v3}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Ljava/lang/String;

    invoke-static {v12, v10}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    goto :goto_4

    :cond_e
    move-object v9, v6

    :goto_4
    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_f

    invoke-virtual {v3, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_f
    move-object v0, v6

    :cond_10
    :goto_5
    invoke-virtual {v3}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v9

    invoke-static {v9, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, "cm_ven"

    if-eqz v12, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Ljava/lang/String;

    invoke-static {v14, v13}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    goto :goto_6

    :cond_12
    move-object v12, v6

    :goto_6
    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_13

    invoke-virtual {v3, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_13
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v3}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v12

    invoke-static {v12, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const-string v15, "theme"

    const-string v5, "temp"

    if-eqz v14, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v2, v14

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v10}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14

    invoke-static {v2, v5}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    invoke-static {v2, v13}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    invoke-static {v2, v15}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    move-object/from16 v2, p0

    goto :goto_7

    :cond_15
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_16

    move-object v12, v4

    :cond_16
    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_17
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_18

    goto :goto_9

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {v8, v10, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const/4 v0, 0x1

    if-ne v1, v0, :cond_19

    const-string v0, "c"

    goto :goto_a

    :cond_19
    const-string v0, "f"

    :goto_a
    invoke-virtual {v8, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v8, v13, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1a

    const-string v0, "samsungDark"

    goto :goto_b

    :cond_1a
    const-string v0, "samsungLight"

    :goto_b
    invoke-virtual {v8, v15, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_c

    :cond_1b
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_e

    :cond_1c
    const-string v0, "storage"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v6

    :cond_1d
    :goto_d
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_e
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/settings/Setting;)Ljava/util/ArrayList;
    .locals 98

    move-object/from16 v1, p0

    const-string v0, "context"

    invoke-static {v1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lk3/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/b;

    const-string v5, "entity"

    invoke-static {v0, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lb5/b;->a:Lc5/e;

    if-eqz v5, :cond_0

    new-instance v24, Lcom/samsung/android/weather/api/entity/weather/Location;

    iget-object v6, v5, Lc5/e;->Z:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v10, v5, Lc5/e;->g:Ljava/lang/String;

    iget-object v11, v5, Lc5/e;->j:Ljava/lang/String;

    iget-object v12, v5, Lc5/e;->l:Ljava/lang/String;

    iget-object v14, v5, Lc5/e;->n:Ljava/lang/String;

    iget-object v15, v5, Lc5/e;->o:Ljava/lang/String;

    iget-object v6, v5, Lc5/e;->i0:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v6, v5, Lc5/e;->j0:Ljava/lang/String;

    iget-object v13, v5, Lc5/e;->k0:Ljava/lang/String;

    iget-object v9, v5, Lc5/e;->l0:Ljava/lang/String;

    iget-object v8, v5, Lc5/e;->a:Ljava/lang/String;

    iget-object v4, v5, Lc5/e;->p:Ljava/lang/String;

    move-object/from16 v20, v9

    move-object v9, v4

    const/16 v22, 0x2040

    const/16 v23, 0x0

    const/4 v4, 0x0

    move-object/from16 v19, v13

    move v13, v4

    const/16 v21, 0x0

    move-object v4, v6

    move-object/from16 v6, v24

    move-object/from16 v18, v4

    invoke-direct/range {v6 .. v23}, Lcom/samsung/android/weather/api/entity/weather/Location;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILF3/f;)V

    :goto_1
    move-object/from16 v44, v24

    goto :goto_2

    :cond_0
    new-instance v24, Lcom/samsung/android/weather/api/entity/weather/Location;

    move-object/from16 v25, v24

    const/16 v41, 0x3fff

    const/16 v42, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-direct/range {v25 .. v42}, Lcom/samsung/android/weather/api/entity/weather/Location;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILF3/f;)V

    goto :goto_1

    :goto_2
    new-instance v4, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    sget-object v6, Lr3/r;->d:Lr3/r;

    const-string v8, "<this>"

    if-eqz v5, :cond_2

    iget-object v10, v0, Lb5/b;->d:Ljava/util/ArrayList;

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v10}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v11

    invoke-direct {v15, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc5/g;

    invoke-static {v11, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    iget-object v13, v11, Lc5/g;->f:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v28

    iget-object v13, v11, Lc5/g;->c:Ljava/lang/String;

    iget-object v14, v11, Lc5/g;->d:Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v30

    iget-object v14, v11, Lc5/g;->e:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v31

    iget-object v14, v11, Lc5/g;->g:Ljava/lang/String;

    iget-object v7, v11, Lc5/g;->i:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v34

    iget-object v7, v11, Lc5/g;->j:Ljava/lang/String;

    const/16 v36, 0x80

    const/16 v37, 0x0

    iget v9, v11, Lc5/g;->b:I

    iget v11, v11, Lc5/g;->h:I

    const/16 v33, 0x0

    move-object/from16 v25, v12

    move/from16 v26, v9

    move/from16 v27, v11

    move-object/from16 v29, v13

    move-object/from16 v32, v14

    move-object/from16 v35, v7

    invoke-direct/range {v25 .. v37}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;-><init>(IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;ILF3/f;)V

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    new-instance v7, Lcom/samsung/android/weather/api/entity/weather/Condition;

    iget-object v9, v5, Lc5/e;->G:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v9, v5, Lc5/e;->b:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v9, v5, Lc5/e;->c:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    new-instance v9, Lcom/samsung/android/weather/api/entity/weather/Temp;

    iget-object v10, v5, Lc5/e;->e:Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    move-object/from16 v25, v3

    move-object/from16 v16, v15

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x2

    invoke-direct {v9, v10, v3, v15, v11}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    new-instance v10, Lcom/samsung/android/weather/api/entity/weather/Temp;

    iget-object v3, v5, Lc5/e;->B:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move-object/from16 v26, v2

    const/4 v2, 0x0

    invoke-direct {v10, v3, v2, v15, v11}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    new-instance v3, Lcom/samsung/android/weather/api/entity/weather/Temp;

    iget-object v2, v5, Lc5/e;->C:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v1, 0x0

    invoke-direct {v3, v2, v1, v15, v11}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    new-instance v2, Lcom/samsung/android/weather/api/entity/weather/Temp;

    iget-object v1, v5, Lc5/e;->D:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move-object/from16 v27, v6

    const/4 v6, 0x0

    invoke-direct {v2, v1, v6, v15, v11}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    iget-object v1, v5, Lc5/e;->f:Ljava/lang/String;

    iget-object v6, v5, Lc5/e;->H:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v23, 0x8

    const/16 v24, 0x0

    move-object v11, v7

    move-object/from16 v22, v16

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v20, v1

    move-object/from16 v21, v6

    invoke-direct/range {v11 .. v24}, Lcom/samsung/android/weather/api/entity/weather/Condition;-><init>(IIIILcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILF3/f;)V

    move-object/from16 v46, v7

    goto :goto_4

    :cond_2
    move-object/from16 v26, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v6

    new-instance v1, Lcom/samsung/android/weather/api/entity/weather/Condition;

    const/16 v57, 0x7ff

    const/16 v58, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    move-object/from16 v45, v1

    invoke-direct/range {v45 .. v58}, Lcom/samsung/android/weather/api/entity/weather/Condition;-><init>(IIIILcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILF3/f;)V

    move-object/from16 v46, v1

    :goto_4
    if-eqz v5, :cond_3

    invoke-static {v5}, Li3/a;->b(Lc5/e;)Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v1

    move-object/from16 v47, v1

    goto :goto_5

    :cond_3
    new-instance v1, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-object/from16 v47, v1

    const/16 v69, 0x1fff

    const/16 v70, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const-wide/16 v59, 0x0

    const-wide/16 v61, 0x0

    const-wide/16 v63, 0x0

    const-wide/16 v65, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    invoke-direct/range {v47 .. v70}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;-><init>(JLjava/lang/String;Ljava/lang/String;ZJJJJJJJIIILF3/f;)V

    :goto_5
    new-instance v1, Lcom/samsung/android/weather/api/entity/weather/Temp;

    const v2, 0x4479c000    # 999.0f

    if-eqz v5, :cond_4

    iget-object v3, v5, Lc5/e;->E:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x2

    goto :goto_7

    :cond_4
    move v3, v2

    goto :goto_6

    :goto_7
    invoke-direct {v1, v3, v7, v9, v6}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    new-instance v3, Lcom/samsung/android/weather/api/entity/weather/Temp;

    if-eqz v5, :cond_5

    iget-object v2, v5, Lc5/e;->F:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_5
    invoke-direct {v3, v2, v7, v9, v6}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    const-string v2, ""

    if-eqz v5, :cond_6

    iget-object v6, v5, Lc5/e;->Y:Ljava/lang/String;

    move-object/from16 v65, v6

    goto :goto_8

    :cond_6
    move-object/from16 v65, v2

    :goto_8
    const v69, 0x77fff0

    const/16 v70, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    move-object/from16 v45, v4

    move-object/from16 v48, v1

    move-object/from16 v49, v3

    invoke-direct/range {v45 .. v70}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;-><init>(Lcom/samsung/android/weather/api/entity/weather/Condition;Lcom/samsung/android/weather/api/entity/weather/ForecastTime;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Humidity;Lcom/samsung/android/weather/api/entity/weather/UV;Lcom/samsung/android/weather/api/entity/weather/DewPoint;Lcom/samsung/android/weather/api/entity/weather/Precipitation;Lcom/samsung/android/weather/api/entity/weather/Visibility;Lcom/samsung/android/weather/api/entity/weather/Pressure;Lcom/samsung/android/weather/api/entity/weather/Sunrise;Lcom/samsung/android/weather/api/entity/weather/Sunset;Lcom/samsung/android/weather/api/entity/weather/Moonrise;Lcom/samsung/android/weather/api/entity/weather/Moonset;Lcom/samsung/android/weather/api/entity/weather/MoonPhase;Lcom/samsung/android/weather/api/entity/weather/Wind;Lcom/samsung/android/weather/api/entity/weather/AQI;Lcom/samsung/android/weather/api/entity/weather/PM10;Lcom/samsung/android/weather/api/entity/weather/PM25;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/weather/api/entity/weather/ShortTermPrecipitation;Ljava/util/List;ILF3/f;)V

    if-eqz v5, :cond_7

    iget-object v1, v5, Lc5/e;->e0:Ljava/lang/String;

    move-object/from16 v47, v1

    goto :goto_9

    :cond_7
    move-object/from16 v47, v2

    :goto_9
    if-eqz v5, :cond_8

    iget-object v1, v5, Lc5/e;->a0:Ljava/lang/String;

    :goto_a
    move-object/from16 v46, v1

    goto :goto_b

    :cond_8
    const-string v1, "0"

    goto :goto_a

    :goto_b
    if-eqz v5, :cond_9

    invoke-static {v5}, Li3/a;->b(Lc5/e;)Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v1

    goto :goto_c

    :cond_9
    new-instance v1, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-object/from16 v48, v1

    const/16 v70, 0x1fff

    const/16 v71, 0x0

    const-wide/16 v49, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const-wide/16 v54, 0x0

    const-wide/16 v56, 0x0

    const-wide/16 v58, 0x0

    const-wide/16 v60, 0x0

    const-wide/16 v62, 0x0

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    invoke-direct/range {v48 .. v71}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;-><init>(JLjava/lang/String;Ljava/lang/String;ZJJJJJJJIIILF3/f;)V

    :goto_c
    iget-object v3, v0, Lb5/b;->b:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc5/f;

    invoke-static {v6, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/samsung/android/weather/api/entity/weather/HourlyObservation;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v6, Lc5/f;->p:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-ltz v10, :cond_a

    move-object v10, v9

    goto :goto_e

    :cond_a
    const/4 v10, 0x0

    :goto_e
    if-eqz v10, :cond_b

    new-instance v10, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    iget-object v11, v6, Lc5/f;->q:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v51

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    const/16 v59, 0x3e8

    const/16 v60, 0x0

    const/16 v49, 0x11

    const/16 v50, 0x0

    const/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v48, v10

    move/from16 v53, v9

    invoke-direct/range {v48 .. v60}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;-><init>(IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;ILF3/f;)V

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v9, v6, Lc5/f;->l:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-ltz v10, :cond_c

    move-object v10, v9

    goto :goto_f

    :cond_c
    const/4 v10, 0x0

    :goto_f
    if-eqz v10, :cond_d

    new-instance v10, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    iget-object v11, v6, Lc5/f;->k:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    const/16 v59, 0x1e4

    const/16 v60, 0x0

    const/16 v49, 0x12

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const-string v58, ""

    move-object/from16 v48, v10

    move-object/from16 v52, v11

    move/from16 v53, v9

    invoke-direct/range {v48 .. v60}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;-><init>(IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;ILF3/f;)V

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v9, v6, Lc5/f;->m:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-ltz v10, :cond_e

    move-object v10, v9

    goto :goto_10

    :cond_e
    const/4 v10, 0x0

    :goto_10
    if-eqz v10, :cond_f

    new-instance v10, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    const/16 v59, 0x3ec

    const/16 v60, 0x0

    const/16 v49, 0x1b

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v48, v10

    move/from16 v53, v9

    invoke-direct/range {v48 .. v60}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;-><init>(IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;ILF3/f;)V

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v9, v6, Lc5/f;->r:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-ltz v10, :cond_10

    move-object v10, v9

    goto :goto_11

    :cond_10
    const/4 v10, 0x0

    :goto_11
    if-eqz v10, :cond_11

    new-instance v10, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    const/16 v59, 0x3ec

    const/16 v60, 0x0

    const/16 v49, 0x1a

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v48, v10

    move/from16 v53, v9

    invoke-direct/range {v48 .. v60}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;-><init>(IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;ILF3/f;)V

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object v9, v6, Lc5/f;->j:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-ltz v10, :cond_12

    move-object v10, v9

    goto :goto_12

    :cond_12
    const/4 v10, 0x0

    :goto_12
    if-eqz v10, :cond_13

    new-instance v10, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    const/16 v59, 0x3ec

    const/16 v60, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v48, v10

    move/from16 v53, v9

    invoke-direct/range {v48 .. v60}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;-><init>(IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;ILF3/f;)V

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v9, v6, Lc5/f;->s:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_14

    move-object v10, v9

    goto :goto_13

    :cond_14
    const/4 v10, 0x0

    :goto_13
    if-eqz v10, :cond_15

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    double-to-float v9, v9

    iget-object v10, v6, Lc5/f;->t:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v51

    new-instance v10, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    const/16 v59, 0x3e8

    const/16 v60, 0x0

    const/16 v49, 0x2f

    const/16 v50, 0x0

    const/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v48, v10

    move/from16 v53, v9

    invoke-direct/range {v48 .. v60}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;-><init>(IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;ILF3/f;)V

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    new-instance v14, Lcom/samsung/android/weather/api/entity/weather/Condition;

    iget-object v9, v6, Lc5/f;->g:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v9, v6, Lc5/f;->h:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v9, v6, Lc5/f;->i:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    new-instance v13, Lcom/samsung/android/weather/api/entity/weather/Temp;

    iget-object v9, v6, Lc5/f;->d:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v16, v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v15, 0x2

    invoke-direct {v13, v9, v3, v15, v2}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    new-instance v9, Lcom/samsung/android/weather/api/entity/weather/Temp;

    iget-object v2, v6, Lc5/f;->e:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move-object/from16 v17, v13

    const/4 v13, 0x0

    invoke-direct {v9, v2, v3, v15, v13}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    new-instance v2, Lcom/samsung/android/weather/api/entity/weather/Temp;

    iget-object v3, v6, Lc5/f;->f:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move-object/from16 v18, v9

    const/4 v9, 0x0

    invoke-direct {v2, v3, v9, v15, v13}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    iget-object v3, v6, Lc5/f;->n:Ljava/lang/String;

    const/16 v21, 0x228

    const/16 v22, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object v9, v14

    move-object/from16 v72, v14

    move-object/from16 v14, v17

    move-object/from16 v20, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-direct/range {v9 .. v22}, Lcom/samsung/android/weather/api/entity/weather/Condition;-><init>(IIIILcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILF3/f;)V

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getSunRiseTime()J

    move-result-wide v54

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getSunSetTime()J

    move-result-wide v56

    iget-object v2, v6, Lc5/f;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v68

    iget-object v2, v6, Lc5/f;->u:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v66

    new-instance v2, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-object/from16 v48, v2

    const/16 v70, 0x13ce

    const/16 v71, 0x0

    iget-wide v9, v6, Lc5/f;->b:J

    move-wide/from16 v49, v9

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const-wide/16 v58, 0x0

    const-wide/16 v60, 0x0

    const-wide/16 v62, 0x0

    const-wide/16 v64, 0x0

    const/16 v69, 0x0

    invoke-direct/range {v48 .. v71}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;-><init>(JLjava/lang/String;Ljava/lang/String;ZJJJJJJJIIILF3/f;)V

    iget-object v3, v6, Lc5/f;->o:Ljava/lang/String;

    move-object/from16 v6, v72

    invoke-direct {v7, v6, v2, v3}, Lcom/samsung/android/weather/api/entity/weather/HourlyObservation;-><init>(Lcom/samsung/android/weather/api/entity/weather/Condition;Lcom/samsung/android/weather/api/entity/weather/ForecastTime;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    goto/16 :goto_d

    :cond_16
    move-object/from16 v23, v2

    iget-object v1, v0, Lb5/b;->c:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc5/c;

    invoke-static {v3, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/samsung/android/weather/api/entity/weather/DailyObservation;

    new-instance v15, Lcom/samsung/android/weather/api/entity/weather/Condition;

    iget-object v9, v3, Lc5/c;->i:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v9, v3, Lc5/c;->j:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    new-instance v14, Lcom/samsung/android/weather/api/entity/weather/Temp;

    iget-object v13, v3, Lc5/c;->g:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v9

    move-object/from16 v24, v1

    const/4 v1, 0x2

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-direct {v14, v9, v6, v1, v10}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    new-instance v9, Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-object/from16 v17, v13

    iget-object v13, v3, Lc5/c;->b:Ljava/lang/Float;

    move-object/from16 v28, v5

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v9, v5, v6, v1, v10}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    new-instance v5, Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-object/from16 v18, v13

    iget-object v13, v3, Lc5/c;->c:Ljava/lang/Float;

    move-object/from16 v19, v9

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-direct {v5, v9, v6, v1, v10}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    iget-object v1, v3, Lc5/c;->t:Ljava/lang/String;

    iget-object v6, v3, Lc5/c;->v:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-static {v3, v9}, Li3/a;->c(Lc5/c;Z)Ljava/util/ArrayList;

    move-result-object v20

    const/16 v21, 0x28

    const/16 v22, 0x0

    const/4 v10, -0x1

    const/16 v16, 0x0

    const/16 v29, 0x0

    move-object v9, v15

    move-object/from16 v32, v13

    move-object/from16 v30, v17

    move-object/from16 v31, v18

    move/from16 v13, v16

    move-object/from16 v73, v15

    move-object/from16 v15, v29

    move-object/from16 v16, v19

    move-object/from16 v17, v5

    move-object/from16 v18, v1

    move-object/from16 v19, v6

    invoke-direct/range {v9 .. v22}, Lcom/samsung/android/weather/api/entity/weather/Condition;-><init>(IIIILcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILF3/f;)V

    new-instance v1, Lcom/samsung/android/weather/api/entity/weather/Condition;

    iget-object v5, v3, Lc5/c;->k:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v49

    iget-object v5, v3, Lc5/c;->l:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v50

    iget-object v5, v3, Lc5/c;->m:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v51

    new-instance v5, Lcom/samsung/android/weather/api/entity/weather/Temp;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-direct {v5, v6, v9, v10, v11}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    new-instance v6, Lcom/samsung/android/weather/api/entity/weather/Temp;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-direct {v6, v12, v9, v10, v11}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    new-instance v12, Lcom/samsung/android/weather/api/entity/weather/Temp;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-direct {v12, v13, v9, v10, v11}, Lcom/samsung/android/weather/api/entity/weather/Temp;-><init>(FIILF3/f;)V

    iget-object v10, v3, Lc5/c;->u:Ljava/lang/String;

    iget-object v13, v3, Lc5/c;->w:Ljava/lang/String;

    invoke-static {v3, v9}, Li3/a;->c(Lc5/c;Z)Ljava/util/ArrayList;

    move-result-object v59

    const/16 v60, 0x28

    const/16 v61, 0x0

    const/16 v52, 0x0

    const/16 v54, 0x0

    move-object/from16 v48, v1

    move-object/from16 v53, v5

    move-object/from16 v55, v6

    move-object/from16 v56, v12

    move-object/from16 v57, v10

    move-object/from16 v58, v13

    invoke-direct/range {v48 .. v61}, Lcom/samsung/android/weather/api/entity/weather/Condition;-><init>(IIIILcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Lcom/samsung/android/weather/api/entity/weather/Temp;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILF3/f;)V

    new-instance v5, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    iget-object v6, v3, Lc5/c;->A:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v92

    const/16 v96, 0x1bce

    const/16 v97, 0x0

    iget-wide v9, v3, Lc5/c;->f:J

    move-wide/from16 v75, v9

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    iget-wide v9, v3, Lc5/c;->n:J

    move-wide/from16 v80, v9

    iget-wide v9, v3, Lc5/c;->o:J

    move-wide/from16 v82, v9

    const-wide/16 v84, 0x0

    const-wide/16 v86, 0x0

    const-wide/16 v88, 0x0

    const-wide/16 v90, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    move-object/from16 v74, v5

    invoke-direct/range {v74 .. v97}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;-><init>(JLjava/lang/String;Ljava/lang/String;ZJJJJJJJIIILF3/f;)V

    iget-object v3, v3, Lc5/c;->x:Ljava/lang/String;

    move-object/from16 v6, v73

    invoke-direct {v7, v6, v1, v5, v3}, Lcom/samsung/android/weather/api/entity/weather/DailyObservation;-><init>(Lcom/samsung/android/weather/api/entity/weather/Condition;Lcom/samsung/android/weather/api/entity/weather/Condition;Lcom/samsung/android/weather/api/entity/weather/ForecastTime;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v24

    move-object/from16 v5, v28

    goto/16 :goto_14

    :cond_17
    move-object/from16 v28, v5

    const/4 v11, 0x0

    iget-object v1, v0, Lb5/b;->e:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc5/a;

    invoke-static {v5, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/android/weather/api/entity/weather/internal/Alert;

    iget-object v7, v5, Lc5/a;->c:Ljava/lang/String;

    iget-object v9, v5, Lc5/a;->d:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v51

    iget-object v9, v5, Lc5/a;->e:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v52

    iget-object v9, v5, Lc5/a;->f:Ljava/lang/String;

    iget-object v10, v5, Lc5/a;->g:Ljava/lang/String;

    iget-object v12, v5, Lc5/a;->h:Ljava/lang/String;

    iget-object v5, v5, Lc5/a;->b:Ljava/lang/String;

    const/16 v59, 0x180

    const/16 v60, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v48, v6

    move-object/from16 v49, v5

    move-object/from16 v50, v7

    move-object/from16 v54, v9

    move-object/from16 v55, v10

    move-object/from16 v56, v12

    invoke-direct/range {v48 .. v60}, Lcom/samsung/android/weather/api/entity/weather/internal/Alert;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILF3/f;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_18
    iget-object v1, v0, Lb5/b;->f:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lc5/b;

    iget v7, v7, Lc5/b;->c:I

    const/4 v9, 0x1

    if-ne v9, v7, :cond_19

    goto :goto_16

    :cond_1a
    move-object v6, v11

    :goto_16
    check-cast v6, Lc5/b;

    if-eqz v6, :cond_1b

    invoke-static {v6}, Li3/a;->a(Lc5/b;)Lcom/samsung/android/weather/api/entity/content/WebContent;

    move-result-object v5

    move-object/from16 v54, v5

    goto :goto_17

    :cond_1b
    move-object/from16 v54, v11

    :goto_17
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1c
    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lc5/b;

    iget v9, v9, Lc5/b;->c:I

    const/4 v10, 0x2

    if-ne v10, v9, :cond_1c

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_1d
    new-instance v6, LX/a;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, LX/a;-><init>(I)V

    invoke-static {v5, v6}, Lr3/j;->N0(Ljava/util/SequencedCollection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc5/b;

    invoke-static {v7}, Li3/a;->a(Lc5/b;)Lcom/samsung/android/weather/api/entity/content/WebContent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_1e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lc5/b;

    iget v9, v9, Lc5/b;->c:I

    const/4 v10, 0x3

    if-ne v10, v9, :cond_1f

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_20
    new-instance v1, LX/a;

    const/4 v7, 0x4

    invoke-direct {v1, v7}, LX/a;-><init>(I)V

    invoke-static {v5, v1}, Lr3/j;->N0(Ljava/util/SequencedCollection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc5/b;

    invoke-static {v7}, Li3/a;->a(Lc5/b;)Lcom/samsung/android/weather/api/entity/content/WebContent;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_21
    iget-object v1, v0, Lb5/b;->h:Ljava/util/ArrayList;

    new-instance v7, LX/a;

    const/4 v9, 0x2

    invoke-direct {v7, v9}, LX/a;-><init>(I)V

    invoke-static {v1, v7}, Lr3/j;->N0(Ljava/util/SequencedCollection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc5/h;

    invoke-static {v9, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/samsung/android/weather/api/entity/content/InsightContent;

    new-instance v36, Lcom/samsung/android/weather/api/entity/content/InsightContent$Card;

    iget-object v12, v9, Lc5/h;->h:Ljava/lang/String;

    iget-object v13, v9, Lc5/h;->i:Ljava/lang/String;

    iget-object v14, v9, Lc5/h;->j:Ljava/lang/String;

    iget-object v15, v9, Lc5/h;->k:Ljava/lang/String;

    iget-object v11, v9, Lc5/h;->l:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v9, Lc5/h;->m:Ljava/lang/String;

    move-object/from16 v29, v36

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    move-object/from16 v33, v15

    move-object/from16 v34, v11

    move-object/from16 v35, v1

    invoke-direct/range {v29 .. v35}, Lcom/samsung/android/weather/api/entity/content/InsightContent$Card;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v9, Lc5/h;->n:Ljava/lang/String;

    iget v11, v9, Lc5/h;->b:I

    iget v12, v9, Lc5/h;->c:I

    iget-boolean v13, v9, Lc5/h;->d:Z

    iget-boolean v14, v9, Lc5/h;->e:Z

    iget-boolean v15, v9, Lc5/h;->f:Z

    iget-boolean v9, v9, Lc5/h;->g:Z

    move-object/from16 v29, v10

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v32, v13

    move/from16 v33, v14

    move/from16 v34, v15

    move/from16 v35, v9

    move-object/from16 v37, v1

    invoke-direct/range {v29 .. v37}, Lcom/samsung/android/weather/api/entity/content/InsightContent;-><init>(IIZZZZLcom/samsung/android/weather/api/entity/content/InsightContent$Card;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v17

    const/4 v11, 0x0

    goto :goto_1c

    :cond_22
    new-instance v59, Lcom/samsung/android/weather/api/entity/weather/internal/ForecastChange;

    iget-object v1, v0, Lb5/b;->g:Lc5/d;

    if-eqz v1, :cond_23

    iget-object v9, v1, Lc5/d;->b:Ljava/lang/String;

    move-object/from16 v30, v9

    goto :goto_1d

    :cond_23
    move-object/from16 v30, v23

    :goto_1d
    if-eqz v1, :cond_24

    iget-object v9, v1, Lc5/d;->c:Ljava/lang/String;

    move-object/from16 v32, v9

    goto :goto_1e

    :cond_24
    move-object/from16 v32, v23

    :goto_1e
    if-eqz v1, :cond_25

    iget-object v9, v1, Lc5/d;->d:Ljava/lang/String;

    move-object/from16 v33, v9

    goto :goto_1f

    :cond_25
    move-object/from16 v33, v23

    :goto_1f
    if-eqz v1, :cond_26

    iget-wide v11, v1, Lc5/d;->e:J

    move-wide/from16 v34, v11

    goto :goto_20

    :cond_26
    const-wide/16 v34, 0x0

    :goto_20
    const/16 v31, -0x1

    move-object/from16 v29, v59

    invoke-direct/range {v29 .. v35}, Lcom/samsung/android/weather/api/entity/weather/internal/ForecastChange;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    iget-object v0, v0, Lb5/b;->i:Ljava/util/ArrayList;

    new-instance v1, LX/a;

    const/4 v11, 0x3

    invoke-direct {v1, v11}, LX/a;-><init>(I)V

    invoke-static {v0, v1}, Lr3/j;->N0(Ljava/util/SequencedCollection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v11

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc5/i;

    invoke-static {v11, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "/"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Lc5/i;->i:Ljava/lang/String;

    invoke-static {v13, v12}, LV4/m;->G0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_22
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, ","

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, LV4/m;->G0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    new-instance v15, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;

    const/4 v9, 0x0

    invoke-static {v9, v14}, Lr3/j;->w0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_27

    invoke-static {v10}, LV4/t;->d0(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_27

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_23
    const/4 v9, 0x1

    goto :goto_24

    :cond_27
    move v10, v9

    goto :goto_23

    :goto_24
    invoke-static {v9, v14}, Lr3/j;->w0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    if-eqz v16, :cond_29

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_28

    goto :goto_26

    :cond_28
    move-object/from16 v19, v0

    move-object/from16 v9, v16

    :goto_25
    const/4 v0, 0x2

    goto :goto_27

    :cond_29
    :goto_26
    move-object/from16 v19, v0

    move-object/from16 v9, v23

    goto :goto_25

    :goto_27
    invoke-static {v0, v14}, Lr3/j;->w0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_2a

    invoke-static {v14}, LV4/t;->e0(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    if-eqz v14, :cond_2a

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object v14, v1

    move-wide/from16 v0, v20

    goto :goto_28

    :cond_2a
    move-object v14, v1

    const-wide/16 v0, 0x0

    :goto_28
    invoke-direct {v15, v10, v9, v0, v1}, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent$LifeStyleContentByTime;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v14

    move-object/from16 v0, v19

    goto :goto_22

    :cond_2b
    move-object/from16 v19, v0

    move-object v14, v1

    new-instance v0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent;

    iget-object v1, v11, Lc5/i;->g:Ljava/lang/String;

    iget-object v9, v11, Lc5/i;->h:Ljava/lang/String;

    iget-object v10, v11, Lc5/i;->e:Ljava/lang/String;

    iget-object v12, v11, Lc5/i;->f:Ljava/lang/String;

    iget v15, v11, Lc5/i;->b:I

    move-object/from16 v20, v8

    iget v8, v11, Lc5/i;->c:I

    iget v11, v11, Lc5/i;->d:I

    move-object/from16 v29, v0

    move/from16 v30, v15

    move/from16 v31, v8

    move/from16 v32, v11

    move-object/from16 v33, v10

    move-object/from16 v34, v12

    move-object/from16 v35, v1

    move-object/from16 v36, v9

    move-object/from16 v37, v13

    invoke-direct/range {v29 .. v37}, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object v1, v14

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    move-object/from16 v8, v20

    goto/16 :goto_21

    :cond_2c
    new-instance v8, Lcom/samsung/android/weather/api/entity/weather/Weather;

    move-object/from16 v43, v8

    const/16 v60, 0x90

    const/16 v61, 0x0

    const/16 v48, 0x0

    const/16 v51, 0x0

    move-object/from16 v45, v4

    move-object/from16 v49, v28

    move-object/from16 v50, v2

    move-object/from16 v52, v27

    move-object/from16 v53, v3

    move-object/from16 v55, v6

    move-object/from16 v56, v5

    move-object/from16 v57, v7

    move-object/from16 v58, v1

    invoke-direct/range {v43 .. v61}, Lcom/samsung/android/weather/api/entity/weather/Weather;-><init>(Lcom/samsung/android/weather/api/entity/weather/Location;Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/weather/api/entity/content/WeatherLogo;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/weather/api/entity/content/WebContent;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/weather/api/entity/weather/internal/ForecastChange;ILF3/f;)V

    :try_start_0
    invoke-virtual {v8}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v0

    invoke-virtual {v8}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getForecastChange()Lcom/samsung/android/weather/api/entity/weather/internal/ForecastChange;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/internal/ForecastChange;->getCode()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2d

    goto :goto_2a

    :cond_2d
    new-instance v4, Lcom/samsung/android/weather/api/entity/weather/ShortTermPrecipitation;

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/internal/ForecastChange;->getCode()I

    move-result v10

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/internal/ForecastChange;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/internal/ForecastChange;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/internal/ForecastChange;->getExpireTime()J

    move-result-wide v13

    move-object v9, v4

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/weather/api/entity/weather/ShortTermPrecipitation;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    goto :goto_2b

    :catchall_0
    move-exception v0

    move-object/from16 v3, p0

    :goto_29
    move-object/from16 v1, p1

    goto/16 :goto_2e

    :cond_2e
    :goto_2a
    const/4 v4, 0x0

    :goto_2b
    invoke-virtual {v0, v4}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setShortTermPrecip(Lcom/samsung/android/weather/api/entity/weather/ShortTermPrecipitation;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getActiveCp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getLocation()Lcom/samsung/android/weather/api/entity/weather/Location;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Location;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getWebUrl()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v3, p0

    :try_start_1
    invoke-static {v3, v0, v1, v2}, Lm3/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/content/WeatherLogo;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->setLogo(Lcom/samsung/android/weather/api/entity/content/WeatherLogo;)V

    invoke-virtual {v8}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getLocation()Lcom/samsung/android/weather/api/entity/weather/Location;

    move-result-object v0

    invoke-virtual {v8}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getLocation()Lcom/samsung/android/weather/api/entity/weather/Location;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Location;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getFavoriteKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/weather/api/entity/weather/Location;->setFavorite(Z)V

    invoke-static {v3, v8}, Lm3/d;->n(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/Weather;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getUnits()Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getTempUnit()La3/J;

    move-result-object v0

    iget v0, v0, La3/J;->a:I

    invoke-static {v8, v0}, Lm3/d;->p(Lcom/samsung/android/weather/api/entity/weather/Weather;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v1, p1

    :try_start_2
    invoke-static {v3, v8, v1}, Lm3/d;->o(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/Weather;Lcom/samsung/android/weather/api/entity/settings/Setting;)V

    invoke-virtual {v8}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v0

    invoke-static {v8}, Lm3/e;->a(Lcom/samsung/android/weather/api/entity/weather/Weather;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setInsight(Ljava/util/List;)V

    invoke-static {v8}, Lm3/d;->k(Lcom/samsung/android/weather/api/entity/weather/Weather;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->setActivityForecast(Ljava/util/List;)V

    invoke-virtual {v8}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v0

    invoke-virtual {v8}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getAlerts()Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/weather/api/entity/weather/internal/Alert;

    new-instance v6, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/Alert;->getDetailKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/Alert;->getSeverityCode()I

    move-result v11

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/Alert;->getEventDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/Alert;->getExpireTime()J

    move-result-wide v13

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/Alert;->getIssueTime()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/Alert;->getLinkURL()Ljava/lang/String;

    move-result-object v16

    move-object v9, v6

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/weather/api/entity/weather/ForecastAlert;-><init>(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :catchall_1
    move-exception v0

    goto :goto_2e

    :cond_2f
    invoke-virtual {v0, v4}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setForecastAlert(Ljava/util/List;)V

    invoke-virtual {v8}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getHourlyObservations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/weather/api/entity/weather/HourlyObservation;

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/HourlyObservation;->getTime()Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v2

    invoke-virtual {v8}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getTime()Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getArcticNightType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->setArcticNightType(I)V

    goto :goto_2d

    :cond_30
    invoke-static {v3, v8}, Lm3/d;->s(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/Weather;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v8

    goto :goto_2f

    :catchall_2
    move-exception v0

    goto/16 :goto_29

    :goto_2e
    invoke-static {v0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v0

    :goto_2f
    instance-of v2, v0, Lq3/g;

    if-eqz v2, :cond_31

    goto :goto_30

    :cond_31
    move-object v8, v0

    :goto_30
    check-cast v8, Lcom/samsung/android/weather/api/entity/weather/Weather;

    move-object/from16 v2, v26

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v3

    move-object/from16 v3, v25

    goto/16 :goto_0

    :cond_32
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v1, v11

    check-cast v1, Lcom/samsung/android/weather/api/entity/weather/Weather;

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getLocation()Lcom/samsung/android/weather/api/entity/weather/Location;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/weather/api/entity/weather/LocationKt;->isCurrentLocation(Lcom/samsung/android/weather/api/entity/weather/Location;)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_31

    :cond_34
    const/4 v11, 0x0

    :goto_31
    check-cast v11, Lcom/samsung/android/weather/api/entity/weather/Weather;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v11, :cond_35

    invoke-virtual {v11}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getIconNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_32

    :cond_35
    const/4 v1, 0x0

    :goto_32
    if-eqz v11, :cond_36

    invoke-virtual {v11}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/Temp;->getConvertedValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_33

    :cond_36
    const/4 v4, 0x0

    :goto_33
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "fetch weathers : size = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  current  icon : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " temp : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WPI"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static k(Lcom/samsung/android/weather/api/entity/weather/Weather;)Ljava/util/ArrayList;
    .locals 8

    sget-object v0, Lk3/b;->d:LA1/e;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, LA1/e;->d:Ljava/lang/Object;

    check-cast v0, LZ4/c;

    iget-object v2, v0, LZ4/c;->b:Landroid/content/ContentResolver;

    const-string v3, "lifestyle_settings"

    iget-object v0, v0, LZ4/c;->a:LU3/w;

    invoke-static {v0, v3}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "COL_LIFESTYLE_SETTINGS_TYPE ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lc5/j;

    const-string v3, "COL_LIFESTYLE_SETTINGS_TYPE"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v3

    const-string v5, "COL_LIFESTYLE_SETTINGS_ALLOWED"

    invoke-static {v0, v5, v4}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move v4, v6

    :cond_0
    invoke-direct {v2, v3, v4}, Lc5/j;-><init>(IZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    sget-object v2, Lq3/m;->a:Lq3/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-static {v2}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "Cursor2LifeStyleSettings"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_3
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v1

    invoke-static {v0, p0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :goto_5
    new-instance v0, LQ1/e;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, LQ1/e;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, v0}, Lm3/d;->l(Lcom/samsung/android/weather/api/entity/weather/Weather;LE3/b;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lcom/samsung/android/weather/api/entity/weather/Weather;LE3/b;)Ljava/util/ArrayList;
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getLifeStyleContent()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent;

    invoke-interface {p1, v2}, LE3/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent;

    new-instance v7, Lcom/samsung/android/weather/api/entity/weather/ActivityForecast;

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent;->getType()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent;->getTitleText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent;->getDescriptionText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent;->getStateText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/content/LifeStyleContent;->getUrl()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/weather/api/entity/weather/ActivityForecast;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static m(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    const-string v0, "WPI"

    const-string v1, "context"

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lm3/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v2, :cond_2

    invoke-static {p0}, LR3/f;->e(Landroid/content/Context;)Z

    invoke-static {}, Lw0/f;->a()Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->getWeather()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "cache is empty, fetch all weather data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v0

    invoke-static {}, Lw0/f;->a()Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    invoke-static {v0}, Lm3/d;->d(Lcom/samsung/android/weather/api/entity/profile/Profile;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lw0/f;->a()Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateSetting(Lcom/samsung/android/weather/api/entity/settings/Setting;)V

    invoke-static {p0, v0}, Lm3/d;->j(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/settings/Setting;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lw0/f;->a()Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateWeather(Ljava/util/List;)I

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    sget-object v1, Lr3/r;->d:Lr3/r;

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static n(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/Weather;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/weather/api/resource/WeatherIconConverter;->INSTANCE:Lcom/samsung/android/weather/api/resource/WeatherIconConverter;

    invoke-static {p0, v0}, Lm3/d;->a(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/Condition;)I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getTime()Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/samsung/android/weather/api/entity/weather/ForecastTimeKt;->isDay(Lcom/samsung/android/weather/api/entity/weather/ForecastTime;J)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/weather/api/resource/WeatherIconConverter;->getIcon(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->setIconNum(I)V

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getHourlyObservations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/weather/api/entity/weather/HourlyObservation;

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/HourlyObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/weather/api/resource/WeatherIconConverter;->INSTANCE:Lcom/samsung/android/weather/api/resource/WeatherIconConverter;

    invoke-static {p0, v2}, Lm3/d;->a(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/Condition;)I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/HourlyObservation;->getTime()Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lcom/samsung/android/weather/api/entity/weather/ForecastTimeKt;->isDay(Lcom/samsung/android/weather/api/entity/weather/ForecastTime;J)Z

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/weather/api/resource/WeatherIconConverter;->getIcon(IZ)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->setIconNum(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getDailyObservations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/weather/api/entity/weather/DailyObservation;

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/DailyObservation;->getDayCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/weather/api/resource/WeatherIconConverter;->INSTANCE:Lcom/samsung/android/weather/api/resource/WeatherIconConverter;

    invoke-static {p0, v2}, Lm3/d;->a(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/Condition;)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/weather/api/resource/WeatherIconConverter;->getIcon(IZ)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/weather/api/entity/weather/Condition;->setIconNum(I)V

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/DailyObservation;->getNightCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v1

    invoke-static {p0, v1}, Lm3/d;->a(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/Condition;)I

    move-result v2

    sget-object v4, Lcom/samsung/android/weather/domain/WeatherRegion;->INSTANCE:Lcom/samsung/android/weather/domain/WeatherRegion;

    invoke-static {p0}, LR3/f;->e(Landroid/content/Context;)Z

    sget-object v6, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-nez v6, :cond_1

    invoke-static {}, LR3/f;->b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    move-result-object v6

    sput-object v6, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    :cond_1
    sget-object v6, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    const/4 v7, 0x0

    const-string v8, "storage"

    if-eqz v6, :cond_7

    invoke-interface {v6}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->getProfile()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v9

    if-nez v9, :cond_2

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v9

    invoke-interface {v6, v9}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    :cond_2
    invoke-virtual {v9}, Lcom/samsung/android/weather/api/entity/profile/Profile;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/weather/domain/WeatherRegion;->isKorea(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getLocation()Lcom/samsung/android/weather/api/entity/weather/Location;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/Location;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    const-string v6, "KR"

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p0}, LR3/f;->e(Landroid/content/Context;)Z

    sget-object v4, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-nez v4, :cond_3

    invoke-static {}, LR3/f;->b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    move-result-object v4

    sput-object v4, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    :cond_3
    sget-object v4, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->getProfile()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v6

    if-nez v6, :cond_4

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    :cond_4
    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/profile/Profile;->getOneUiVersion()I

    move-result v4

    const v6, 0x13880

    if-lt v4, v6, :cond_6

    invoke-virtual {v3, v2, v5}, Lcom/samsung/android/weather/api/resource/WeatherIconConverter;->getIcon(IZ)I

    move-result v2

    goto :goto_2

    :cond_5
    invoke-static {v8}, LF3/k;->m(Ljava/lang/String;)V

    throw v7

    :cond_6
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/weather/api/resource/WeatherIconConverter;->getIcon(IZ)I

    move-result v2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/samsung/android/weather/api/entity/weather/Condition;->setIconNum(I)V

    goto/16 :goto_1

    :cond_7
    invoke-static {v8}, LF3/k;->m(Ljava/lang/String;)V

    throw v7

    :cond_8
    return-void
.end method

.method public static o(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/Weather;Lcom/samsung/android/weather/api/entity/settings/Setting;)V
    .locals 43

    move-object/from16 v0, p0

    const-string v1, "context"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getUnits()Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getUnitType()La3/G;

    move-result-object v1

    iget v1, v1, La3/G;->a:I

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getActiveCp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, La4/x;->H(ILjava/lang/String;)Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/weather/api/entity/settings/SettingKt;->toDisplayUnit(Lcom/samsung/android/weather/api/entity/settings/Setting;)Lcom/samsung/android/weather/api/unit/WeatherUnits;

    move-result-object v2

    invoke-static/range {p0 .. p0}, LR3/f;->e(Landroid/content/Context;)Z

    sget-object v3, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-nez v3, :cond_0

    invoke-static {}, LR3/f;->b()Lcom/samsung/android/weather/api/source/WeatherCacheManager;

    move-result-object v3

    sput-object v3, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    :cond_0
    sget-object v3, Lw0/f;->c:Lcom/samsung/android/weather/api/source/WeatherStorageApi;

    if-eqz v3, :cond_50

    invoke-interface {v3}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->getProfile()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {}, Lm3/d;->b()Lcom/samsung/android/weather/api/entity/profile/Profile;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/samsung/android/weather/api/source/WeatherStorageApi;->updateProfile(Lcom/samsung/android/weather/api/entity/profile/Profile;)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getIndexList()Ljava/util/List;

    move-result-object v6

    const-string v7, "indicies"

    invoke-static {v6, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "displayUnit"

    invoke-static {v2, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/16 v9, 0x3b

    const/16 v10, 0x3a

    const/16 v11, 0x1b

    const/16 v12, 0x18

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    invoke-virtual {v8}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getType()I

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_6

    if-eq v13, v12, :cond_5

    if-eq v13, v11, :cond_4

    if-eq v13, v10, :cond_3

    if-eq v13, v9, :cond_2

    packed-switch v13, :pswitch_data_0

    packed-switch v13, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getPrecipitationAmountUnit()La3/k;

    move-result-object v9

    iget v9, v9, La3/k;->a:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->setUnit(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v2}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getWindSpeedUnit()La3/B;

    move-result-object v9

    iget v9, v9, La3/B;->a:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->setUnit(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v8, v14}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->setUnit(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getTempUnit()La3/J;

    move-result-object v9

    iget v9, v9, La3/J;->a:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->setUnit(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getPressureUnit()La3/u;

    move-result-object v9

    iget v9, v9, La3/u;->a:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->setUnit(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v8, v14}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->setUnit(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getVisibilityUnit()La3/n;

    move-result-object v9

    iget v9, v9, La3/n;->a:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->setUnit(I)V

    goto :goto_0

    :cond_6
    :pswitch_3
    invoke-virtual {v8, v14}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->setUnit(I)V

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v6

    invoke-static {v6, v11}, Lm3/d;->f(Lcom/samsung/android/weather/api/entity/weather/Condition;I)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    move-result-object v6

    const-string v8, "getString(...)"

    if-eqz v6, :cond_8

    sget v11, LY2/d;->life_index_humidity:I

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v14

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v13

    invoke-static {v13}, Lw0/f;->H(F)I

    move-result v15

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v13

    invoke-static {v13, v0}, Le0/a;->z(FLandroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v18

    new-instance v6, Lcom/samsung/android/weather/api/entity/weather/Humidity;

    move-object v13, v6

    move-object/from16 v16, v11

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/weather/api/entity/weather/Humidity;-><init>(FILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v3, v6}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setHumidity(Lcom/samsung/android/weather/api/entity/weather/Humidity;)V

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v6

    const/4 v11, 0x1

    invoke-static {v6, v11}, Lm3/d;->f(Lcom/samsung/android/weather/api/entity/weather/Condition;I)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    move-result-object v6

    const-string v13, "JPN_V4"

    const-string v14, "JPN"

    const-string v15, "KOR"

    const v9, -0x7d2d258b

    const-string v11, "HUA"

    const-string v4, "cpType"

    if-eqz v6, :cond_18

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getActiveCp()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    move-object/from16 v20, v5

    const-string v5, "%d"

    if-eq v12, v9, :cond_f

    const v9, 0x118d4

    if-eq v12, v9, :cond_d

    const v9, 0x11fc8

    if-eq v12, v9, :cond_c

    const v9, 0x1236e

    if-eq v12, v9, :cond_a

    :cond_9
    :goto_2
    move-object/from16 v31, v11

    move-object/from16 v32, v14

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_b
    move-object/from16 v31, v11

    move-object/from16 v32, v14

    goto/16 :goto_6

    :cond_c
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_2

    :cond_d
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto :goto_2

    :cond_e
    new-instance v9, Lcom/samsung/android/weather/api/entity/weather/UV;

    sget v10, LY2/d;->life_index_uv:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v23

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v21

    invoke-static/range {v21 .. v21}, Lw0/f;->H(F)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v31, v11

    filled-new-array/range {v21 .. v21}, [Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v32, v14

    const/4 v14, 0x1

    invoke-static {v11, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v12, v5, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevelText()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x8

    const/16 v30, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x6e

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    invoke-direct/range {v21 .. v30}, Lcom/samsung/android/weather/api/entity/weather/UV;-><init>(Ljava/lang/String;FLjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILF3/f;)V

    goto/16 :goto_a

    :cond_f
    move-object/from16 v31, v11

    move-object/from16 v32, v14

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    :goto_3
    new-instance v9, Lcom/samsung/android/weather/api/entity/weather/UV;

    sget v10, LY2/d;->life_index_uv:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v23

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v12

    invoke-static {v12}, Lw0/f;->H(F)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    const/4 v14, 0x1

    invoke-static {v12, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v5, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v5

    const/4 v11, 0x0

    cmpg-float v5, v5, v11

    if-gez v5, :cond_10

    const/16 v5, 0x6e

    :goto_4
    move/from16 v26, v5

    goto :goto_5

    :cond_10
    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v5

    const/high16 v11, 0x40000000    # 2.0f

    cmpg-float v5, v5, v11

    if-gtz v5, :cond_11

    const/16 v5, 0x70

    goto :goto_4

    :cond_11
    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v5

    const/high16 v11, 0x40a00000    # 5.0f

    cmpg-float v5, v5, v11

    if-gtz v5, :cond_12

    const/16 v5, 0x71

    goto :goto_4

    :cond_12
    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v5

    const/high16 v11, 0x40e00000    # 7.0f

    cmpg-float v5, v5, v11

    if-gtz v5, :cond_13

    const/16 v5, 0x72

    goto :goto_4

    :cond_13
    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v5

    const/high16 v11, 0x41200000    # 10.0f

    cmpg-float v5, v5, v11

    if-gtz v5, :cond_14

    const/16 v5, 0x73

    goto :goto_4

    :cond_14
    const/16 v5, 0x74

    goto :goto_4

    :goto_5
    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevelText()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v28

    const/16 v25, 0x0

    const/16 v29, 0x8

    const/16 v30, 0x0

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    invoke-direct/range {v21 .. v30}, Lcom/samsung/android/weather/api/entity/weather/UV;-><init>(Ljava/lang/String;FLjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILF3/f;)V

    goto/16 :goto_a

    :cond_15
    :goto_6
    new-instance v9, Lcom/samsung/android/weather/api/entity/weather/UV;

    sget v10, LY2/d;->life_index_uv:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v35

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v12

    invoke-static {v12}, Lw0/f;->H(F)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    const/4 v14, 0x1

    invoke-static {v12, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v5, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevel()I

    move-result v38

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevelText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_16

    goto :goto_7

    :cond_16
    const/4 v5, 0x0

    :goto_7
    if-nez v5, :cond_17

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevel()I

    move-result v5

    packed-switch v5, :pswitch_data_2

    sget v5, LY2/d;->index_state_extreme:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_17
    :goto_8
    move-object/from16 v39, v5

    goto :goto_9

    :pswitch_4
    sget v5, LY2/d;->index_state_extreme:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_5
    sget v5, LY2/d;->index_state_very_high:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_6
    sget v5, LY2/d;->index_state_high:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_7
    sget v5, LY2/d;->index_state_chn__moderate:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_8
    sget v5, LY2/d;->index_state_low:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :goto_9
    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v40

    const/16 v37, 0x0

    const/16 v41, 0x8

    const/16 v42, 0x0

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    invoke-direct/range {v33 .. v42}, Lcom/samsung/android/weather/api/entity/weather/UV;-><init>(Ljava/lang/String;FLjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILF3/f;)V

    goto :goto_a

    :cond_18
    move-object/from16 v20, v5

    move-object/from16 v31, v11

    move-object/from16 v32, v14

    const/4 v9, 0x0

    :goto_a
    invoke-virtual {v3, v9}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setUv(Lcom/samsung/android/weather/api/entity/weather/UV;)V

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v5

    const/16 v6, 0x3b

    invoke-static {v5, v6}, Lm3/d;->f(Lcom/samsung/android/weather/api/entity/weather/Condition;I)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    move-result-object v5

    const-string v6, "storageUnit"

    if-eqz v5, :cond_1e

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getTempUnit()La3/J;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getTempUnit()La3/J;

    move-result-object v10

    invoke-static {v9, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v11

    move-object v14, v13

    float-to-double v12, v11

    const v19, 0x4479c000    # 999.0f

    cmpg-float v21, v19, v11

    if-nez v21, :cond_19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    goto :goto_b

    :cond_19
    move-object/from16 v19, v14

    sget-object v14, La3/H;->b:La3/H;

    invoke-virtual {v9, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    move-object/from16 v22, v15

    sget-object v15, La3/I;->b:La3/I;

    const-wide/high16 v23, 0x4040000000000000L    # 32.0

    const-wide v25, 0x3ffccccccccccccdL    # 1.8

    if-eqz v21, :cond_1a

    invoke-virtual {v10, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1a

    mul-double v12, v12, v25

    add-double v12, v12, v23

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_b

    :cond_1a
    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-virtual {v10, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    sub-double v12, v12, v23

    div-double v12, v12, v25

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_b

    :cond_1b
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    :goto_b
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v25

    invoke-static/range {v25 .. v25}, Lw0/f;->H(F)I

    move-result v26

    sget v9, LY2/d;->life_index_dew_point:I

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v11

    const/16 v12, 0x3e7

    if-eq v11, v12, :cond_1d

    if-gez v11, :cond_1c

    sget v12, LY2/d;->pd_minus_temp:I

    goto :goto_c

    :cond_1c
    sget v12, LY2/d;->pd_temp:I

    :goto_c
    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v12, v11}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_d
    move-object/from16 v27, v11

    goto :goto_e

    :cond_1d
    const-string v11, "--"

    goto :goto_d

    :goto_e
    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v29

    new-instance v5, Lcom/samsung/android/weather/api/entity/weather/DewPoint;

    iget v10, v10, La3/J;->a:I

    move-object/from16 v23, v5

    move-object/from16 v24, v9

    move/from16 v28, v10

    invoke-direct/range {v23 .. v29}, Lcom/samsung/android/weather/api/entity/weather/DewPoint;-><init>(Ljava/lang/String;FILjava/lang/String;ILjava/lang/String;)V

    goto :goto_f

    :cond_1e
    move-object/from16 v19, v13

    move-object/from16 v22, v15

    const/4 v5, 0x0

    :goto_f
    invoke-virtual {v3, v5}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setDewpoint(Lcom/samsung/android/weather/api/entity/weather/DewPoint;)V

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getProbabilityUnit()La3/w;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getPrecipitationAmountUnit()La3/k;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getPrecipitationAmountUnit()La3/k;

    move-result-object v10

    move-object/from16 v11, p1

    invoke-static {v0, v11, v5, v9, v10}, Le0/a;->i(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/Weather;La3/w;La3/k;La3/k;)Lcom/samsung/android/weather/api/entity/weather/Precipitation;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setPrecipitation(Lcom/samsung/android/weather/api/entity/weather/Precipitation;)V

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v5

    const/16 v9, 0x18

    invoke-static {v5, v9}, Lm3/d;->f(Lcom/samsung/android/weather/api/entity/weather/Condition;I)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    move-result-object v5

    const-string v9, " convert : "

    const-string v10, "WPI"

    if-eqz v5, :cond_30

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getActiveCp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getVisibilityUnit()La3/n;

    move-result-object v12

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getVisibilityUnit()La3/n;

    move-result-object v13

    invoke-static {v11, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v14

    move-object/from16 v18, v6

    move-object v15, v7

    float-to-double v6, v14

    move-object/from16 p1, v15

    sget-object v15, La3/l;->b:La3/l;

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    move-object/from16 v23, v4

    sget-object v4, La3/m;->b:La3/m;

    const-wide v24, 0x3ff9bfdb4cc25072L    # 1.60934

    if-eqz v21, :cond_1f

    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1f

    div-double v6, v6, v24

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_10

    :cond_1f
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    mul-double v6, v6, v24

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_10

    :cond_20
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    :goto_10
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v7

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "GetVisibility] origin : "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v6}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->setValue(F)V

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x7d2d258b

    if-eq v6, v7, :cond_27

    const v7, 0x118d4

    if-eq v6, v7, :cond_25

    const v7, 0x11fc8

    if-eq v6, v7, :cond_23

    const v7, 0x1236e

    if-eq v6, v7, :cond_21

    move-object/from16 v14, v19

    move-object/from16 v6, v22

    :goto_11
    move-object/from16 v12, v31

    move-object/from16 v7, v32

    goto/16 :goto_12

    :cond_21
    move-object/from16 v6, v22

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    move-object/from16 v22, v6

    goto/16 :goto_16

    :cond_22
    move-object/from16 v14, v19

    goto :goto_11

    :cond_23
    move-object/from16 v6, v22

    move-object/from16 v7, v32

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_24

    move-object/from16 v14, v19

    move-object/from16 v12, v31

    goto/16 :goto_12

    :cond_24
    move-object/from16 v22, v6

    move-object/from16 v32, v7

    goto/16 :goto_16

    :cond_25
    move-object/from16 v6, v22

    move-object/from16 v12, v31

    move-object/from16 v7, v32

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_26

    move-object/from16 v14, v19

    goto :goto_12

    :cond_26
    new-instance v4, Lcom/samsung/android/weather/api/entity/weather/Visibility;

    sget v11, LY2/d;->life_index_visibility:I

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v26

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v13

    invoke-static {v13}, Lw0/f;->H(F)I

    move-result v27

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v13

    sget v14, LY2/d;->pd_km_int:I

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    float-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v14, v13}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v30

    const/16 v29, 0x0

    move-object/from16 v24, v4

    move-object/from16 v25, v11

    invoke-direct/range {v24 .. v30}, Lcom/samsung/android/weather/api/entity/weather/Visibility;-><init>(Ljava/lang/String;FILjava/lang/String;ILjava/lang/String;)V

    move-object/from16 v22, v6

    move-object/from16 v32, v7

    move-object/from16 v31, v12

    goto/16 :goto_17

    :cond_27
    move-object/from16 v14, v19

    move-object/from16 v6, v22

    move-object/from16 v12, v31

    move-object/from16 v7, v32

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2f

    :goto_12
    new-instance v11, Lcom/samsung/android/weather/api/entity/weather/Visibility;

    move-object/from16 v19, v14

    sget v14, LY2/d;->life_index_visibility:I

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v26

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v21

    invoke-static/range {v21 .. v21}, Lw0/f;->H(F)I

    move-result v27

    move-object/from16 v31, v12

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v12

    move-object/from16 v22, v6

    move-object/from16 v32, v7

    float-to-double v6, v12

    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    mul-double v6, v6, v24

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v21

    if-nez v21, :cond_2e

    const-wide v28, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v21, v6, v28

    if-lez v21, :cond_28

    const v6, 0x7fffffff

    goto :goto_13

    :cond_28
    const-wide/high16 v28, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v21, v6, v28

    if-gez v21, :cond_29

    const/high16 v6, -0x80000000

    goto :goto_13

    :cond_29
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    :goto_13
    int-to-double v6, v6

    div-double v6, v6, v24

    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2b

    const-wide v24, 0x403019999999999aL    # 16.1

    cmpg-double v4, v6, v24

    if-gez v4, :cond_2a

    sget v4, LY2/d;->p2f_km:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_14
    move-object/from16 v28, v4

    goto :goto_15

    :cond_2a
    sget v4, LY2/d;->visibility_unlimited:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14

    :cond_2b
    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    cmpg-double v4, v6, v24

    if-gez v4, :cond_2c

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, LY2/c;->pd_mi:I

    float-to-int v7, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v4, v6, v7, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "getQuantityString(...)"

    invoke-static {v4, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14

    :cond_2c
    sget v4, LY2/d;->visibility_unlimited:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14

    :goto_15
    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v30

    iget v4, v13, La3/n;->a:I

    move-object/from16 v24, v11

    move-object/from16 v25, v14

    move/from16 v29, v4

    invoke-direct/range {v24 .. v30}, Lcom/samsung/android/weather/api/entity/weather/Visibility;-><init>(Ljava/lang/String;FILjava/lang/String;ILjava/lang/String;)V

    move-object v4, v11

    goto :goto_17

    :cond_2d
    new-instance v0, LW4/m;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round NaN value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    move-object/from16 v22, v6

    move-object/from16 v32, v7

    move-object/from16 v31, v12

    move-object/from16 v19, v14

    :goto_16
    new-instance v4, Lcom/samsung/android/weather/api/entity/weather/Visibility;

    sget v6, LY2/d;->life_index_visibility:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v26

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v7

    invoke-static {v7}, Lw0/f;->H(F)I

    move-result v27

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v7

    sget v11, LY2/d;->pd_km:I

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v11, v7}, LR3/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v30

    const/16 v29, 0x0

    move-object/from16 v24, v4

    move-object/from16 v25, v6

    invoke-direct/range {v24 .. v30}, Lcom/samsung/android/weather/api/entity/weather/Visibility;-><init>(Ljava/lang/String;FILjava/lang/String;ILjava/lang/String;)V

    goto :goto_17

    :cond_30
    move-object/from16 v23, v4

    move-object/from16 v18, v6

    move-object/from16 p1, v7

    const/4 v4, 0x0

    :goto_17
    invoke-virtual {v3, v4}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setVisibility(Lcom/samsung/android/weather/api/entity/weather/Visibility;)V

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-static {v4, v5}, Lm3/d;->f(Lcom/samsung/android/weather/api/entity/weather/Condition;I)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    move-result-object v4

    if-eqz v4, :cond_3f

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getActiveCp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getPressureUnit()La3/u;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getPressureUnit()La3/u;

    move-result-object v7

    move-object/from16 v11, v23

    invoke-static {v5, v11}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v12, v18

    invoke-static {v6, v12}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, p1

    invoke-static {v7, v13}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v14

    move-object v15, v13

    float-to-double v12, v14

    move-object/from16 p1, v15

    sget-object v15, La3/r;->b:La3/r;

    invoke-virtual {v6, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    move-object/from16 v23, v11

    sget-object v11, La3/s;->b:La3/s;

    const-wide v24, 0x4040ee94467381d8L    # 33.8639

    if-eqz v17, :cond_31

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_31

    div-double v12, v12, v24

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object/from16 v21, v2

    goto :goto_18

    :cond_31
    invoke-virtual {v6, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    move-object/from16 v21, v2

    sget-object v2, La3/t;->b:La3/t;

    if-eqz v17, :cond_32

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_32

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_18

    :cond_32
    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_33

    invoke-virtual {v7, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_33

    mul-double v12, v12, v24

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_18

    :cond_33
    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_34

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_34

    mul-double v12, v12, v24

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_18

    :cond_34
    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_35

    invoke-virtual {v7, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_35

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_18

    :cond_35
    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    div-double v12, v12, v24

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_18

    :cond_36
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    :goto_18
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v6

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "GetPressure] origin : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v2}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->setValue(F)V

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v6, -0x7d2d258b

    if-eq v2, v6, :cond_3d

    const v6, 0x118d4

    if-eq v2, v6, :cond_3b

    const v6, 0x11fc8

    if-eq v2, v6, :cond_3a

    const v6, 0x1236e

    if-eq v2, v6, :cond_38

    :cond_37
    :goto_19
    move-object/from16 v2, v31

    goto :goto_1a

    :cond_38
    move-object/from16 v2, v22

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    :cond_39
    move-object/from16 v2, v31

    goto/16 :goto_1b

    :cond_3a
    move-object/from16 v2, v32

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_19

    :cond_3b
    move-object/from16 v2, v31

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    goto :goto_1a

    :cond_3c
    new-instance v5, Lcom/samsung/android/weather/api/entity/weather/Pressure;

    sget v6, LY2/d;->life_index_pressure:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v11

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v6

    invoke-static {v6}, Lw0/f;->H(F)I

    move-result v12

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v6

    invoke-static {v6, v0, v7}, Le0/a;->n(FLandroid/content/Context;La3/u;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v15

    iget v14, v7, La3/u;->a:I

    move-object v9, v5

    invoke-direct/range {v9 .. v15}, Lcom/samsung/android/weather/api/entity/weather/Pressure;-><init>(Ljava/lang/String;FILjava/lang/String;ILjava/lang/String;)V

    goto :goto_1c

    :cond_3d
    move-object/from16 v6, v19

    move-object/from16 v2, v31

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    :goto_1a
    new-instance v5, Lcom/samsung/android/weather/api/entity/weather/Pressure;

    sget v6, LY2/d;->life_index_pressure:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v11

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v6

    invoke-static {v6}, Lw0/f;->H(F)I

    move-result v12

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v6

    invoke-static {v6, v0, v7}, Le0/a;->n(FLandroid/content/Context;La3/u;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v15

    iget v14, v7, La3/u;->a:I

    move-object v9, v5

    invoke-direct/range {v9 .. v15}, Lcom/samsung/android/weather/api/entity/weather/Pressure;-><init>(Ljava/lang/String;FILjava/lang/String;ILjava/lang/String;)V

    goto :goto_1c

    :cond_3e
    :goto_1b
    new-instance v5, Lcom/samsung/android/weather/api/entity/weather/Pressure;

    sget v6, LY2/d;->life_index_pressure:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v26

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v9

    invoke-static {v9}, Lw0/f;->H(F)I

    move-result v27

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v9

    invoke-static {v9, v0, v7}, Le0/a;->n(FLandroid/content/Context;La3/u;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v30

    iget v4, v7, La3/u;->a:I

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v29, v4

    invoke-direct/range {v24 .. v30}, Lcom/samsung/android/weather/api/entity/weather/Pressure;-><init>(Ljava/lang/String;FILjava/lang/String;ILjava/lang/String;)V

    goto :goto_1c

    :cond_3f
    move-object/from16 v21, v2

    move-object/from16 v2, v31

    const/4 v5, 0x0

    :goto_1c
    invoke-virtual {v3, v5}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setPressure(Lcom/samsung/android/weather/api/entity/weather/Pressure;)V

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v4

    const/16 v5, 0xd

    invoke-static {v4, v5}, Lm3/d;->f(Lcom/samsung/android/weather/api/entity/weather/Condition;I)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    move-result-object v4

    const/4 v5, 0x2

    const-string v6, "forecastTime"

    if-eqz v4, :cond_42

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getTime()Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v7

    invoke-static {v7, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v17, Lcom/samsung/android/weather/api/entity/weather/Sunrise;

    invoke-virtual {v7}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getSunRiseTime()J

    move-result-wide v10

    sget v9, LY2/d;->life_index_sunrise:I

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevelText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getArcticNightType()I

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_41

    if-eq v7, v5, :cond_40

    sget-object v7, Lcom/samsung/android/weather/api/entity/weather/ArcticType;->NORMAL:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    :goto_1d
    move-object v14, v7

    goto :goto_1e

    :cond_40
    sget-object v7, Lcom/samsung/android/weather/api/entity/weather/ArcticType;->POLAR_NIGHT:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    goto :goto_1d

    :cond_41
    sget-object v7, Lcom/samsung/android/weather/api/entity/weather/ArcticType;->WHITE_NIGHT:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    goto :goto_1d

    :goto_1e
    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v9, v17

    invoke-direct/range {v9 .. v15}, Lcom/samsung/android/weather/api/entity/weather/Sunrise;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/weather/api/entity/weather/ArcticType;Ljava/lang/String;)V

    move-object/from16 v4, v17

    goto :goto_1f

    :cond_42
    const/4 v4, 0x0

    :goto_1f
    invoke-virtual {v3, v4}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setSunrise(Lcom/samsung/android/weather/api/entity/weather/Sunrise;)V

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v4

    const/16 v7, 0xe

    invoke-static {v4, v7}, Lm3/d;->f(Lcom/samsung/android/weather/api/entity/weather/Condition;I)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    move-result-object v4

    if-eqz v4, :cond_45

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getTime()Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v7

    invoke-static {v7, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v17, Lcom/samsung/android/weather/api/entity/weather/Sunset;

    invoke-virtual {v7}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getSunSetTime()J

    move-result-wide v10

    sget v9, LY2/d;->life_index_sunset:I

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevelText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getArcticNightType()I

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_44

    if-eq v7, v5, :cond_43

    sget-object v5, Lcom/samsung/android/weather/api/entity/weather/ArcticType;->NORMAL:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    :goto_20
    move-object v14, v5

    goto :goto_21

    :cond_43
    sget-object v5, Lcom/samsung/android/weather/api/entity/weather/ArcticType;->POLAR_NIGHT:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    goto :goto_20

    :cond_44
    sget-object v5, Lcom/samsung/android/weather/api/entity/weather/ArcticType;->WHITE_NIGHT:Lcom/samsung/android/weather/api/entity/weather/ArcticType;

    goto :goto_20

    :goto_21
    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v9, v17

    invoke-direct/range {v9 .. v15}, Lcom/samsung/android/weather/api/entity/weather/Sunset;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/weather/api/entity/weather/ArcticType;Ljava/lang/String;)V

    move-object/from16 v4, v17

    goto :goto_22

    :cond_45
    const/4 v4, 0x0

    :goto_22
    invoke-virtual {v3, v4}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setSunset(Lcom/samsung/android/weather/api/entity/weather/Sunset;)V

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v4

    const/16 v5, 0x37

    invoke-static {v4, v5}, Lm3/d;->f(Lcom/samsung/android/weather/api/entity/weather/Condition;I)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    move-result-object v4

    const-wide/16 v9, 0x0

    if-eqz v4, :cond_47

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getTime()Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v5

    invoke-static {v5, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/samsung/android/weather/api/entity/weather/Moonrise;

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getMoonRiseTime()J

    move-result-wide v11

    cmp-long v11, v11, v9

    if-lez v11, :cond_46

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getMoonRiseTime()J

    move-result-wide v11

    :goto_23
    move-wide/from16 v25, v11

    goto :goto_24

    :cond_46
    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v5

    float-to-long v11, v5

    goto :goto_23

    :goto_24
    sget v5, LY2/d;->moon_rise:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevelText()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v24, v7

    move-object/from16 v27, v5

    invoke-direct/range {v24 .. v29}, Lcom/samsung/android/weather/api/entity/weather/Moonrise;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_47
    const/4 v7, 0x0

    :goto_25
    invoke-virtual {v3, v7}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setMoonrise(Lcom/samsung/android/weather/api/entity/weather/Moonrise;)V

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v4

    const/16 v5, 0x38

    invoke-static {v4, v5}, Lm3/d;->f(Lcom/samsung/android/weather/api/entity/weather/Condition;I)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    move-result-object v4

    if-eqz v4, :cond_49

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getTime()Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    move-result-object v5

    invoke-static {v5, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/android/weather/api/entity/weather/Moonset;

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getMoonSetTime()J

    move-result-wide v11

    cmp-long v7, v11, v9

    if-lez v7, :cond_48

    invoke-virtual {v5}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;->getMoonSetTime()J

    move-result-wide v9

    :goto_26
    move-wide/from16 v25, v9

    goto :goto_27

    :cond_48
    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getValue()F

    move-result v5

    float-to-long v9, v5

    goto :goto_26

    :goto_27
    sget v5, LY2/d;->moon_set:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevelText()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v24, v6

    move-object/from16 v27, v5

    invoke-direct/range {v24 .. v29}, Lcom/samsung/android/weather/api/entity/weather/Moonset;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    :cond_49
    const/4 v6, 0x0

    :goto_28
    invoke-virtual {v3, v6}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setMoonset(Lcom/samsung/android/weather/api/entity/weather/Moonset;)V

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v4

    const/16 v5, 0x39

    invoke-static {v4, v5}, Lm3/d;->f(Lcom/samsung/android/weather/api/entity/weather/Condition;I)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    move-result-object v4

    if-eqz v4, :cond_4a

    new-instance v5, Lcom/samsung/android/weather/api/entity/weather/MoonPhase;

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevel()I

    move-result v6

    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getLevel()I

    move-result v7

    packed-switch v7, :pswitch_data_3

    const-string v7, ""

    goto :goto_29

    :pswitch_9
    sget v7, LY2/d;->moon_waning_crescent:I

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_29

    :pswitch_a
    sget v7, LY2/d;->moon_last_quarter:I

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_29

    :pswitch_b
    sget v7, LY2/d;->moon_waning_gibbous:I

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_29

    :pswitch_c
    sget v7, LY2/d;->moon_full_moon:I

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_29

    :pswitch_d
    sget v7, LY2/d;->moon_waxing_gibbous:I

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_29

    :pswitch_e
    sget v7, LY2/d;->moon_first_quarter:I

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_29

    :pswitch_f
    sget v7, LY2/d;->moon_waxing_crescent:I

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_29

    :pswitch_10
    sget v7, LY2/d;->moon_new_moon:I

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_29
    invoke-virtual {v4}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;->getWebUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v7, v4}, Lcom/samsung/android/weather/api/entity/weather/MoonPhase;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    :cond_4a
    const/4 v5, 0x0

    :goto_2a
    invoke-virtual {v3, v5}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setMoonPhase(Lcom/samsung/android/weather/api/entity/weather/MoonPhase;)V

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v4

    const/16 v5, 0x12

    invoke-static {v4, v5}, Lm3/d;->f(Lcom/samsung/android/weather/api/entity/weather/Condition;I)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    move-result-object v4

    if-eqz v4, :cond_4c

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getActiveCp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/weather/api/entity/profile/Profile;->getOneUiVersion()I

    move-result v6

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getWindSpeedUnit()La3/B;

    move-result-object v1

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/weather/api/unit/WeatherUnits;->getWindSpeedUnit()La3/B;

    move-result-object v7

    move-object/from16 v8, v23

    invoke-static {v5, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v9, v18

    invoke-static {v1, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v9, p1

    invoke-static {v7, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-static {v0, v6, v4, v1, v7}, Le0/a;->j(Landroid/content/Context;ILcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;La3/B;La3/B;)Lcom/samsung/android/weather/api/entity/weather/Wind;

    move-result-object v1

    goto :goto_2b

    :cond_4b
    invoke-static {v0, v4, v1, v7}, Le0/a;->k(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;La3/B;La3/B;)Lcom/samsung/android/weather/api/entity/weather/Wind;

    move-result-object v1

    goto :goto_2b

    :cond_4c
    move-object/from16 v8, v23

    const/4 v1, 0x0

    :goto_2b
    invoke-virtual {v3, v1}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setWind(Lcom/samsung/android/weather/api/entity/weather/Wind;)V

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v1, v2}, Lm3/d;->f(Lcom/samsung/android/weather/api/entity/weather/Condition;I)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getActiveCp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Le0/a;->g(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/AQI;

    move-result-object v1

    goto :goto_2c

    :cond_4d
    const/4 v1, 0x0

    :goto_2c
    invoke-virtual {v3, v1}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setAqi(Lcom/samsung/android/weather/api/entity/weather/AQI;)V

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lm3/d;->f(Lcom/samsung/android/weather/api/entity/weather/Condition;I)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getActiveCp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Le0/a;->g(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/AQI;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/weather/api/entity/weather/AQIKt;->toPM10(Lcom/samsung/android/weather/api/entity/weather/AQI;)Lcom/samsung/android/weather/api/entity/weather/PM10;

    move-result-object v1

    goto :goto_2d

    :cond_4e
    const/4 v1, 0x0

    :goto_2d
    invoke-virtual {v3, v1}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setPm10(Lcom/samsung/android/weather/api/entity/weather/PM10;)V

    invoke-virtual {v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v1, v2}, Lm3/d;->f(Lcom/samsung/android/weather/api/entity/weather/Condition;I)Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    move-result-object v1

    if-eqz v1, :cond_4f

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getActiveCp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Le0/a;->g(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;Ljava/lang/String;)Lcom/samsung/android/weather/api/entity/weather/AQI;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/weather/api/entity/weather/AQIKt;->toPM25(Lcom/samsung/android/weather/api/entity/weather/AQI;)Lcom/samsung/android/weather/api/entity/weather/PM25;

    move-result-object v4

    goto :goto_2e

    :cond_4f
    const/4 v4, 0x0

    :goto_2e
    invoke-virtual {v3, v4}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setPm25(Lcom/samsung/android/weather/api/entity/weather/PM25;)V

    return-void

    :cond_50
    const-string v0, "storage"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x70
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static p(Lcom/samsung/android/weather/api/entity/weather/Weather;I)V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/Temp;->getValue()F

    move-result v2

    invoke-static {v2, p1}, Le0/a;->b(FI)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v3, v2, v4, v5}, Lcom/samsung/android/weather/api/entity/weather/Temp;->copy$default(Lcom/samsung/android/weather/api/entity/weather/Temp;FIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->setTemp(Lcom/samsung/android/weather/api/entity/weather/Temp;)V

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getFeelsLikeTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getFeelsLikeTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/Temp;->getValue()F

    move-result v2

    invoke-static {v2, p1}, Le0/a;->b(FI)I

    move-result v2

    invoke-static {v1, v3, v2, v4, v5}, Lcom/samsung/android/weather/api/entity/weather/Temp;->copy$default(Lcom/samsung/android/weather/api/entity/weather/Temp;FIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->setFeelsLikeTemp(Lcom/samsung/android/weather/api/entity/weather/Temp;)V

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getMaxTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getMaxTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/Temp;->getValue()F

    move-result v2

    invoke-static {v2, p1}, Le0/a;->b(FI)I

    move-result v2

    invoke-static {v1, v3, v2, v4, v5}, Lcom/samsung/android/weather/api/entity/weather/Temp;->copy$default(Lcom/samsung/android/weather/api/entity/weather/Temp;FIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->setMaxTemp(Lcom/samsung/android/weather/api/entity/weather/Temp;)V

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getMinTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getMinTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/Temp;->getValue()F

    move-result v2

    invoke-static {v2, p1}, Le0/a;->b(FI)I

    move-result v2

    invoke-static {v1, v3, v2, v4, v5}, Lcom/samsung/android/weather/api/entity/weather/Temp;->copy$default(Lcom/samsung/android/weather/api/entity/weather/Temp;FIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->setMinTemp(Lcom/samsung/android/weather/api/entity/weather/Temp;)V

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getYesterdayMaxTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getYesterdayMaxTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/Temp;->getValue()F

    move-result v2

    invoke-static {v2, p1}, Le0/a;->b(FI)I

    move-result v2

    invoke-static {v1, v3, v2, v4, v5}, Lcom/samsung/android/weather/api/entity/weather/Temp;->copy$default(Lcom/samsung/android/weather/api/entity/weather/Temp;FIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setYesterdayMaxTemp(Lcom/samsung/android/weather/api/entity/weather/Temp;)V

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getYesterdayMinTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getYesterdayMinTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/Temp;->getValue()F

    move-result v2

    invoke-static {v2, p1}, Le0/a;->b(FI)I

    move-result v2

    invoke-static {v1, v3, v2, v4, v5}, Lcom/samsung/android/weather/api/entity/weather/Temp;->copy$default(Lcom/samsung/android/weather/api/entity/weather/Temp;FIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setYesterdayMinTemp(Lcom/samsung/android/weather/api/entity/weather/Temp;)V

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getHourlyObservations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/weather/api/entity/weather/HourlyObservation;

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/HourlyObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/Temp;->getValue()F

    move-result v6

    invoke-static {v6, p1}, Le0/a;->b(FI)I

    move-result v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/samsung/android/weather/api/entity/weather/Temp;->copy$default(Lcom/samsung/android/weather/api/entity/weather/Temp;FIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/weather/api/entity/weather/Condition;->setTemp(Lcom/samsung/android/weather/api/entity/weather/Temp;)V

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getMaxTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getMaxTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/Temp;->getValue()F

    move-result v6

    invoke-static {v6, p1}, Le0/a;->b(FI)I

    move-result v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/samsung/android/weather/api/entity/weather/Temp;->copy$default(Lcom/samsung/android/weather/api/entity/weather/Temp;FIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/weather/api/entity/weather/Condition;->setMaxTemp(Lcom/samsung/android/weather/api/entity/weather/Temp;)V

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getMinTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getMinTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/Temp;->getValue()F

    move-result v6

    invoke-static {v6, p1}, Le0/a;->b(FI)I

    move-result v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/samsung/android/weather/api/entity/weather/Temp;->copy$default(Lcom/samsung/android/weather/api/entity/weather/Temp;FIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/weather/api/entity/weather/Condition;->setMinTemp(Lcom/samsung/android/weather/api/entity/weather/Temp;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getDailyObservations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/weather/api/entity/weather/DailyObservation;

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/DailyObservation;->getDayCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/Temp;->getValue()F

    move-result v6

    invoke-static {v6, p1}, Le0/a;->b(FI)I

    move-result v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/samsung/android/weather/api/entity/weather/Temp;->copy$default(Lcom/samsung/android/weather/api/entity/weather/Temp;FIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/weather/api/entity/weather/Condition;->setTemp(Lcom/samsung/android/weather/api/entity/weather/Temp;)V

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getMaxTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getMaxTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/Temp;->getValue()F

    move-result v6

    invoke-static {v6, p1}, Le0/a;->b(FI)I

    move-result v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/samsung/android/weather/api/entity/weather/Temp;->copy$default(Lcom/samsung/android/weather/api/entity/weather/Temp;FIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/weather/api/entity/weather/Condition;->setMaxTemp(Lcom/samsung/android/weather/api/entity/weather/Temp;)V

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getMinTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getMinTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/weather/api/entity/weather/Temp;->getValue()F

    move-result v6

    invoke-static {v6, p1}, Le0/a;->b(FI)I

    move-result v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/samsung/android/weather/api/entity/weather/Temp;->copy$default(Lcom/samsung/android/weather/api/entity/weather/Temp;FIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/weather/api/entity/weather/Condition;->setMinTemp(Lcom/samsung/android/weather/api/entity/weather/Temp;)V

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/DailyObservation;->getNightCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/Temp;->getValue()F

    move-result v2

    invoke-static {v2, p1}, Le0/a;->b(FI)I

    move-result v2

    invoke-static {v1, v3, v2, v4, v5}, Lcom/samsung/android/weather/api/entity/weather/Temp;->copy$default(Lcom/samsung/android/weather/api/entity/weather/Temp;FIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->setTemp(Lcom/samsung/android/weather/api/entity/weather/Temp;)V

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getMaxTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getMaxTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/Temp;->getValue()F

    move-result v2

    invoke-static {v2, p1}, Le0/a;->b(FI)I

    move-result v2

    invoke-static {v1, v3, v2, v4, v5}, Lcom/samsung/android/weather/api/entity/weather/Temp;->copy$default(Lcom/samsung/android/weather/api/entity/weather/Temp;FIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->setMaxTemp(Lcom/samsung/android/weather/api/entity/weather/Temp;)V

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getMinTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/entity/weather/Condition;->getMinTemp()Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/weather/api/entity/weather/Temp;->getValue()F

    move-result v2

    invoke-static {v2, p1}, Le0/a;->b(FI)I

    move-result v2

    invoke-static {v1, v3, v2, v4, v5}, Lcom/samsung/android/weather/api/entity/weather/Temp;->copy$default(Lcom/samsung/android/weather/api/entity/weather/Temp;FIILjava/lang/Object;)Lcom/samsung/android/weather/api/entity/weather/Temp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->setMinTemp(Lcom/samsung/android/weather/api/entity/weather/Temp;)V

    goto/16 :goto_1

    :cond_1
    return-void
.end method

.method public static q(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lm3/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WPI"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public static r(Landroid/content/Context;IZ)[Ljava/lang/String;
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x7530

    const v1, 0x9c40

    const v2, 0xc350

    const v3, 0xea60

    const v4, 0x11170

    const v5, 0x13880

    const-string v6, "getStringArray(...)"

    if-eqz p2, :cond_6

    if-lt p1, v5, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, LY2/a;->weather_icon_names_one_ui_8:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    if-lt p1, v4, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, LY2/a;->weather_icon_names_one_ui_7:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    if-lt p1, v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, LY2/a;->weather_icon_names_one_ui_6:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    if-lt p1, v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, LY2/a;->weather_icon_names_one_ui_5:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    if-lt p1, v1, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, LY2/a;->weather_icon_names_one_ui_4:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    if-lt p1, v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, LY2/a;->weather_icon_names_one_ui_3:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, LY2/a;->weather_icon_names_one_ui_2:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    if-lt p1, v5, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, LY2/a;->weather_whitebg_icon_names_one_ui_8:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    if-lt p1, v4, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, LY2/a;->weather_whitebg_icon_names_one_ui_7:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    if-lt p1, v3, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, LY2/a;->weather_whitebg_icon_names_one_ui_6:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    if-lt p1, v2, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, LY2/a;->weather_whitebg_icon_names_one_ui_5:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    if-lt p1, v1, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, LY2/a;->weather_whitebg_icon_names_one_ui_4:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    if-lt p1, v0, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, LY2/a;->weather_icon_names_one_ui_3:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, LY2/a;->weather_icon_names_one_ui_2:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static s(Landroid/content/Context;Lcom/samsung/android/weather/api/entity/weather/Weather;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/weather/api/WeatherInsideCache;->INSTANCE:Lcom/samsung/android/weather/api/WeatherInsideCache;

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getDataLevel()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "-"

    const-string v4, "WPI"

    if-gt v2, v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getDataLevel()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "ReviseWeatherData] data permission : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getDataLevel()I

    move-result p0

    sget-object v1, Lr3/r;->d:Lr3/r;

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-gt v2, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "has no permission for write data"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->getCondition()Lcom/samsung/android/weather/api/entity/weather/Condition;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/weather/api/entity/weather/Condition;->setIndexList(Ljava/util/List;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->setWebMenus(Ljava/util/List;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->setAlerts(Ljava/util/List;)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/weather/api/entity/weather/Weather;->setRadar(Lcom/samsung/android/weather/api/entity/content/WebContent;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->setVideos(Ljava/util/List;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->setTodayStories(Ljava/util/List;)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/weather/api/entity/weather/Weather;->setForecastChange(Lcom/samsung/android/weather/api/entity/weather/internal/ForecastChange;)V

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getDataLevel()I

    move-result p0

    const/4 v0, 0x2

    if-gt v0, p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "has no permission for generate data"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setInsight(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setForecastAlert(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->getCurrentObservation()Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/samsung/android/weather/api/entity/weather/CurrentObservation;->setShortTermPrecip(Lcom/samsung/android/weather/api/entity/weather/ShortTermPrecipitation;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->setActivityForecast(Ljava/util/List;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p0}, Lcom/samsung/android/weather/api/entity/weather/Weather;->setInsightContent(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/weather/api/entity/weather/Weather;->setLifeStyleContent(Ljava/util/List;)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/weather/api/WeatherInsideCache;->getDataLevel()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "has no read permission : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "has no read permission"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
