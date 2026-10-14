.class public final Lkotlinx/coroutines/flow/g;
.super LY4/c;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:LW4/e;


# virtual methods
.method public final a(LY4/a;)Z
    .locals 4

    check-cast p1, Lkotlinx/coroutines/flow/e;

    iget-wide v0, p0, Lkotlinx/coroutines/flow/g;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lkotlinx/coroutines/flow/e;->k:J

    iget-wide v2, p1, Lkotlinx/coroutines/flow/e;->l:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iput-wide v0, p1, Lkotlinx/coroutines/flow/e;->l:J

    :cond_1
    iput-wide v0, p0, Lkotlinx/coroutines/flow/g;->a:J

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final b(LY4/a;)[Lu3/d;
    .locals 4

    check-cast p1, Lkotlinx/coroutines/flow/e;

    iget-wide v0, p0, Lkotlinx/coroutines/flow/g;->a:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lkotlinx/coroutines/flow/g;->a:J

    const/4 v2, 0x0

    iput-object v2, p0, Lkotlinx/coroutines/flow/g;->b:LW4/e;

    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/flow/e;->u(J)[Lu3/d;

    move-result-object p0

    return-object p0
.end method
