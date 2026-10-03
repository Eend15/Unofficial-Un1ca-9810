.class public final Ln4/d;
.super Lt4/p;
.source "SourceFile"


# static fields
.field public static final s:Ln4/d;

.field public static final t:Ln4/a;


# instance fields
.field public final d:Lt4/e;

.field public e:I

.field public f:Ln4/c;

.field public g:J

.field public h:F

.field public i:D

.field public j:I

.field public k:I

.field public l:I

.field public m:Ln4/g;

.field public n:Ljava/util/List;

.field public o:I

.field public p:I

.field public q:B

.field public r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln4/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    sput-object v0, Ln4/d;->t:Ln4/a;

    new-instance v0, Ln4/d;

    invoke-direct {v0}, Ln4/d;-><init>()V

    sput-object v0, Ln4/d;->s:Ln4/d;

    invoke-virtual {v0}, Ln4/d;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Ln4/d;->q:B

    .line 3
    iput v0, p0, Ln4/d;->r:I

    .line 4
    sget-object v0, Lt4/e;->d:Lt4/w;

    iput-object v0, p0, Ln4/d;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Ln4/b;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput-byte v0, p0, Ln4/d;->q:B

    .line 69
    iput v0, p0, Ln4/d;->r:I

    .line 70
    iget-object p1, p1, Lt4/k;->d:Lt4/e;

    .line 71
    iput-object p1, p0, Ln4/d;->d:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lt4/f;Lt4/i;)V
    .locals 12

    .line 5
    invoke-direct {p0}, Lt4/b;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Ln4/d;->q:B

    .line 7
    iput v0, p0, Ln4/d;->r:I

    .line 8
    invoke-virtual {p0}, Ln4/d;->i()V

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
    const/16 v5, 0x100

    if-nez v3, :cond_6

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lt4/f;->n()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 12
    invoke-virtual {p1, v6, v2}, Lt4/f;->q(ILl5/e;)Z

    move-result v5

    if-nez v5, :cond_0

    :sswitch_0
    move v3, v1

    goto :goto_0

    .line 13
    :sswitch_1
    iget v6, p0, Ln4/d;->e:I

    or-int/2addr v6, v5

    iput v6, p0, Ln4/d;->e:I

    .line 14
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v6

    .line 15
    iput v6, p0, Ln4/d;->o:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    .line 16
    :sswitch_2
    iget v6, p0, Ln4/d;->e:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Ln4/d;->e:I

    .line 17
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v6

    .line 18
    iput v6, p0, Ln4/d;->p:I

    goto :goto_0

    :sswitch_3
    and-int/lit16 v6, v4, 0x100

    if-eq v6, v5, :cond_1

    .line 19
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Ln4/d;->n:Ljava/util/List;

    move v4, v5

    .line 20
    :cond_1
    iget-object v6, p0, Ln4/d;->n:Ljava/util/List;

    sget-object v7, Ln4/d;->t:Ln4/a;

    invoke-virtual {p1, v7, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :sswitch_4
    iget v6, p0, Ln4/d;->e:I

    const/16 v7, 0x80

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_2

    .line 22
    iget-object v6, p0, Ln4/d;->m:Ln4/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance v8, Ln4/f;

    const/4 v9, 0x0

    .line 24
    invoke-direct {v8, v9}, Ln4/f;-><init>(I)V

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    iput-object v9, v8, Ln4/f;->g:Ljava/lang/Object;

    .line 26
    invoke-virtual {v8, v6}, Ln4/f;->k(Ln4/g;)V

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 27
    :goto_1
    sget-object v6, Ln4/g;->k:Ln4/a;

    invoke-virtual {p1, v6, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v6

    check-cast v6, Ln4/g;

    iput-object v6, p0, Ln4/d;->m:Ln4/g;

    if-eqz v8, :cond_3

    .line 28
    invoke-virtual {v8, v6}, Ln4/f;->k(Ln4/g;)V

    .line 29
    invoke-virtual {v8}, Ln4/f;->g()Ln4/g;

    move-result-object v6

    iput-object v6, p0, Ln4/d;->m:Ln4/g;

    .line 30
    :cond_3
    iget v6, p0, Ln4/d;->e:I

    or-int/2addr v6, v7

    iput v6, p0, Ln4/d;->e:I

    goto/16 :goto_0

    .line 31
    :sswitch_5
    iget v6, p0, Ln4/d;->e:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Ln4/d;->e:I

    .line 32
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v6

    .line 33
    iput v6, p0, Ln4/d;->l:I

    goto/16 :goto_0

    .line 34
    :sswitch_6
    iget v6, p0, Ln4/d;->e:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Ln4/d;->e:I

    .line 35
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v6

    .line 36
    iput v6, p0, Ln4/d;->k:I

    goto/16 :goto_0

    .line 37
    :sswitch_7
    iget v6, p0, Ln4/d;->e:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Ln4/d;->e:I

    .line 38
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v6

    .line 39
    iput v6, p0, Ln4/d;->j:I

    goto/16 :goto_0

    .line 40
    :sswitch_8
    iget v6, p0, Ln4/d;->e:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Ln4/d;->e:I

    .line 41
    invoke-virtual {p1}, Lt4/f;->j()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 42
    iput-wide v6, p0, Ln4/d;->i:D

    goto/16 :goto_0

    .line 43
    :sswitch_9
    iget v6, p0, Ln4/d;->e:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Ln4/d;->e:I

    .line 44
    invoke-virtual {p1}, Lt4/f;->i()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 45
    iput v6, p0, Ln4/d;->h:F

    goto/16 :goto_0

    .line 46
    :sswitch_a
    iget v6, p0, Ln4/d;->e:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Ln4/d;->e:I

    .line 47
    invoke-virtual {p1}, Lt4/f;->l()J

    move-result-wide v6

    ushr-long v8, v6, v1

    const-wide/16 v10, 0x1

    and-long/2addr v6, v10

    neg-long v6, v6

    xor-long/2addr v6, v8

    .line 48
    iput-wide v6, p0, Ln4/d;->g:J

    goto/16 :goto_0

    .line 49
    :sswitch_b
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v7

    .line 50
    invoke-static {v7}, Ln4/c;->b(I)Ln4/c;

    move-result-object v8

    if-nez v8, :cond_4

    .line 51
    invoke-virtual {v2, v6}, Ll5/e;->v(I)V

    .line 52
    invoke-virtual {v2, v7}, Ll5/e;->v(I)V

    goto/16 :goto_0

    .line 53
    :cond_4
    iget v6, p0, Ln4/d;->e:I

    or-int/2addr v6, v1

    iput v6, p0, Ln4/d;->e:I

    .line 54
    iput-object v8, p0, Ln4/d;->f:Ln4/c;
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 55
    :goto_2
    :try_start_1
    new-instance p2, Lt4/s;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lt4/s;-><init>(Ljava/lang/String;)V

    .line 56
    iput-object p0, p2, Lt4/s;->d:Lt4/b;

    .line 57
    throw p2

    .line 58
    :goto_3
    iput-object p0, p1, Lt4/s;->d:Lt4/b;

    .line 59
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit16 p2, v4, 0x100

    if-ne p2, v5, :cond_5

    .line 60
    iget-object p2, p0, Ln4/d;->n:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ln4/d;->n:Ljava/util/List;

    .line 61
    :cond_5
    :try_start_2
    invoke-virtual {v2}, Ll5/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    :catch_2
    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/d;->d:Lt4/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/d;->d:Lt4/e;

    throw p1

    .line 63
    :goto_5
    throw p1

    :cond_6
    and-int/lit16 p1, v4, 0x100

    if-ne p1, v5, :cond_7

    .line 64
    iget-object p1, p0, Ln4/d;->n:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ln4/d;->n:Ljava/util/List;

    .line 65
    :cond_7
    :try_start_3
    invoke-virtual {v2}, Ll5/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 66
    :catch_3
    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p1

    iput-object p1, p0, Ln4/d;->d:Lt4/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/d;->d:Lt4/e;

    throw p1

    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_b
        0x10 -> :sswitch_a
        0x1d -> :sswitch_9
        0x21 -> :sswitch_8
        0x28 -> :sswitch_7
        0x30 -> :sswitch_6
        0x38 -> :sswitch_5
        0x42 -> :sswitch_4
        0x4a -> :sswitch_3
        0x50 -> :sswitch_2
        0x58 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final b()Z
    .locals 4

    iget-byte v0, p0, Ln4/d;->q:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Ln4/d;->e:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Ln4/d;->m:Ln4/g;

    invoke-virtual {v0}, Ln4/g;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Ln4/d;->q:B

    return v2

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Ln4/d;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Ln4/d;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/d;

    invoke-virtual {v3}, Ln4/d;->b()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v2, p0, Ln4/d;->q:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iput-byte v1, p0, Ln4/d;->q:B

    return v1
.end method

.method public final c()I
    .locals 9

    iget v0, p0, Ln4/d;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Ln4/d;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ln4/d;->f:Ln4/c;

    iget v0, v0, Ln4/c;->d:I

    invoke-static {v1, v0}, Ll5/e;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v3, p0, Ln4/d;->e:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    iget-wide v5, p0, Ln4/d;->g:J

    invoke-static {v4}, Ll5/e;->h(I)I

    move-result v3

    shl-long v7, v5, v1

    const/16 v1, 0x3f

    shr-long v4, v5, v1

    xor-long/2addr v4, v7

    invoke-static {v4, v5}, Ll5/e;->g(J)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Ln4/d;->e:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    invoke-static {v1}, Ll5/e;->h(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Ln4/d;->e:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    invoke-static {v3}, Ll5/e;->h(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Ln4/d;->e:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x5

    iget v3, p0, Ln4/d;->j:I

    invoke-static {v1, v3}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Ln4/d;->e:I

    const/16 v3, 0x20

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_6

    const/4 v1, 0x6

    iget v3, p0, Ln4/d;->k:I

    invoke-static {v1, v3}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Ln4/d;->e:I

    const/16 v3, 0x40

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    const/4 v1, 0x7

    iget v3, p0, Ln4/d;->l:I

    invoke-static {v1, v3}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Ln4/d;->e:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Ln4/d;->m:Ln4/g;

    invoke-static {v4, v1}, Ll5/e;->d(ILt4/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    :goto_1
    iget-object v1, p0, Ln4/d;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    iget-object v1, p0, Ln4/d;->n:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt4/b;

    const/16 v3, 0x9

    invoke-static {v3, v1}, Ll5/e;->d(ILt4/b;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    iget v1, p0, Ln4/d;->e:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    iget v2, p0, Ln4/d;->p:I

    invoke-static {v1, v2}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Ln4/d;->e:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    iget v2, p0, Ln4/d;->o:I

    invoke-static {v1, v2}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Ln4/d;->d:Lt4/e;

    invoke-virtual {v1}, Lt4/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Ln4/d;->r:I

    return v1
.end method

.method public final d()Lt4/k;
    .locals 0

    invoke-static {}, Ln4/b;->g()Ln4/b;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lt4/k;
    .locals 1

    invoke-static {}, Ln4/b;->g()Ln4/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Ln4/b;->h(Ln4/d;)V

    return-object v0
.end method

.method public final f(Ll5/e;)V
    .locals 8

    invoke-virtual {p0}, Ln4/d;->c()I

    iget v0, p0, Ln4/d;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ln4/d;->f:Ln4/c;

    iget v0, v0, Ln4/c;->d:I

    invoke-virtual {p1, v1, v0}, Ll5/e;->l(II)V

    :cond_0
    iget v0, p0, Ln4/d;->e:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget-wide v4, p0, Ln4/d;->g:J

    invoke-virtual {p1, v2, v3}, Ll5/e;->x(II)V

    shl-long v6, v4, v1

    const/16 v0, 0x3f

    shr-long/2addr v4, v0

    xor-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Ll5/e;->w(J)V

    :cond_1
    iget v0, p0, Ln4/d;->e:I

    const/4 v2, 0x4

    and-int/2addr v0, v2

    const/4 v4, 0x5

    if-ne v0, v2, :cond_2

    iget v0, p0, Ln4/d;->h:F

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Ll5/e;->x(II)V

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p1, v0}, Ll5/e;->t(I)V

    :cond_2
    iget v0, p0, Ln4/d;->e:I

    const/16 v5, 0x8

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_3

    iget-wide v6, p0, Ln4/d;->i:D

    invoke-virtual {p1, v2, v1}, Ll5/e;->x(II)V

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ll5/e;->u(J)V

    :cond_3
    iget v0, p0, Ln4/d;->e:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget v0, p0, Ln4/d;->j:I

    invoke-virtual {p1, v4, v0}, Ll5/e;->m(II)V

    :cond_4
    iget v0, p0, Ln4/d;->e:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Ln4/d;->k:I

    invoke-virtual {p1, v0, v1}, Ll5/e;->m(II)V

    :cond_5
    iget v0, p0, Ln4/d;->e:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Ln4/d;->l:I

    invoke-virtual {p1, v0, v1}, Ll5/e;->m(II)V

    :cond_6
    iget v0, p0, Ln4/d;->e:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Ln4/d;->m:Ln4/g;

    invoke-virtual {p1, v5, v0}, Ll5/e;->o(ILt4/b;)V

    :cond_7
    :goto_0
    iget-object v0, p0, Ln4/d;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    iget-object v0, p0, Ln4/d;->n:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt4/b;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Ll5/e;->o(ILt4/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    iget v0, p0, Ln4/d;->e:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    iget v1, p0, Ln4/d;->p:I

    invoke-virtual {p1, v0, v1}, Ll5/e;->m(II)V

    :cond_9
    iget v0, p0, Ln4/d;->e:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    iget v1, p0, Ln4/d;->o:I

    invoke-virtual {p1, v0, v1}, Ll5/e;->m(II)V

    :cond_a
    iget-object p0, p0, Ln4/d;->d:Lt4/e;

    invoke-virtual {p1, p0}, Ll5/e;->r(Lt4/e;)V

    return-void
.end method

.method public final i()V
    .locals 2

    sget-object v0, Ln4/c;->e:Ln4/c;

    iput-object v0, p0, Ln4/d;->f:Ln4/c;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ln4/d;->g:J

    const/4 v0, 0x0

    iput v0, p0, Ln4/d;->h:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ln4/d;->i:D

    const/4 v0, 0x0

    iput v0, p0, Ln4/d;->j:I

    iput v0, p0, Ln4/d;->k:I

    iput v0, p0, Ln4/d;->l:I

    sget-object v1, Ln4/g;->j:Ln4/g;

    iput-object v1, p0, Ln4/d;->m:Ln4/g;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/d;->n:Ljava/util/List;

    iput v0, p0, Ln4/d;->o:I

    iput v0, p0, Ln4/d;->p:I

    return-void
.end method
