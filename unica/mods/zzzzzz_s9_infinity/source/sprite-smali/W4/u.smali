.class public abstract LW4/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LU3/w;

.field public static final b:LU3/w;

.field public static final c:LU3/w;

.field public static final d:LU3/w;

.field public static final e:LU3/w;

.field public static final f:LU3/w;

.field public static final g:LU3/w;

.field public static final h:LW4/E;

.field public static final i:LW4/E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LU3/w;

    const-string v1, "REMOVED_TASK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, LW4/u;->a:LU3/w;

    new-instance v0, LU3/w;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1, v2}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, LW4/u;->b:LU3/w;

    new-instance v0, LU3/w;

    const-string v1, "COMPLETING_ALREADY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, LW4/u;->c:LU3/w;

    new-instance v0, LU3/w;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1, v2}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, LW4/u;->d:LU3/w;

    new-instance v0, LU3/w;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1, v2}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, LW4/u;->e:LU3/w;

    new-instance v0, LU3/w;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1, v2}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, LW4/u;->f:LU3/w;

    new-instance v0, LU3/w;

    const-string v1, "SEALED"

    invoke-direct {v0, v1, v2}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, LW4/u;->g:LU3/w;

    new-instance v0, LW4/E;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LW4/E;-><init>(Z)V

    sput-object v0, LW4/u;->h:LW4/E;

    new-instance v0, LW4/E;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LW4/E;-><init>(Z)V

    sput-object v0, LW4/u;->i:LW4/E;

    return-void
.end method

.method public static final a(Lu3/i;)Lkotlinx/coroutines/internal/c;
    .locals 3

    new-instance v0, Lkotlinx/coroutines/internal/c;

    sget-object v1, LW4/r;->e:LW4/r;

    invoke-interface {p0, v1}, Lu3/i;->W(Lu3/h;)Lu3/g;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, LW4/T;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LW4/T;-><init>(LW4/P;)V

    invoke-interface {p0, v1}, Lu3/i;->g(Lu3/i;)Lu3/i;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/c;-><init>(Lu3/i;)V

    return-object v0
.end method

.method public static b(LW4/P;)V
    .locals 3

    check-cast p0, LW4/Y;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LW4/Q;

    invoke-virtual {p0}, LW4/Y;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, LW4/Q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;LW4/Y;)V

    invoke-virtual {p0, v0}, LW4/Y;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final c(JLw3/g;)Ljava/lang/Object;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    sget-object v1, Lq3/m;->a:Lq3/m;

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, LW4/e;

    invoke-static {p2}, Lp4/g;->F(Lu3/d;)Lu3/d;

    move-result-object p2

    invoke-direct {v0, p2}, LW4/e;-><init>(Lu3/d;)V

    invoke-virtual {v0}, LW4/e;->l()V

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p2, p0, v2

    if-gez p2, :cond_3

    sget-object p2, Lu3/e;->d:Lu3/e;

    iget-object v2, v0, LW4/e;->h:Lu3/i;

    invoke-interface {v2, p2}, Lu3/i;->W(Lu3/h;)Lu3/g;

    move-result-object p2

    instance-of v2, p2, LW4/y;

    if-eqz v2, :cond_1

    check-cast p2, LW4/y;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    sget-object p2, LW4/w;->a:LW4/y;

    :cond_2
    invoke-interface {p2, p0, p1, v0}, LW4/y;->j(JLW4/e;)V

    :cond_3
    invoke-virtual {v0}, LW4/e;->k()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lv3/a;->d:Lv3/a;

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    return-object v1
.end method

.method public static final d(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lu3/i;Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    sget-object v0, LW4/r;->d:LW4/r;

    invoke-interface {p0, v0}, Lu3/i;->W(Lu3/h;)Lu3/g;

    move-result-object v0

    check-cast v0, LX4/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, LX4/b;->X(Lu3/i;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    invoke-static {p0, p1}, LW4/s;->a(Lu3/i;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while trying to handle coroutine exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, p1}, Lp4/g;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    invoke-static {p0, p1}, LW4/s;->a(Lu3/i;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic f(LW4/P;ZLW4/U;I)LW4/C;
    .locals 2

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    check-cast p0, LW4/Y;

    invoke-virtual {p0, p1, v1, p2}, LW4/Y;->u(ZZLE3/b;)LW4/C;

    move-result-object p0

    return-object p0
.end method

.method public static final g(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static h(LW4/t;LE3/c;)LW4/x;
    .locals 3

    sget-object v0, Lu3/j;->d:Lu3/j;

    invoke-static {p0, v0}, LW4/u;->i(LW4/t;Lu3/i;)Lu3/i;

    move-result-object p0

    new-instance v0, LW4/x;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, LW4/x;-><init>(Lu3/i;ZI)V

    invoke-virtual {v0, v1, v0, p1}, LW4/a;->C(ILW4/a;LE3/c;)V

    return-object v0
.end method

.method public static final i(LW4/t;Lu3/i;)Lu3/i;
    .locals 5

    invoke-interface {p0}, LW4/t;->c()Lu3/i;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, LW4/n;->f:LW4/n;

    invoke-interface {p0, v0, v1}, Lu3/i;->h(Ljava/lang/Object;LE3/c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v0, v1}, Lu3/i;->h(Ljava/lang/Object;LE3/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lu3/i;->g(Lu3/i;)Lu3/i;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, Lu3/j;->d:Lu3/j;

    new-instance v2, LW4/n;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LW4/n;-><init>(II)V

    invoke-interface {p0, v1, v2}, Lu3/i;->h(Ljava/lang/Object;LE3/c;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu3/i;

    if-eqz v0, :cond_1

    check-cast p1, Lu3/i;

    sget-object v0, LW4/n;->e:LW4/n;

    invoke-interface {p1, v1, v0}, Lu3/i;->h(Ljava/lang/Object;LE3/c;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    check-cast p1, Lu3/i;

    invoke-interface {p0, p1}, Lu3/i;->g(Lu3/i;)Lu3/i;

    move-result-object p0

    :goto_0
    sget-object p1, LW4/B;->a:Lkotlinx/coroutines/scheduling/d;

    if-eq p0, p1, :cond_2

    sget-object v0, Lu3/e;->d:Lu3/e;

    invoke-interface {p0, v0}, Lu3/i;->W(Lu3/h;)Lu3/g;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p0, p1}, Lu3/i;->g(Lu3/i;)Lu3/i;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static final j(LW4/e;Lu3/d;Z)V
    .locals 3

    invoke-virtual {p0}, LW4/e;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, LW4/e;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, LW4/e;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_2

    check-cast p1, Lkotlinx/coroutines/internal/d;

    iget-object p2, p1, Lkotlinx/coroutines/internal/d;->h:Lw3/c;

    invoke-interface {p2}, Lu3/d;->getContext()Lu3/i;

    move-result-object v0

    iget-object v1, p1, Lkotlinx/coroutines/internal/d;->j:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/a;->e(Lu3/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/internal/a;->e:LU3/w;

    if-eq v1, v2, :cond_1

    invoke-static {p2, v0}, LW4/u;->l(Lw3/c;Lu3/i;)V

    :cond_1
    :try_start_0
    iget-object p1, p1, Lkotlinx/coroutines/internal/d;->h:Lw3/c;

    invoke-interface {p1, p0}, Lu3/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/a;->a(Lu3/i;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/a;->a(Lu3/i;Ljava/lang/Object;)V

    throw p0

    :cond_2
    invoke-interface {p1, p0}, Lu3/d;->resumeWith(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static final k(Lu3/d;)Ljava/lang/String;
    .locals 3

    instance-of v0, p0, Lkotlinx/coroutines/internal/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_0
    const/16 v0, 0x40

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, LW4/u;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, LW4/u;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object p0, v1

    check-cast p0, Ljava/lang/String;

    :goto_2
    return-object p0
.end method

.method public static final l(Lw3/c;Lu3/i;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, LW4/g0;->d:LW4/g0;

    invoke-interface {p1, v0}, Lu3/i;->W(Lu3/h;)Lu3/g;

    move-result-object p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-interface {p0}, Lw3/d;->getCallerFrame()Lw3/d;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_2
    return-void
.end method
