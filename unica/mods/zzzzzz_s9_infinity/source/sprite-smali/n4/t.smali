.class public final Ln4/t;
.super Lt4/m;
.source "SourceFile"


# static fields
.field public static final j:Ln4/t;

.field public static final k:Ln4/a;


# instance fields
.field public final e:Lt4/e;

.field public f:I

.field public g:I

.field public h:B

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln4/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    sput-object v0, Ln4/t;->k:Ln4/a;

    new-instance v0, Ln4/t;

    invoke-direct {v0}, Ln4/t;-><init>()V

    sput-object v0, Ln4/t;->j:Ln4/t;

    const/4 v1, 0x0

    iput v1, v0, Ln4/t;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lt4/m;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Ln4/t;->h:B

    .line 8
    iput v0, p0, Ln4/t;->i:I

    .line 9
    sget-object v0, Lt4/e;->d:Lt4/w;

    iput-object v0, p0, Ln4/t;->e:Lt4/e;

    return-void
.end method

.method public constructor <init>(Ln4/s;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lt4/m;-><init>(Lt4/l;)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Ln4/t;->h:B

    .line 3
    iput v0, p0, Ln4/t;->i:I

    .line 4
    iget-object p1, p1, Lt4/k;->d:Lt4/e;

    .line 5
    iput-object p1, p0, Ln4/t;->e:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lt4/f;Lt4/i;)V
    .locals 6

    .line 10
    invoke-direct {p0}, Lt4/m;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Ln4/t;->h:B

    .line 12
    iput v0, p0, Ln4/t;->i:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Ln4/t;->g:I

    .line 14
    new-instance v1, Lt4/d;

    invoke-direct {v1}, Lt4/d;-><init>()V

    const/4 v2, 0x1

    .line 15
    invoke-static {v1, v2}, Ll5/e;->j(Ljava/io/OutputStream;I)Ll5/e;

    move-result-object v3

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lt4/f;->n()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    .line 17
    invoke-virtual {p0, p1, v3, p2, v4}, Lt4/m;->n(Lt4/f;Ll5/e;Lt4/i;I)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    move v0, v2

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

    .line 18
    :cond_2
    iget v4, p0, Ln4/t;->f:I

    or-int/2addr v4, v2

    iput v4, p0, Ln4/t;->f:I

    .line 19
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v4

    .line 20
    iput v4, p0, Ln4/t;->g:I
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 21
    :goto_1
    :try_start_1
    new-instance p2, Lt4/s;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lt4/s;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object p0, p2, Lt4/s;->d:Lt4/b;

    .line 23
    throw p2

    .line 24
    :goto_2
    iput-object p0, p1, Lt4/s;->d:Lt4/b;

    .line 25
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :goto_3
    :try_start_2
    invoke-virtual {v3}, Ll5/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    :catch_2
    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/t;->e:Lt4/e;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/t;->e:Lt4/e;

    throw p1

    .line 28
    :goto_4
    invoke-virtual {p0}, Lt4/m;->m()V

    throw p1

    .line 29
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ll5/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 30
    :catch_3
    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object p1

    iput-object p1, p0, Ln4/t;->e:Lt4/e;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/t;->e:Lt4/e;

    throw p1

    .line 31
    :goto_5
    invoke-virtual {p0}, Lt4/m;->m()V

    return-void
.end method


# virtual methods
.method public final a()Lt4/b;
    .locals 0

    sget-object p0, Ln4/t;->j:Ln4/t;

    return-object p0
.end method

.method public final b()Z
    .locals 3

    iget-byte v0, p0, Ln4/t;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lt4/m;->i()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Ln4/t;->h:B

    return v2

    :cond_2
    iput-byte v1, p0, Ln4/t;->h:B

    return v1
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Ln4/t;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Ln4/t;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Ln4/t;->g:I

    invoke-static {v1, v0}, Ll5/e;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lt4/m;->j()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Ln4/t;->e:Lt4/e;

    invoke-virtual {v0}, Lt4/e;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Ln4/t;->i:I

    return v0
.end method

.method public final d()Lt4/k;
    .locals 0

    new-instance p0, Ln4/s;

    invoke-direct {p0}, Lt4/l;-><init>()V

    return-object p0
.end method

.method public final e()Lt4/k;
    .locals 1

    new-instance v0, Ln4/s;

    invoke-direct {v0}, Lt4/l;-><init>()V

    invoke-virtual {v0, p0}, Ln4/s;->g(Ln4/t;)V

    return-object v0
.end method

.method public final f(Ll5/e;)V
    .locals 3

    invoke-virtual {p0}, Ln4/t;->c()I

    new-instance v0, Lo1/b;

    invoke-direct {v0, p0}, Lo1/b;-><init>(Lt4/m;)V

    iget v1, p0, Ln4/t;->f:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Ln4/t;->g:I

    invoke-virtual {p1, v2, v1}, Ll5/e;->m(II)V

    :cond_0
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lo1/b;->j(ILl5/e;)V

    iget-object p0, p0, Ln4/t;->e:Lt4/e;

    invoke-virtual {p1, p0}, Ll5/e;->r(Lt4/e;)V

    return-void
.end method
