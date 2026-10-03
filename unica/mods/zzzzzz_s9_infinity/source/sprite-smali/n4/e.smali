.class public final Ln4/e;
.super Lt4/p;
.source "SourceFile"


# static fields
.field public static final j:Ln4/e;

.field public static final k:Ln4/a;


# instance fields
.field public final d:Lt4/e;

.field public e:I

.field public f:I

.field public g:Ln4/d;

.field public h:B

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln4/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    sput-object v0, Ln4/e;->k:Ln4/a;

    new-instance v0, Ln4/e;

    invoke-direct {v0}, Ln4/e;-><init>()V

    sput-object v0, Ln4/e;->j:Ln4/e;

    const/4 v1, 0x0

    iput v1, v0, Ln4/e;->f:I

    sget-object v1, Ln4/d;->s:Ln4/d;

    iput-object v1, v0, Ln4/e;->g:Ln4/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Ln4/e;->h:B

    .line 3
    iput v0, p0, Ln4/e;->i:I

    .line 4
    sget-object v0, Lt4/e;->d:Lt4/w;

    iput-object v0, p0, Ln4/e;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Ln4/f;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput-byte v0, p0, Ln4/e;->h:B

    .line 38
    iput v0, p0, Ln4/e;->i:I

    .line 39
    iget-object p1, p1, Lt4/k;->d:Lt4/e;

    .line 40
    iput-object p1, p0, Ln4/e;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lt4/f;Lt4/i;)V
    .locals 7

    .line 5
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Ln4/e;->h:B

    .line 7
    iput v0, p0, Ln4/e;->i:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Ln4/e;->f:I

    .line 9
    sget-object v1, Ln4/d;->s:Ln4/d;

    .line 10
    iput-object v1, p0, Ln4/e;->g:Ln4/d;

    .line 11
    new-instance v1, Lt4/d;

    invoke-direct {v1}, Lt4/d;-><init>()V

    const/4 v2, 0x1

    .line 12
    invoke-static {v1, v2}, Ll5/e;->j(Ljava/io/OutputStream;I)Ll5/e;

    move-result-object v3

    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lt4/f;->n()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    const/16 v5, 0x12

    if-eq v4, v5, :cond_2

    .line 14
    invoke-virtual {p1, v4, v3}, Lt4/f;->q(ILl5/e;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 15
    :cond_2
    iget v4, p0, Ln4/e;->e:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3

    .line 16
    iget-object v4, p0, Ln4/e;->g:Ln4/d;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {}, Ln4/b;->g()Ln4/b;

    move-result-object v6

    .line 18
    invoke-virtual {v6, v4}, Ln4/b;->h(Ln4/d;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 19
    :goto_1
    sget-object v4, Ln4/d;->t:Ln4/a;

    invoke-virtual {p1, v4, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v4

    check-cast v4, Ln4/d;

    iput-object v4, p0, Ln4/e;->g:Ln4/d;

    if-eqz v6, :cond_4

    .line 20
    invoke-virtual {v6, v4}, Ln4/b;->h(Ln4/d;)V

    .line 21
    invoke-virtual {v6}, Ln4/b;->f()Ln4/d;

    move-result-object v4

    iput-object v4, p0, Ln4/e;->g:Ln4/d;

    .line 22
    :cond_4
    iget v4, p0, Ln4/e;->e:I

    or-int/2addr v4, v5

    iput v4, p0, Ln4/e;->e:I

    goto :goto_0

    .line 23
    :cond_5
    iget v4, p0, Ln4/e;->e:I

    or-int/2addr v4, v2

    iput v4, p0, Ln4/e;->e:I

    .line 24
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v4

    .line 25
    iput v4, p0, Ln4/e;->f:I
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 26
    :goto_2
    :try_start_1
    new-instance p2, Lt4/s;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lt4/s;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p0, p2, Lt4/s;->d:Lt4/b;

    .line 28
    throw p2

    .line 29
    :goto_3
    iput-object p0, p1, Lt4/s;->d:Lt4/b;

    .line 30
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :goto_4
    :try_start_2
    invoke-virtual {v3}, Ll5/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    :catch_2
    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/e;->d:Lt4/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/e;->d:Lt4/e;

    throw p1

    .line 33
    :goto_5
    throw p1

    .line 34
    :cond_6
    :try_start_3
    invoke-virtual {v3}, Ll5/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 35
    :catch_3
    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object p1

    iput-object p1, p0, Ln4/e;->d:Lt4/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/e;->d:Lt4/e;

    throw p1

    :goto_6
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 4

    iget-byte v0, p0, Ln4/e;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Ln4/e;->e:I

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v1, :cond_4

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Ln4/e;->g:Ln4/d;

    invoke-virtual {v0}, Ln4/d;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Ln4/e;->h:B

    return v2

    :cond_2
    iput-byte v1, p0, Ln4/e;->h:B

    return v1

    :cond_3
    iput-byte v2, p0, Ln4/e;->h:B

    return v2

    :cond_4
    iput-byte v2, p0, Ln4/e;->h:B

    return v2
.end method

.method public final c()I
    .locals 3

    iget v0, p0, Ln4/e;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Ln4/e;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Ln4/e;->f:I

    invoke-static {v1, v0}, Ll5/e;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ln4/e;->e:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Ln4/e;->g:Ln4/d;

    invoke-static {v2, v1}, Ll5/e;->d(ILt4/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Ln4/e;->d:Lt4/e;

    invoke-virtual {v1}, Lt4/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Ln4/e;->i:I

    return v1
.end method

.method public final d()Lt4/k;
    .locals 1

    new-instance p0, Ln4/f;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ln4/f;-><init>(I)V

    sget-object v0, Ln4/d;->s:Ln4/d;

    iput-object v0, p0, Ln4/f;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public final e()Lt4/k;
    .locals 2

    new-instance v0, Ln4/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ln4/f;-><init>(I)V

    sget-object v1, Ln4/d;->s:Ln4/d;

    iput-object v1, v0, Ln4/f;->g:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ln4/f;->j(Ln4/e;)V

    return-object v0
.end method

.method public final f(Ll5/e;)V
    .locals 2

    invoke-virtual {p0}, Ln4/e;->c()I

    iget v0, p0, Ln4/e;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ln4/e;->f:I

    invoke-virtual {p1, v1, v0}, Ll5/e;->m(II)V

    :cond_0
    iget v0, p0, Ln4/e;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ln4/e;->g:Ln4/d;

    invoke-virtual {p1, v1, v0}, Ll5/e;->o(ILt4/b;)V

    :cond_1
    iget-object p0, p0, Ln4/e;->d:Lt4/e;

    invoke-virtual {p1, p0}, Ll5/e;->r(Lt4/e;)V

    return-void
.end method
