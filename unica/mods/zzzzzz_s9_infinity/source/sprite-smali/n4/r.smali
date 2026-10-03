.class public final Ln4/r;
.super Lt4/p;
.source "SourceFile"


# static fields
.field public static final l:Ln4/r;

.field public static final m:Ln4/a;


# instance fields
.field public final d:Lt4/e;

.field public e:I

.field public f:Ln4/p;

.field public g:Ljava/util/List;

.field public h:Ln4/w;

.field public i:Ln4/q;

.field public j:B

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln4/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    sput-object v0, Ln4/r;->m:Ln4/a;

    new-instance v0, Ln4/r;

    invoke-direct {v0}, Ln4/r;-><init>()V

    sput-object v0, Ln4/r;->l:Ln4/r;

    sget-object v1, Ln4/p;->e:Ln4/p;

    iput-object v1, v0, Ln4/r;->f:Ln4/p;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/r;->g:Ljava/util/List;

    sget-object v1, Ln4/w;->o:Ln4/w;

    iput-object v1, v0, Ln4/r;->h:Ln4/w;

    sget-object v1, Ln4/q;->e:Ln4/q;

    iput-object v1, v0, Ln4/r;->i:Ln4/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Ln4/r;->j:B

    .line 3
    iput v0, p0, Ln4/r;->k:I

    .line 4
    sget-object v0, Lt4/e;->d:Lt4/w;

    iput-object v0, p0, Ln4/r;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Ln4/o;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput-byte v0, p0, Ln4/r;->j:B

    .line 55
    iput v0, p0, Ln4/r;->k:I

    .line 56
    iget-object p1, p1, Lt4/k;->d:Lt4/e;

    .line 57
    iput-object p1, p0, Ln4/r;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lt4/f;Lt4/i;)V
    .locals 11

    .line 5
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Ln4/r;->j:B

    .line 7
    iput v0, p0, Ln4/r;->k:I

    .line 8
    sget-object v0, Ln4/p;->e:Ln4/p;

    iput-object v0, p0, Ln4/r;->f:Ln4/p;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/r;->g:Ljava/util/List;

    .line 10
    sget-object v1, Ln4/w;->o:Ln4/w;

    .line 11
    iput-object v1, p0, Ln4/r;->h:Ln4/w;

    .line 12
    sget-object v1, Ln4/q;->e:Ln4/q;

    iput-object v1, p0, Ln4/r;->i:Ln4/q;

    .line 13
    new-instance v2, Lt4/d;

    invoke-direct {v2}, Lt4/d;-><init>()V

    const/4 v3, 0x1

    .line 14
    invoke-static {v2, v3}, Ll5/e;->j(Ljava/io/OutputStream;I)Ll5/e;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :cond_0
    :goto_0
    const/4 v7, 0x2

    if-nez v5, :cond_12

    .line 15
    :try_start_0
    invoke-virtual {p1}, Lt4/f;->n()I

    move-result v8

    if-eqz v8, :cond_1

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eq v8, v9, :cond_c

    const/16 v9, 0x12

    if-eq v8, v9, :cond_a

    const/16 v9, 0x1a

    if-eq v8, v9, :cond_7

    const/16 v9, 0x20

    if-eq v8, v9, :cond_2

    .line 16
    invoke-virtual {p1, v8, v4}, Lt4/f;->q(ILl5/e;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_1
    move v5, v3

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v9

    if-eqz v9, :cond_5

    if-eq v9, v3, :cond_4

    if-eq v9, v7, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    sget-object v10, Ln4/q;->g:Ln4/q;

    goto :goto_1

    .line 19
    :cond_4
    sget-object v10, Ln4/q;->f:Ln4/q;

    goto :goto_1

    :cond_5
    move-object v10, v1

    :goto_1
    if-nez v10, :cond_6

    .line 20
    invoke-virtual {v4, v8}, Ll5/e;->v(I)V

    .line 21
    invoke-virtual {v4, v9}, Ll5/e;->v(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    .line 22
    :cond_6
    iget v8, p0, Ln4/r;->e:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Ln4/r;->e:I

    .line 23
    iput-object v10, p0, Ln4/r;->i:Ln4/q;

    goto :goto_0

    .line 24
    :cond_7
    iget v8, p0, Ln4/r;->e:I

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_8

    .line 25
    iget-object v8, p0, Ln4/r;->h:Ln4/w;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {}, Ln4/u;->g()Ln4/u;

    move-result-object v10

    .line 27
    invoke-virtual {v10, v8}, Ln4/u;->h(Ln4/w;)V

    .line 28
    :cond_8
    sget-object v8, Ln4/w;->p:Ln4/a;

    invoke-virtual {p1, v8, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v8

    check-cast v8, Ln4/w;

    iput-object v8, p0, Ln4/r;->h:Ln4/w;

    if-eqz v10, :cond_9

    .line 29
    invoke-virtual {v10, v8}, Ln4/u;->h(Ln4/w;)V

    .line 30
    invoke-virtual {v10}, Ln4/u;->f()Ln4/w;

    move-result-object v8

    iput-object v8, p0, Ln4/r;->h:Ln4/w;

    .line 31
    :cond_9
    iget v8, p0, Ln4/r;->e:I

    or-int/2addr v8, v7

    iput v8, p0, Ln4/r;->e:I

    goto :goto_0

    :cond_a
    and-int/lit8 v8, v6, 0x2

    if-eq v8, v7, :cond_b

    .line 32
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Ln4/r;->g:Ljava/util/List;

    move v6, v7

    .line 33
    :cond_b
    iget-object v8, p0, Ln4/r;->g:Ljava/util/List;

    sget-object v9, Ln4/w;->p:Ln4/a;

    invoke-virtual {p1, v9, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 34
    :cond_c
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v9

    if-eqz v9, :cond_f

    if-eq v9, v3, :cond_e

    if-eq v9, v7, :cond_d

    goto :goto_2

    .line 35
    :cond_d
    sget-object v10, Ln4/p;->g:Ln4/p;

    goto :goto_2

    .line 36
    :cond_e
    sget-object v10, Ln4/p;->f:Ln4/p;

    goto :goto_2

    :cond_f
    move-object v10, v0

    :goto_2
    if-nez v10, :cond_10

    .line 37
    invoke-virtual {v4, v8}, Ll5/e;->v(I)V

    .line 38
    invoke-virtual {v4, v9}, Ll5/e;->v(I)V

    goto/16 :goto_0

    .line 39
    :cond_10
    iget v8, p0, Ln4/r;->e:I

    or-int/2addr v8, v3

    iput v8, p0, Ln4/r;->e:I

    .line 40
    iput-object v10, p0, Ln4/r;->f:Ln4/p;
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 41
    :goto_3
    :try_start_1
    new-instance p2, Lt4/s;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lt4/s;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p0, p2, Lt4/s;->d:Lt4/b;

    .line 43
    throw p2

    .line 44
    :goto_4
    iput-object p0, p1, Lt4/s;->d:Lt4/b;

    .line 45
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v6, 0x2

    if-ne p2, v7, :cond_11

    .line 46
    iget-object p2, p0, Ln4/r;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ln4/r;->g:Ljava/util/List;

    .line 47
    :cond_11
    :try_start_2
    invoke-virtual {v4}, Ll5/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    :catch_2
    invoke-virtual {v2}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/r;->d:Lt4/e;

    goto :goto_6

    :catchall_1
    move-exception p1

    invoke-virtual {v2}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/r;->d:Lt4/e;

    throw p1

    .line 49
    :goto_6
    throw p1

    :cond_12
    and-int/lit8 p1, v6, 0x2

    if-ne p1, v7, :cond_13

    .line 50
    iget-object p1, p0, Ln4/r;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ln4/r;->g:Ljava/util/List;

    .line 51
    :cond_13
    :try_start_3
    invoke-virtual {v4}, Ll5/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 52
    :catch_3
    invoke-virtual {v2}, Lt4/d;->h()Lt4/e;

    move-result-object p1

    iput-object p1, p0, Ln4/r;->d:Lt4/e;

    goto :goto_7

    :catchall_2
    move-exception p1

    invoke-virtual {v2}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/r;->d:Lt4/e;

    throw p1

    :goto_7
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 4

    iget-byte v0, p0, Ln4/r;->j:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Ln4/r;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Ln4/r;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/w;

    invoke-virtual {v3}, Ln4/w;->b()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Ln4/r;->j:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Ln4/r;->e:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Ln4/r;->h:Ln4/w;

    invoke-virtual {v0}, Ln4/w;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Ln4/r;->j:B

    return v2

    :cond_4
    iput-byte v1, p0, Ln4/r;->j:B

    return v1
.end method

.method public final c()I
    .locals 4

    iget v0, p0, Ln4/r;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Ln4/r;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ln4/r;->f:Ln4/p;

    iget v0, v0, Ln4/p;->d:I

    invoke-static {v1, v0}, Ll5/e;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v1, p0, Ln4/r;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Ln4/r;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt4/b;

    invoke-static {v3, v1}, Ll5/e;->d(ILt4/b;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Ln4/r;->e:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Ln4/r;->h:Ln4/w;

    invoke-static {v1, v2}, Ll5/e;->d(ILt4/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Ln4/r;->e:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Ln4/r;->i:Ln4/q;

    iget v1, v1, Ln4/q;->d:I

    invoke-static {v2, v1}, Ll5/e;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Ln4/r;->d:Lt4/e;

    invoke-virtual {v1}, Lt4/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Ln4/r;->k:I

    return v1
.end method

.method public final d()Lt4/k;
    .locals 0

    invoke-static {}, Ln4/o;->h()Ln4/o;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lt4/k;
    .locals 1

    invoke-static {}, Ln4/o;->h()Ln4/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Ln4/o;->j(Ln4/r;)V

    return-object v0
.end method

.method public final f(Ll5/e;)V
    .locals 3

    invoke-virtual {p0}, Ln4/r;->c()I

    iget v0, p0, Ln4/r;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ln4/r;->f:Ln4/p;

    iget v0, v0, Ln4/p;->d:I

    invoke-virtual {p1, v1, v0}, Ll5/e;->l(II)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ln4/r;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ln4/r;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt4/b;

    invoke-virtual {p1, v2, v1}, Ll5/e;->o(ILt4/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Ln4/r;->e:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Ln4/r;->h:Ln4/w;

    invoke-virtual {p1, v0, v1}, Ll5/e;->o(ILt4/b;)V

    :cond_2
    iget v0, p0, Ln4/r;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Ln4/r;->i:Ln4/q;

    iget v0, v0, Ln4/q;->d:I

    invoke-virtual {p1, v1, v0}, Ll5/e;->l(II)V

    :cond_3
    iget-object p0, p0, Ln4/r;->d:Lt4/e;

    invoke-virtual {p1, p0}, Ll5/e;->r(Lt4/e;)V

    return-void
.end method
