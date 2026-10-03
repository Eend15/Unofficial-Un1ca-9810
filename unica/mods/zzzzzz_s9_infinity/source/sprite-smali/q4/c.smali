.class public final Lq4/c;
.super Lt4/p;
.source "SourceFile"


# static fields
.field public static final j:Lq4/c;

.field public static final k:Ln4/a;


# instance fields
.field public final d:Lt4/e;

.field public e:I

.field public f:I

.field public g:I

.field public h:B

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln4/a;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    sput-object v0, Lq4/c;->k:Ln4/a;

    new-instance v0, Lq4/c;

    invoke-direct {v0}, Lq4/c;-><init>()V

    sput-object v0, Lq4/c;->j:Lq4/c;

    const/4 v1, 0x0

    iput v1, v0, Lq4/c;->f:I

    iput v1, v0, Lq4/c;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lq4/c;->h:B

    .line 3
    iput v0, p0, Lq4/c;->i:I

    .line 4
    sget-object v0, Lt4/e;->d:Lt4/w;

    iput-object v0, p0, Lq4/c;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lq4/a;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput-byte v0, p0, Lq4/c;->h:B

    .line 32
    iput v0, p0, Lq4/c;->i:I

    .line 33
    iget-object p1, p1, Lt4/k;->d:Lt4/e;

    .line 34
    iput-object p1, p0, Lq4/c;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lt4/f;)V
    .locals 6

    .line 5
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lq4/c;->h:B

    .line 7
    iput v0, p0, Lq4/c;->i:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lq4/c;->f:I

    .line 9
    iput v0, p0, Lq4/c;->g:I

    .line 10
    new-instance v1, Lt4/d;

    invoke-direct {v1}, Lt4/d;-><init>()V

    const/4 v2, 0x1

    .line 11
    invoke-static {v1, v2}, Ll5/e;->j(Ljava/io/OutputStream;I)Ll5/e;

    move-result-object v3

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lt4/f;->n()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    const/16 v5, 0x10

    if-eq v4, v5, :cond_2

    .line 13
    invoke-virtual {p1, v4, v3}, Lt4/f;->q(ILl5/e;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 14
    :cond_2
    iget v4, p0, Lq4/c;->e:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lq4/c;->e:I

    .line 15
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v4

    .line 16
    iput v4, p0, Lq4/c;->g:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    .line 17
    :cond_3
    iget v4, p0, Lq4/c;->e:I

    or-int/2addr v4, v2

    iput v4, p0, Lq4/c;->e:I

    .line 18
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v4

    .line 19
    iput v4, p0, Lq4/c;->f:I
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 20
    :goto_1
    :try_start_1
    new-instance v0, Lt4/s;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lt4/s;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p0, v0, Lt4/s;->d:Lt4/b;

    .line 22
    throw v0

    .line 23
    :goto_2
    iput-object p0, p1, Lt4/s;->d:Lt4/b;

    .line 24
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :goto_3
    :try_start_2
    invoke-virtual {v3}, Ll5/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    :catch_2
    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object v0

    iput-object v0, p0, Lq4/c;->d:Lt4/e;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object v0

    iput-object v0, p0, Lq4/c;->d:Lt4/e;

    throw p1

    .line 27
    :goto_4
    throw p1

    .line 28
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ll5/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 29
    :catch_3
    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lq4/c;->d:Lt4/e;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object v0

    iput-object v0, p0, Lq4/c;->d:Lt4/e;

    throw p1

    :goto_5
    return-void
.end method

.method public static i(Lq4/c;)Lq4/a;
    .locals 2

    new-instance v0, Lq4/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lq4/a;-><init>(I)V

    invoke-virtual {v0, p0}, Lq4/a;->i(Lq4/c;)V

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-byte v0, p0, Lq4/c;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lq4/c;->h:B

    return v1
.end method

.method public final c()I
    .locals 3

    iget v0, p0, Lq4/c;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lq4/c;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lq4/c;->f:I

    invoke-static {v1, v0}, Ll5/e;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lq4/c;->e:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lq4/c;->g:I

    invoke-static {v2, v1}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lq4/c;->d:Lt4/e;

    invoke-virtual {v1}, Lt4/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lq4/c;->i:I

    return v1
.end method

.method public final d()Lt4/k;
    .locals 1

    new-instance p0, Lq4/a;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lq4/a;-><init>(I)V

    return-object p0
.end method

.method public final e()Lt4/k;
    .locals 0

    invoke-static {p0}, Lq4/c;->i(Lq4/c;)Lq4/a;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ll5/e;)V
    .locals 2

    invoke-virtual {p0}, Lq4/c;->c()I

    iget v0, p0, Lq4/c;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lq4/c;->f:I

    invoke-virtual {p1, v1, v0}, Ll5/e;->m(II)V

    :cond_0
    iget v0, p0, Lq4/c;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lq4/c;->g:I

    invoke-virtual {p1, v1, v0}, Ll5/e;->m(II)V

    :cond_1
    iget-object p0, p0, Lq4/c;->d:Lt4/e;

    invoke-virtual {p1, p0}, Ll5/e;->r(Lt4/e;)V

    return-void
.end method
