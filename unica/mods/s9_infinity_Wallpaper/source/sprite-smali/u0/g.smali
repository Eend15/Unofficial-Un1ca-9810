.class public final Lu0/g;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lu0/h;


# direct methods
.method public constructor <init>(Lu0/h;)V
    .locals 0

    iput-object p1, p0, Lu0/g;->a:Lu0/h;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    const-string v0, "network"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "capabilities"

    invoke-static {p2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object p1

    sget-object v0, Lu0/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Network capabilities changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lu0/g;->a:Lu0/h;

    iget-object p1, p0, Lu0/h;->f:Landroid/net/ConnectivityManager;

    invoke-static {p1}, Lu0/i;->a(Landroid/net/ConnectivityManager;)Ls0/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu0/e;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    const-string v0, "network"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ln0/o;->d()Ln0/o;

    move-result-object p1

    sget-object v0, Lu0/i;->a:Ljava/lang/String;

    const-string v1, "Network connection lost"

    invoke-virtual {p1, v0, v1}, Ln0/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lu0/g;->a:Lu0/h;

    iget-object p1, p0, Lu0/h;->f:Landroid/net/ConnectivityManager;

    invoke-static {p1}, Lu0/i;->a(Landroid/net/ConnectivityManager;)Ls0/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu0/e;->c(Ljava/lang/Object;)V

    return-void
.end method
