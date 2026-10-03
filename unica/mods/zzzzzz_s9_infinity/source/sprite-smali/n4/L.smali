.class public final Ln4/L;
.super Lt4/p;
.source "SourceFile"


# static fields
.field public static final h:Ln4/L;

.field public static final i:Ln4/a;


# instance fields
.field public final d:Lt4/e;

.field public e:Lt4/u;

.field public f:B

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln4/a;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    sput-object v0, Ln4/L;->i:Ln4/a;

    new-instance v0, Ln4/L;

    invoke-direct {v0}, Ln4/L;-><init>()V

    sput-object v0, Ln4/L;->h:Ln4/L;

    sget-object v1, Lt4/t;->e:Lt4/J;

    iput-object v1, v0, Ln4/L;->e:Lt4/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Ln4/L;->f:B

    .line 3
    iput v0, p0, Ln4/L;->g:I

    .line 4
    sget-object v0, Lt4/e;->d:Lt4/w;

    iput-object v0, p0, Ln4/L;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Ln4/m;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput-byte v0, p0, Ln4/L;->f:B

    .line 30
    iput v0, p0, Ln4/L;->g:I

    .line 31
    iget-object p1, p1, Lt4/k;->d:Lt4/e;

    .line 32
    iput-object p1, p0, Ln4/L;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lt4/f;)V
    .locals 7

    .line 5
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Ln4/L;->f:B

    .line 7
    iput v0, p0, Ln4/L;->g:I

    .line 8
    sget-object v0, Lt4/t;->e:Lt4/J;

    iput-object v0, p0, Ln4/L;->e:Lt4/u;

    .line 9
    new-instance v0, Lt4/d;

    invoke-direct {v0}, Lt4/d;-><init>()V

    const/4 v1, 0x1

    .line 10
    invoke-static {v0, v1}, Ll5/e;->j(Ljava/io/OutputStream;I)Ll5/e;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-nez v3, :cond_5

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lt4/f;->n()I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v6, 0xa

    if-eq v5, v6, :cond_2

    .line 12
    invoke-virtual {p1, v5, v2}, Lt4/f;->q(ILl5/e;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    move v3, v1

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Lt4/f;->e()Lt4/w;

    move-result-object v5

    if-eq v4, v1, :cond_3

    .line 14
    new-instance v6, Lt4/t;

    invoke-direct {v6}, Lt4/t;-><init>()V

    iput-object v6, p0, Ln4/L;->e:Lt4/u;

    move v4, v1

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

    .line 15
    :cond_3
    :goto_1
    iget-object v6, p0, Ln4/L;->e:Lt4/u;

    invoke-interface {v6, v5}, Lt4/u;->c(Lt4/w;)V
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 16
    :goto_2
    :try_start_1
    new-instance v3, Lt4/s;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lt4/s;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p0, v3, Lt4/s;->d:Lt4/b;

    .line 18
    throw v3

    .line 19
    :goto_3
    iput-object p0, p1, Lt4/s;->d:Lt4/b;

    .line 20
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    if-ne v4, v1, :cond_4

    .line 21
    iget-object v1, p0, Ln4/L;->e:Lt4/u;

    invoke-interface {v1}, Lt4/u;->b()Lt4/J;

    move-result-object v1

    iput-object v1, p0, Ln4/L;->e:Lt4/u;

    .line 22
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Ll5/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23
    :catch_2
    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object v0

    iput-object v0, p0, Ln4/L;->d:Lt4/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object v0

    iput-object v0, p0, Ln4/L;->d:Lt4/e;

    throw p1

    .line 24
    :goto_5
    throw p1

    :cond_5
    if-ne v4, v1, :cond_6

    .line 25
    iget-object p1, p0, Ln4/L;->e:Lt4/u;

    invoke-interface {p1}, Lt4/u;->b()Lt4/J;

    move-result-object p1

    iput-object p1, p0, Ln4/L;->e:Lt4/u;

    .line 26
    :cond_6
    :try_start_3
    invoke-virtual {v2}, Ll5/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 27
    :catch_3
    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p1

    iput-object p1, p0, Ln4/L;->d:Lt4/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object v0

    iput-object v0, p0, Ln4/L;->d:Lt4/e;

    throw p1

    :goto_6
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-byte v0, p0, Ln4/L;->f:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Ln4/L;->f:B

    return v1
.end method

.method public final c()I
    .locals 4

    iget v0, p0, Ln4/L;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ln4/L;->e:Lt4/u;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ln4/L;->e:Lt4/u;

    invoke-interface {v2, v0}, Lt4/u;->f(I)Lt4/e;

    move-result-object v2

    invoke-virtual {v2}, Lt4/e;->size()I

    move-result v3

    invoke-static {v3}, Ll5/e;->f(I)I

    move-result v3

    invoke-virtual {v2}, Lt4/e;->size()I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ln4/L;->e:Lt4/u;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Ln4/L;->d:Lt4/e;

    invoke-virtual {v1}, Lt4/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Ln4/L;->g:I

    return v1
.end method

.method public final d()Lt4/k;
    .locals 1

    new-instance p0, Ln4/m;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ln4/m;-><init>(I)V

    sget-object v0, Lt4/t;->e:Lt4/J;

    iput-object v0, p0, Ln4/m;->g:Ljava/util/List;

    return-object p0
.end method

.method public final e()Lt4/k;
    .locals 2

    new-instance v0, Ln4/m;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ln4/m;-><init>(I)V

    sget-object v1, Lt4/t;->e:Lt4/J;

    iput-object v1, v0, Ln4/m;->g:Ljava/util/List;

    invoke-virtual {v0, p0}, Ln4/m;->l(Ln4/L;)V

    return-object v0
.end method

.method public final f(Ll5/e;)V
    .locals 4

    invoke-virtual {p0}, Ln4/L;->c()I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ln4/L;->e:Lt4/u;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ln4/L;->e:Lt4/u;

    invoke-interface {v1, v0}, Lt4/u;->f(I)Lt4/e;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Ll5/e;->x(II)V

    invoke-virtual {v1}, Lt4/e;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ll5/e;->v(I)V

    invoke-virtual {p1, v1}, Ll5/e;->r(Lt4/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ln4/L;->d:Lt4/e;

    invoke-virtual {p1, p0}, Ll5/e;->r(Lt4/e;)V

    return-void
.end method
