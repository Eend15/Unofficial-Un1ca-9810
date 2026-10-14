.class public abstract LW4/a;
.super LW4/Y;
.source "SourceFile"

# interfaces
.implements Lu3/d;
.implements LW4/t;


# instance fields
.field public final e:Lu3/i;


# direct methods
.method public constructor <init>(Lu3/i;Z)V
    .locals 0

    invoke-direct {p0, p2}, LW4/Y;-><init>(Z)V

    sget-object p2, LW4/r;->e:LW4/r;

    invoke-interface {p1, p2}, Lu3/i;->W(Lu3/h;)Lu3/g;

    move-result-object p2

    check-cast p2, LW4/P;

    invoke-virtual {p0, p2}, LW4/Y;->t(LW4/P;)V

    invoke-interface {p1, p0}, Lu3/i;->g(Lu3/i;)Lu3/i;

    move-result-object p1

    iput-object p1, p0, LW4/a;->e:Lu3/i;

    return-void
.end method


# virtual methods
.method public final C(ILW4/a;LE3/c;)V
    .locals 3

    invoke-static {p1}, Lq/e;->c(I)I

    move-result p1

    sget-object v0, Lq3/m;->a:Lq3/m;

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    if-eq p1, v2, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    :try_start_0
    iget-object p1, p0, LW4/a;->e:Lu3/i;

    invoke-static {p1, v1}, Lkotlinx/coroutines/internal/a;->e(Lu3/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    instance-of v1, p3, LF3/g;

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, LF3/g;

    invoke-interface {v1}, LF3/g;->getArity()I

    move-result v1

    goto :goto_0

    :cond_0
    instance-of v1, p3, LE3/a;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    instance-of v1, p3, LE3/b;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-ne v1, v2, :cond_3

    invoke-interface {p3, p2, p0}, LE3/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p1, v0}, Lkotlinx/coroutines/internal/a;->a(Lu3/i;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p1, Lv3/a;->d:Lv3/a;

    if-eq p2, p1, :cond_7

    invoke-virtual {p0, p2}, LW4/a;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_1

    :cond_3
    :try_start_3
    const-string p2, "kotlin.jvm.functions.Function2"

    invoke-static {p3, p2}, LF3/v;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    invoke-static {p1, v0}, Lkotlinx/coroutines/internal/a;->a(Lu3/i;Ljava/lang/Object;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    invoke-static {p1}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p1

    invoke-virtual {p0, p1}, LW4/a;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_5
    check-cast p3, Lw3/a;

    invoke-virtual {p3, p2, p0}, Lw3/a;->create(Ljava/lang/Object;Lu3/d;)Lu3/d;

    move-result-object p0

    invoke-static {p0}, Lp4/g;->F(Lu3/d;)Lu3/d;

    move-result-object p0

    invoke-interface {p0, v0}, Lu3/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    :try_start_5
    check-cast p3, Lw3/a;

    invoke-virtual {p3, p2, p0}, Lw3/a;->create(Ljava/lang/Object;Lu3/d;)Lu3/d;

    move-result-object p1

    invoke-static {p1}, Lp4/g;->F(Lu3/d;)Lu3/d;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/internal/a;->b(Lu3/d;Ljava/lang/Object;LE3/b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_7
    :goto_3
    return-void

    :catchall_2
    move-exception p1

    invoke-static {p1}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p2

    invoke-virtual {p0, p2}, LW4/a;->resumeWith(Ljava/lang/Object;)V

    throw p1
.end method

.method public final c()Lu3/i;
    .locals 0

    iget-object p0, p0, LW4/a;->e:Lu3/i;

    return-object p0
.end method

.method public final getContext()Lu3/i;
    .locals 0

    iget-object p0, p0, LW4/a;->e:Lu3/i;

    return-object p0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, " was cancelled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 3

    invoke-static {p1}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, LW4/k;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, LW4/k;-><init>(Ljava/lang/Throwable;Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, LW4/Y;->q()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LW4/Y;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LW4/u;->c:LU3/w;

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Job "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    instance-of v1, p1, LW4/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, LW4/k;

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_3

    iget-object v2, p1, LW4/k;->a:Ljava/lang/Throwable;

    :cond_3
    invoke-direct {v0, p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    sget-object v1, LW4/u;->e:LU3/w;

    if-eq v0, v1, :cond_1

    sget-object p0, LW4/u;->d:LU3/w;

    return-void
.end method

.method public final s(LW4/m;)V
    .locals 0

    iget-object p0, p0, LW4/a;->e:Lu3/i;

    invoke-static {p0, p1}, LW4/u;->e(Lu3/i;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final x(Ljava/lang/Object;)V
    .locals 0

    instance-of p0, p1, LW4/k;

    if-eqz p0, :cond_0

    check-cast p1, LW4/k;

    iget-object p0, p1, LW4/k;->a:Ljava/lang/Throwable;

    :cond_0
    return-void
.end method
