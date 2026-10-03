.class public final La5/b;
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

    iput-object p1, p0, La5/b;->a:LU3/w;

    iput-object p2, p0, La5/b;->b:Landroid/content/ContentResolver;

    return-void

    :pswitch_0
    const-string p3, "contentUri"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/b;->a:LU3/w;

    iput-object p2, p0, La5/b;->b:Landroid/content/ContentResolver;

    return-void

    :pswitch_1
    const-string p3, "contentUri"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/b;->a:LU3/w;

    iput-object p2, p0, La5/b;->b:Landroid/content/ContentResolver;

    return-void

    :pswitch_2
    const-string p3, "contentUri"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/b;->a:LU3/w;

    iput-object p2, p0, La5/b;->b:Landroid/content/ContentResolver;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/database/Cursor;)Lc5/c;
    .locals 34

    move-object/from16 v0, p0

    const-string v1, "COL_WEATHER_KEY"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "COL_DAILY_HIGH_TEMP"

    invoke-static {v0, v1}, Lj0/s;->i(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v1

    const-string v2, "COL_DAILY_LOW_TEMP"

    invoke-static {v0, v2}, Lj0/s;->i(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v5

    const-string v2, "COL_DAILY_CONVERTED_ICON_NUM"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v6

    const-string v2, "COL_DAILY_EXPANSION_ICON_NUM"

    const/4 v7, -0x1

    invoke-static {v0, v2, v7}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v7

    const-string v2, "COL_DAILY_TIME"

    invoke-static {v0, v2}, Lj0/s;->t(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v8

    const-string v2, "COL_DAILY_SUNRISE_TIME"

    invoke-static {v0, v2}, Lj0/s;->t(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v17

    const-string v2, "COL_DAILY_SUNSET_TIME"

    invoke-static {v0, v2}, Lj0/s;->t(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v19

    const-string v2, "COL_DAILY_CURRENT_TEMP"

    invoke-static {v0, v2}, Lj0/s;->i(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v10

    const-string v2, "COL_DAILY_ICON_NUM"

    invoke-static {v0, v2, v4}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v11

    const-string v2, "COL_DAILY_CONVERTED_ICON_DAY_NUM"

    invoke-static {v0, v2, v4}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v12

    const-string v2, "COL_DAILY_EXPANSION_DAY_ICON_NUM"

    invoke-static {v0, v2, v4}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v13

    const-string v2, "COL_DAILY_ICON_NIGHT_NUM"

    invoke-static {v0, v2, v4}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v14

    const-string v2, "COL_DAILY_CONVERTED_ICON_NIGHT_NUM"

    invoke-static {v0, v2, v4}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v15

    const-string v2, "COL_DAILY_EXPANSION_NIGHT_ICON_NUM"

    invoke-static {v0, v2, v4}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v16

    const-string v2, "COL_DAILY_PM10"

    invoke-static {v0, v2}, Lj0/s;->i(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v21

    const-string v2, "COL_DAILY_PM10LEVEL"

    invoke-static {v0, v2, v4}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v22

    const-string v2, "COL_DAILY_PM25"

    invoke-static {v0, v2}, Lj0/s;->i(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v23

    const-string v2, "COL_DAILY_PM25LEVEL"

    invoke-static {v0, v2, v4}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v24

    const-string v2, "COL_DAILY_WEATHER_TEXT"

    invoke-static {v0, v2}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v2, "COL_DAILY_WEATHER_TEXT_NIGHT"

    invoke-static {v0, v2}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v2, "COL_DAILY_NARRATIVE_TEXT"

    invoke-static {v0, v2}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v2, "COL_DAILY_NARRATIVE_TEXT_NIGHT"

    invoke-static {v0, v2}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v2, "COL_DAILY_URL"

    invoke-static {v0, v2}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v2, "COL_DAILY_PROBABILITY"

    invoke-static {v0, v2, v4}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v30

    const-string v2, "COL_DAILY_PROBABILITY_NIGHT"

    invoke-static {v0, v2, v4}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v31

    const-string v2, "COL_DAILY_EXPIRE_TIME"

    invoke-static {v0, v2}, Lj0/s;->t(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v32

    new-instance v0, Lc5/c;

    move-object v2, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    invoke-direct/range {v2 .. v32}, Lc5/c;-><init>(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JJLjava/lang/Float;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static b(Landroid/database/Cursor;)Lc5/h;
    .locals 18

    move-object/from16 v0, p0

    new-instance v15, Lc5/h;

    const-string v1, "COL_WEATHER_KEY"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COL_INSIGHT_TYPE"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v2

    const-string v4, "COL_INSIGHT_ORDER"

    invoke-static {v0, v4, v3}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "COL_SHOW_NOTIFICATION"

    invoke-static {v0, v5, v3}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v7, "COL_SHOW_WIDGET"

    invoke-static {v0, v7, v3}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    const-string v8, "COL_SHOW_DETAIL"

    invoke-static {v0, v8, v3}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    move v8, v3

    :goto_2
    const-string v9, "COL_SHOW_DEFAULT"

    invoke-static {v0, v9, v3}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_3

    move v9, v6

    goto :goto_3

    :cond_3
    move v9, v3

    :goto_3
    const-string v3, "COL_INSIGHT_TITLE"

    invoke-static {v0, v3}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "COL_INSIGHT_TEXT"

    invoke-static {v0, v3}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "COL_INSIGHT_SHORT_TEXT"

    invoke-static {v0, v3}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "COL_INSIGHT_DEFAULT_TEXT"

    invoke-static {v0, v3}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "COL_INSIGHT_URL"

    invoke-static {v0, v3}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v3, "COL_INSIGHT_TIME_DESCRIPTION"

    invoke-static {v0, v3}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v3, "COL_INSIGHT_SERIALIZED_JSON"

    invoke-static {v0, v3}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v15

    move v3, v4

    move v4, v5

    move v5, v7

    move v6, v8

    move v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Lc5/h;-><init>(Ljava/lang/String;IIZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v15
.end method
