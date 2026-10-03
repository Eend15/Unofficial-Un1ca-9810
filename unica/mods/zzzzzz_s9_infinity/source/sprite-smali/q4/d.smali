.class public final Lq4/d;
.super Lt4/p;
.source "SourceFile"


# static fields
.field public static final l:Lq4/d;

.field public static final m:Ln4/a;


# instance fields
.field public final d:Lt4/e;

.field public e:I

.field public f:Lq4/b;

.field public g:Lq4/c;

.field public h:Lq4/c;

.field public i:Lq4/c;

.field public j:B

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln4/a;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    sput-object v0, Lq4/d;->m:Ln4/a;

    new-instance v0, Lq4/d;

    invoke-direct {v0}, Lq4/d;-><init>()V

    sput-object v0, Lq4/d;->l:Lq4/d;

    sget-object v1, Lq4/b;->j:Lq4/b;

    iput-object v1, v0, Lq4/d;->f:Lq4/b;

    sget-object v1, Lq4/c;->j:Lq4/c;

    iput-object v1, v0, Lq4/d;->g:Lq4/c;

    iput-object v1, v0, Lq4/d;->h:Lq4/c;

    iput-object v1, v0, Lq4/d;->i:Lq4/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lq4/d;->j:B

    .line 3
    iput v0, p0, Lq4/d;->k:I

    .line 4
    sget-object v0, Lt4/e;->d:Lt4/w;

    iput-object v0, p0, Lq4/d;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Ln4/o;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 59
    iput-byte v0, p0, Lq4/d;->j:B

    .line 60
    iput v0, p0, Lq4/d;->k:I

    .line 61
    iget-object p1, p1, Lt4/k;->d:Lt4/e;

    .line 62
    iput-object p1, p0, Lq4/d;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lt4/f;Lt4/i;)V
    .locals 7

    .line 5
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lq4/d;->j:B

    .line 7
    iput v0, p0, Lq4/d;->k:I

    .line 8
    sget-object v0, Lq4/b;->j:Lq4/b;

    .line 9
    iput-object v0, p0, Lq4/d;->f:Lq4/b;

    .line 10
    sget-object v0, Lq4/c;->j:Lq4/c;

    .line 11
    iput-object v0, p0, Lq4/d;->g:Lq4/c;

    .line 12
    iput-object v0, p0, Lq4/d;->h:Lq4/c;

    .line 13
    iput-object v0, p0, Lq4/d;->i:Lq4/c;

    .line 14
    new-instance v0, Lt4/d;

    invoke-direct {v0}, Lt4/d;-><init>()V

    const/4 v1, 0x1

    .line 15
    invoke-static {v0, v1}, Ll5/e;->j(Ljava/io/OutputStream;I)Ll5/e;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v3, :cond_e

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lt4/f;->n()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v4, v5, :cond_b

    const/16 v5, 0x12

    if-eq v4, v5, :cond_8

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_5

    const/16 v5, 0x22

    if-eq v4, v5, :cond_2

    .line 17
    invoke-virtual {p1, v4, v2}, Lt4/f;->q(ILl5/e;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    move v3, v1

    goto :goto_0

    .line 18
    :cond_2
    iget v4, p0, Lq4/d;->e:I

    const/16 v5, 0x8

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3

    .line 19
    iget-object v4, p0, Lq4/d;->i:Lq4/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {v4}, Lq4/c;->i(Lq4/c;)Lq4/a;

    move-result-object v6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    .line 21
    :cond_3
    :goto_1
    sget-object v4, Lq4/c;->k:Ln4/a;

    invoke-virtual {p1, v4, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v4

    check-cast v4, Lq4/c;

    iput-object v4, p0, Lq4/d;->i:Lq4/c;

    if-eqz v6, :cond_4

    .line 22
    invoke-virtual {v6, v4}, Lq4/a;->i(Lq4/c;)V

    .line 23
    invoke-virtual {v6}, Lq4/a;->g()Lq4/c;

    move-result-object v4

    iput-object v4, p0, Lq4/d;->i:Lq4/c;

    .line 24
    :cond_4
    iget v4, p0, Lq4/d;->e:I

    or-int/2addr v4, v5

    iput v4, p0, Lq4/d;->e:I

    goto :goto_0

    .line 25
    :cond_5
    iget v4, p0, Lq4/d;->e:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_6

    .line 26
    iget-object v4, p0, Lq4/d;->h:Lq4/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {v4}, Lq4/c;->i(Lq4/c;)Lq4/a;

    move-result-object v6

    .line 28
    :cond_6
    sget-object v4, Lq4/c;->k:Ln4/a;

    invoke-virtual {p1, v4, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v4

    check-cast v4, Lq4/c;

    iput-object v4, p0, Lq4/d;->h:Lq4/c;

    if-eqz v6, :cond_7

    .line 29
    invoke-virtual {v6, v4}, Lq4/a;->i(Lq4/c;)V

    .line 30
    invoke-virtual {v6}, Lq4/a;->g()Lq4/c;

    move-result-object v4

    iput-object v4, p0, Lq4/d;->h:Lq4/c;

    .line 31
    :cond_7
    iget v4, p0, Lq4/d;->e:I

    or-int/2addr v4, v5

    iput v4, p0, Lq4/d;->e:I

    goto :goto_0

    .line 32
    :cond_8
    iget v4, p0, Lq4/d;->e:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_9

    .line 33
    iget-object v4, p0, Lq4/d;->g:Lq4/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-static {v4}, Lq4/c;->i(Lq4/c;)Lq4/a;

    move-result-object v6

    .line 35
    :cond_9
    sget-object v4, Lq4/c;->k:Ln4/a;

    invoke-virtual {p1, v4, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v4

    check-cast v4, Lq4/c;

    iput-object v4, p0, Lq4/d;->g:Lq4/c;

    if-eqz v6, :cond_a

    .line 36
    invoke-virtual {v6, v4}, Lq4/a;->i(Lq4/c;)V

    .line 37
    invoke-virtual {v6}, Lq4/a;->g()Lq4/c;

    move-result-object v4

    iput-object v4, p0, Lq4/d;->g:Lq4/c;

    .line 38
    :cond_a
    iget v4, p0, Lq4/d;->e:I

    or-int/2addr v4, v5

    iput v4, p0, Lq4/d;->e:I

    goto/16 :goto_0

    .line 39
    :cond_b
    iget v4, p0, Lq4/d;->e:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_c

    .line 40
    iget-object v4, p0, Lq4/d;->f:Lq4/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    new-instance v6, Lq4/a;

    const/4 v5, 0x0

    .line 42
    invoke-direct {v6, v5}, Lq4/a;-><init>(I)V

    .line 43
    invoke-virtual {v6, v4}, Lq4/a;->h(Lq4/b;)V

    .line 44
    :cond_c
    sget-object v4, Lq4/b;->k:Ln4/a;

    invoke-virtual {p1, v4, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v4

    check-cast v4, Lq4/b;

    iput-object v4, p0, Lq4/d;->f:Lq4/b;

    if-eqz v6, :cond_d

    .line 45
    invoke-virtual {v6, v4}, Lq4/a;->h(Lq4/b;)V

    .line 46
    invoke-virtual {v6}, Lq4/a;->f()Lq4/b;

    move-result-object v4

    iput-object v4, p0, Lq4/d;->f:Lq4/b;

    .line 47
    :cond_d
    iget v4, p0, Lq4/d;->e:I

    or-int/2addr v4, v1

    iput v4, p0, Lq4/d;->e:I
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 48
    :goto_2
    :try_start_1
    new-instance p2, Lt4/s;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lt4/s;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p0, p2, Lt4/s;->d:Lt4/b;

    .line 50
    throw p2

    .line 51
    :goto_3
    iput-object p0, p1, Lt4/s;->d:Lt4/b;

    .line 52
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :goto_4
    :try_start_2
    invoke-virtual {v2}, Ll5/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    :catch_2
    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Lq4/d;->d:Lt4/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Lq4/d;->d:Lt4/e;

    throw p1

    .line 55
    :goto_5
    throw p1

    .line 56
    :cond_e
    :try_start_3
    invoke-virtual {v2}, Ll5/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 57
    :catch_3
    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lq4/d;->d:Lt4/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Lq4/d;->d:Lt4/e;

    throw p1

    :goto_6
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-byte v0, p0, Lq4/d;->j:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lq4/d;->j:B

    return v1
.end method

.method public final c()I
    .locals 4

    iget v0, p0, Lq4/d;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lq4/d;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lq4/d;->f:Lq4/b;

    invoke-static {v1, v0}, Ll5/e;->d(ILt4/b;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lq4/d;->e:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lq4/d;->g:Lq4/c;

    invoke-static {v2, v1}, Ll5/e;->d(ILt4/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lq4/d;->e:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget-object v3, p0, Lq4/d;->h:Lq4/c;

    invoke-static {v1, v3}, Ll5/e;->d(ILt4/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lq4/d;->e:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lq4/d;->i:Lq4/c;

    invoke-static {v2, v1}, Ll5/e;->d(ILt4/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lq4/d;->d:Lt4/e;

    invoke-virtual {v1}, Lt4/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lq4/d;->k:I

    return v1
.end method

.method public final d()Lt4/k;
    .locals 0

    invoke-static {}, Ln4/o;->i()Ln4/o;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lt4/k;
    .locals 1

    invoke-static {}, Ln4/o;->i()Ln4/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Ln4/o;->k(Lq4/d;)V

    return-object v0
.end method

.method public final f(Ll5/e;)V
    .locals 3

    invoke-virtual {p0}, Lq4/d;->c()I

    iget v0, p0, Lq4/d;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lq4/d;->f:Lq4/b;

    invoke-virtual {p1, v1, v0}, Ll5/e;->o(ILt4/b;)V

    :cond_0
    iget v0, p0, Lq4/d;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lq4/d;->g:Lq4/c;

    invoke-virtual {p1, v1, v0}, Ll5/e;->o(ILt4/b;)V

    :cond_1
    iget v0, p0, Lq4/d;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Lq4/d;->h:Lq4/c;

    invoke-virtual {p1, v0, v2}, Ll5/e;->o(ILt4/b;)V

    :cond_2
    iget v0, p0, Lq4/d;->e:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lq4/d;->i:Lq4/c;

    invoke-virtual {p1, v1, v0}, Ll5/e;->o(ILt4/b;)V

    :cond_3
    iget-object p0, p0, Lq4/d;->d:Lt4/e;

    invoke-virtual {p1, p0}, Ll5/e;->r(Lt4/e;)V

    return-void
.end method
