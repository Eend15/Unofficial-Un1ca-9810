.class public final Ln4/H;
.super Lt4/k;
.source "SourceFile"

# interfaces
.implements Lt4/x;


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:Ln4/I;


# direct methods
.method public static g()Ln4/H;
    .locals 2

    new-instance v0, Ln4/H;

    invoke-direct {v0}, Lt4/k;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Ln4/H;->f:I

    sget-object v1, Ln4/I;->f:Ln4/I;

    iput-object v1, v0, Ln4/H;->h:Ln4/I;

    return-object v0
.end method


# virtual methods
.method public final c()Lt4/b;
    .locals 1

    invoke-virtual {p0}, Ln4/H;->f()Ln4/J;

    move-result-object p0

    invoke-virtual {p0}, Ln4/J;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, LW4/m;

    invoke-direct {p0}, LW4/m;-><init>()V

    throw p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ln4/H;->g()Ln4/H;

    move-result-object v0

    invoke-virtual {p0}, Ln4/H;->f()Ln4/J;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln4/H;->h(Ln4/J;)V

    return-object v0
.end method

.method public final d(Lt4/f;Lt4/i;)Lt4/k;
    .locals 1

    const/4 p2, 0x0

    :try_start_0
    sget-object v0, Ln4/J;->l:Ln4/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ln4/J;

    invoke-direct {v0, p1}, Ln4/J;-><init>(Lt4/f;)V
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Ln4/H;->h(Ln4/J;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object v0, p1, Lt4/s;->d:Lt4/b;

    check-cast v0, Ln4/J;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ln4/H;->h(Ln4/J;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(Lt4/p;)Lt4/k;
    .locals 0

    check-cast p1, Ln4/J;

    invoke-virtual {p0, p1}, Ln4/H;->h(Ln4/J;)V

    return-object p0
.end method

.method public final f()Ln4/J;
    .locals 5

    new-instance v0, Ln4/J;

    invoke-direct {v0, p0}, Ln4/J;-><init>(Ln4/H;)V

    iget v1, p0, Ln4/H;->e:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Ln4/H;->f:I

    iput v2, v0, Ln4/J;->f:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Ln4/H;->g:I

    iput v2, v0, Ln4/J;->g:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object p0, p0, Ln4/H;->h:Ln4/I;

    iput-object p0, v0, Ln4/J;->h:Ln4/I;

    iput v3, v0, Ln4/J;->e:I

    return-object v0
.end method

.method public final h(Ln4/J;)V
    .locals 4

    sget-object v0, Ln4/J;->k:Ln4/J;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Ln4/J;->e:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, Ln4/J;->f:I

    iget v3, p0, Ln4/H;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Ln4/H;->e:I

    iput v1, p0, Ln4/H;->f:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p1, Ln4/J;->g:I

    iget v3, p0, Ln4/H;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Ln4/H;->e:I

    iput v1, p0, Ln4/H;->g:I

    :cond_2
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Ln4/J;->h:Ln4/I;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Ln4/H;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Ln4/H;->e:I

    iput-object v0, p0, Ln4/H;->h:Ln4/I;

    :cond_3
    iget-object v0, p0, Lt4/k;->d:Lt4/e;

    iget-object p1, p1, Ln4/J;->d:Lt4/e;

    invoke-virtual {v0, p1}, Lt4/e;->h(Lt4/e;)Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lt4/k;->d:Lt4/e;

    return-void
.end method
