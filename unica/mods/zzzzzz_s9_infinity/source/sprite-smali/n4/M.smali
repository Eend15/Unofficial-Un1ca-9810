.class public final Ln4/M;
.super Lt4/k;
.source "SourceFile"

# interfaces
.implements Lt4/x;


# instance fields
.field public e:I

.field public f:Ln4/N;

.field public g:Ln4/Q;

.field public h:I


# direct methods
.method public static g()Ln4/M;
    .locals 2

    new-instance v0, Ln4/M;

    invoke-direct {v0}, Lt4/k;-><init>()V

    sget-object v1, Ln4/N;->g:Ln4/N;

    iput-object v1, v0, Ln4/M;->f:Ln4/N;

    sget-object v1, Ln4/Q;->w:Ln4/Q;

    iput-object v1, v0, Ln4/M;->g:Ln4/Q;

    return-object v0
.end method


# virtual methods
.method public final c()Lt4/b;
    .locals 1

    invoke-virtual {p0}, Ln4/M;->f()Ln4/O;

    move-result-object p0

    invoke-virtual {p0}, Ln4/O;->b()Z

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

    invoke-static {}, Ln4/M;->g()Ln4/M;

    move-result-object v0

    invoke-virtual {p0}, Ln4/M;->f()Ln4/O;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln4/M;->h(Ln4/O;)V

    return-object v0
.end method

.method public final d(Lt4/f;Lt4/i;)Lt4/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln4/O;->l:Ln4/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ln4/O;

    invoke-direct {v1, p1, p2}, Ln4/O;-><init>(Lt4/f;Lt4/i;)V
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Ln4/M;->h(Ln4/O;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lt4/s;->d:Lt4/b;

    check-cast p2, Ln4/O;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ln4/M;->h(Ln4/O;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic e(Lt4/p;)Lt4/k;
    .locals 0

    check-cast p1, Ln4/O;

    invoke-virtual {p0, p1}, Ln4/M;->h(Ln4/O;)V

    return-object p0
.end method

.method public final f()Ln4/O;
    .locals 5

    new-instance v0, Ln4/O;

    invoke-direct {v0, p0}, Ln4/O;-><init>(Ln4/M;)V

    iget v1, p0, Ln4/M;->e:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Ln4/M;->f:Ln4/N;

    iput-object v2, v0, Ln4/O;->f:Ln4/N;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, Ln4/M;->g:Ln4/Q;

    iput-object v2, v0, Ln4/O;->g:Ln4/Q;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget p0, p0, Ln4/M;->h:I

    iput p0, v0, Ln4/O;->h:I

    iput v3, v0, Ln4/O;->e:I

    return-object v0
.end method

.method public final h(Ln4/O;)V
    .locals 4

    sget-object v0, Ln4/O;->k:Ln4/O;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Ln4/O;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Ln4/O;->f:Ln4/N;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Ln4/M;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Ln4/M;->e:I

    iput-object v0, p0, Ln4/M;->f:Ln4/N;

    :cond_1
    iget v0, p1, Ln4/O;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Ln4/O;->g:Ln4/Q;

    iget v2, p0, Ln4/M;->e:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Ln4/M;->g:Ln4/Q;

    sget-object v3, Ln4/Q;->w:Ln4/Q;

    if-eq v2, v3, :cond_2

    invoke-static {v2}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v2

    invoke-virtual {v2, v0}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    invoke-virtual {v2}, Ln4/P;->g()Ln4/Q;

    move-result-object v0

    iput-object v0, p0, Ln4/M;->g:Ln4/Q;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Ln4/M;->g:Ln4/Q;

    :goto_0
    iget v0, p0, Ln4/M;->e:I

    or-int/2addr v0, v1

    iput v0, p0, Ln4/M;->e:I

    :cond_3
    iget v0, p1, Ln4/O;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget v0, p1, Ln4/O;->h:I

    iget v2, p0, Ln4/M;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Ln4/M;->e:I

    iput v0, p0, Ln4/M;->h:I

    :cond_4
    iget-object v0, p0, Lt4/k;->d:Lt4/e;

    iget-object p1, p1, Ln4/O;->d:Lt4/e;

    invoke-virtual {v0, p1}, Lt4/e;->h(Lt4/e;)Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lt4/k;->d:Lt4/e;

    return-void
.end method
