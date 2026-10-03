.class public final Ln4/J;
.super Lt4/p;
.source "SourceFile"


# static fields
.field public static final k:Ln4/J;

.field public static final l:Ln4/a;


# instance fields
.field public final d:Lt4/e;

.field public e:I

.field public f:I

.field public g:I

.field public h:Ln4/I;

.field public i:B

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln4/a;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    sput-object v0, Ln4/J;->l:Ln4/a;

    new-instance v0, Ln4/J;

    invoke-direct {v0}, Ln4/J;-><init>()V

    sput-object v0, Ln4/J;->k:Ln4/J;

    const/4 v1, -0x1

    iput v1, v0, Ln4/J;->f:I

    const/4 v1, 0x0

    iput v1, v0, Ln4/J;->g:I

    sget-object v1, Ln4/I;->f:Ln4/I;

    iput-object v1, v0, Ln4/J;->h:Ln4/I;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Ln4/J;->i:B

    .line 3
    iput v0, p0, Ln4/J;->j:I

    .line 4
    sget-object v0, Lt4/e;->d:Lt4/w;

    iput-object v0, p0, Ln4/J;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Ln4/H;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput-byte v0, p0, Ln4/J;->i:B

    .line 40
    iput v0, p0, Ln4/J;->j:I

    .line 41
    iget-object p1, p1, Lt4/k;->d:Lt4/e;

    .line 42
    iput-object p1, p0, Ln4/J;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lt4/f;)V
    .locals 8

    .line 5
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Ln4/J;->i:B

    .line 7
    iput v0, p0, Ln4/J;->j:I

    .line 8
    iput v0, p0, Ln4/J;->f:I

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Ln4/J;->g:I

    .line 10
    sget-object v1, Ln4/I;->f:Ln4/I;

    iput-object v1, p0, Ln4/J;->h:Ln4/I;

    .line 11
    new-instance v2, Lt4/d;

    invoke-direct {v2}, Lt4/d;-><init>()V

    const/4 v3, 0x1

    .line 12
    invoke-static {v2, v3}, Ll5/e;->j(Ljava/io/OutputStream;I)Ll5/e;

    move-result-object v4

    :cond_0
    :goto_0
    if-nez v0, :cond_9

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lt4/f;->n()I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v6, 0x8

    if-eq v5, v6, :cond_8

    const/16 v6, 0x10

    const/4 v7, 0x2

    if-eq v5, v6, :cond_7

    const/16 v6, 0x18

    if-eq v5, v6, :cond_2

    .line 14
    invoke-virtual {p1, v5, v4}, Lt4/f;->q(ILl5/e;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    move v0, v3

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v6

    if-eqz v6, :cond_5

    if-eq v6, v3, :cond_4

    if-eq v6, v7, :cond_3

    const/4 v7, 0x0

    goto :goto_1

    .line 16
    :cond_3
    sget-object v7, Ln4/I;->g:Ln4/I;

    goto :goto_1

    :cond_4
    move-object v7, v1

    goto :goto_1

    .line 17
    :cond_5
    sget-object v7, Ln4/I;->e:Ln4/I;

    :goto_1
    if-nez v7, :cond_6

    .line 18
    invoke-virtual {v4, v5}, Ll5/e;->v(I)V

    .line 19
    invoke-virtual {v4, v6}, Ll5/e;->v(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    .line 20
    :cond_6
    iget v5, p0, Ln4/J;->e:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Ln4/J;->e:I

    .line 21
    iput-object v7, p0, Ln4/J;->h:Ln4/I;

    goto :goto_0

    .line 22
    :cond_7
    iget v5, p0, Ln4/J;->e:I

    or-int/2addr v5, v7

    iput v5, p0, Ln4/J;->e:I

    .line 23
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v5

    .line 24
    iput v5, p0, Ln4/J;->g:I

    goto :goto_0

    .line 25
    :cond_8
    iget v5, p0, Ln4/J;->e:I

    or-int/2addr v5, v3

    iput v5, p0, Ln4/J;->e:I

    .line 26
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v5

    .line 27
    iput v5, p0, Ln4/J;->f:I
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 28
    :goto_2
    :try_start_1
    new-instance v0, Lt4/s;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lt4/s;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p0, v0, Lt4/s;->d:Lt4/b;

    .line 30
    throw v0

    .line 31
    :goto_3
    iput-object p0, p1, Lt4/s;->d:Lt4/b;

    .line 32
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :goto_4
    :try_start_2
    invoke-virtual {v4}, Ll5/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    :catch_2
    invoke-virtual {v2}, Lt4/d;->h()Lt4/e;

    move-result-object v0

    iput-object v0, p0, Ln4/J;->d:Lt4/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v2}, Lt4/d;->h()Lt4/e;

    move-result-object v0

    iput-object v0, p0, Ln4/J;->d:Lt4/e;

    throw p1

    .line 35
    :goto_5
    throw p1

    .line 36
    :cond_9
    :try_start_3
    invoke-virtual {v4}, Ll5/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 37
    :catch_3
    invoke-virtual {v2}, Lt4/d;->h()Lt4/e;

    move-result-object p1

    iput-object p1, p0, Ln4/J;->d:Lt4/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v2}, Lt4/d;->h()Lt4/e;

    move-result-object v0

    iput-object v0, p0, Ln4/J;->d:Lt4/e;

    throw p1

    :goto_6
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 4

    iget-byte v0, p0, Ln4/J;->i:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Ln4/J;->e:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iput-byte v1, p0, Ln4/J;->i:B

    return v1

    :cond_2
    iput-byte v2, p0, Ln4/J;->i:B

    return v2
.end method

.method public final c()I
    .locals 3

    iget v0, p0, Ln4/J;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Ln4/J;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Ln4/J;->f:I

    invoke-static {v1, v0}, Ll5/e;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ln4/J;->e:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Ln4/J;->g:I

    invoke-static {v2, v1}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Ln4/J;->e:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Ln4/J;->h:Ln4/I;

    iget v1, v1, Ln4/I;->d:I

    const/4 v2, 0x3

    invoke-static {v2, v1}, Ll5/e;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Ln4/J;->d:Lt4/e;

    invoke-virtual {v1}, Lt4/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Ln4/J;->j:I

    return v1
.end method

.method public final d()Lt4/k;
    .locals 0

    invoke-static {}, Ln4/H;->g()Ln4/H;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lt4/k;
    .locals 1

    invoke-static {}, Ln4/H;->g()Ln4/H;

    move-result-object v0

    invoke-virtual {v0, p0}, Ln4/H;->h(Ln4/J;)V

    return-object v0
.end method

.method public final f(Ll5/e;)V
    .locals 2

    invoke-virtual {p0}, Ln4/J;->c()I

    iget v0, p0, Ln4/J;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ln4/J;->f:I

    invoke-virtual {p1, v1, v0}, Ll5/e;->m(II)V

    :cond_0
    iget v0, p0, Ln4/J;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Ln4/J;->g:I

    invoke-virtual {p1, v1, v0}, Ll5/e;->m(II)V

    :cond_1
    iget v0, p0, Ln4/J;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ln4/J;->h:Ln4/I;

    iget v0, v0, Ln4/I;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Ll5/e;->l(II)V

    :cond_2
    iget-object p0, p0, Ln4/J;->d:Lt4/e;

    invoke-virtual {p1, p0}, Ll5/e;->r(Lt4/e;)V

    return-void
.end method
