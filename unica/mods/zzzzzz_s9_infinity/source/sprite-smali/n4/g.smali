.class public final Ln4/g;
.super Lt4/p;
.source "SourceFile"


# static fields
.field public static final j:Ln4/g;

.field public static final k:Ln4/a;


# instance fields
.field public final d:Lt4/e;

.field public e:I

.field public f:I

.field public g:Ljava/util/List;

.field public h:B

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln4/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    sput-object v0, Ln4/g;->k:Ln4/a;

    new-instance v0, Ln4/g;

    invoke-direct {v0}, Ln4/g;-><init>()V

    sput-object v0, Ln4/g;->j:Ln4/g;

    const/4 v1, 0x0

    iput v1, v0, Ln4/g;->f:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/g;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Ln4/g;->h:B

    .line 3
    iput v0, p0, Ln4/g;->i:I

    .line 4
    sget-object v0, Lt4/e;->d:Lt4/w;

    iput-object v0, p0, Ln4/g;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Ln4/f;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput-byte v0, p0, Ln4/g;->h:B

    .line 33
    iput v0, p0, Ln4/g;->i:I

    .line 34
    iget-object p1, p1, Lt4/k;->d:Lt4/e;

    .line 35
    iput-object p1, p0, Ln4/g;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lt4/f;Lt4/i;)V
    .locals 8

    .line 5
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Ln4/g;->h:B

    .line 7
    iput v0, p0, Ln4/g;->i:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Ln4/g;->f:I

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/g;->g:Ljava/util/List;

    .line 10
    new-instance v1, Lt4/d;

    invoke-direct {v1}, Lt4/d;-><init>()V

    const/4 v2, 0x1

    .line 11
    invoke-static {v1, v2}, Ll5/e;->j(Ljava/io/OutputStream;I)Ll5/e;

    move-result-object v3

    move v4, v0

    :cond_0
    :goto_0
    const/4 v5, 0x2

    if-nez v0, :cond_6

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lt4/f;->n()I

    move-result v6

    if-eqz v6, :cond_1

    const/16 v7, 0x8

    if-eq v6, v7, :cond_4

    const/16 v7, 0x12

    if-eq v6, v7, :cond_2

    .line 13
    invoke-virtual {p1, v6, v3}, Lt4/f;->q(ILl5/e;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    and-int/lit8 v6, v4, 0x2

    if-eq v6, v5, :cond_3

    .line 14
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Ln4/g;->g:Ljava/util/List;

    move v4, v5

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
    iget-object v6, p0, Ln4/g;->g:Ljava/util/List;

    sget-object v7, Ln4/e;->k:Ln4/a;

    invoke-virtual {p1, v7, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_4
    iget v6, p0, Ln4/g;->e:I

    or-int/2addr v6, v2

    iput v6, p0, Ln4/g;->e:I

    .line 17
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v6

    .line 18
    iput v6, p0, Ln4/g;->f:I
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 19
    :goto_2
    :try_start_1
    new-instance p2, Lt4/s;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lt4/s;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p0, p2, Lt4/s;->d:Lt4/b;

    .line 21
    throw p2

    .line 22
    :goto_3
    iput-object p0, p1, Lt4/s;->d:Lt4/b;

    .line 23
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v4, 0x2

    if-ne p2, v5, :cond_5

    .line 24
    iget-object p2, p0, Ln4/g;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ln4/g;->g:Ljava/util/List;

    .line 25
    :cond_5
    :try_start_2
    invoke-virtual {v3}, Ll5/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    :catch_2
    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/g;->d:Lt4/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/g;->d:Lt4/e;

    throw p1

    .line 27
    :goto_5
    throw p1

    :cond_6
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v5, :cond_7

    .line 28
    iget-object p1, p0, Ln4/g;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ln4/g;->g:Ljava/util/List;

    .line 29
    :cond_7
    :try_start_3
    invoke-virtual {v3}, Ll5/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 30
    :catch_3
    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object p1

    iput-object p1, p0, Ln4/g;->d:Lt4/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/g;->d:Lt4/e;

    throw p1

    :goto_6
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 4

    iget-byte v0, p0, Ln4/g;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Ln4/g;->e:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    move v0, v2

    :goto_0
    iget-object v3, p0, Ln4/g;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Ln4/g;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/e;

    invoke-virtual {v3}, Ln4/e;->b()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Ln4/g;->h:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput-byte v1, p0, Ln4/g;->h:B

    return v1

    :cond_4
    iput-byte v2, p0, Ln4/g;->h:B

    return v2
.end method

.method public final c()I
    .locals 4

    iget v0, p0, Ln4/g;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Ln4/g;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Ln4/g;->f:I

    invoke-static {v1, v0}, Ll5/e;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v1, p0, Ln4/g;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Ln4/g;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt4/b;

    const/4 v3, 0x2

    invoke-static {v3, v1}, Ll5/e;->d(ILt4/b;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ln4/g;->d:Lt4/e;

    invoke-virtual {v1}, Lt4/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Ln4/g;->i:I

    return v1
.end method

.method public final d()Lt4/k;
    .locals 1

    new-instance p0, Ln4/f;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ln4/f;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ln4/f;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public final e()Lt4/k;
    .locals 2

    new-instance v0, Ln4/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln4/f;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/f;->g:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ln4/f;->k(Ln4/g;)V

    return-object v0
.end method

.method public final f(Ll5/e;)V
    .locals 3

    invoke-virtual {p0}, Ln4/g;->c()I

    iget v0, p0, Ln4/g;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ln4/g;->f:I

    invoke-virtual {p1, v1, v0}, Ll5/e;->m(II)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ln4/g;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ln4/g;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt4/b;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Ll5/e;->o(ILt4/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ln4/g;->d:Lt4/e;

    invoke-virtual {p1, p0}, Ll5/e;->r(Lt4/e;)V

    return-void
.end method
