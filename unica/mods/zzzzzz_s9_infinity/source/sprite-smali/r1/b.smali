.class public final Lr1/b;
.super Lw3/g;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public final synthetic d:Lr1/c;


# direct methods
.method public constructor <init>(Lr1/c;Lu3/d;)V
    .locals 0

    iput-object p1, p0, Lr1/b;->d:Lr1/c;

    invoke-direct {p0, p2}, Lw3/g;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lu3/d;)Lu3/d;
    .locals 0

    new-instance p1, Lr1/b;

    iget-object p0, p0, Lr1/b;->d:Lr1/c;

    invoke-direct {p1, p0, p2}, Lr1/b;-><init>(Lr1/c;Lu3/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LW4/t;

    check-cast p2, Lu3/d;

    invoke-virtual {p0, p1, p2}, Lr1/b;->create(Ljava/lang/Object;Lu3/d;)Lu3/d;

    move-result-object p0

    check-cast p0, Lr1/b;

    sget-object p1, Lq3/m;->a:Lq3/m;

    invoke-virtual {p0, p1}, Lr1/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lr1/b;->d:Lr1/c;

    sget-object v0, Lv3/a;->d:Lv3/a;

    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lr1/c;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lr1/c;->a(Lr1/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lr1/c;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.samsung.android.app.dressroom.provider"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "notification_delegate"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "showNotificationIfNeeded : "

    invoke-static {p1, p0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "WeatherApiRepository"

    invoke-static {v0, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method
