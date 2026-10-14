.class public abstract Lk3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LZ4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lw0/f;->b:LZ4/b;

    if-eqz v0, :cond_0

    sput-object v0, Lk3/a;->a:LZ4/b;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the weather api must be init."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk3/a;->a:LZ4/b;

    invoke-virtual {v0}, LZ4/b;->a()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "COL_PROFILE_FEATURE_SUPPORT_AQI"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {}, Lk3/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lk3/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lk3/a;->d()I

    move-result v2

    invoke-static {p0}, Lm3/d;->c(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getActiveCp()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lj0/s;->f(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lw0/e;

    move-result-object p0

    invoke-virtual {p0}, Lw0/e;->b()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "supportAQI] staticValue: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WPI"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lk3/a;->a:LZ4/b;

    invoke-virtual {v0}, LZ4/b;->d()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "COL_PROFILE_LOCAL_COUNTRY_CODE"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, La/b;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v0

    :cond_1
    :goto_2
    invoke-static {}, La/b;->a()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Lq3/g;

    if-eqz v2, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk3/a;->a:LZ4/b;

    invoke-virtual {v0}, LZ4/b;->a()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "COL_PROFILE_FEATURE_SUPPORT_PM10"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {}, Lk3/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lk3/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lk3/a;->d()I

    move-result v2

    invoke-static {p0}, Lm3/d;->c(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getActiveCp()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lj0/s;->f(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lw0/e;

    move-result-object p0

    invoke-virtual {p0}, Lw0/e;->a()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "supportFineDust] staticValue: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WPI"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p0
.end method

.method public static d()I
    .locals 3

    :try_start_0
    sget-object v0, Lk3/a;->a:LZ4/b;

    invoke-virtual {v0}, LZ4/b;->d()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "COL_PROFILE_LOCAL_ONE_UI_VERSION"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {}, La/b;->c()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {v0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v0

    :goto_3
    invoke-static {}, La/b;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    instance-of v2, v0, Lq3/g;

    if-eqz v2, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk3/a;->a:LZ4/b;

    invoke-virtual {v0}, LZ4/b;->a()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "COL_PROFILE_FEATURE_SUPPORT_PM25"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj0/s;->c(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {}, Lk3/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lk3/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lk3/a;->d()I

    move-result v2

    invoke-static {p0}, Lm3/d;->c(Landroid/content/Context;)Lcom/samsung/android/weather/api/entity/settings/Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/weather/api/entity/settings/Setting;->getActiveCp()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lj0/s;->f(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lw0/e;

    move-result-object p0

    iget-object p0, p0, Lw0/e;->d:Ljava/lang/Object;

    check-cast p0, Lc3/d;

    invoke-interface {p0}, Lc3/c;->j()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "supportUltraFineDust] staticValue: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WPI"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p0
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lk3/a;->a:LZ4/b;

    invoke-virtual {v0}, LZ4/b;->d()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "COL_PROFILE_LOCAL_SALES_CODE"

    invoke-static {v0, v1}, Lj0/s;->u(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, La/b;->d()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v0

    :cond_1
    :goto_2
    invoke-static {}, La/b;->d()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Lq3/g;

    if-eqz v2, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
