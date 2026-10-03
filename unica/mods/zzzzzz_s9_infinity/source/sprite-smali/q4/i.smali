.class public final Lq4/i;
.super Lt4/p;
.source "SourceFile"


# static fields
.field public static final j:Lq4/i;

.field public static final k:Ln4/a;


# instance fields
.field public final d:Lt4/e;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:I

.field public h:B

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln4/a;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    sput-object v0, Lq4/i;->k:Ln4/a;

    new-instance v0, Lq4/i;

    invoke-direct {v0}, Lq4/i;-><init>()V

    sput-object v0, Lq4/i;->j:Lq4/i;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq4/i;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lq4/i;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lq4/i;->g:I

    .line 3
    iput-byte v0, p0, Lq4/i;->h:B

    .line 4
    iput v0, p0, Lq4/i;->i:I

    .line 5
    sget-object v0, Lt4/e;->d:Lt4/w;

    iput-object v0, p0, Lq4/i;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lq4/e;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lq4/i;->g:I

    .line 47
    iput-byte v0, p0, Lq4/i;->h:B

    .line 48
    iput v0, p0, Lq4/i;->i:I

    .line 49
    iget-object p1, p1, Lt4/k;->d:Lt4/e;

    .line 50
    iput-object p1, p0, Lq4/i;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lt4/f;Lt4/i;)V
    .locals 9

    .line 6
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lq4/i;->g:I

    .line 8
    iput-byte v0, p0, Lq4/i;->h:B

    .line 9
    iput v0, p0, Lq4/i;->i:I

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq4/i;->e:Ljava/util/List;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lq4/i;->f:Ljava/util/List;

    .line 12
    new-instance v0, Lt4/d;

    invoke-direct {v0}, Lt4/d;-><init>()V

    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Ll5/e;->j(Ljava/io/OutputStream;I)Ll5/e;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/4 v5, 0x2

    if-nez v3, :cond_b

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lt4/f;->n()I

    move-result v6

    if-eqz v6, :cond_1

    const/16 v7, 0xa

    if-eq v6, v7, :cond_7

    const/16 v7, 0x28

    if-eq v6, v7, :cond_5

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_2

    .line 15
    invoke-virtual {p1, v6, v2}, Lt4/f;->q(ILl5/e;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    move v3, v1

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v6

    .line 17
    invoke-virtual {p1, v6}, Lt4/f;->d(I)I

    move-result v6

    and-int/lit8 v7, v4, 0x2

    if-eq v7, v5, :cond_3

    .line 18
    invoke-virtual {p1}, Lt4/f;->b()I

    move-result v7

    if-lez v7, :cond_3

    .line 19
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lq4/i;->f:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

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

    .line 20
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lt4/f;->b()I

    move-result v7

    if-lez v7, :cond_4

    .line 21
    iget-object v7, p0, Lq4/i;->f:Ljava/util/List;

    .line 22
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v8

    .line 23
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 24
    :cond_4
    invoke-virtual {p1, v6}, Lt4/f;->c(I)V

    goto :goto_0

    :cond_5
    and-int/lit8 v6, v4, 0x2

    if-eq v6, v5, :cond_6

    .line 25
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lq4/i;->f:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

    .line 26
    :cond_6
    iget-object v6, p0, Lq4/i;->f:Ljava/util/List;

    .line 27
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v7

    .line 28
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    and-int/lit8 v6, v4, 0x1

    if-eq v6, v1, :cond_8

    .line 29
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lq4/i;->e:Ljava/util/List;

    or-int/lit8 v4, v4, 0x1

    .line 30
    :cond_8
    iget-object v6, p0, Lq4/i;->e:Ljava/util/List;

    sget-object v7, Lq4/h;->q:Ln4/a;

    invoke-virtual {p1, v7, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 31
    :goto_2
    :try_start_1
    new-instance p2, Lt4/s;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lt4/s;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p0, p2, Lt4/s;->d:Lt4/b;

    .line 33
    throw p2

    .line 34
    :goto_3
    iput-object p0, p1, Lt4/s;->d:Lt4/b;

    .line 35
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v4, 0x1

    if-ne p2, v1, :cond_9

    .line 36
    iget-object p2, p0, Lq4/i;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lq4/i;->e:Ljava/util/List;

    :cond_9
    and-int/lit8 p2, v4, 0x2

    if-ne p2, v5, :cond_a

    .line 37
    iget-object p2, p0, Lq4/i;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lq4/i;->f:Ljava/util/List;

    .line 38
    :cond_a
    :try_start_2
    invoke-virtual {v2}, Ll5/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    :catch_2
    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Lq4/i;->d:Lt4/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Lq4/i;->d:Lt4/e;

    throw p1

    .line 40
    :goto_5
    throw p1

    :cond_b
    and-int/lit8 p1, v4, 0x1

    if-ne p1, v1, :cond_c

    .line 41
    iget-object p1, p0, Lq4/i;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lq4/i;->e:Ljava/util/List;

    :cond_c
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v5, :cond_d

    .line 42
    iget-object p1, p0, Lq4/i;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lq4/i;->f:Ljava/util/List;

    .line 43
    :cond_d
    :try_start_3
    invoke-virtual {v2}, Ll5/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 44
    :catch_3
    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p1

    iput-object p1, p0, Lq4/i;->d:Lt4/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Lq4/i;->d:Lt4/e;

    throw p1

    :goto_6
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-byte v0, p0, Lq4/i;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lq4/i;->h:B

    return v1
.end method

.method public final c()I
    .locals 5

    iget v0, p0, Lq4/i;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lq4/i;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lq4/i;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt4/b;

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ll5/e;->d(ILt4/b;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v3, p0, Lq4/i;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lq4/i;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ll5/e;->c(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v2, v1

    iget-object v0, p0, Lq4/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ll5/e;->c(I)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    iput v1, p0, Lq4/i;->g:I

    iget-object v0, p0, Lq4/i;->d:Lt4/e;

    invoke-virtual {v0}, Lt4/e;->size()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lq4/i;->i:I

    return v0
.end method

.method public final d()Lt4/k;
    .locals 0

    invoke-static {}, Lq4/e;->g()Lq4/e;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lt4/k;
    .locals 1

    invoke-static {}, Lq4/e;->g()Lq4/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lq4/e;->h(Lq4/i;)V

    return-object v0
.end method

.method public final f(Ll5/e;)V
    .locals 4

    invoke-virtual {p0}, Lq4/i;->c()I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lq4/i;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lq4/i;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/b;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Ll5/e;->o(ILt4/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lq4/i;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x2a

    invoke-virtual {p1, v1}, Ll5/e;->v(I)V

    iget v1, p0, Lq4/i;->g:I

    invoke-virtual {p1, v1}, Ll5/e;->v(I)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lq4/i;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lq4/i;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Ll5/e;->n(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lq4/i;->d:Lt4/e;

    invoke-virtual {p1, p0}, Ll5/e;->r(Lt4/e;)V

    return-void
.end method
