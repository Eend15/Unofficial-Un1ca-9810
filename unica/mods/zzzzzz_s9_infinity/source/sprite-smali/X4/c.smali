.class public final LX4/c;
.super LW4/q;
.source "SourceFile"

# interfaces
.implements LW4/y;


# instance fields
.field private volatile _immediate:LX4/c;

.field public final f:Landroid/os/Handler;

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:LX4/c;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, p1, v1, v0}, LX4/c;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, LW4/q;-><init>()V

    .line 2
    iput-object p1, p0, LX4/c;->f:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, LX4/c;->g:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, LX4/c;->h:Z

    if-eqz p3, :cond_0

    move-object p3, p0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 5
    :goto_0
    iput-object p3, p0, LX4/c;->_immediate:LX4/c;

    .line 6
    iget-object p3, p0, LX4/c;->_immediate:LX4/c;

    if-nez p3, :cond_1

    .line 7
    new-instance p3, LX4/c;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, LX4/c;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p3, p0, LX4/c;->_immediate:LX4/c;

    .line 8
    :cond_1
    iput-object p3, p0, LX4/c;->i:LX4/c;

    return-void
.end method


# virtual methods
.method public final X(Lu3/i;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, LX4/c;->f:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, LX4/c;->Z(Lu3/i;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final Y()Z
    .locals 1

    iget-boolean v0, p0, LX4/c;->h:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, LX4/c;->f:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {v0, p0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final Z(Lu3/i;Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' was closed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sget-object p0, LW4/r;->e:LW4/r;

    invoke-interface {p1, p0}, Lu3/i;->W(Lu3/h;)Lu3/g;

    move-result-object p0

    check-cast p0, LW4/P;

    if-eqz p0, :cond_0

    check-cast p0, LW4/Y;

    invoke-virtual {p0, v0}, LW4/Y;->e(Ljava/lang/Object;)Z

    :cond_0
    sget-object p0, LW4/B;->b:Lkotlinx/coroutines/scheduling/c;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/c;->X(Lu3/i;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LX4/c;

    if-eqz v0, :cond_0

    check-cast p1, LX4/c;

    iget-object p1, p1, LX4/c;->f:Landroid/os/Handler;

    iget-object p0, p0, LX4/c;->f:Landroid/os/Handler;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, LX4/c;->f:Landroid/os/Handler;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final j(JLW4/e;)V
    .locals 4

    new-instance v0, LH/a;

    const/4 v1, 0x3

    invoke-direct {v0, p3, v1, p0}, LH/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    move-wide p1, v1

    :cond_0
    iget-object v1, p0, LX4/c;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, LH4/j;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2, v0}, LH4/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p3, p1}, LW4/e;->n(LE3/b;)V

    goto :goto_0

    :cond_1
    iget-object p1, p3, LW4/e;->h:Lu3/i;

    invoke-virtual {p0, p1, v0}, LX4/c;->Z(Lu3/i;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, LW4/B;->a:Lkotlinx/coroutines/scheduling/d;

    sget-object v0, Lkotlinx/coroutines/internal/k;->a:LX4/c;

    if-ne p0, v0, :cond_0

    const-string v0, "Dispatchers.Main"

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, v0, LX4/c;->i:LX4/c;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-ne p0, v0, :cond_1

    const-string v0, "Dispatchers.Main.immediate"

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, LX4/c;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, LX4/c;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-boolean p0, p0, LX4/c;->h:Z

    if-eqz p0, :cond_3

    const-string p0, ".immediate"

    invoke-static {v0, p0}, Li4/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :cond_3
    return-object v0
.end method
