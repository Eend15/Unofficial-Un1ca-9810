.class public abstract LW4/A;
.super Lkotlinx/coroutines/scheduling/h;
.source "SourceFile"


# instance fields
.field public f:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const-wide/16 v0, 0x0

    sget-object v2, Lkotlinx/coroutines/scheduling/j;->f:Le3/a;

    invoke-direct {p0, v0, v1, v2}, Lkotlinx/coroutines/scheduling/h;-><init>(JLe3/a;)V

    iput p1, p0, LW4/A;->f:I

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract b()Lu3/d;
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    instance-of p0, p1, LW4/k;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, LW4/k;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p1, LW4/k;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p1, p2}, Lp4/g;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-nez p1, :cond_2

    move-object p1, p2

    :cond_2
    new-instance p2, LD3/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-direct {p2, v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, LW4/A;->b()Lu3/d;

    move-result-object p0

    invoke-interface {p0}, Lu3/d;->getContext()Lu3/i;

    move-result-object p0

    invoke-static {p0, p2}, LW4/u;->e(Lu3/i;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract f()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 10

    sget-object v0, Lq3/m;->a:Lq3/m;

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/h;->e:Le3/a;

    :try_start_0
    invoke-virtual {p0}, LW4/A;->b()Lu3/d;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/internal/d;

    iget-object v3, v2, Lkotlinx/coroutines/internal/d;->h:Lw3/c;

    iget-object v2, v2, Lkotlinx/coroutines/internal/d;->j:Ljava/lang/Object;

    invoke-interface {v3}, Lu3/d;->getContext()Lu3/i;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlinx/coroutines/internal/a;->e(Lu3/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lkotlinx/coroutines/internal/a;->e:LU3/w;

    if-eq v2, v5, :cond_0

    invoke-static {v3, v4}, LW4/u;->l(Lw3/c;Lu3/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    :try_start_1
    invoke-interface {v3}, Lu3/d;->getContext()Lu3/i;

    move-result-object v5

    invoke-virtual {p0}, LW4/A;->f()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, LW4/A;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_1

    iget v9, p0, LW4/A;->f:I

    invoke-static {v9}, LW4/u;->g(I)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, LW4/r;->e:LW4/r;

    invoke-interface {v5, v9}, Lu3/i;->W(Lu3/h;)Lu3/g;

    move-result-object v5

    check-cast v5, LW4/P;

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_3

    :cond_1
    move-object v5, v8

    :goto_0
    if-eqz v5, :cond_2

    invoke-interface {v5}, LW4/P;->a()Z

    move-result v9

    if-nez v9, :cond_2

    check-cast v5, LW4/Y;

    invoke-virtual {v5}, LW4/Y;->m()Ljava/util/concurrent/CancellationException;

    move-result-object v5

    invoke-virtual {p0, v6, v5}, LW4/A;->a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    invoke-static {v5}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v5

    invoke-interface {v3, v5}, Lu3/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    invoke-static {v7}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v5

    invoke-interface {v3, v5}, Lu3/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v6}, LW4/A;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Lu3/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-static {v4, v2}, Lkotlinx/coroutines/internal/a;->a(Lu3/i;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, LW4/A;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_2
    move-exception v2

    goto :goto_4

    :goto_3
    :try_start_4
    invoke-static {v4, v2}, Lkotlinx/coroutines/internal/a;->a(Lu3/i;Ljava/lang/Object;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    invoke-static {v0}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, LW4/A;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method
