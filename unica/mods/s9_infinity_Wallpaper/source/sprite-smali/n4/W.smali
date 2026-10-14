.class public final Ln4/W;
.super Lt4/m;
.source "SourceFile"


# static fields
.field public static final p:Ln4/W;

.field public static final q:Ln4/a;


# instance fields
.field public final e:Lt4/e;

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Ln4/V;

.field public k:Ljava/util/List;

.field public l:Ljava/util/List;

.field public m:I

.field public n:B

.field public o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln4/a;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    sput-object v0, Ln4/W;->q:Ln4/a;

    new-instance v0, Ln4/W;

    invoke-direct {v0}, Ln4/W;-><init>()V

    sput-object v0, Ln4/W;->p:Ln4/W;

    const/4 v1, 0x0

    iput v1, v0, Ln4/W;->g:I

    iput v1, v0, Ln4/W;->h:I

    iput-boolean v1, v0, Ln4/W;->i:Z

    sget-object v1, Ln4/V;->g:Ln4/V;

    iput-object v1, v0, Ln4/W;->j:Ln4/V;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/W;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/W;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lt4/m;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Ln4/W;->m:I

    .line 9
    iput-byte v0, p0, Ln4/W;->n:B

    .line 10
    iput v0, p0, Ln4/W;->o:I

    .line 11
    sget-object v0, Lt4/e;->d:Lt4/w;

    iput-object v0, p0, Ln4/W;->e:Lt4/e;

    return-void
.end method

.method public constructor <init>(Ln4/U;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lt4/m;-><init>(Lt4/l;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ln4/W;->m:I

    .line 3
    iput-byte v0, p0, Ln4/W;->n:B

    .line 4
    iput v0, p0, Ln4/W;->o:I

    .line 5
    iget-object p1, p1, Lt4/k;->d:Lt4/e;

    .line 6
    iput-object p1, p0, Ln4/W;->e:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lt4/f;Lt4/i;)V
    .locals 13

    .line 12
    invoke-direct {p0}, Lt4/m;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Ln4/W;->m:I

    .line 14
    iput-byte v0, p0, Ln4/W;->n:B

    .line 15
    iput v0, p0, Ln4/W;->o:I

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Ln4/W;->g:I

    .line 17
    iput v0, p0, Ln4/W;->h:I

    .line 18
    iput-boolean v0, p0, Ln4/W;->i:Z

    .line 19
    sget-object v1, Ln4/V;->g:Ln4/V;

    iput-object v1, p0, Ln4/W;->j:Ln4/V;

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/W;->k:Ljava/util/List;

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/W;->l:Ljava/util/List;

    .line 22
    new-instance v2, Lt4/d;

    invoke-direct {v2}, Lt4/d;-><init>()V

    const/4 v3, 0x1

    .line 23
    invoke-static {v2, v3}, Ll5/e;->j(Ljava/io/OutputStream;I)Ll5/e;

    move-result-object v4

    move v5, v0

    move v6, v5

    :cond_0
    :goto_0
    const/16 v7, 0x10

    const/16 v8, 0x20

    if-nez v5, :cond_14

    .line 24
    :try_start_0
    invoke-virtual {p1}, Lt4/f;->n()I

    move-result v9

    if-eqz v9, :cond_1

    const/16 v10, 0x8

    if-eq v9, v10, :cond_11

    const/4 v11, 0x2

    if-eq v9, v7, :cond_10

    const/16 v12, 0x18

    if-eq v9, v12, :cond_e

    if-eq v9, v8, :cond_9

    const/16 v10, 0x2a

    if-eq v9, v10, :cond_7

    const/16 v10, 0x30

    if-eq v9, v10, :cond_5

    const/16 v10, 0x32

    if-eq v9, v10, :cond_2

    .line 25
    invoke-virtual {p0, p1, v4, p2, v9}, Lt4/m;->n(Lt4/f;Ll5/e;Lt4/i;I)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_1
    move v5, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_5

    .line 26
    :cond_2
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v9

    .line 27
    invoke-virtual {p1, v9}, Lt4/f;->d(I)I

    move-result v9

    and-int/lit8 v10, v6, 0x20

    if-eq v10, v8, :cond_3

    .line 28
    invoke-virtual {p1}, Lt4/f;->b()I

    move-result v10

    if-lez v10, :cond_3

    .line 29
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Ln4/W;->l:Ljava/util/List;

    or-int/lit8 v6, v6, 0x20

    .line 30
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lt4/f;->b()I

    move-result v10

    if-lez v10, :cond_4

    .line 31
    iget-object v10, p0, Ln4/W;->l:Ljava/util/List;

    .line 32
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v11

    .line 33
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    :cond_4
    invoke-virtual {p1, v9}, Lt4/f;->c(I)V

    goto :goto_0

    :cond_5
    and-int/lit8 v9, v6, 0x20

    if-eq v9, v8, :cond_6

    .line 35
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Ln4/W;->l:Ljava/util/List;

    or-int/lit8 v6, v6, 0x20

    .line 36
    :cond_6
    iget-object v9, p0, Ln4/W;->l:Ljava/util/List;

    .line 37
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v10

    .line 38
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    and-int/lit8 v9, v6, 0x10

    if-eq v9, v7, :cond_8

    .line 39
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Ln4/W;->k:Ljava/util/List;

    or-int/lit8 v6, v6, 0x10

    .line 40
    :cond_8
    iget-object v9, p0, Ln4/W;->k:Ljava/util/List;

    sget-object v10, Ln4/Q;->x:Ln4/a;

    invoke-virtual {p1, v10, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 41
    :cond_9
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v12

    if-eqz v12, :cond_c

    if-eq v12, v3, :cond_b

    if-eq v12, v11, :cond_a

    const/4 v11, 0x0

    goto :goto_2

    :cond_a
    move-object v11, v1

    goto :goto_2

    .line 42
    :cond_b
    sget-object v11, Ln4/V;->f:Ln4/V;

    goto :goto_2

    .line 43
    :cond_c
    sget-object v11, Ln4/V;->e:Ln4/V;

    :goto_2
    if-nez v11, :cond_d

    .line 44
    invoke-virtual {v4, v9}, Ll5/e;->v(I)V

    .line 45
    invoke-virtual {v4, v12}, Ll5/e;->v(I)V

    goto/16 :goto_0

    .line 46
    :cond_d
    iget v9, p0, Ln4/W;->f:I

    or-int/2addr v9, v10

    iput v9, p0, Ln4/W;->f:I

    .line 47
    iput-object v11, p0, Ln4/W;->j:Ln4/V;

    goto/16 :goto_0

    .line 48
    :cond_e
    iget v9, p0, Ln4/W;->f:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Ln4/W;->f:I

    .line 49
    invoke-virtual {p1}, Lt4/f;->l()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_f

    move v9, v3

    goto :goto_3

    :cond_f
    move v9, v0

    .line 50
    :goto_3
    iput-boolean v9, p0, Ln4/W;->i:Z

    goto/16 :goto_0

    .line 51
    :cond_10
    iget v9, p0, Ln4/W;->f:I

    or-int/2addr v9, v11

    iput v9, p0, Ln4/W;->f:I

    .line 52
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v9

    .line 53
    iput v9, p0, Ln4/W;->h:I

    goto/16 :goto_0

    .line 54
    :cond_11
    iget v9, p0, Ln4/W;->f:I

    or-int/2addr v9, v3

    iput v9, p0, Ln4/W;->f:I

    .line 55
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v9

    .line 56
    iput v9, p0, Ln4/W;->g:I
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 57
    :goto_4
    :try_start_1
    new-instance p2, Lt4/s;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lt4/s;-><init>(Ljava/lang/String;)V

    .line 58
    iput-object p0, p2, Lt4/s;->d:Lt4/b;

    .line 59
    throw p2

    .line 60
    :goto_5
    iput-object p0, p1, Lt4/s;->d:Lt4/b;

    .line 61
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    and-int/lit8 p2, v6, 0x10

    if-ne p2, v7, :cond_12

    .line 62
    iget-object p2, p0, Ln4/W;->k:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ln4/W;->k:Ljava/util/List;

    :cond_12
    and-int/lit8 p2, v6, 0x20

    if-ne p2, v8, :cond_13

    .line 63
    iget-object p2, p0, Ln4/W;->l:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ln4/W;->l:Ljava/util/List;

    .line 64
    :cond_13
    :try_start_2
    invoke-virtual {v4}, Ll5/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    :catch_2
    invoke-virtual {v2}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/W;->e:Lt4/e;

    goto :goto_7

    :catchall_1
    move-exception p1

    invoke-virtual {v2}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/W;->e:Lt4/e;

    throw p1

    .line 66
    :goto_7
    invoke-virtual {p0}, Lt4/m;->m()V

    throw p1

    :cond_14
    and-int/lit8 p1, v6, 0x10

    if-ne p1, v7, :cond_15

    .line 67
    iget-object p1, p0, Ln4/W;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ln4/W;->k:Ljava/util/List;

    :cond_15
    and-int/lit8 p1, v6, 0x20

    if-ne p1, v8, :cond_16

    .line 68
    iget-object p1, p0, Ln4/W;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ln4/W;->l:Ljava/util/List;

    .line 69
    :cond_16
    :try_start_3
    invoke-virtual {v4}, Ll5/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 70
    :catch_3
    invoke-virtual {v2}, Lt4/d;->h()Lt4/e;

    move-result-object p1

    iput-object p1, p0, Ln4/W;->e:Lt4/e;

    goto :goto_8

    :catchall_2
    move-exception p1

    invoke-virtual {v2}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/W;->e:Lt4/e;

    throw p1

    .line 71
    :goto_8
    invoke-virtual {p0}, Lt4/m;->m()V

    return-void
.end method


# virtual methods
.method public final a()Lt4/b;
    .locals 0

    sget-object p0, Ln4/W;->p:Ln4/W;

    return-object p0
.end method

.method public final b()Z
    .locals 4

    iget-byte v0, p0, Ln4/W;->n:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Ln4/W;->f:I

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v1, :cond_6

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    move v0, v2

    :goto_0
    iget-object v3, p0, Ln4/W;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Ln4/W;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/Q;

    invoke-virtual {v3}, Ln4/Q;->b()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Ln4/W;->n:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lt4/m;->i()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Ln4/W;->n:B

    return v2

    :cond_4
    iput-byte v1, p0, Ln4/W;->n:B

    return v1

    :cond_5
    iput-byte v2, p0, Ln4/W;->n:B

    return v2

    :cond_6
    iput-byte v2, p0, Ln4/W;->n:B

    return v2
.end method

.method public final c()I
    .locals 5

    iget v0, p0, Ln4/W;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Ln4/W;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Ln4/W;->g:I

    invoke-static {v1, v0}, Ll5/e;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v3, p0, Ln4/W;->f:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Ln4/W;->h:I

    invoke-static {v4, v3}, Ll5/e;->b(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    iget v3, p0, Ln4/W;->f:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    invoke-static {v3}, Ll5/e;->h(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    :cond_3
    iget v1, p0, Ln4/W;->f:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Ln4/W;->j:Ln4/V;

    iget v1, v1, Ln4/V;->d:I

    invoke-static {v4, v1}, Ll5/e;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    move v1, v2

    :goto_1
    iget-object v3, p0, Ln4/W;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Ln4/W;->k:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt4/b;

    const/4 v4, 0x5

    invoke-static {v4, v3}, Ll5/e;->d(ILt4/b;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_2
    iget-object v3, p0, Ln4/W;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Ln4/W;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ll5/e;->c(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    add-int/2addr v0, v1

    iget-object v2, p0, Ln4/W;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1}, Ll5/e;->c(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    iput v1, p0, Ln4/W;->m:I

    invoke-virtual {p0}, Lt4/m;->j()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Ln4/W;->e:Lt4/e;

    invoke-virtual {v0}, Lt4/e;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Ln4/W;->o:I

    return v0
.end method

.method public final d()Lt4/k;
    .locals 0

    invoke-static {}, Ln4/U;->h()Ln4/U;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lt4/k;
    .locals 1

    invoke-static {}, Ln4/U;->h()Ln4/U;

    move-result-object v0

    invoke-virtual {v0, p0}, Ln4/U;->i(Ln4/W;)V

    return-object v0
.end method

.method public final f(Ll5/e;)V
    .locals 5

    invoke-virtual {p0}, Ln4/W;->c()I

    new-instance v0, Lo1/b;

    invoke-direct {v0, p0}, Lo1/b;-><init>(Lt4/m;)V

    iget v1, p0, Ln4/W;->f:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Ln4/W;->g:I

    invoke-virtual {p1, v2, v1}, Ll5/e;->m(II)V

    :cond_0
    iget v1, p0, Ln4/W;->f:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Ln4/W;->h:I

    invoke-virtual {p1, v2, v1}, Ll5/e;->m(II)V

    :cond_1
    iget v1, p0, Ln4/W;->f:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Ln4/W;->i:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Ll5/e;->x(II)V

    invoke-virtual {p1, v1}, Ll5/e;->q(I)V

    :cond_2
    iget v1, p0, Ln4/W;->f:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Ln4/W;->j:Ln4/V;

    iget v1, v1, Ln4/V;->d:I

    invoke-virtual {p1, v2, v1}, Ll5/e;->l(II)V

    :cond_3
    move v1, v3

    :goto_0
    iget-object v2, p0, Ln4/W;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Ln4/W;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/b;

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v2}, Ll5/e;->o(ILt4/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Ln4/W;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/16 v1, 0x32

    invoke-virtual {p1, v1}, Ll5/e;->v(I)V

    iget v1, p0, Ln4/W;->m:I

    invoke-virtual {p1, v1}, Ll5/e;->v(I)V

    :cond_5
    :goto_1
    iget-object v1, p0, Ln4/W;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_6

    iget-object v1, p0, Ln4/W;->l:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Ll5/e;->n(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, p1}, Lo1/b;->j(ILl5/e;)V

    iget-object p0, p0, Ln4/W;->e:Lt4/e;

    invoke-virtual {p1, p0}, Ll5/e;->r(Lt4/e;)V

    return-void
.end method
