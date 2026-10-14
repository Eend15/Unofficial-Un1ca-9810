.class public final LA1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk1/c;


# instance fields
.field public final synthetic a:[Z

.field public final synthetic b:J

.field public final synthetic c:[Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:LA1/o;


# direct methods
.method public constructor <init>(LA1/o;[ZJ[ZLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA1/m;->e:LA1/o;

    iput-object p2, p0, LA1/m;->a:[Z

    iput-wide p3, p0, LA1/m;->b:J

    iput-object p5, p0, LA1/m;->c:[Z

    iput-object p6, p0, LA1/m;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FoldInteractive"

    const-string v3, "resetFrame : onSeekReady"

    invoke-static {v2, v3, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, LA1/m;->e:LA1/o;

    invoke-virtual {p0, v0}, LA1/o;->g(I)Z

    return-void
.end method

.method public final b()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FoldInteractive"

    const-string v3, "resetFrame : onSeekComplete"

    invoke-static {v2, v3, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, LA1/m;->a:[Z

    aget-boolean v2, v1, v0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    invoke-virtual {p0}, LA1/m;->c()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 6

    const-string v0, "FoldInteractive"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetFrame : before release. elapsed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, LA1/m;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LA1/m;->c:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, LA1/m;->e:LA1/o;

    iget-object v1, v0, LA1/o;->h:Lk1/b;

    iget-object v0, v0, LA1/o;->z:LA1/k;

    invoke-virtual {v1, v0}, Lk1/b;->h(Lk1/c;)V

    :cond_0
    iget-object v0, p0, LA1/m;->e:LA1/o;

    iget-object v0, v0, LA1/o;->j:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, LA1/m;->e:LA1/o;

    iget-object v0, v0, LA1/o;->h:Lk1/b;

    invoke-virtual {v0, p0}, Lk1/b;->p(Lk1/c;)V

    iget-object v0, p0, LA1/m;->e:LA1/o;

    iget-object v0, v0, LA1/o;->h:Lk1/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lk1/b;->j(Z)V

    iget-object v0, p0, LA1/m;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, LA1/m;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onError()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FoldInteractive"

    const-string v2, "resetFrame : onError"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, LA1/m;->c()V

    return-void
.end method
