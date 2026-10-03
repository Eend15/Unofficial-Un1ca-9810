.class public final Ln4/T;
.super Lt4/m;
.source "SourceFile"


# static fields
.field public static final r:Ln4/T;

.field public static final s:Ln4/a;


# instance fields
.field public final e:Lt4/e;

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/util/List;

.field public j:Ln4/Q;

.field public k:I

.field public l:Ln4/Q;

.field public m:I

.field public n:Ljava/util/List;

.field public o:Ljava/util/List;

.field public p:B

.field public q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln4/a;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    sput-object v0, Ln4/T;->s:Ln4/a;

    new-instance v0, Ln4/T;

    invoke-direct {v0}, Ln4/T;-><init>()V

    sput-object v0, Ln4/T;->r:Ln4/T;

    invoke-virtual {v0}, Ln4/T;->p()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lt4/m;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Ln4/T;->p:B

    .line 8
    iput v0, p0, Ln4/T;->q:I

    .line 9
    sget-object v0, Lt4/e;->d:Lt4/w;

    iput-object v0, p0, Ln4/T;->e:Lt4/e;

    return-void
.end method

.method public constructor <init>(Ln4/S;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lt4/m;-><init>(Lt4/l;)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Ln4/T;->p:B

    .line 3
    iput v0, p0, Ln4/T;->q:I

    .line 4
    iget-object p1, p1, Lt4/k;->d:Lt4/e;

    .line 5
    iput-object p1, p0, Ln4/T;->e:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lt4/f;Lt4/i;)V
    .locals 11

    .line 10
    invoke-direct {p0}, Lt4/m;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Ln4/T;->p:B

    .line 12
    iput v0, p0, Ln4/T;->q:I

    .line 13
    invoke-virtual {p0}, Ln4/T;->p()V

    .line 14
    new-instance v0, Lt4/d;

    invoke-direct {v0}, Lt4/d;-><init>()V

    const/4 v1, 0x1

    .line 15
    invoke-static {v0, v1}, Ll5/e;->j(Ljava/io/OutputStream;I)Ll5/e;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/16 v5, 0x80

    const/4 v6, 0x4

    const/16 v7, 0x100

    if-nez v3, :cond_d

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lt4/f;->n()I

    move-result v8

    const/4 v9, 0x0

    sparse-switch v8, :sswitch_data_0

    .line 17
    invoke-virtual {p0, p1, v2, p2, v8}, Lt4/m;->n(Lt4/f;Ll5/e;Lt4/i;I)Z

    move-result v5

    if-nez v5, :cond_0

    :sswitch_0
    move v3, v1

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

    .line 18
    :sswitch_1
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v8

    .line 19
    invoke-virtual {p1, v8}, Lt4/f;->d(I)I

    move-result v8

    and-int/lit16 v9, v4, 0x100

    if-eq v9, v7, :cond_1

    .line 20
    invoke-virtual {p1}, Lt4/f;->b()I

    move-result v9

    if-lez v9, :cond_1

    .line 21
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Ln4/T;->o:Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    .line 22
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lt4/f;->b()I

    move-result v9

    if-lez v9, :cond_2

    .line 23
    iget-object v9, p0, Ln4/T;->o:Ljava/util/List;

    .line 24
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v10

    .line 25
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {p1, v8}, Lt4/f;->c(I)V

    goto :goto_0

    :sswitch_2
    and-int/lit16 v8, v4, 0x100

    if-eq v8, v7, :cond_3

    .line 27
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Ln4/T;->o:Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    .line 28
    :cond_3
    iget-object v8, p0, Ln4/T;->o:Ljava/util/List;

    .line 29
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v9

    .line 30
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    and-int/lit16 v8, v4, 0x80

    if-eq v8, v5, :cond_4

    .line 31
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Ln4/T;->n:Ljava/util/List;

    or-int/lit16 v4, v4, 0x80

    .line 32
    :cond_4
    iget-object v8, p0, Ln4/T;->n:Ljava/util/List;

    sget-object v9, Ln4/g;->k:Ln4/a;

    invoke-virtual {p1, v9, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 33
    :sswitch_4
    iget v8, p0, Ln4/T;->f:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Ln4/T;->f:I

    .line 34
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v8

    .line 35
    iput v8, p0, Ln4/T;->m:I

    goto/16 :goto_0

    .line 36
    :sswitch_5
    iget v8, p0, Ln4/T;->f:I

    const/16 v10, 0x10

    and-int/2addr v8, v10

    if-ne v8, v10, :cond_5

    .line 37
    iget-object v8, p0, Ln4/T;->l:Ln4/Q;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-static {v8}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v9

    .line 39
    :cond_5
    sget-object v8, Ln4/Q;->x:Ln4/a;

    invoke-virtual {p1, v8, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v8

    check-cast v8, Ln4/Q;

    iput-object v8, p0, Ln4/T;->l:Ln4/Q;

    if-eqz v9, :cond_6

    .line 40
    invoke-virtual {v9, v8}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    .line 41
    invoke-virtual {v9}, Ln4/P;->g()Ln4/Q;

    move-result-object v8

    iput-object v8, p0, Ln4/T;->l:Ln4/Q;

    .line 42
    :cond_6
    iget v8, p0, Ln4/T;->f:I

    or-int/2addr v8, v10

    iput v8, p0, Ln4/T;->f:I

    goto/16 :goto_0

    .line 43
    :sswitch_6
    iget v8, p0, Ln4/T;->f:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Ln4/T;->f:I

    .line 44
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v8

    .line 45
    iput v8, p0, Ln4/T;->k:I

    goto/16 :goto_0

    .line 46
    :sswitch_7
    iget v8, p0, Ln4/T;->f:I

    and-int/2addr v8, v6

    if-ne v8, v6, :cond_7

    .line 47
    iget-object v8, p0, Ln4/T;->j:Ln4/Q;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-static {v8}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v9

    .line 49
    :cond_7
    sget-object v8, Ln4/Q;->x:Ln4/a;

    invoke-virtual {p1, v8, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v8

    check-cast v8, Ln4/Q;

    iput-object v8, p0, Ln4/T;->j:Ln4/Q;

    if-eqz v9, :cond_8

    .line 50
    invoke-virtual {v9, v8}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    .line 51
    invoke-virtual {v9}, Ln4/P;->g()Ln4/Q;

    move-result-object v8

    iput-object v8, p0, Ln4/T;->j:Ln4/Q;

    .line 52
    :cond_8
    iget v8, p0, Ln4/T;->f:I

    or-int/2addr v8, v6

    iput v8, p0, Ln4/T;->f:I

    goto/16 :goto_0

    :sswitch_8
    and-int/lit8 v8, v4, 0x4

    if-eq v8, v6, :cond_9

    .line 53
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Ln4/T;->i:Ljava/util/List;

    or-int/lit8 v4, v4, 0x4

    .line 54
    :cond_9
    iget-object v8, p0, Ln4/T;->i:Ljava/util/List;

    sget-object v9, Ln4/W;->q:Ln4/a;

    invoke-virtual {p1, v9, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 55
    :sswitch_9
    iget v8, p0, Ln4/T;->f:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Ln4/T;->f:I

    .line 56
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v8

    .line 57
    iput v8, p0, Ln4/T;->h:I

    goto/16 :goto_0

    .line 58
    :sswitch_a
    iget v8, p0, Ln4/T;->f:I

    or-int/2addr v8, v1

    iput v8, p0, Ln4/T;->f:I

    .line 59
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v8

    .line 60
    iput v8, p0, Ln4/T;->g:I
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 61
    :goto_2
    :try_start_1
    new-instance p2, Lt4/s;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lt4/s;-><init>(Ljava/lang/String;)V

    .line 62
    iput-object p0, p2, Lt4/s;->d:Lt4/b;

    .line 63
    throw p2

    .line 64
    :goto_3
    iput-object p0, p1, Lt4/s;->d:Lt4/b;

    .line 65
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v4, 0x4

    if-ne p2, v6, :cond_a

    .line 66
    iget-object p2, p0, Ln4/T;->i:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ln4/T;->i:Ljava/util/List;

    :cond_a
    and-int/lit16 p2, v4, 0x80

    if-ne p2, v5, :cond_b

    .line 67
    iget-object p2, p0, Ln4/T;->n:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ln4/T;->n:Ljava/util/List;

    :cond_b
    and-int/lit16 p2, v4, 0x100

    if-ne p2, v7, :cond_c

    .line 68
    iget-object p2, p0, Ln4/T;->o:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ln4/T;->o:Ljava/util/List;

    .line 69
    :cond_c
    :try_start_2
    invoke-virtual {v2}, Ll5/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    :catch_2
    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/T;->e:Lt4/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/T;->e:Lt4/e;

    throw p1

    .line 71
    :goto_5
    invoke-virtual {p0}, Lt4/m;->m()V

    throw p1

    :cond_d
    and-int/lit8 p1, v4, 0x4

    if-ne p1, v6, :cond_e

    .line 72
    iget-object p1, p0, Ln4/T;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ln4/T;->i:Ljava/util/List;

    :cond_e
    and-int/lit16 p1, v4, 0x80

    if-ne p1, v5, :cond_f

    .line 73
    iget-object p1, p0, Ln4/T;->n:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ln4/T;->n:Ljava/util/List;

    :cond_f
    and-int/lit16 p1, v4, 0x100

    if-ne p1, v7, :cond_10

    .line 74
    iget-object p1, p0, Ln4/T;->o:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ln4/T;->o:Ljava/util/List;

    .line 75
    :cond_10
    :try_start_3
    invoke-virtual {v2}, Ll5/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 76
    :catch_3
    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p1

    iput-object p1, p0, Ln4/T;->e:Lt4/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/T;->e:Lt4/e;

    throw p1

    .line 77
    :goto_6
    invoke-virtual {p0}, Lt4/m;->m()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x1a -> :sswitch_8
        0x22 -> :sswitch_7
        0x28 -> :sswitch_6
        0x32 -> :sswitch_5
        0x38 -> :sswitch_4
        0x42 -> :sswitch_3
        0xf8 -> :sswitch_2
        0xfa -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final a()Lt4/b;
    .locals 0

    sget-object p0, Ln4/T;->r:Ln4/T;

    return-object p0
.end method

.method public final b()Z
    .locals 4

    iget-byte v0, p0, Ln4/T;->p:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Ln4/T;->f:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_9

    move v0, v2

    :goto_0
    iget-object v3, p0, Ln4/T;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Ln4/T;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/W;

    invoke-virtual {v3}, Ln4/W;->b()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Ln4/T;->p:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Ln4/T;->f:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Ln4/T;->j:Ln4/Q;

    invoke-virtual {v0}, Ln4/Q;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Ln4/T;->p:B

    return v2

    :cond_4
    iget v0, p0, Ln4/T;->f:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Ln4/T;->l:Ln4/Q;

    invoke-virtual {v0}, Ln4/Q;->b()Z

    move-result v0

    if-nez v0, :cond_5

    iput-byte v2, p0, Ln4/T;->p:B

    return v2

    :cond_5
    move v0, v2

    :goto_1
    iget-object v3, p0, Ln4/T;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Ln4/T;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/g;

    invoke-virtual {v3}, Ln4/g;->b()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Ln4/T;->p:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lt4/m;->i()Z

    move-result v0

    if-nez v0, :cond_8

    iput-byte v2, p0, Ln4/T;->p:B

    return v2

    :cond_8
    iput-byte v1, p0, Ln4/T;->p:B

    return v1

    :cond_9
    iput-byte v2, p0, Ln4/T;->p:B

    return v2
.end method

.method public final c()I
    .locals 6

    iget v0, p0, Ln4/T;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Ln4/T;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Ln4/T;->g:I

    invoke-static {v1, v0}, Ll5/e;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v1, p0, Ln4/T;->f:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Ln4/T;->h:I

    invoke-static {v3, v1}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    move v1, v2

    :goto_1
    iget-object v4, p0, Ln4/T;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Ln4/T;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt4/b;

    const/4 v5, 0x3

    invoke-static {v5, v4}, Ll5/e;->d(ILt4/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Ln4/T;->f:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Ln4/T;->j:Ln4/Q;

    invoke-static {v4, v1}, Ll5/e;->d(ILt4/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Ln4/T;->f:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    const/4 v1, 0x5

    iget v5, p0, Ln4/T;->k:I

    invoke-static {v1, v5}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Ln4/T;->f:I

    const/16 v5, 0x10

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_6

    const/4 v1, 0x6

    iget-object v5, p0, Ln4/T;->l:Ln4/Q;

    invoke-static {v1, v5}, Ll5/e;->d(ILt4/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Ln4/T;->f:I

    const/16 v5, 0x20

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_7

    const/4 v1, 0x7

    iget v5, p0, Ln4/T;->m:I

    invoke-static {v1, v5}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    move v1, v2

    :goto_2
    iget-object v5, p0, Ln4/T;->n:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    iget-object v5, p0, Ln4/T;->n:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt4/b;

    invoke-static {v4, v5}, Ll5/e;->d(ILt4/b;)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move v1, v2

    :goto_3
    iget-object v4, p0, Ln4/T;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_9

    iget-object v4, p0, Ln4/T;->o:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ll5/e;->c(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    add-int/2addr v0, v1

    iget-object v1, p0, Ln4/T;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lt4/m;->j()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Ln4/T;->e:Lt4/e;

    invoke-virtual {v1}, Lt4/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Ln4/T;->q:I

    return v1
.end method

.method public final d()Lt4/k;
    .locals 0

    invoke-static {}, Ln4/S;->h()Ln4/S;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lt4/k;
    .locals 1

    invoke-static {}, Ln4/S;->h()Ln4/S;

    move-result-object v0

    invoke-virtual {v0, p0}, Ln4/S;->i(Ln4/T;)V

    return-object v0
.end method

.method public final f(Ll5/e;)V
    .locals 5

    invoke-virtual {p0}, Ln4/T;->c()I

    new-instance v0, Lo1/b;

    invoke-direct {v0, p0}, Lo1/b;-><init>(Lt4/m;)V

    iget v1, p0, Ln4/T;->f:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Ln4/T;->g:I

    invoke-virtual {p1, v2, v1}, Ll5/e;->m(II)V

    :cond_0
    iget v1, p0, Ln4/T;->f:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Ln4/T;->h:I

    invoke-virtual {p1, v2, v1}, Ll5/e;->m(II)V

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Ln4/T;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Ln4/T;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt4/b;

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Ll5/e;->o(ILt4/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Ln4/T;->f:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Ln4/T;->j:Ln4/Q;

    invoke-virtual {p1, v3, v2}, Ll5/e;->o(ILt4/b;)V

    :cond_3
    iget v2, p0, Ln4/T;->f:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    const/4 v2, 0x5

    iget v4, p0, Ln4/T;->k:I

    invoke-virtual {p1, v2, v4}, Ll5/e;->m(II)V

    :cond_4
    iget v2, p0, Ln4/T;->f:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    const/4 v2, 0x6

    iget-object v4, p0, Ln4/T;->l:Ln4/Q;

    invoke-virtual {p1, v2, v4}, Ll5/e;->o(ILt4/b;)V

    :cond_5
    iget v2, p0, Ln4/T;->f:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    const/4 v2, 0x7

    iget v4, p0, Ln4/T;->m:I

    invoke-virtual {p1, v2, v4}, Ll5/e;->m(II)V

    :cond_6
    move v2, v1

    :goto_1
    iget-object v4, p0, Ln4/T;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    iget-object v4, p0, Ln4/T;->n:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt4/b;

    invoke-virtual {p1, v3, v4}, Ll5/e;->o(ILt4/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    iget-object v2, p0, Ln4/T;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Ln4/T;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1f

    invoke-virtual {p1, v3, v2}, Ll5/e;->m(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lo1/b;->j(ILl5/e;)V

    iget-object p0, p0, Ln4/T;->e:Lt4/e;

    invoke-virtual {p1, p0}, Ll5/e;->r(Lt4/e;)V

    return-void
.end method

.method public final p()V
    .locals 2

    const/4 v0, 0x6

    iput v0, p0, Ln4/T;->g:I

    const/4 v0, 0x0

    iput v0, p0, Ln4/T;->h:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/T;->i:Ljava/util/List;

    sget-object v1, Ln4/Q;->w:Ln4/Q;

    iput-object v1, p0, Ln4/T;->j:Ln4/Q;

    iput v0, p0, Ln4/T;->k:I

    iput-object v1, p0, Ln4/T;->l:Ln4/Q;

    iput v0, p0, Ln4/T;->m:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ln4/T;->n:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ln4/T;->o:Ljava/util/List;

    return-void
.end method
