.class public abstract LW4/J;
.super LW4/q;
.source "SourceFile"


# instance fields
.field public f:J

.field public g:Z

.field public h:Li5/b;


# virtual methods
.method public final Z()V
    .locals 4

    iget-wide v0, p0, LW4/J;->f:J

    const-wide v2, 0x100000000L

    sub-long/2addr v0, v2

    iput-wide v0, p0, LW4/J;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, LW4/J;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LW4/J;->shutdown()V

    :cond_1
    return-void
.end method

.method public final a0(LW4/A;)V
    .locals 11

    iget-object v0, p0, LW4/J;->h:Li5/b;

    if-nez v0, :cond_0

    new-instance v0, Li5/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Li5/b;->c:Ljava/lang/Object;

    iput-object v0, p0, LW4/J;->h:Li5/b;

    :cond_0
    iget-object p0, v0, Li5/b;->c:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    iget p0, v0, Li5/b;->b:I

    aput-object p1, v1, p0

    add-int/lit8 p0, p0, 0x1

    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p0, p1

    iput p0, v0, Li5/b;->b:I

    iget v4, v0, Li5/b;->a:I

    if-ne p0, v4, :cond_1

    array-length p0, v1

    shl-int/lit8 p1, p0, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lr3/h;->h0([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    iget-object v1, v0, Li5/b;->c:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, [Ljava/lang/Object;

    array-length v1, v5

    iget v9, v0, Li5/b;->a:I

    sub-int v7, v1, v9

    const/4 v8, 0x0

    const/4 v10, 0x4

    move-object v6, p1

    invoke-static/range {v5 .. v10}, Lr3/h;->h0([Ljava/lang/Object;[Ljava/lang/Object;IIII)V

    iput-object p1, v0, Li5/b;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, v0, Li5/b;->a:I

    iput p0, v0, Li5/b;->b:I

    :cond_1
    return-void
.end method

.method public abstract b0()Ljava/lang/Thread;
.end method

.method public final c0(Z)V
    .locals 4

    iget-wide v0, p0, LW4/J;->f:J

    if-eqz p1, :cond_0

    const-wide v2, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    add-long/2addr v2, v0

    iput-wide v2, p0, LW4/J;->f:J

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, LW4/J;->g:Z

    :cond_1
    return-void
.end method

.method public final d0()Z
    .locals 6

    iget-object p0, p0, LW4/J;->h:Li5/b;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Li5/b;->a:I

    iget v2, p0, Li5/b;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Li5/b;->c:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    aget-object v5, v2, v1

    aput-object v4, v2, v1

    add-int/2addr v1, v3

    array-length v2, v2

    sub-int/2addr v2, v3

    and-int/2addr v1, v2

    iput v1, p0, Li5/b;->a:I

    if-eqz v5, :cond_3

    move-object v4, v5

    :goto_0
    check-cast v4, LW4/A;

    if-nez v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {v4}, LW4/A;->run()V

    return v3

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type T of kotlinx.coroutines.internal.ArrayQueue"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e0(JLW4/G;)V
    .locals 0

    sget-object p0, LW4/v;->k:LW4/v;

    invoke-virtual {p0, p1, p2, p3}, LW4/I;->l0(JLW4/G;)V

    return-void
.end method

.method public abstract shutdown()V
.end method
