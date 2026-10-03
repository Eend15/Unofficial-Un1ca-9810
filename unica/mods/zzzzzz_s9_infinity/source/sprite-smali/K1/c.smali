.class public final LK1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public d:Z

.field public final e:Z

.field public final synthetic f:J

.field public final synthetic g:LA1/i;


# direct methods
.method public constructor <init>(LA1/i;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK1/c;->g:LA1/i;

    iput-wide p3, p0, LK1/c;->f:J

    const/4 p1, 0x0

    iput-boolean p1, p0, LK1/c;->d:Z

    invoke-static {p2}, LK/I;->Z(I)Z

    move-result p1

    iput-boolean p1, p0, LK1/c;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, LK1/c;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-object v2, p0, LK1/c;->g:LA1/i;

    iget-object v2, v2, LA1/i;->b:Ljava/lang/Object;

    check-cast v2, LK1/d;

    iget-object v2, v2, LK1/d;->b:Landroid/content/Context;

    invoke-static {v2}, LM1/i;->c(Landroid/content/Context;)Z

    move-result v2

    iget-boolean v3, p0, LK1/c;->e:Z

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, LK1/d;->h:Z

    if-eqz v0, :cond_1

    const-string v0, "DisplayStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFoldStateChanged : LID state not updated yet. will dispatch later. which="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LK1/c;->g:LA1/i;

    iget-object v2, v2, LA1/i;->b:Ljava/lang/Object;

    check-cast v2, LK1/d;

    invoke-virtual {v2}, LK1/d;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", folded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, LK1/c;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LK1/c;->d:Z

    iget-object v0, p0, LK1/c;->g:LA1/i;

    iget-object v0, v0, LA1/i;->b:Ljava/lang/Object;

    check-cast v0, LK1/d;

    iget-object v0, v0, LK1/d;->a:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    :cond_2
    :goto_0
    iget-boolean v2, p0, LK1/c;->d:Z

    if-eqz v2, :cond_3

    const-string v2, "DisplayStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onFoldStateChanged : waiting finished. which="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, LK1/c;->g:LA1/i;

    iget-object v4, v4, LA1/i;->b:Ljava/lang/Object;

    check-cast v4, LK1/d;

    invoke-virtual {v4}, LK1/d;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", folded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, LK1/c;->e:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", elapsed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, LK1/c;->g:LA1/i;

    iget-object v0, v0, LA1/i;->b:Ljava/lang/Object;

    check-cast v0, LK1/d;

    iget-boolean p0, p0, LK1/c;->e:Z

    iput-boolean p0, v0, LK1/d;->e:Z

    const-string v1, "onFoldingStateChanged: which="

    monitor-enter v0

    :try_start_0
    sget-boolean v2, LK1/d;->h:Z

    if-eqz v2, :cond_4

    const-string v2, "DisplayStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LK1/d;->a()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", folded="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getCurrentMode="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, LK1/d;->a()I

    move-result v1

    and-int/lit8 v1, v1, 0x3c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isInteractive="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, LK1/d;->b:Landroid/content/Context;

    invoke-static {v1}, LM1/h;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_1
    if-nez p0, :cond_5

    invoke-virtual {v0}, LK1/d;->a()I

    move-result v1

    and-int/lit8 v1, v1, 0x3c

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    iget-object v1, v0, LK1/d;->b:Landroid/content/Context;

    invoke-static {v1}, LM1/h;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p0, LH1/a;->f:LH1/a;

    invoke-virtual {v0, p0}, LK1/d;->d(LH1/a;)V

    goto :goto_2

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {v0}, LK1/d;->a()I

    move-result p0

    and-int/lit8 p0, p0, 0x3c

    const/16 v1, 0x10

    if-ne p0, v1, :cond_6

    iget-object p0, v0, LK1/d;->b:Landroid/content/Context;

    invoke-static {p0}, LM1/h;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, LH1/a;->f:LH1/a;

    invoke-virtual {v0, p0}, LK1/d;->d(LH1/a;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, LK1/d;->c()Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, LH1/a;->e:LH1/a;

    invoke-virtual {v0, p0}, LK1/d;->d(LH1/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_2
    monitor-exit v0

    :goto_3
    return-void

    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
