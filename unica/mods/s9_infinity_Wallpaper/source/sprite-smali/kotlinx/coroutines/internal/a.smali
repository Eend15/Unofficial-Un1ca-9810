.class public abstract Lkotlinx/coroutines/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LU3/w;

.field public static final b:LU3/w;

.field public static final c:LU3/w;

.field public static final d:LU3/w;

.field public static final e:LU3/w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LU3/w;

    const-string v1, "NO_DECISION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/internal/a;->a:LU3/w;

    new-instance v0, LU3/w;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/internal/a;->b:LU3/w;

    new-instance v0, LU3/w;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1, v2}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/internal/a;->c:LU3/w;

    new-instance v0, LU3/w;

    const-string v1, "CONDITION_FALSE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/internal/a;->d:LU3/w;

    new-instance v0, LU3/w;

    const-string v1, "NO_THREAD_ELEMENTS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/internal/a;->e:LU3/w;

    return-void
.end method

.method public static final a(Lu3/i;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lkotlinx/coroutines/internal/a;->e:LU3/w;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/internal/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lkotlinx/coroutines/internal/s;

    iget-object p0, p1, Lkotlinx/coroutines/internal/s;->b:[LW4/d0;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    return-void

    :cond_1
    aget-object p0, p0, v0

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object p0, p1, Lkotlinx/coroutines/internal/s;->a:[Ljava/lang/Object;

    aget-object p0, p0, v0

    throw v1

    :cond_2
    sget-object p1, Lkotlinx/coroutines/internal/q;->f:Lkotlinx/coroutines/internal/q;

    invoke-interface {p0, v1, p1}, Lu3/i;->h(Ljava/lang/Object;LE3/c;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, LB/a;->v(Ljava/lang/Object;)V

    throw v1

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Lu3/d;Ljava/lang/Object;LE3/b;)V
    .locals 8

    instance-of v0, p0, Lkotlinx/coroutines/internal/d;

    if-eqz v0, :cond_7

    check-cast p0, Lkotlinx/coroutines/internal/d;

    invoke-static {p1}, Lq3/h;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, LW4/l;

    invoke-direct {v0, p2, p1}, LW4/l;-><init>(LE3/b;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    new-instance p2, LW4/k;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, LW4/k;-><init>(Ljava/lang/Throwable;Z)V

    move-object v0, p2

    :goto_0
    iget-object p2, p0, Lkotlinx/coroutines/internal/d;->h:Lw3/c;

    invoke-interface {p2}, Lu3/d;->getContext()Lu3/i;

    iget-object v1, p0, Lkotlinx/coroutines/internal/d;->g:LW4/q;

    invoke-virtual {v1}, LW4/q;->Y()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iput-object v0, p0, Lkotlinx/coroutines/internal/d;->i:Ljava/lang/Object;

    iput v3, p0, LW4/A;->f:I

    invoke-interface {p2}, Lu3/d;->getContext()Lu3/i;

    move-result-object p1

    invoke-virtual {v1, p1, p0}, LW4/q;->X(Lu3/i;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_2
    invoke-static {}, LW4/e0;->a()LW4/J;

    move-result-object v1

    iget-wide v4, v1, LW4/J;->f:J

    const-wide v6, 0x100000000L

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    iput-object v0, p0, Lkotlinx/coroutines/internal/d;->i:Ljava/lang/Object;

    iput v3, p0, LW4/A;->f:I

    invoke-virtual {v1, p0}, LW4/J;->a0(LW4/A;)V

    goto :goto_4

    :cond_3
    invoke-virtual {v1, v3}, LW4/J;->c0(Z)V

    :try_start_0
    invoke-interface {p2}, Lu3/d;->getContext()Lu3/i;

    move-result-object v2

    sget-object v3, LW4/r;->e:LW4/r;

    invoke-interface {v2, v3}, Lu3/i;->W(Lu3/h;)Lu3/g;

    move-result-object v2

    check-cast v2, LW4/P;

    if-eqz v2, :cond_4

    invoke-interface {v2}, LW4/P;->a()Z

    move-result v3

    if-nez v3, :cond_4

    check-cast v2, LW4/Y;

    invoke-virtual {v2}, LW4/Y;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/internal/d;->a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    invoke-static {p1}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lkotlinx/coroutines/internal/d;->j:Ljava/lang/Object;

    invoke-interface {p2}, Lu3/d;->getContext()Lu3/i;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlinx/coroutines/internal/a;->e(Lu3/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lkotlinx/coroutines/internal/a;->e:LU3/w;

    if-eq v0, v3, :cond_5

    invoke-static {p2, v2}, LW4/u;->l(Lw3/c;Lu3/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :try_start_1
    invoke-interface {p2, p1}, Lu3/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, v0}, Lkotlinx/coroutines/internal/a;->a(Lu3/i;Ljava/lang/Object;)V

    :cond_6
    :goto_1
    invoke-virtual {v1}, LW4/J;->d0()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_6

    :goto_2
    invoke-virtual {v1}, LW4/J;->Z()V

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v2, v0}, Lkotlinx/coroutines/internal/a;->a(Lu3/i;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    const/4 p2, 0x0

    :try_start_4
    invoke-virtual {p0, p1, p2}, LW4/A;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    invoke-virtual {v1}, LW4/J;->Z()V

    throw p0

    :cond_7
    invoke-interface {p0, p1}, Lu3/d;->resumeWith(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public static final c(Ljava/lang/String;JJJ)J
    .locals 4

    sget v0, Lkotlinx/coroutines/internal/p;->a:I

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, LV4/t;->e0(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0x27

    const-string v1, "System property \'"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, p3, v2

    if-gtz p1, :cond_1

    cmp-long p1, v2, p5

    if-gtz p1, :cond_1

    move-wide p1, v2

    :goto_1
    return-wide p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' should be in range "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", but is \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' has unrecognized value \'"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static d(Ljava/lang/String;IIII)I
    .locals 7

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    const p3, 0x7fffffff

    :cond_1
    int-to-long v1, p1

    int-to-long v3, p2

    int-to-long v5, p3

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lkotlinx/coroutines/internal/a;->c(Ljava/lang/String;JJJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static final e(Lu3/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    sget-object p1, Lkotlinx/coroutines/internal/q;->e:Lkotlinx/coroutines/internal/q;

    invoke-interface {p0, v0, p1}, Lu3/i;->h(Ljava/lang/Object;LE3/c;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    :cond_0
    if-ne p1, v0, :cond_1

    sget-object p0, Lkotlinx/coroutines/internal/a;->e:LU3/w;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Lkotlinx/coroutines/internal/s;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/s;-><init>(Lu3/i;I)V

    sget-object p1, Lkotlinx/coroutines/internal/q;->g:Lkotlinx/coroutines/internal/q;

    invoke-interface {p0, v0, p1}, Lu3/i;->h(Ljava/lang/Object;LE3/c;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    invoke-static {p1}, LB/a;->v(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
