.class public final La5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LU3/w;

.field public final b:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(LU3/w;Landroid/content/ContentResolver;I)V
    .locals 0

    packed-switch p3, :pswitch_data_0

    const-string p3, "contentUri"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/a;->a:LU3/w;

    iput-object p2, p0, La5/a;->b:Landroid/content/ContentResolver;

    return-void

    :pswitch_0
    const-string p3, "contentUri"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/a;->a:LU3/w;

    iput-object p2, p0, La5/a;->b:Landroid/content/ContentResolver;

    return-void

    :pswitch_1
    const-string p3, "contentUri"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/a;->a:LU3/w;

    iput-object p2, p0, La5/a;->b:Landroid/content/ContentResolver;

    return-void

    :pswitch_2
    const-string p3, "contentUri"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/a;->a:LU3/w;

    iput-object p2, p0, La5/a;->b:Landroid/content/ContentResolver;

    return-void

    :pswitch_3
    const-string p3, "contentUri"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/a;->a:LU3/w;

    iput-object p2, p0, La5/a;->b:Landroid/content/ContentResolver;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lc5/a;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "COL_WEATHER_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc5/a;->b:Ljava/lang/String;

    const-string v1, "COL_ALERT_DETAIL_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc5/a;->c:Ljava/lang/String;

    const-string v1, "COL_ALERT_DESCRIPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc5/a;->d:Ljava/lang/Integer;

    const-string v1, "COL_ALERT_SEVERITY_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lc5/a;->e:Ljava/lang/Long;

    const-string v1, "COL_ALERT_EXPIRE_TIME"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p1, p0, Lc5/a;->f:Ljava/lang/String;

    const-string v1, "COL_ALERT_ISSUE_TIME"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc5/a;->g:Ljava/lang/String;

    const-string v1, "COL_ALERT_ISSUE_TIMEZONE"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lc5/a;->h:Ljava/lang/String;

    const-string p1, "COL_ALERT_LINK_URL"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Landroid/database/Cursor;)Lc5/e;
    .locals 69

    move-object/from16 v0, p0

    new-instance v66, Lc5/e;

    move-object/from16 v1, v66

    const-string v2, "COL_WEATHER_KEY"

    invoke-static {v0, v2}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "COL_WEATHER_CONVERTED_ICON_NUM"

    const/4 v15, 0x0

    invoke-static {v0, v3, v15}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "COL_WEATHER_EXPANSION_ICON_NUM"

    const/4 v5, -0x1

    invoke-static {v0, v4, v5}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "COL_WEATHER_TIME"

    invoke-static {v0, v5}, Lj0/s;->t(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "COL_WEATHER_CURRENT_TEMP"

    invoke-static {v0, v6}, Lj0/s;->i(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "COL_WEATHER_WEATHER_TEXT"

    invoke-static {v0, v7}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "COL_WEATHER_NAME"

    invoke-static {v0, v8}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "COL_WEATHER_NAME_ENG"

    invoke-static {v0, v9}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "COL_WEATHER_AQI_INDEX"

    invoke-static {v0, v10, v15}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "COL_WEATHER_STATE"

    invoke-static {v0, v11}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "COL_WEATHER_STATE_ENG"

    invoke-static {v0, v12}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "COL_WEATHER_COUNTRY"

    invoke-static {v0, v13}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "COL_WEATHER_COUNTRY_ENG"

    invoke-static {v0, v14}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "COL_WEATHER_COUNTRY_CODE"

    invoke-static {v0, v15}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v67, v1

    const/4 v1, 0x0

    const-string v1, "COL_WEATHER_POSTAL_CODE"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "COL_WEATHER_LOCATION"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v1, "COL_WEATHER_LATITUDE"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v1, "COL_WEATHER_LONGITUDE"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v1, "COL_WEATHER_THEME_CODE"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v1, "COL_WEATHER_TIMEZONE"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v1, "COL_WEATHER_IS_DAYLIGHT_SAVING"

    move-object/from16 v68, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const-string v1, "COL_WEATHER_UPDATE_TIME"

    invoke-static {v0, v1}, Lj0/s;->t(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const-string v1, "COL_WEATHER_SUNRISE_TIME"

    invoke-static {v0, v1}, Lj0/s;->t(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v1, "COL_WEATHER_SUNSET_TIME"

    invoke-static {v0, v1}, Lj0/s;->t(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const-string v1, "COL_WEATHER_MOONRISE_TIME"

    invoke-static {v0, v1}, Lj0/s;->t(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v1, "COL_WEATHER_MOONSET_TIME"

    invoke-static {v0, v1}, Lj0/s;->t(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    const-string v1, "COL_WEATHER_IS_DAY_OR_NIGHT"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const-string v1, "COL_WEATHER_FEELSLIKE_TEMP"

    invoke-static {v0, v1}, Lj0/s;->i(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v29

    const-string v1, "COL_WEATHER_HIGH_TEMP"

    invoke-static {v0, v1}, Lj0/s;->i(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    const-string v1, "COL_WEATHER_LOW_TEMP"

    invoke-static {v0, v1}, Lj0/s;->i(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v31

    const-string v1, "COL_WEATHER_YESTERDAY_HIGH_TEMP"

    invoke-static {v0, v1}, Lj0/s;->i(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    const-string v1, "COL_WEATHER_YESTERDAY_LOW_TEMP"

    invoke-static {v0, v1}, Lj0/s;->i(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v33

    const-string v1, "COL_WEATHER_ICON_NUM"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    const-string v1, "COL_WEATHER_FORECAST_TEXT"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v1, "COL_WEATHER_DAY_RAIN_PROBABILITY"

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    const-string v1, "COL_WEATHER_DAY_SNOW_PROBABILITY"

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    const-string v1, "COL_WEATHER_DAY_HAIL_PROBABILITY"

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    const-string v1, "COL_WEATHER_DAY_PRECIPITATION_PROBABILITY"

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    const-string v1, "COL_WEATHER_DAY_RAIN_AMOUNT"

    invoke-static {v0, v1}, Lj0/s;->a(Landroid/database/Cursor;Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v40

    const-string v1, "COL_WEATHER_DAY_SNOW_AMOUNT"

    invoke-static {v0, v1}, Lj0/s;->a(Landroid/database/Cursor;Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v41

    const-string v1, "COL_WEATHER_DAY_HAIL_AMOUNT"

    invoke-static {v0, v1}, Lj0/s;->a(Landroid/database/Cursor;Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v42

    const-string v1, "COL_WEATHER_DAY_PRECIPITATION_AMOUNT"

    invoke-static {v0, v1}, Lj0/s;->a(Landroid/database/Cursor;Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v43

    const-string v1, "COL_WEATHER_NIGHT_RAIN_PROBABILITY"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    const-string v1, "COL_WEATHER_NIGHT_SNOW_PROBABILITY"

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    const-string v1, "COL_WEATHER_NIGHT_HAIL_PROBABILITY"

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    const-string v1, "COL_WEATHER_NIGHT_PRECIPITATION_PROBABILITY"

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    const-string v1, "COL_WEATHER_NIGHT_RAIN_AMOUNT"

    invoke-static {v0, v1}, Lj0/s;->a(Landroid/database/Cursor;Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v48

    const-string v1, "COL_WEATHER_NIGHT_SNOW_AMOUNT"

    invoke-static {v0, v1}, Lj0/s;->a(Landroid/database/Cursor;Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v49

    const-string v1, "COL_WEATHER_NIGHT_HAIL_AMOUNT"

    invoke-static {v0, v1}, Lj0/s;->a(Landroid/database/Cursor;Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v50

    const-string v1, "COL_WEATHER_NIGHT_PRECIPITATION_AMOUNT"

    invoke-static {v0, v1}, Lj0/s;->a(Landroid/database/Cursor;Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v51

    const-string v1, "COL_WEATHER_URL"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    const-string v1, "COL_WEATHER_ORDER"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    const-string v1, "COL_WEATHER_HAS_INDEX"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    const-string v1, "COL_WEATHER_PRIVACY"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    const-string v1, "COL_WEATHER_BROADCAST"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    const-string v1, "COL_WEATHER_10MIN"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    const-string v1, "COL_WEATHER_PROVIDER_NAME"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    const-string v1, "COL_WEATHER_ARCTIC_NIGHT_TYPE"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    const-string v1, "COL_WEATHER_PUBLISH_TIME"

    invoke-static {v0, v1}, Lj0/s;->t(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    const-string v1, "COL_WEATHER_EXPIRE_TIME"

    invoke-static {v0, v1}, Lj0/s;->t(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v61

    const-string v1, "COL_WEATHER_LOCATION_UPDATE_TIME"

    invoke-static {v0, v1}, Lj0/s;->t(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const-string v1, "COL_WEATHER_LOCATION_SHORT_ADDRESS"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    const-string v1, "COL_WEATHER_LOCATION_LABEL"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    const-string v1, "COL_WEATHER_LOCATION_LABEL_TYPE"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-direct/range {v1 .. v65}, Lc5/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v66
.end method

.method public static c(Landroid/database/Cursor;)Lc5/g;
    .locals 12

    new-instance v11, Lc5/g;

    const-string v0, "COL_WEATHER_KEY"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "COL_LIFE_INDEX_TYPE"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v3

    const-string v0, "COL_LIFE_INDEX_TEXT"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "COL_LIFE_INDEX_VALUE"

    invoke-static {p0, v0}, Lj0/s;->i(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v0, "COL_LIFE_INDEX_PRIORITY"

    invoke-static {p0, v0, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v0, "COL_LIFE_INDEX_LEVEL"

    invoke-static {p0, v0, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v0, "COL_LIFE_INDEX_URL"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "COL_LIFE_INDEX_CATEGORY"

    invoke-static {p0, v0, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v9

    const-string v0, "COL_LIFE_INDEX_EXTRA"

    invoke-static {p0, v0, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v0, "COL_LIFE_INDEX_DESCRIPTION"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v0, v11

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, p0

    invoke-direct/range {v0 .. v10}, Lc5/g;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    return-object v11
.end method
