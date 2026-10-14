.class public final Ln4/w;
.super Lt4/p;
.source "SourceFile"


# static fields
.field public static final o:Ln4/w;

.field public static final p:Ln4/a;


# instance fields
.field public final d:Lt4/e;

.field public e:I

.field public f:I

.field public g:I

.field public h:Ln4/v;

.field public i:Ln4/Q;

.field public j:I

.field public k:Ljava/util/List;

.field public l:Ljava/util/List;

.field public m:B

.field public n:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln4/a;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    sput-object v0, Ln4/w;->p:Ln4/a;

    new-instance v0, Ln4/w;

    invoke-direct {v0}, Ln4/w;-><init>()V

    sput-object v0, Ln4/w;->o:Ln4/w;

    const/4 v1, 0x0

    iput v1, v0, Ln4/w;->f:I

    iput v1, v0, Ln4/w;->g:I

    sget-object v2, Ln4/v;->e:Ln4/v;

    iput-object v2, v0, Ln4/w;->h:Ln4/v;

    sget-object v2, Ln4/Q;->w:Ln4/Q;

    iput-object v2, v0, Ln4/w;->i:Ln4/Q;

    iput v1, v0, Ln4/w;->j:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/w;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln4/w;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Ln4/w;->m:B

    .line 3
    iput v0, p0, Ln4/w;->n:I

    .line 4
    sget-object v0, Lt4/e;->d:Lt4/w;

    iput-object v0, p0, Ln4/w;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Ln4/u;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 63
    iput-byte v0, p0, Ln4/w;->m:B

    .line 64
    iput v0, p0, Ln4/w;->n:I

    .line 65
    iget-object p1, p1, Lt4/k;->d:Lt4/e;

    .line 66
    iput-object p1, p0, Ln4/w;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lt4/f;Lt4/i;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 5
    invoke-direct/range {p0 .. p0}, Lt4/b;-><init>()V

    const/4 v3, -0x1

    .line 6
    iput-byte v3, v1, Ln4/w;->m:B

    .line 7
    iput v3, v1, Ln4/w;->n:I

    const/4 v3, 0x0

    .line 8
    iput v3, v1, Ln4/w;->f:I

    .line 9
    iput v3, v1, Ln4/w;->g:I

    .line 10
    sget-object v4, Ln4/v;->e:Ln4/v;

    iput-object v4, v1, Ln4/w;->h:Ln4/v;

    .line 11
    sget-object v5, Ln4/Q;->w:Ln4/Q;

    .line 12
    iput-object v5, v1, Ln4/w;->i:Ln4/Q;

    .line 13
    iput v3, v1, Ln4/w;->j:I

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Ln4/w;->k:Ljava/util/List;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, Ln4/w;->l:Ljava/util/List;

    .line 16
    new-instance v5, Lt4/d;

    invoke-direct {v5}, Lt4/d;-><init>()V

    const/4 v6, 0x1

    .line 17
    invoke-static {v5, v6}, Ll5/e;->j(Ljava/io/OutputStream;I)Ll5/e;

    move-result-object v7

    move v8, v3

    :cond_0
    :goto_0
    const/16 v9, 0x40

    const/16 v10, 0x20

    if-nez v3, :cond_13

    .line 18
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lt4/f;->n()I

    move-result v11
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_1

    const/16 v12, 0x8

    if-eq v11, v12, :cond_10

    const/4 v13, 0x2

    const/16 v14, 0x10

    if-eq v11, v14, :cond_f

    const/16 v15, 0x18

    const/16 v16, 0x0

    if-eq v11, v15, :cond_a

    const/16 v13, 0x22

    if-eq v11, v13, :cond_7

    const/16 v12, 0x28

    if-eq v11, v12, :cond_6

    .line 19
    sget-object v12, Ln4/w;->p:Ln4/a;

    const/16 v13, 0x32

    if-eq v11, v13, :cond_4

    const/16 v13, 0x3a

    if-eq v11, v13, :cond_2

    .line 20
    :try_start_1
    invoke-virtual {v0, v11, v7}, Lt4/f;->q(ILl5/e;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_1
    move v3, v6

    goto :goto_0

    :cond_2
    and-int/lit8 v11, v8, 0x40

    if-eq v11, v9, :cond_3

    .line 21
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Ln4/w;->l:Ljava/util/List;

    or-int/lit8 v8, v8, 0x40

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_5

    .line 22
    :cond_3
    :goto_1
    iget-object v11, v1, Ln4/w;->l:Ljava/util/List;

    invoke-virtual {v0, v12, v2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    and-int/lit8 v11, v8, 0x20

    if-eq v11, v10, :cond_5

    .line 23
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Ln4/w;->k:Ljava/util/List;

    or-int/lit8 v8, v8, 0x20

    .line 24
    :cond_5
    iget-object v11, v1, Ln4/w;->k:Ljava/util/List;

    invoke-virtual {v0, v12, v2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_6
    iget v11, v1, Ln4/w;->e:I

    or-int/2addr v11, v14

    iput v11, v1, Ln4/w;->e:I

    .line 26
    invoke-virtual/range {p1 .. p1}, Lt4/f;->k()I

    move-result v11

    .line 27
    iput v11, v1, Ln4/w;->j:I

    goto :goto_0

    .line 28
    :cond_7
    iget v11, v1, Ln4/w;->e:I

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_8

    .line 29
    iget-object v11, v1, Ln4/w;->i:Ln4/Q;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-static {v11}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v16

    :cond_8
    move-object/from16 v11, v16

    .line 31
    sget-object v13, Ln4/Q;->x:Ln4/a;

    invoke-virtual {v0, v13, v2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v13

    check-cast v13, Ln4/Q;

    iput-object v13, v1, Ln4/w;->i:Ln4/Q;

    if-eqz v11, :cond_9

    .line 32
    invoke-virtual {v11, v13}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    .line 33
    invoke-virtual {v11}, Ln4/P;->g()Ln4/Q;

    move-result-object v11

    iput-object v11, v1, Ln4/w;->i:Ln4/Q;

    .line 34
    :cond_9
    iget v11, v1, Ln4/w;->e:I

    or-int/2addr v11, v12

    iput v11, v1, Ln4/w;->e:I

    goto/16 :goto_0

    .line 35
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lt4/f;->k()I

    move-result v12

    if-eqz v12, :cond_d

    if-eq v12, v6, :cond_c

    if-eq v12, v13, :cond_b

    :goto_2
    move-object/from16 v13, v16

    goto :goto_3

    .line 36
    :cond_b
    sget-object v16, Ln4/v;->g:Ln4/v;

    goto :goto_2

    .line 37
    :cond_c
    sget-object v16, Ln4/v;->f:Ln4/v;

    goto :goto_2

    :cond_d
    move-object v13, v4

    :goto_3
    if-nez v13, :cond_e

    .line 38
    invoke-virtual {v7, v11}, Ll5/e;->v(I)V

    .line 39
    invoke-virtual {v7, v12}, Ll5/e;->v(I)V

    goto/16 :goto_0

    .line 40
    :cond_e
    iget v11, v1, Ln4/w;->e:I

    or-int/lit8 v11, v11, 0x4

    iput v11, v1, Ln4/w;->e:I

    .line 41
    iput-object v13, v1, Ln4/w;->h:Ln4/v;

    goto/16 :goto_0

    .line 42
    :cond_f
    iget v11, v1, Ln4/w;->e:I

    or-int/2addr v11, v13

    iput v11, v1, Ln4/w;->e:I

    .line 43
    invoke-virtual/range {p1 .. p1}, Lt4/f;->k()I

    move-result v11

    .line 44
    iput v11, v1, Ln4/w;->g:I

    goto/16 :goto_0

    .line 45
    :cond_10
    iget v11, v1, Ln4/w;->e:I

    or-int/2addr v11, v6

    iput v11, v1, Ln4/w;->e:I

    .line 46
    invoke-virtual/range {p1 .. p1}, Lt4/f;->k()I

    move-result v11

    .line 47
    iput v11, v1, Ln4/w;->f:I
    :try_end_1
    .catch Lt4/s; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 48
    :goto_4
    :try_start_2
    new-instance v2, Lt4/s;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lt4/s;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object v1, v2, Lt4/s;->d:Lt4/b;

    .line 50
    throw v2

    .line 51
    :goto_5
    iput-object v1, v0, Lt4/s;->d:Lt4/b;

    .line 52
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    and-int/lit8 v2, v8, 0x20

    if-ne v2, v10, :cond_11

    .line 53
    iget-object v2, v1, Ln4/w;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ln4/w;->k:Ljava/util/List;

    :cond_11
    and-int/lit8 v2, v8, 0x40

    if-ne v2, v9, :cond_12

    .line 54
    iget-object v2, v1, Ln4/w;->l:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ln4/w;->l:Ljava/util/List;

    .line 55
    :cond_12
    :try_start_3
    invoke-virtual {v7}, Ll5/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    :catch_2
    invoke-virtual {v5}, Lt4/d;->h()Lt4/e;

    move-result-object v2

    iput-object v2, v1, Ln4/w;->d:Lt4/e;

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v5}, Lt4/d;->h()Lt4/e;

    move-result-object v0

    iput-object v0, v1, Ln4/w;->d:Lt4/e;

    throw v2

    .line 57
    :goto_7
    throw v0

    :cond_13
    and-int/lit8 v0, v8, 0x20

    if-ne v0, v10, :cond_14

    .line 58
    iget-object v0, v1, Ln4/w;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Ln4/w;->k:Ljava/util/List;

    :cond_14
    and-int/lit8 v0, v8, 0x40

    if-ne v0, v9, :cond_15

    .line 59
    iget-object v0, v1, Ln4/w;->l:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Ln4/w;->l:Ljava/util/List;

    .line 60
    :cond_15
    :try_start_4
    invoke-virtual {v7}, Ll5/e;->i()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 61
    :catch_3
    invoke-virtual {v5}, Lt4/d;->h()Lt4/e;

    move-result-object v0

    iput-object v0, v1, Ln4/w;->d:Lt4/e;

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v5}, Lt4/d;->h()Lt4/e;

    move-result-object v0

    iput-object v0, v1, Ln4/w;->d:Lt4/e;

    throw v2

    :goto_8
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 4

    iget-byte v0, p0, Ln4/w;->m:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Ln4/w;->e:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Ln4/w;->i:Ln4/Q;

    invoke-virtual {v0}, Ln4/Q;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Ln4/w;->m:B

    return v2

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Ln4/w;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Ln4/w;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/w;

    invoke-virtual {v3}, Ln4/w;->b()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v2, p0, Ln4/w;->m:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_1
    iget-object v3, p0, Ln4/w;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Ln4/w;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/w;

    invoke-virtual {v3}, Ln4/w;->b()Z

    move-result v3

    if-nez v3, :cond_5

    iput-byte v2, p0, Ln4/w;->m:B

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iput-byte v1, p0, Ln4/w;->m:B

    return v1
.end method

.method public final c()I
    .locals 5

    iget v0, p0, Ln4/w;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Ln4/w;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Ln4/w;->f:I

    invoke-static {v1, v0}, Ll5/e;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v1, p0, Ln4/w;->e:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Ln4/w;->g:I

    invoke-static {v3, v1}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Ln4/w;->e:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Ln4/w;->h:Ln4/v;

    iget v1, v1, Ln4/v;->d:I

    const/4 v4, 0x3

    invoke-static {v4, v1}, Ll5/e;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Ln4/w;->e:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Ln4/w;->i:Ln4/Q;

    invoke-static {v3, v1}, Ll5/e;->d(ILt4/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Ln4/w;->e:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x5

    iget v3, p0, Ln4/w;->j:I

    invoke-static {v1, v3}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    move v1, v2

    :goto_1
    iget-object v3, p0, Ln4/w;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Ln4/w;->k:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt4/b;

    const/4 v4, 0x6

    invoke-static {v4, v3}, Ll5/e;->d(ILt4/b;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v1, p0, Ln4/w;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    iget-object v1, p0, Ln4/w;->l:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt4/b;

    const/4 v3, 0x7

    invoke-static {v3, v1}, Ll5/e;->d(ILt4/b;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget-object v1, p0, Ln4/w;->d:Lt4/e;

    invoke-virtual {v1}, Lt4/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Ln4/w;->n:I

    return v1
.end method

.method public final d()Lt4/k;
    .locals 0

    invoke-static {}, Ln4/u;->g()Ln4/u;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lt4/k;
    .locals 1

    invoke-static {}, Ln4/u;->g()Ln4/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Ln4/u;->h(Ln4/w;)V

    return-object v0
.end method

.method public final f(Ll5/e;)V
    .locals 4

    invoke-virtual {p0}, Ln4/w;->c()I

    iget v0, p0, Ln4/w;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ln4/w;->f:I

    invoke-virtual {p1, v1, v0}, Ll5/e;->m(II)V

    :cond_0
    iget v0, p0, Ln4/w;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Ln4/w;->g:I

    invoke-virtual {p1, v1, v0}, Ll5/e;->m(II)V

    :cond_1
    iget v0, p0, Ln4/w;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ln4/w;->h:Ln4/v;

    iget v0, v0, Ln4/v;->d:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Ll5/e;->l(II)V

    :cond_2
    iget v0, p0, Ln4/w;->e:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Ln4/w;->i:Ln4/Q;

    invoke-virtual {p1, v1, v0}, Ll5/e;->o(ILt4/b;)V

    :cond_3
    iget v0, p0, Ln4/w;->e:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Ln4/w;->j:I

    invoke-virtual {p1, v0, v1}, Ll5/e;->m(II)V

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ln4/w;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Ln4/w;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/b;

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Ll5/e;->o(ILt4/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v1, p0, Ln4/w;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Ln4/w;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt4/b;

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Ll5/e;->o(ILt4/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object p0, p0, Ln4/w;->d:Lt4/e;

    invoke-virtual {p1, p0}, Ll5/e;->r(Lt4/e;)V

    return-void
.end method
