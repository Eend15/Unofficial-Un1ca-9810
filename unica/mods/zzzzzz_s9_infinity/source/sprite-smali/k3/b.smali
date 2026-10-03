.class public abstract Lk3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LM1/d;

.field public static final b:LZ4/c;

.field public static final c:LA1/e;

.field public static final d:LA1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lw0/f;->d:LM1/d;

    const-string v1, "the weather api must be init."

    if-eqz v0, :cond_3

    sput-object v0, Lk3/b;->a:LM1/d;

    sget-object v0, Lw0/f;->e:LZ4/c;

    if-eqz v0, :cond_2

    sput-object v0, Lk3/b;->b:LZ4/c;

    sget-object v0, Lw0/f;->f:LA1/e;

    if-eqz v0, :cond_1

    sput-object v0, Lk3/b;->c:LA1/e;

    sget-object v0, Lw0/f;->g:LA1/e;

    if-eqz v0, :cond_0

    sput-object v0, Lk3/b;->d:LA1/e;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 10

    sget-object v0, Lk3/b;->a:LM1/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, LM1/d;->g:Ljava/lang/Object;

    check-cast v0, Lw0/q;

    iget-object v2, v0, Lw0/q;->a:Ljava/lang/Object;

    check-cast v2, LU3/w;

    const-string v3, "weatherinfo"

    invoke-static {v2, v3}, Lj0/s;->d(LU3/w;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v2, v0, Lw0/q;->b:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const-string v9, "COL_WEATHER_ORDER ASC"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "COL_WEATHER_KEY"

    invoke-static {v2, v3}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lw0/q;->c(Ljava/lang/String;)Lb5/b;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    sget-object v0, Lq3/m;->a:Lq3/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-static {v0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "Cursor2Forecast"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_2
    :goto_4
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_5
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v1

    invoke-static {v2, v0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :goto_6
    return-object v1
.end method
