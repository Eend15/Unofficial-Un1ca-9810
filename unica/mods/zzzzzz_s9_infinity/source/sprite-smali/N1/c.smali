.class public final synthetic LN1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;


# instance fields
.field public final synthetic a:LN1/j;


# direct methods
.method public synthetic constructor <init>(LN1/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN1/c;->a:LN1/j;

    return-void
.end method


# virtual methods
.method public final onPlaybackComplete(Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 8

    iget-object p0, p0, LN1/c;->a:LN1/j;

    iget-object p1, p0, LN1/j;->u:LN1/k;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getMyDisplayId()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget-object v2, Lf2/k;->c:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "isInteractive: "

    invoke-static {v0, p1}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "PowerUtil"

    invoke-static {v2, p1, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_1
    sget-object p1, Lf2/k;->a:Ljava/lang/reflect/Method;

    goto :goto_0

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, LN1/j;->i:J

    sub-long/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Playback complete : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "VideoHueEffectEngine"

    invoke-static {v5, v0, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/32 v6, 0xea60

    cmp-long v0, v2, v6

    if-gez v0, :cond_3

    if-eqz p1, :cond_3

    iget p1, p0, LN1/j;->h:I

    const-string v0, "seekToMediaPlayer: "

    invoke-static {p1, v0}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lp1/b;->d:Lcom/samsung/android/wallpaper/live/common/video/VideoController;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->b:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->seekToPlayer(I)V

    :cond_2
    invoke-virtual {p0}, LN1/j;->j()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, LN1/j;->i()V

    :goto_2
    return-void
.end method
