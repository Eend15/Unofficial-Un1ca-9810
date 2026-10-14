.class public final LI2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI2/f;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LO2/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;LO2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI2/e;->a:Landroid/content/Context;

    iput-object p3, p0, LI2/e;->b:LO2/a;

    return-void
.end method

.method public static final b(LI2/e;Landroid/content/Context;Ljava/lang/String;LI2/c;)V
    .locals 9

    const-string v0, "IssueTrackerNotifier"

    iget-object p0, p0, LI2/e;->b:LO2/a;

    const-string v1, "notified to "

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "callerPackage"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "serviceType"

    const-string v5, "WALLPAPER"

    invoke-virtual {v4, p1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "requestType"

    const-string v5, "ONDEVICE"

    invoke-virtual {v4, p1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "state"

    iget v5, p3, LI2/c;->a:I

    invoke-virtual {v4, p1, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "startTime"

    iget-wide v5, p3, LI2/c;->b:J

    invoke-virtual {v4, p1, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-wide v5, p3, LI2/c;->c:J

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-lez p1, :cond_0

    const-string p1, "endTime"

    invoke-virtual {v4, p1, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string p1, "aiCheckLog"

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V

    :cond_1
    invoke-virtual {p0}, LO2/a;->d()LU0/e;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, p3}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, LO2/a;->d()LU0/e;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2}, LU0/e;->y(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, LI2/c;

    sget-object v0, LW4/B;->b:Lkotlinx/coroutines/scheduling/c;

    invoke-static {v0}, LW4/u;->a(Lu3/i;)Lkotlinx/coroutines/internal/c;

    move-result-object v0

    new-instance v1, LI2/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, LI2/d;-><init>(LI2/e;LI2/c;Lu3/d;)V

    invoke-static {v0, v1}, LW4/u;->h(LW4/t;LE3/c;)LW4/x;

    return-void
.end method

.method public final c()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, LI2/e;->a:Landroid/content/Context;

    return-object p0
.end method
