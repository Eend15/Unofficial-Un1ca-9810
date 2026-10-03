.class public abstract LW4/U;
.super Lkotlinx/coroutines/internal/g;
.source "SourceFile"

# interfaces
.implements LW4/C;
.implements LW4/M;
.implements LE3/b;


# instance fields
.field public g:LW4/Y;


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final b()V
    .locals 4

    invoke-virtual {p0}, LW4/U;->m()LW4/Y;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, LW4/Y;->q()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LW4/U;

    if-eqz v2, :cond_2

    if-eq v1, p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, LW4/u;->i:LW4/E;

    sget-object v3, LW4/Y;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    instance-of v0, v1, LW4/M;

    if-eqz v0, :cond_3

    check-cast v1, LW4/M;

    invoke-interface {v1}, LW4/M;->d()LW4/Z;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/g;->l()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final d()LW4/Z;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final m()LW4/Y;
    .locals 0

    iget-object p0, p0, LW4/U;->g:LW4/Y;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "job"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract n(Ljava/lang/Throwable;)V
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, LW4/u;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[job@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LW4/U;->m()LW4/Y;

    move-result-object p0

    invoke-static {p0}, LW4/u;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
