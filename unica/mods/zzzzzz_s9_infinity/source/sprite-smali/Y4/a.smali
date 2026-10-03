.class public abstract LY4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:I

.field public f:[Ljava/lang/Object;


# virtual methods
.method public c()LY4/c;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LY4/a;->f:[Ljava/lang/Object;

    check-cast v0, [LY4/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LY4/a;->e()[LY4/c;

    move-result-object v0

    iput-object v0, p0, LY4/a;->f:[Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget v1, p0, LY4/a;->d:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, [LY4/c;

    iput-object v1, p0, LY4/a;->f:[Ljava/lang/Object;

    check-cast v0, [LY4/c;

    :cond_1
    :goto_0
    iget v1, p0, LY4/a;->e:I

    :cond_2
    aget-object v2, v0, v1

    if-nez v2, :cond_3

    invoke-virtual {p0}, LY4/a;->d()LY4/c;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    array-length v3, v0

    if-lt v1, v3, :cond_4

    const/4 v1, 0x0

    :cond_4
    invoke-virtual {v2, p0}, LY4/c;->a(LY4/a;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v1, p0, LY4/a;->e:I

    iget v0, p0, LY4/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LY4/a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public abstract d()LY4/c;
.end method

.method public abstract e()[LY4/c;
.end method

.method public f(I)V
    .locals 4

    new-array v0, p1, [Ljava/lang/Object;

    iget-object v1, p0, LY4/a;->f:[Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, p0, LY4/a;->e:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    :goto_0
    if-ge v2, p1, :cond_1

    invoke-virtual {p0}, LY4/a;->h()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, LY4/a;->f:[Ljava/lang/Object;

    iput p1, p0, LY4/a;->e:I

    return-void
.end method

.method public g(LY4/c;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, LY4/a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LY4/a;->d:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, LY4/a;->e:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p1, p0}, LY4/c;->b(LY4/a;)[Lu3/d;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    array-length p0, p1

    :goto_1
    if-ge v1, p0, :cond_2

    aget-object v0, p1, v1

    if-eqz v0, :cond_1

    sget-object v2, Lq3/m;->a:Lq3/m;

    invoke-interface {v0, v2}, Lu3/d;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public abstract h()Ljava/lang/Object;
.end method
