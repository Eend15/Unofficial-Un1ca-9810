.class public abstract Lkotlinx/coroutines/internal/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile synthetic _size:I

.field public a:[LW4/G;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/internal/r;->_size:I

    return-void
.end method


# virtual methods
.method public final a(LW4/G;)V
    .locals 3

    move-object v0, p0

    check-cast v0, LW4/H;

    invoke-virtual {p1, v0}, LW4/G;->d(LW4/H;)V

    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->a:[LW4/G;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [LW4/G;

    iput-object v0, p0, Lkotlinx/coroutines/internal/r;->a:[LW4/G;

    goto :goto_0

    :cond_0
    iget v1, p0, Lkotlinx/coroutines/internal/r;->_size:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    iget v1, p0, Lkotlinx/coroutines/internal/r;->_size:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [LW4/G;

    iput-object v0, p0, Lkotlinx/coroutines/internal/r;->a:[LW4/G;

    :cond_1
    :goto_0
    iget v1, p0, Lkotlinx/coroutines/internal/r;->_size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/coroutines/internal/r;->_size:I

    aput-object p1, v0, v1

    iput v1, p1, LW4/G;->e:I

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/internal/r;->e(I)V

    return-void
.end method

.method public final b()Z
    .locals 0

    iget p0, p0, Lkotlinx/coroutines/internal/r;->_size:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c(I)LW4/G;
    .locals 7

    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->a:[LW4/G;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    iget v1, p0, Lkotlinx/coroutines/internal/r;->_size:I

    const/4 v2, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lkotlinx/coroutines/internal/r;->_size:I

    iget v1, p0, Lkotlinx/coroutines/internal/r;->_size:I

    if-ge p1, v1, :cond_4

    iget v1, p0, Lkotlinx/coroutines/internal/r;->_size:I

    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/r;->f(II)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    if-lez p1, :cond_0

    aget-object v3, v0, p1

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    aget-object v4, v0, v1

    invoke-static {v4}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, LW4/G;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/r;->f(II)V

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/internal/r;->e(I)V

    goto :goto_2

    :cond_0
    :goto_0
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Lkotlinx/coroutines/internal/r;->_size:I

    if-lt v3, v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lkotlinx/coroutines/internal/r;->a:[LW4/G;

    invoke-static {v4}, LF3/k;->c(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x2

    iget v5, p0, Lkotlinx/coroutines/internal/r;->_size:I

    if-ge v1, v5, :cond_2

    aget-object v5, v4, v1

    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    aget-object v6, v4, v3

    invoke-static {v6}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, LW4/G;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    aget-object v3, v4, p1

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    aget-object v4, v4, v1

    invoke-static {v4}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, LW4/G;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/r;->f(II)V

    move p1, v1

    goto :goto_0

    :cond_4
    :goto_2
    iget p1, p0, Lkotlinx/coroutines/internal/r;->_size:I

    aget-object p1, v0, p1

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LW4/G;->d(LW4/H;)V

    iput v2, p1, LW4/G;->e:I

    iget p0, p0, Lkotlinx/coroutines/internal/r;->_size:I

    aput-object v1, v0, p0

    return-object p1
.end method

.method public final d()LW4/G;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lkotlinx/coroutines/internal/r;->_size:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/r;->c(I)LW4/G;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final e(I)V
    .locals 3

    :goto_0
    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->a:[LW4/G;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    aget-object v2, v0, v1

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    aget-object v0, v0, p1

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/r;->f(II)V

    move p1, v1

    goto :goto_0
.end method

.method public final f(II)V
    .locals 2

    iget-object p0, p0, Lkotlinx/coroutines/internal/r;->a:[LW4/G;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    aget-object v0, p0, p2

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    aget-object v1, p0, p1

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    aput-object v0, p0, p1

    aput-object v1, p0, p2

    iput p1, v0, LW4/G;->e:I

    iput p2, v1, LW4/G;->e:I

    return-void
.end method
