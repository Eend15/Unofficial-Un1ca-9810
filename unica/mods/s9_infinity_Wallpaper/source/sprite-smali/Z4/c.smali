.class public final LZ4/c;
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

    iput-object p1, p0, LZ4/c;->a:LU3/w;

    iput-object p2, p0, LZ4/c;->b:Landroid/content/ContentResolver;

    return-void

    :pswitch_0
    const-string p3, "contentUri"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ4/c;->a:LU3/w;

    iput-object p2, p0, LZ4/c;->b:Landroid/content/ContentResolver;

    return-void

    :pswitch_1
    const-string p3, "contentUri"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ4/c;->a:LU3/w;

    iput-object p2, p0, LZ4/c;->b:Landroid/content/ContentResolver;

    return-void

    :pswitch_2
    const-string p3, "contentUri"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ4/c;->a:LU3/w;

    iput-object p2, p0, LZ4/c;->b:Landroid/content/ContentResolver;

    return-void

    :pswitch_3
    const-string p3, "contentUri"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ4/c;->a:LU3/w;

    iput-object p2, p0, LZ4/c;->b:Landroid/content/ContentResolver;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Landroid/database/Cursor;)Lc5/b;
    .locals 14

    new-instance v13, Lc5/b;

    const-string v0, "COL_WEATHER_KEY"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "COL_CONTENT_ID"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "COL_CONTENT_TYPE"

    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v4

    const-string v0, "COL_CONTENT_TITLE"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "COL_CONTENT_DESC"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "COL_CONTENT_NARRATIVE"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "COL_CONTENT_THUMBNAIL"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "COL_CONTENT_LINK_URL"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "COL_CONTENT_MORE_URL"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "COL_CONTENT_EXPIRE_TIME"

    invoke-static {p0, v0}, Lj0/s;->t(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v11

    const-string v0, "COL_CONTENT_ORDER"

    invoke-static {p0, v0, v3}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result p0

    move-object v0, v13

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-wide v10, v11

    move v12, p0

    invoke-direct/range {v0 .. v12}, Lc5/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    return-object v13
.end method

.method public static d(Landroid/database/Cursor;)Lc5/f;
    .locals 27

    move-object/from16 v0, p0

    new-instance v24, Lc5/f;

    move-object/from16 v1, v24

    const-string v2, "COL_WEATHER_KEY"

    invoke-static {v0, v2}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "COL_HOURLY_TIME"

    invoke-static {v0, v3}, Lj0/s;->t(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "COL_HOURLY_IS_DAY_OR_NIGHT"

    const/4 v15, 0x0

    invoke-static {v0, v5, v15}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "COL_HOURLY_CURRENT_TEMP"

    invoke-static {v0, v6}, Lj0/s;->i(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "COL_HOURLY_HIGH_TEMP"

    invoke-static {v0, v7}, Lj0/s;->i(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string v8, "COL_HOURLY_LOW_TEMP"

    invoke-static {v0, v8}, Lj0/s;->i(Landroid/database/Cursor;Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const-string v9, "COL_HOURLY_ICON_NUM"

    invoke-static {v0, v9, v15}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "COL_HOURLY_CONVERTED_ICON_NUM"

    invoke-static {v0, v10, v15}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "COL_HOURLY_EXPANSION_ICON_NUM"

    const/4 v12, -0x1

    invoke-static {v0, v11, v12}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "COL_HOURLY_RAIN_PROBABILITY"

    invoke-static {v0, v12, v15}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "COL_HOURLY_WIND_DIRECTION"

    invoke-static {v0, v13}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "COL_HOURLY_WIND_SPEED"

    invoke-static {v0, v14, v15}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v25, v1

    const-string v1, "COL_HOURLY_HUMIDITY"

    invoke-static {v0, v1, v15}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v26, v2

    move v2, v15

    move-object v15, v1

    const-string v1, "COL_HOURLY_WEATHER_TEXT"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "COL_HOURLY_URL"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v1, "COL_HOURLY_PM25F"

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v1, "COL_HOURLY_PM25FLEVEL"

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v1, "COL_HOURLY_AQI"

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v1, "COL_HOURLY_RAIN_PRECIPITATION"

    invoke-static {v0, v1}, Lj0/s;->a(Landroid/database/Cursor;Ljava/lang/String;)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    const-string v1, "COL_HOURLY_PRECIPITATION_TYPE"

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const-string v1, "COL_HOURLY_EXPIRE_TIME"

    invoke-static {v0, v1}, Lj0/s;->t(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct/range {v1 .. v23}, Lc5/f;-><init>(Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-object v24
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 8

    iget-object v0, p0, LZ4/c;->a:LU3/w;

    invoke-virtual {v0}, LU3/w;->b()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "appendPath(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, LZ4/c;->b:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v3, :cond_0

    invoke-static {v1, v2}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v3

    :cond_0
    :try_start_1
    sget-object v4, Lq3/m;->a:Lq3/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_2
    invoke-static {v4}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v4

    :goto_0
    invoke-static {v4}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "WPI"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {v1, v2}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    invoke-static {v1, p0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_3
    :try_start_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_3

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_3
    move-exception p0

    goto :goto_5

    :cond_3
    instance-of v4, p1, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    :cond_4
    instance-of v4, p1, Ljava/lang/Float;

    if-eqz v4, :cond_5

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_4

    :cond_5
    instance-of v4, p1, Ljava/lang/Long;

    if-eqz v4, :cond_6

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_4
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_6

    :cond_6
    return v3

    :goto_5
    invoke-static {p0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p0

    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    instance-of p2, p0, Lq3/g;

    if-eqz p2, :cond_7

    move-object p0, p1

    :cond_7
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public b()Landroid/database/Cursor;
    .locals 8

    iget-object v0, p0, LZ4/c;->a:LU3/w;

    invoke-virtual {v0}, LU3/w;->b()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "appendPath(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, LZ4/c;->b:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WPI"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0
.end method
