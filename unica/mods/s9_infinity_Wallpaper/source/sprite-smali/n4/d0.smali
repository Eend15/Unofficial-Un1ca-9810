.class public final Ln4/d0;
.super Lt4/p;
.source "SourceFile"


# static fields
.field public static final n:Ln4/d0;

.field public static final o:Ln4/a;


# instance fields
.field public final d:Lt4/e;

.field public e:I

.field public f:I

.field public g:I

.field public h:Ln4/b0;

.field public i:I

.field public j:I

.field public k:Ln4/c0;

.field public l:B

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln4/a;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    sput-object v0, Ln4/d0;->o:Ln4/a;

    new-instance v0, Ln4/d0;

    invoke-direct {v0}, Ln4/d0;-><init>()V

    sput-object v0, Ln4/d0;->n:Ln4/d0;

    const/4 v1, 0x0

    iput v1, v0, Ln4/d0;->f:I

    iput v1, v0, Ln4/d0;->g:I

    sget-object v2, Ln4/b0;->f:Ln4/b0;

    iput-object v2, v0, Ln4/d0;->h:Ln4/b0;

    iput v1, v0, Ln4/d0;->i:I

    iput v1, v0, Ln4/d0;->j:I

    sget-object v1, Ln4/c0;->e:Ln4/c0;

    iput-object v1, v0, Ln4/d0;->k:Ln4/c0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Ln4/d0;->l:B

    .line 3
    iput v0, p0, Ln4/d0;->m:I

    .line 4
    sget-object v0, Lt4/e;->d:Lt4/w;

    iput-object v0, p0, Ln4/d0;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Ln4/a0;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput-byte v0, p0, Ln4/d0;->l:B

    .line 56
    iput v0, p0, Ln4/d0;->m:I

    .line 57
    iget-object p1, p1, Lt4/k;->d:Lt4/e;

    .line 58
    iput-object p1, p0, Ln4/d0;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lt4/f;)V
    .locals 12

    .line 5
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Ln4/d0;->l:B

    .line 7
    iput v0, p0, Ln4/d0;->m:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Ln4/d0;->f:I

    .line 9
    iput v0, p0, Ln4/d0;->g:I

    .line 10
    sget-object v1, Ln4/b0;->f:Ln4/b0;

    iput-object v1, p0, Ln4/d0;->h:Ln4/b0;

    .line 11
    iput v0, p0, Ln4/d0;->i:I

    .line 12
    iput v0, p0, Ln4/d0;->j:I

    .line 13
    sget-object v2, Ln4/c0;->e:Ln4/c0;

    iput-object v2, p0, Ln4/d0;->k:Ln4/c0;

    .line 14
    new-instance v3, Lt4/d;

    invoke-direct {v3}, Lt4/d;-><init>()V

    const/4 v4, 0x1

    .line 15
    invoke-static {v3, v4}, Ll5/e;->j(Ljava/io/OutputStream;I)Ll5/e;

    move-result-object v5

    :cond_0
    :goto_0
    if-nez v0, :cond_10

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lt4/f;->n()I

    move-result v6

    if-eqz v6, :cond_1

    const/16 v7, 0x8

    if-eq v6, v7, :cond_f

    const/4 v8, 0x2

    const/16 v9, 0x10

    if-eq v6, v9, :cond_e

    const/16 v10, 0x18

    const/4 v11, 0x0

    if-eq v6, v10, :cond_9

    const/16 v10, 0x20

    if-eq v6, v10, :cond_8

    const/16 v7, 0x28

    if-eq v6, v7, :cond_7

    const/16 v7, 0x30

    if-eq v6, v7, :cond_2

    .line 17
    invoke-virtual {p1, v6, v5}, Lt4/f;->q(ILl5/e;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_1
    move v0, v4

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v7

    if-eqz v7, :cond_5

    if-eq v7, v4, :cond_4

    if-eq v7, v8, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    sget-object v11, Ln4/c0;->g:Ln4/c0;

    goto :goto_1

    .line 20
    :cond_4
    sget-object v11, Ln4/c0;->f:Ln4/c0;

    goto :goto_1

    :cond_5
    move-object v11, v2

    :goto_1
    if-nez v11, :cond_6

    .line 21
    invoke-virtual {v5, v6}, Ll5/e;->v(I)V

    .line 22
    invoke-virtual {v5, v7}, Ll5/e;->v(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    .line 23
    :cond_6
    iget v6, p0, Ln4/d0;->e:I

    or-int/2addr v6, v10

    iput v6, p0, Ln4/d0;->e:I

    .line 24
    iput-object v11, p0, Ln4/d0;->k:Ln4/c0;

    goto :goto_0

    .line 25
    :cond_7
    iget v6, p0, Ln4/d0;->e:I

    or-int/2addr v6, v9

    iput v6, p0, Ln4/d0;->e:I

    .line 26
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v6

    .line 27
    iput v6, p0, Ln4/d0;->j:I

    goto :goto_0

    .line 28
    :cond_8
    iget v6, p0, Ln4/d0;->e:I

    or-int/2addr v6, v7

    iput v6, p0, Ln4/d0;->e:I

    .line 29
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v6

    .line 30
    iput v6, p0, Ln4/d0;->i:I

    goto :goto_0

    .line 31
    :cond_9
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v7

    if-eqz v7, :cond_c

    if-eq v7, v4, :cond_b

    if-eq v7, v8, :cond_a

    goto :goto_2

    .line 32
    :cond_a
    sget-object v11, Ln4/b0;->g:Ln4/b0;

    goto :goto_2

    :cond_b
    move-object v11, v1

    goto :goto_2

    .line 33
    :cond_c
    sget-object v11, Ln4/b0;->e:Ln4/b0;

    :goto_2
    if-nez v11, :cond_d

    .line 34
    invoke-virtual {v5, v6}, Ll5/e;->v(I)V

    .line 35
    invoke-virtual {v5, v7}, Ll5/e;->v(I)V

    goto/16 :goto_0

    .line 36
    :cond_d
    iget v6, p0, Ln4/d0;->e:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Ln4/d0;->e:I

    .line 37
    iput-object v11, p0, Ln4/d0;->h:Ln4/b0;

    goto/16 :goto_0

    .line 38
    :cond_e
    iget v6, p0, Ln4/d0;->e:I

    or-int/2addr v6, v8

    iput v6, p0, Ln4/d0;->e:I

    .line 39
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v6

    .line 40
    iput v6, p0, Ln4/d0;->g:I

    goto/16 :goto_0

    .line 41
    :cond_f
    iget v6, p0, Ln4/d0;->e:I

    or-int/2addr v6, v4

    iput v6, p0, Ln4/d0;->e:I

    .line 42
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v6

    .line 43
    iput v6, p0, Ln4/d0;->f:I
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 44
    :goto_3
    :try_start_1
    new-instance v0, Lt4/s;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lt4/s;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p0, v0, Lt4/s;->d:Lt4/b;

    .line 46
    throw v0

    .line 47
    :goto_4
    iput-object p0, p1, Lt4/s;->d:Lt4/b;

    .line 48
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_5
    :try_start_2
    invoke-virtual {v5}, Ll5/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    :catch_2
    invoke-virtual {v3}, Lt4/d;->h()Lt4/e;

    move-result-object v0

    iput-object v0, p0, Ln4/d0;->d:Lt4/e;

    goto :goto_6

    :catchall_1
    move-exception p1

    invoke-virtual {v3}, Lt4/d;->h()Lt4/e;

    move-result-object v0

    iput-object v0, p0, Ln4/d0;->d:Lt4/e;

    throw p1

    .line 51
    :goto_6
    throw p1

    .line 52
    :cond_10
    :try_start_3
    invoke-virtual {v5}, Ll5/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 53
    :catch_3
    invoke-virtual {v3}, Lt4/d;->h()Lt4/e;

    move-result-object p1

    iput-object p1, p0, Ln4/d0;->d:Lt4/e;

    goto :goto_7

    :catchall_2
    move-exception p1

    invoke-virtual {v3}, Lt4/d;->h()Lt4/e;

    move-result-object v0

    iput-object v0, p0, Ln4/d0;->d:Lt4/e;

    throw p1

    :goto_7
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-byte v0, p0, Ln4/d0;->l:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Ln4/d0;->l:B

    return v1
.end method

.method public final c()I
    .locals 4

    iget v0, p0, Ln4/d0;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Ln4/d0;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Ln4/d0;->f:I

    invoke-static {v1, v0}, Ll5/e;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ln4/d0;->e:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Ln4/d0;->g:I

    invoke-static {v2, v1}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Ln4/d0;->e:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Ln4/d0;->h:Ln4/b0;

    iget v1, v1, Ln4/b0;->d:I

    const/4 v3, 0x3

    invoke-static {v3, v1}, Ll5/e;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Ln4/d0;->e:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    iget v1, p0, Ln4/d0;->i:I

    invoke-static {v2, v1}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Ln4/d0;->e:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget v2, p0, Ln4/d0;->j:I

    invoke-static {v1, v2}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Ln4/d0;->e:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Ln4/d0;->k:Ln4/c0;

    iget v1, v1, Ln4/c0;->d:I

    const/4 v2, 0x6

    invoke-static {v2, v1}, Ll5/e;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Ln4/d0;->d:Lt4/e;

    invoke-virtual {v1}, Lt4/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Ln4/d0;->m:I

    return v1
.end method

.method public final d()Lt4/k;
    .locals 0

    invoke-static {}, Ln4/a0;->g()Ln4/a0;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lt4/k;
    .locals 1

    invoke-static {}, Ln4/a0;->g()Ln4/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Ln4/a0;->h(Ln4/d0;)V

    return-object v0
.end method

.method public final f(Ll5/e;)V
    .locals 3

    invoke-virtual {p0}, Ln4/d0;->c()I

    iget v0, p0, Ln4/d0;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ln4/d0;->f:I

    invoke-virtual {p1, v1, v0}, Ll5/e;->m(II)V

    :cond_0
    iget v0, p0, Ln4/d0;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Ln4/d0;->g:I

    invoke-virtual {p1, v1, v0}, Ll5/e;->m(II)V

    :cond_1
    iget v0, p0, Ln4/d0;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ln4/d0;->h:Ln4/b0;

    iget v0, v0, Ln4/b0;->d:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Ll5/e;->l(II)V

    :cond_2
    iget v0, p0, Ln4/d0;->e:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    iget v0, p0, Ln4/d0;->i:I

    invoke-virtual {p1, v1, v0}, Ll5/e;->m(II)V

    :cond_3
    iget v0, p0, Ln4/d0;->e:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Ln4/d0;->j:I

    invoke-virtual {p1, v0, v1}, Ll5/e;->m(II)V

    :cond_4
    iget v0, p0, Ln4/d0;->e:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Ln4/d0;->k:Ln4/c0;

    iget v0, v0, Ln4/c0;->d:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Ll5/e;->l(II)V

    :cond_5
    iget-object p0, p0, Ln4/d0;->d:Lt4/e;

    invoke-virtual {p1, p0}, Ll5/e;->r(Lt4/e;)V

    return-void
.end method
