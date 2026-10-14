.class public final Ln4/O;
.super Lt4/p;
.source "SourceFile"


# static fields
.field public static final k:Ln4/O;

.field public static final l:Ln4/a;


# instance fields
.field public final d:Lt4/e;

.field public e:I

.field public f:Ln4/N;

.field public g:Ln4/Q;

.field public h:I

.field public i:B

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln4/a;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    sput-object v0, Ln4/O;->l:Ln4/a;

    new-instance v0, Ln4/O;

    invoke-direct {v0}, Ln4/O;-><init>()V

    sput-object v0, Ln4/O;->k:Ln4/O;

    sget-object v1, Ln4/N;->g:Ln4/N;

    iput-object v1, v0, Ln4/O;->f:Ln4/N;

    sget-object v1, Ln4/Q;->w:Ln4/Q;

    iput-object v1, v0, Ln4/O;->g:Ln4/Q;

    const/4 v1, 0x0

    iput v1, v0, Ln4/O;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Ln4/O;->i:B

    .line 3
    iput v0, p0, Ln4/O;->j:I

    .line 4
    sget-object v0, Lt4/e;->d:Lt4/w;

    iput-object v0, p0, Ln4/O;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Ln4/M;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput-byte v0, p0, Ln4/O;->i:B

    .line 46
    iput v0, p0, Ln4/O;->j:I

    .line 47
    iget-object p1, p1, Lt4/k;->d:Lt4/e;

    .line 48
    iput-object p1, p0, Ln4/O;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lt4/f;Lt4/i;)V
    .locals 9

    .line 5
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Ln4/O;->i:B

    .line 7
    iput v0, p0, Ln4/O;->j:I

    .line 8
    sget-object v0, Ln4/N;->g:Ln4/N;

    iput-object v0, p0, Ln4/O;->f:Ln4/N;

    .line 9
    sget-object v1, Ln4/Q;->w:Ln4/Q;

    .line 10
    iput-object v1, p0, Ln4/O;->g:Ln4/Q;

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Ln4/O;->h:I

    .line 12
    new-instance v2, Lt4/d;

    invoke-direct {v2}, Lt4/d;-><init>()V

    const/4 v3, 0x1

    .line 13
    invoke-static {v2, v3}, Ll5/e;->j(Ljava/io/OutputStream;I)Ll5/e;

    move-result-object v4

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lt4/f;->n()I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eq v5, v6, :cond_6

    const/16 v6, 0x12

    if-eq v5, v6, :cond_3

    const/16 v6, 0x18

    if-eq v5, v6, :cond_2

    .line 15
    invoke-virtual {p1, v5, v4}, Lt4/f;->q(ILl5/e;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    move v1, v3

    goto :goto_0

    .line 16
    :cond_2
    iget v5, p0, Ln4/O;->e:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Ln4/O;->e:I

    .line 17
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v5

    .line 18
    iput v5, p0, Ln4/O;->h:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    .line 19
    :cond_3
    iget v5, p0, Ln4/O;->e:I

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_4

    .line 20
    iget-object v5, p0, Ln4/O;->g:Ln4/Q;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {v5}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v7

    .line 22
    :cond_4
    sget-object v5, Ln4/Q;->x:Ln4/a;

    invoke-virtual {p1, v5, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v5

    check-cast v5, Ln4/Q;

    iput-object v5, p0, Ln4/O;->g:Ln4/Q;

    if-eqz v7, :cond_5

    .line 23
    invoke-virtual {v7, v5}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    .line 24
    invoke-virtual {v7}, Ln4/P;->g()Ln4/Q;

    move-result-object v5

    iput-object v5, p0, Ln4/O;->g:Ln4/Q;

    .line 25
    :cond_5
    iget v5, p0, Ln4/O;->e:I

    or-int/2addr v5, v8

    iput v5, p0, Ln4/O;->e:I

    goto :goto_0

    .line 26
    :cond_6
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v6

    if-eqz v6, :cond_a

    if-eq v6, v3, :cond_9

    if-eq v6, v8, :cond_8

    const/4 v8, 0x3

    if-eq v6, v8, :cond_7

    goto :goto_1

    .line 27
    :cond_7
    sget-object v7, Ln4/N;->h:Ln4/N;

    goto :goto_1

    :cond_8
    move-object v7, v0

    goto :goto_1

    .line 28
    :cond_9
    sget-object v7, Ln4/N;->f:Ln4/N;

    goto :goto_1

    .line 29
    :cond_a
    sget-object v7, Ln4/N;->e:Ln4/N;

    :goto_1
    if-nez v7, :cond_b

    .line 30
    invoke-virtual {v4, v5}, Ll5/e;->v(I)V

    .line 31
    invoke-virtual {v4, v6}, Ll5/e;->v(I)V

    goto :goto_0

    .line 32
    :cond_b
    iget v5, p0, Ln4/O;->e:I

    or-int/2addr v5, v3

    iput v5, p0, Ln4/O;->e:I

    .line 33
    iput-object v7, p0, Ln4/O;->f:Ln4/N;
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 34
    :goto_2
    :try_start_1
    new-instance p2, Lt4/s;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lt4/s;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p0, p2, Lt4/s;->d:Lt4/b;

    .line 36
    throw p2

    .line 37
    :goto_3
    iput-object p0, p1, Lt4/s;->d:Lt4/b;

    .line 38
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :goto_4
    :try_start_2
    invoke-virtual {v4}, Ll5/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    :catch_2
    invoke-virtual {v2}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/O;->d:Lt4/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v2}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/O;->d:Lt4/e;

    throw p1

    .line 41
    :goto_5
    throw p1

    .line 42
    :cond_c
    :try_start_3
    invoke-virtual {v4}, Ll5/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 43
    :catch_3
    invoke-virtual {v2}, Lt4/d;->h()Lt4/e;

    move-result-object p1

    iput-object p1, p0, Ln4/O;->d:Lt4/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v2}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/O;->d:Lt4/e;

    throw p1

    :goto_6
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 4

    iget-byte v0, p0, Ln4/O;->i:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Ln4/O;->e:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Ln4/O;->g:Ln4/Q;

    invoke-virtual {v0}, Ln4/Q;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Ln4/O;->i:B

    return v2

    :cond_2
    iput-byte v1, p0, Ln4/O;->i:B

    return v1
.end method

.method public final c()I
    .locals 3

    iget v0, p0, Ln4/O;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Ln4/O;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ln4/O;->f:Ln4/N;

    iget v0, v0, Ln4/N;->d:I

    invoke-static {v1, v0}, Ll5/e;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ln4/O;->e:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Ln4/O;->g:Ln4/Q;

    invoke-static {v2, v1}, Ll5/e;->d(ILt4/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Ln4/O;->e:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget v2, p0, Ln4/O;->h:I

    invoke-static {v1, v2}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Ln4/O;->d:Lt4/e;

    invoke-virtual {v1}, Lt4/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Ln4/O;->j:I

    return v1
.end method

.method public final d()Lt4/k;
    .locals 0

    invoke-static {}, Ln4/M;->g()Ln4/M;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lt4/k;
    .locals 1

    invoke-static {}, Ln4/M;->g()Ln4/M;

    move-result-object v0

    invoke-virtual {v0, p0}, Ln4/M;->h(Ln4/O;)V

    return-object v0
.end method

.method public final f(Ll5/e;)V
    .locals 2

    invoke-virtual {p0}, Ln4/O;->c()I

    iget v0, p0, Ln4/O;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ln4/O;->f:Ln4/N;

    iget v0, v0, Ln4/N;->d:I

    invoke-virtual {p1, v1, v0}, Ll5/e;->l(II)V

    :cond_0
    iget v0, p0, Ln4/O;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ln4/O;->g:Ln4/Q;

    invoke-virtual {p1, v1, v0}, Ll5/e;->o(ILt4/b;)V

    :cond_1
    iget v0, p0, Ln4/O;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Ln4/O;->h:I

    invoke-virtual {p1, v0, v1}, Ll5/e;->m(II)V

    :cond_2
    iget-object p0, p0, Ln4/O;->d:Lt4/e;

    invoke-virtual {p1, p0}, Ll5/e;->r(Lt4/e;)V

    return-void
.end method
