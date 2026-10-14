.class public final Lu0/h;
.super Lu0/e;
.source "SourceFile"


# instance fields
.field public final f:Landroid/net/ConnectivityManager;

.field public final g:Lu0/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln1/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lu0/e;-><init>(Landroid/content/Context;Ln1/a;)V

    iget-object p1, p0, Lu0/e;->b:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, p2}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lu0/h;->f:Landroid/net/ConnectivityManager;

    new-instance p1, Lu0/g;

    invoke-direct {p1, p0}, Lu0/g;-><init>(Lu0/h;)V

    iput-object p1, p0, Lu0/h;->g:Lu0/g;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lu0/h;->f:Landroid/net/ConnectivityManager;

    invoke-static {p0}, Lu0/i;->a(Landroid/net/ConnectivityManager;)Ls0/a;

    move-result-object p0

    return-object p0
.end method

.method public final d()V
    .locals 4

    const-string v0, "Received exception while registering network callback"

    :try_start_0
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    sget-object v2, Lu0/i;->a:Ljava/lang/String;

    const-string v3, "Registering network callback"

    invoke-virtual {v1, v2, v3}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lu0/h;->f:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lu0/h;->g:Lu0/g;

    invoke-static {v1, p0}, Lx0/k;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    sget-object v2, Lu0/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Ln0/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    sget-object v2, Lu0/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Ln0/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final e()V
    .locals 4

    const-string v0, "Received exception while unregistering network callback"

    :try_start_0
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    sget-object v2, Lu0/i;->a:Ljava/lang/String;

    const-string v3, "Unregistering network callback"

    invoke-virtual {v1, v2, v3}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lu0/h;->f:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lu0/h;->g:Lu0/g;

    invoke-static {v1, p0}, Lx0/i;->c(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    sget-object v2, Lu0/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Ln0/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object v1

    sget-object v2, Lu0/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Ln0/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
