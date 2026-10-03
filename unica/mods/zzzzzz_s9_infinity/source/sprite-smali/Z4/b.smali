.class public final LZ4/b;
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

    iput-object p1, p0, LZ4/b;->a:LU3/w;

    iput-object p2, p0, LZ4/b;->b:Landroid/content/ContentResolver;

    return-void

    :pswitch_0
    const-string p3, "contentUri"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ4/b;->a:LU3/w;

    iput-object p2, p0, LZ4/b;->b:Landroid/content/ContentResolver;

    return-void

    :pswitch_1
    const-string p3, "contentUri"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ4/b;->a:LU3/w;

    iput-object p2, p0, LZ4/b;->b:Landroid/content/ContentResolver;

    return-void

    :pswitch_2
    const-string p3, "contentUri"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ4/b;->a:LU3/w;

    iput-object p2, p0, LZ4/b;->b:Landroid/content/ContentResolver;

    return-void

    :pswitch_3
    const-string p3, "contentUri"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ4/b;->a:LU3/w;

    iput-object p2, p0, LZ4/b;->b:Landroid/content/ContentResolver;

    return-void

    :pswitch_4
    const-string p3, "contentUri"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ4/b;->a:LU3/w;

    iput-object p2, p0, LZ4/b;->b:Landroid/content/ContentResolver;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroid/database/Cursor;)Lc5/a;
    .locals 10

    new-instance v9, Lc5/a;

    const-string v0, "COL_WEATHER_KEY"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "COL_ALERT_DETAIL_KEY"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "COL_ALERT_DESCRIPTION"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "COL_ALERT_SEVERITY_CODE"

    const/4 v4, 0x0

    invoke-static {p0, v0, v4}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v0, "COL_ALERT_EXPIRE_TIME"

    invoke-static {p0, v0}, Lj0/s;->t(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v0, "COL_ALERT_ISSUE_TIME"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "COL_ALERT_ISSUE_TIMEZONE"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "COL_ALERT_LINK_URL"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lc5/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public static c(Landroid/database/Cursor;)Lc5/i;
    .locals 11

    new-instance v10, Lc5/i;

    const-string v0, "COL_WEATHER_KEY"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "COL_LIFESTYLE_TYPE"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v3

    const-string v0, "COL_LIFESTYLE_INTERVAL_TYPE"

    invoke-static {p0, v0, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v4

    const-string v0, "COL_LIFESTYLE_STATE_TYPE"

    invoke-static {p0, v0, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v5

    const-string v0, "COL_LIFESTYLE_TITLE_TEXT"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "COL_LIFESTYLE_DESCRIPTION_TEXT"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "COL_LIFESTYLE_STATE_TEXT"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "COL_LIFESTYLE_URL"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "COL_LIFESTYLE_STATES_BY_TIME"

    invoke-static {p0, v0}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v0, v10

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lc5/i;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method


# virtual methods
.method public a()Landroid/database/Cursor;
    .locals 8

    const-string v0, "profile_features"

    iget-object v1, p0, LZ4/b;->a:LU3/w;

    invoke-static {v1, v0}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, LZ4/b;->b:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

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

    const-string v1, ""

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public d()Landroid/database/Cursor;
    .locals 8

    const-string v0, "profile_local"

    iget-object v1, p0, LZ4/b;->a:LU3/w;

    invoke-static {v1, v0}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, LZ4/b;->b:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

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

    const-string v1, ""

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0
.end method
