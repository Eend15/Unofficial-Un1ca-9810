.class public final Ln4/Z;
.super Lt4/m;
.source "SourceFile"


# static fields
.field public static final o:Ln4/Z;

.field public static final p:Ln4/a;


# instance fields
.field public final e:Lt4/e;

.field public f:I

.field public g:I

.field public h:I

.field public i:Ln4/Q;

.field public j:I

.field public k:Ln4/Q;

.field public l:I

.field public m:B

.field public n:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln4/a;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    sput-object v0, Ln4/Z;->p:Ln4/a;

    new-instance v0, Ln4/Z;

    invoke-direct {v0}, Ln4/Z;-><init>()V

    sput-object v0, Ln4/Z;->o:Ln4/Z;

    const/4 v1, 0x0

    iput v1, v0, Ln4/Z;->g:I

    iput v1, v0, Ln4/Z;->h:I

    sget-object v2, Ln4/Q;->w:Ln4/Q;

    iput-object v2, v0, Ln4/Z;->i:Ln4/Q;

    iput v1, v0, Ln4/Z;->j:I

    iput-object v2, v0, Ln4/Z;->k:Ln4/Q;

    iput v1, v0, Ln4/Z;->l:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lt4/m;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Ln4/Z;->m:B

    .line 8
    iput v0, p0, Ln4/Z;->n:I

    .line 9
    sget-object v0, Lt4/e;->d:Lt4/w;

    iput-object v0, p0, Ln4/Z;->e:Lt4/e;

    return-void
.end method

.method public constructor <init>(Ln4/Y;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lt4/m;-><init>(Lt4/l;)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Ln4/Z;->m:B

    .line 3
    iput v0, p0, Ln4/Z;->n:I

    .line 4
    iget-object p1, p1, Lt4/k;->d:Lt4/e;

    .line 5
    iput-object p1, p0, Ln4/Z;->e:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lt4/f;Lt4/i;)V
    .locals 9

    .line 10
    invoke-direct {p0}, Lt4/m;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Ln4/Z;->m:B

    .line 12
    iput v0, p0, Ln4/Z;->n:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Ln4/Z;->g:I

    .line 14
    iput v0, p0, Ln4/Z;->h:I

    .line 15
    sget-object v1, Ln4/Q;->w:Ln4/Q;

    .line 16
    iput-object v1, p0, Ln4/Z;->i:Ln4/Q;

    .line 17
    iput v0, p0, Ln4/Z;->j:I

    .line 18
    iput-object v1, p0, Ln4/Z;->k:Ln4/Q;

    .line 19
    iput v0, p0, Ln4/Z;->l:I

    .line 20
    new-instance v1, Lt4/d;

    invoke-direct {v1}, Lt4/d;-><init>()V

    const/4 v2, 0x1

    .line 21
    invoke-static {v1, v2}, Ll5/e;->j(Ljava/io/OutputStream;I)Ll5/e;

    move-result-object v3

    :cond_0
    :goto_0
    if-nez v0, :cond_c

    .line 22
    :try_start_0
    invoke-virtual {p1}, Lt4/f;->n()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_b

    const/16 v6, 0x10

    if-eq v4, v6, :cond_a

    const/16 v7, 0x1a

    const/4 v8, 0x0

    if-eq v4, v7, :cond_7

    const/16 v7, 0x22

    if-eq v4, v7, :cond_4

    const/16 v6, 0x28

    if-eq v4, v6, :cond_3

    const/16 v5, 0x30

    if-eq v4, v5, :cond_2

    .line 23
    invoke-virtual {p0, p1, v3, p2, v4}, Lt4/m;->n(Lt4/f;Ll5/e;Lt4/i;I)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_2

    .line 24
    :cond_2
    iget v4, p0, Ln4/Z;->f:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Ln4/Z;->f:I

    .line 25
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v4

    .line 26
    iput v4, p0, Ln4/Z;->l:I

    goto :goto_0

    .line 27
    :cond_3
    iget v4, p0, Ln4/Z;->f:I

    or-int/2addr v4, v5

    iput v4, p0, Ln4/Z;->f:I

    .line 28
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v4

    .line 29
    iput v4, p0, Ln4/Z;->j:I

    goto :goto_0

    .line 30
    :cond_4
    iget v4, p0, Ln4/Z;->f:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_5

    .line 31
    iget-object v4, p0, Ln4/Z;->k:Ln4/Q;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {v4}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v8

    .line 33
    :cond_5
    sget-object v4, Ln4/Q;->x:Ln4/a;

    invoke-virtual {p1, v4, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v4

    check-cast v4, Ln4/Q;

    iput-object v4, p0, Ln4/Z;->k:Ln4/Q;

    if-eqz v8, :cond_6

    .line 34
    invoke-virtual {v8, v4}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    .line 35
    invoke-virtual {v8}, Ln4/P;->g()Ln4/Q;

    move-result-object v4

    iput-object v4, p0, Ln4/Z;->k:Ln4/Q;

    .line 36
    :cond_6
    iget v4, p0, Ln4/Z;->f:I

    or-int/2addr v4, v6

    iput v4, p0, Ln4/Z;->f:I

    goto :goto_0

    .line 37
    :cond_7
    iget v4, p0, Ln4/Z;->f:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_8

    .line 38
    iget-object v4, p0, Ln4/Z;->i:Ln4/Q;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {v4}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v8

    .line 40
    :cond_8
    sget-object v4, Ln4/Q;->x:Ln4/a;

    invoke-virtual {p1, v4, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v4

    check-cast v4, Ln4/Q;

    iput-object v4, p0, Ln4/Z;->i:Ln4/Q;

    if-eqz v8, :cond_9

    .line 41
    invoke-virtual {v8, v4}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    .line 42
    invoke-virtual {v8}, Ln4/P;->g()Ln4/Q;

    move-result-object v4

    iput-object v4, p0, Ln4/Z;->i:Ln4/Q;

    .line 43
    :cond_9
    iget v4, p0, Ln4/Z;->f:I

    or-int/2addr v4, v5

    iput v4, p0, Ln4/Z;->f:I

    goto/16 :goto_0

    .line 44
    :cond_a
    iget v4, p0, Ln4/Z;->f:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Ln4/Z;->f:I

    .line 45
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v4

    .line 46
    iput v4, p0, Ln4/Z;->h:I

    goto/16 :goto_0

    .line 47
    :cond_b
    iget v4, p0, Ln4/Z;->f:I

    or-int/2addr v4, v2

    iput v4, p0, Ln4/Z;->f:I

    .line 48
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v4

    .line 49
    iput v4, p0, Ln4/Z;->g:I
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 50
    :goto_1
    :try_start_1
    new-instance p2, Lt4/s;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lt4/s;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p0, p2, Lt4/s;->d:Lt4/b;

    .line 52
    throw p2

    .line 53
    :goto_2
    iput-object p0, p1, Lt4/s;->d:Lt4/b;

    .line 54
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :goto_3
    :try_start_2
    invoke-virtual {v3}, Ll5/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    :catch_2
    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/Z;->e:Lt4/e;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/Z;->e:Lt4/e;

    throw p1

    .line 57
    :goto_4
    invoke-virtual {p0}, Lt4/m;->m()V

    throw p1

    .line 58
    :cond_c
    :try_start_3
    invoke-virtual {v3}, Ll5/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 59
    :catch_3
    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object p1

    iput-object p1, p0, Ln4/Z;->e:Lt4/e;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/Z;->e:Lt4/e;

    throw p1

    .line 60
    :goto_5
    invoke-virtual {p0}, Lt4/m;->m()V

    return-void
.end method


# virtual methods
.method public final a()Lt4/b;
    .locals 0

    sget-object p0, Ln4/Z;->o:Ln4/Z;

    return-object p0
.end method

.method public final b()Z
    .locals 5

    iget-byte v0, p0, Ln4/Z;->m:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Ln4/Z;->f:I

    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Ln4/Z;->i:Ln4/Q;

    invoke-virtual {v0}, Ln4/Q;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Ln4/Z;->m:B

    return v2

    :cond_2
    iget v0, p0, Ln4/Z;->f:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Ln4/Z;->k:Ln4/Q;

    invoke-virtual {v0}, Ln4/Q;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Ln4/Z;->m:B

    return v2

    :cond_3
    invoke-virtual {p0}, Lt4/m;->i()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Ln4/Z;->m:B

    return v2

    :cond_4
    iput-byte v1, p0, Ln4/Z;->m:B

    return v1

    :cond_5
    iput-byte v2, p0, Ln4/Z;->m:B

    return v2
.end method

.method public final c()I
    .locals 4

    iget v0, p0, Ln4/Z;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Ln4/Z;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Ln4/Z;->g:I

    invoke-static {v1, v0}, Ll5/e;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ln4/Z;->f:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Ln4/Z;->h:I

    invoke-static {v2, v1}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Ln4/Z;->f:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget-object v3, p0, Ln4/Z;->i:Ln4/Q;

    invoke-static {v1, v3}, Ll5/e;->d(ILt4/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Ln4/Z;->f:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Ln4/Z;->k:Ln4/Q;

    invoke-static {v2, v1}, Ll5/e;->d(ILt4/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Ln4/Z;->f:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget v2, p0, Ln4/Z;->j:I

    invoke-static {v1, v2}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Ln4/Z;->f:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    iget v2, p0, Ln4/Z;->l:I

    invoke-static {v1, v2}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lt4/m;->j()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Ln4/Z;->e:Lt4/e;

    invoke-virtual {v0}, Lt4/e;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Ln4/Z;->n:I

    return v0
.end method

.method public final d()Lt4/k;
    .locals 1

    new-instance p0, Ln4/Y;

    invoke-direct {p0}, Lt4/l;-><init>()V

    sget-object v0, Ln4/Q;->w:Ln4/Q;

    iput-object v0, p0, Ln4/Y;->j:Ln4/Q;

    iput-object v0, p0, Ln4/Y;->l:Ln4/Q;

    return-object p0
.end method

.method public final e()Lt4/k;
    .locals 2

    new-instance v0, Ln4/Y;

    invoke-direct {v0}, Lt4/l;-><init>()V

    sget-object v1, Ln4/Q;->w:Ln4/Q;

    iput-object v1, v0, Ln4/Y;->j:Ln4/Q;

    iput-object v1, v0, Ln4/Y;->l:Ln4/Q;

    invoke-virtual {v0, p0}, Ln4/Y;->h(Ln4/Z;)V

    return-object v0
.end method

.method public final f(Ll5/e;)V
    .locals 4

    invoke-virtual {p0}, Ln4/Z;->c()I

    new-instance v0, Lo1/b;

    invoke-direct {v0, p0}, Lo1/b;-><init>(Lt4/m;)V

    iget v1, p0, Ln4/Z;->f:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Ln4/Z;->g:I

    invoke-virtual {p1, v2, v1}, Ll5/e;->m(II)V

    :cond_0
    iget v1, p0, Ln4/Z;->f:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Ln4/Z;->h:I

    invoke-virtual {p1, v2, v1}, Ll5/e;->m(II)V

    :cond_1
    iget v1, p0, Ln4/Z;->f:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    iget-object v3, p0, Ln4/Z;->i:Ln4/Q;

    invoke-virtual {p1, v1, v3}, Ll5/e;->o(ILt4/b;)V

    :cond_2
    iget v1, p0, Ln4/Z;->f:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Ln4/Z;->k:Ln4/Q;

    invoke-virtual {p1, v2, v1}, Ll5/e;->o(ILt4/b;)V

    :cond_3
    iget v1, p0, Ln4/Z;->f:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    iget v2, p0, Ln4/Z;->j:I

    invoke-virtual {p1, v1, v2}, Ll5/e;->m(II)V

    :cond_4
    iget v1, p0, Ln4/Z;->f:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x6

    iget v2, p0, Ln4/Z;->l:I

    invoke-virtual {p1, v1, v2}, Ll5/e;->m(II)V

    :cond_5
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lo1/b;->j(ILl5/e;)V

    iget-object p0, p0, Ln4/Z;->e:Lt4/e;

    invoke-virtual {p1, p0}, Ll5/e;->r(Lt4/e;)V

    return-void
.end method
