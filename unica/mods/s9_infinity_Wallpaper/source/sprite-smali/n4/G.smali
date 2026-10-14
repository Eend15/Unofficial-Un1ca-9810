.class public final Ln4/G;
.super Lt4/m;
.source "SourceFile"


# static fields
.field public static final u:Ln4/G;

.field public static final v:Ln4/a;


# instance fields
.field public final e:Lt4/e;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Ln4/Q;

.field public k:I

.field public l:Ljava/util/List;

.field public m:Ln4/Q;

.field public n:I

.field public o:Ln4/Z;

.field public p:I

.field public q:I

.field public r:Ljava/util/List;

.field public s:B

.field public t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln4/a;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    sput-object v0, Ln4/G;->v:Ln4/a;

    new-instance v0, Ln4/G;

    invoke-direct {v0}, Ln4/G;-><init>()V

    sput-object v0, Ln4/G;->u:Ln4/G;

    invoke-virtual {v0}, Ln4/G;->q()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lt4/m;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Ln4/G;->s:B

    .line 8
    iput v0, p0, Ln4/G;->t:I

    .line 9
    sget-object v0, Lt4/e;->d:Lt4/w;

    iput-object v0, p0, Ln4/G;->e:Lt4/e;

    return-void
.end method

.method public constructor <init>(Ln4/F;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lt4/m;-><init>(Lt4/l;)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Ln4/G;->s:B

    .line 3
    iput v0, p0, Ln4/G;->t:I

    .line 4
    iget-object p1, p1, Lt4/k;->d:Lt4/e;

    .line 5
    iput-object p1, p0, Ln4/G;->e:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lt4/f;Lt4/i;)V
    .locals 11

    .line 10
    invoke-direct {p0}, Lt4/m;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Ln4/G;->s:B

    .line 12
    iput v0, p0, Ln4/G;->t:I

    .line 13
    invoke-virtual {p0}, Ln4/G;->q()V

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
    const/16 v5, 0x20

    const/16 v6, 0x800

    if-nez v3, :cond_d

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lt4/f;->n()I

    move-result v7

    const/4 v8, 0x0

    sparse-switch v7, :sswitch_data_0

    .line 17
    invoke-virtual {p0, p1, v2, p2, v7}, Lt4/m;->n(Lt4/f;Ll5/e;Lt4/i;I)Z

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

    move-result v7

    .line 19
    invoke-virtual {p1, v7}, Lt4/f;->d(I)I

    move-result v7

    and-int/lit16 v8, v4, 0x800

    if-eq v8, v6, :cond_1

    .line 20
    invoke-virtual {p1}, Lt4/f;->b()I

    move-result v8

    if-lez v8, :cond_1

    .line 21
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Ln4/G;->r:Ljava/util/List;

    or-int/lit16 v4, v4, 0x800

    .line 22
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lt4/f;->b()I

    move-result v8

    if-lez v8, :cond_2

    .line 23
    iget-object v8, p0, Ln4/G;->r:Ljava/util/List;

    .line 24
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v9

    .line 25
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {p1, v7}, Lt4/f;->c(I)V

    goto :goto_0

    :sswitch_2
    and-int/lit16 v7, v4, 0x800

    if-eq v7, v6, :cond_3

    .line 27
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Ln4/G;->r:Ljava/util/List;

    or-int/lit16 v4, v4, 0x800

    .line 28
    :cond_3
    iget-object v7, p0, Ln4/G;->r:Ljava/util/List;

    .line 29
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v8

    .line 30
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :sswitch_3
    iget v7, p0, Ln4/G;->f:I

    or-int/2addr v7, v1

    iput v7, p0, Ln4/G;->f:I

    .line 32
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v7

    .line 33
    iput v7, p0, Ln4/G;->g:I

    goto :goto_0

    .line 34
    :sswitch_4
    iget v7, p0, Ln4/G;->f:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Ln4/G;->f:I

    .line 35
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v7

    .line 36
    iput v7, p0, Ln4/G;->n:I

    goto/16 :goto_0

    .line 37
    :sswitch_5
    iget v7, p0, Ln4/G;->f:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Ln4/G;->f:I

    .line 38
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v7

    .line 39
    iput v7, p0, Ln4/G;->k:I

    goto/16 :goto_0

    .line 40
    :sswitch_6
    iget v7, p0, Ln4/G;->f:I

    or-int/lit16 v7, v7, 0x200

    iput v7, p0, Ln4/G;->f:I

    .line 41
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v7

    .line 42
    iput v7, p0, Ln4/G;->q:I

    goto/16 :goto_0

    .line 43
    :sswitch_7
    iget v7, p0, Ln4/G;->f:I

    or-int/lit16 v7, v7, 0x100

    iput v7, p0, Ln4/G;->f:I

    .line 44
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v7

    .line 45
    iput v7, p0, Ln4/G;->p:I

    goto/16 :goto_0

    .line 46
    :sswitch_8
    iget v7, p0, Ln4/G;->f:I

    const/16 v9, 0x80

    and-int/2addr v7, v9

    if-ne v7, v9, :cond_4

    .line 47
    iget-object v7, p0, Ln4/G;->o:Ln4/Z;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    new-instance v8, Ln4/Y;

    .line 49
    invoke-direct {v8}, Lt4/l;-><init>()V

    .line 50
    sget-object v10, Ln4/Q;->w:Ln4/Q;

    .line 51
    iput-object v10, v8, Ln4/Y;->j:Ln4/Q;

    .line 52
    iput-object v10, v8, Ln4/Y;->l:Ln4/Q;

    .line 53
    invoke-virtual {v8, v7}, Ln4/Y;->h(Ln4/Z;)V

    .line 54
    :cond_4
    sget-object v7, Ln4/Z;->p:Ln4/a;

    invoke-virtual {p1, v7, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v7

    check-cast v7, Ln4/Z;

    iput-object v7, p0, Ln4/G;->o:Ln4/Z;

    if-eqz v8, :cond_5

    .line 55
    invoke-virtual {v8, v7}, Ln4/Y;->h(Ln4/Z;)V

    .line 56
    invoke-virtual {v8}, Ln4/Y;->g()Ln4/Z;

    move-result-object v7

    iput-object v7, p0, Ln4/G;->o:Ln4/Z;

    .line 57
    :cond_5
    iget v7, p0, Ln4/G;->f:I

    or-int/2addr v7, v9

    iput v7, p0, Ln4/G;->f:I

    goto/16 :goto_0

    .line 58
    :sswitch_9
    iget v7, p0, Ln4/G;->f:I

    and-int/2addr v7, v5

    if-ne v7, v5, :cond_6

    .line 59
    iget-object v7, p0, Ln4/G;->m:Ln4/Q;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-static {v7}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v8

    .line 61
    :cond_6
    sget-object v7, Ln4/Q;->x:Ln4/a;

    invoke-virtual {p1, v7, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v7

    check-cast v7, Ln4/Q;

    iput-object v7, p0, Ln4/G;->m:Ln4/Q;

    if-eqz v8, :cond_7

    .line 62
    invoke-virtual {v8, v7}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    .line 63
    invoke-virtual {v8}, Ln4/P;->g()Ln4/Q;

    move-result-object v7

    iput-object v7, p0, Ln4/G;->m:Ln4/Q;

    .line 64
    :cond_7
    iget v7, p0, Ln4/G;->f:I

    or-int/2addr v7, v5

    iput v7, p0, Ln4/G;->f:I

    goto/16 :goto_0

    :sswitch_a
    and-int/lit8 v7, v4, 0x20

    if-eq v7, v5, :cond_8

    .line 65
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Ln4/G;->l:Ljava/util/List;

    or-int/lit8 v4, v4, 0x20

    .line 66
    :cond_8
    iget-object v7, p0, Ln4/G;->l:Ljava/util/List;

    sget-object v8, Ln4/W;->q:Ln4/a;

    invoke-virtual {p1, v8, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 67
    :sswitch_b
    iget v7, p0, Ln4/G;->f:I

    const/16 v9, 0x8

    and-int/2addr v7, v9

    if-ne v7, v9, :cond_9

    .line 68
    iget-object v7, p0, Ln4/G;->j:Ln4/Q;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    invoke-static {v7}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v8

    .line 70
    :cond_9
    sget-object v7, Ln4/Q;->x:Ln4/a;

    invoke-virtual {p1, v7, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v7

    check-cast v7, Ln4/Q;

    iput-object v7, p0, Ln4/G;->j:Ln4/Q;

    if-eqz v8, :cond_a

    .line 71
    invoke-virtual {v8, v7}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    .line 72
    invoke-virtual {v8}, Ln4/P;->g()Ln4/Q;

    move-result-object v7

    iput-object v7, p0, Ln4/G;->j:Ln4/Q;

    .line 73
    :cond_a
    iget v7, p0, Ln4/G;->f:I

    or-int/2addr v7, v9

    iput v7, p0, Ln4/G;->f:I

    goto/16 :goto_0

    .line 74
    :sswitch_c
    iget v7, p0, Ln4/G;->f:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Ln4/G;->f:I

    .line 75
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v7

    .line 76
    iput v7, p0, Ln4/G;->i:I

    goto/16 :goto_0

    .line 77
    :sswitch_d
    iget v7, p0, Ln4/G;->f:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Ln4/G;->f:I

    .line 78
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v7

    .line 79
    iput v7, p0, Ln4/G;->h:I
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 80
    :goto_2
    :try_start_1
    new-instance p2, Lt4/s;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lt4/s;-><init>(Ljava/lang/String;)V

    .line 81
    iput-object p0, p2, Lt4/s;->d:Lt4/b;

    .line 82
    throw p2

    .line 83
    :goto_3
    iput-object p0, p1, Lt4/s;->d:Lt4/b;

    .line 84
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v4, 0x20

    if-ne p2, v5, :cond_b

    .line 85
    iget-object p2, p0, Ln4/G;->l:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ln4/G;->l:Ljava/util/List;

    :cond_b
    and-int/lit16 p2, v4, 0x800

    if-ne p2, v6, :cond_c

    .line 86
    iget-object p2, p0, Ln4/G;->r:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ln4/G;->r:Ljava/util/List;

    .line 87
    :cond_c
    :try_start_2
    invoke-virtual {v2}, Ll5/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    :catch_2
    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/G;->e:Lt4/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/G;->e:Lt4/e;

    throw p1

    .line 89
    :goto_5
    invoke-virtual {p0}, Lt4/m;->m()V

    throw p1

    :cond_d
    and-int/lit8 p1, v4, 0x20

    if-ne p1, v5, :cond_e

    .line 90
    iget-object p1, p0, Ln4/G;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ln4/G;->l:Ljava/util/List;

    :cond_e
    and-int/lit16 p1, v4, 0x800

    if-ne p1, v6, :cond_f

    .line 91
    iget-object p1, p0, Ln4/G;->r:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ln4/G;->r:Ljava/util/List;

    .line 92
    :cond_f
    :try_start_3
    invoke-virtual {v2}, Ll5/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 93
    :catch_3
    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p1

    iput-object p1, p0, Ln4/G;->e:Lt4/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/G;->e:Lt4/e;

    throw p1

    .line 94
    :goto_6
    invoke-virtual {p0}, Lt4/m;->m()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_d
        0x10 -> :sswitch_c
        0x1a -> :sswitch_b
        0x22 -> :sswitch_a
        0x2a -> :sswitch_9
        0x32 -> :sswitch_8
        0x38 -> :sswitch_7
        0x40 -> :sswitch_6
        0x48 -> :sswitch_5
        0x50 -> :sswitch_4
        0x58 -> :sswitch_3
        0xf8 -> :sswitch_2
        0xfa -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final a()Lt4/b;
    .locals 0

    sget-object p0, Ln4/G;->u:Ln4/G;

    return-object p0
.end method

.method public final b()Z
    .locals 5

    iget-byte v0, p0, Ln4/G;->s:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Ln4/G;->f:I

    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Ln4/G;->j:Ln4/Q;

    invoke-virtual {v0}, Ln4/Q;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Ln4/G;->s:B

    return v2

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Ln4/G;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Ln4/G;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/W;

    invoke-virtual {v3}, Ln4/W;->b()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v2, p0, Ln4/G;->s:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ln4/G;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ln4/G;->m:Ln4/Q;

    invoke-virtual {v0}, Ln4/Q;->b()Z

    move-result v0

    if-nez v0, :cond_5

    iput-byte v2, p0, Ln4/G;->s:B

    return v2

    :cond_5
    iget v0, p0, Ln4/G;->f:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Ln4/G;->o:Ln4/Z;

    invoke-virtual {v0}, Ln4/Z;->b()Z

    move-result v0

    if-nez v0, :cond_6

    iput-byte v2, p0, Ln4/G;->s:B

    return v2

    :cond_6
    invoke-virtual {p0}, Lt4/m;->i()Z

    move-result v0

    if-nez v0, :cond_7

    iput-byte v2, p0, Ln4/G;->s:B

    return v2

    :cond_7
    iput-byte v1, p0, Ln4/G;->s:B

    return v1

    :cond_8
    iput-byte v2, p0, Ln4/G;->s:B

    return v2
.end method

.method public final c()I
    .locals 8

    iget v0, p0, Ln4/G;->t:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Ln4/G;->f:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Ln4/G;->h:I

    invoke-static {v3, v0}, Ll5/e;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v4, p0, Ln4/G;->f:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    iget v4, p0, Ln4/G;->i:I

    invoke-static {v1, v4}, Ll5/e;->b(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_2
    iget v4, p0, Ln4/G;->f:I

    const/16 v6, 0x8

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_3

    const/4 v4, 0x3

    iget-object v7, p0, Ln4/G;->j:Ln4/Q;

    invoke-static {v4, v7}, Ll5/e;->d(ILt4/b;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_3
    move v4, v2

    :goto_1
    iget-object v7, p0, Ln4/G;->l:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    iget-object v7, p0, Ln4/G;->l:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lt4/b;

    invoke-static {v5, v7}, Ll5/e;->d(ILt4/b;)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget v4, p0, Ln4/G;->f:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x5

    iget-object v5, p0, Ln4/G;->m:Ln4/Q;

    invoke-static {v4, v5}, Ll5/e;->d(ILt4/b;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_5
    iget v4, p0, Ln4/G;->f:I

    const/16 v5, 0x80

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_6

    const/4 v4, 0x6

    iget-object v5, p0, Ln4/G;->o:Ln4/Z;

    invoke-static {v4, v5}, Ll5/e;->d(ILt4/b;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_6
    iget v4, p0, Ln4/G;->f:I

    const/16 v5, 0x100

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_7

    const/4 v4, 0x7

    iget v5, p0, Ln4/G;->p:I

    invoke-static {v4, v5}, Ll5/e;->b(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_7
    iget v4, p0, Ln4/G;->f:I

    const/16 v5, 0x200

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_8

    iget v4, p0, Ln4/G;->q:I

    invoke-static {v6, v4}, Ll5/e;->b(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_8
    iget v4, p0, Ln4/G;->f:I

    const/16 v5, 0x10

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_9

    const/16 v4, 0x9

    iget v5, p0, Ln4/G;->k:I

    invoke-static {v4, v5}, Ll5/e;->b(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_9
    iget v4, p0, Ln4/G;->f:I

    const/16 v5, 0x40

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_a

    const/16 v4, 0xa

    iget v5, p0, Ln4/G;->n:I

    invoke-static {v4, v5}, Ll5/e;->b(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_a
    iget v4, p0, Ln4/G;->f:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_b

    const/16 v3, 0xb

    iget v4, p0, Ln4/G;->g:I

    invoke-static {v3, v4}, Ll5/e;->b(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_b
    move v3, v2

    :goto_2
    iget-object v4, p0, Ln4/G;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_c

    iget-object v4, p0, Ln4/G;->r:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ll5/e;->c(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    add-int/2addr v0, v3

    iget-object v2, p0, Ln4/G;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lt4/m;->j()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v1, p0, Ln4/G;->e:Lt4/e;

    invoke-virtual {v1}, Lt4/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Ln4/G;->t:I

    return v1
.end method

.method public final d()Lt4/k;
    .locals 0

    invoke-static {}, Ln4/F;->h()Ln4/F;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lt4/k;
    .locals 1

    invoke-static {}, Ln4/F;->h()Ln4/F;

    move-result-object v0

    invoke-virtual {v0, p0}, Ln4/F;->i(Ln4/G;)V

    return-object v0
.end method

.method public final f(Ll5/e;)V
    .locals 7

    invoke-virtual {p0}, Ln4/G;->c()I

    new-instance v0, Lo1/b;

    invoke-direct {v0, p0}, Lo1/b;-><init>(Lt4/m;)V

    iget v1, p0, Ln4/G;->f:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Ln4/G;->h:I

    invoke-virtual {p1, v3, v1}, Ll5/e;->m(II)V

    :cond_0
    iget v1, p0, Ln4/G;->f:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    iget v1, p0, Ln4/G;->i:I

    invoke-virtual {p1, v2, v1}, Ll5/e;->m(II)V

    :cond_1
    iget v1, p0, Ln4/G;->f:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    iget-object v5, p0, Ln4/G;->j:Ln4/Q;

    invoke-virtual {p1, v1, v5}, Ll5/e;->o(ILt4/b;)V

    :cond_2
    const/4 v1, 0x0

    move v5, v1

    :goto_0
    iget-object v6, p0, Ln4/G;->l:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Ln4/G;->l:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt4/b;

    invoke-virtual {p1, v4, v6}, Ll5/e;->o(ILt4/b;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget v4, p0, Ln4/G;->f:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_4

    const/4 v4, 0x5

    iget-object v5, p0, Ln4/G;->m:Ln4/Q;

    invoke-virtual {p1, v4, v5}, Ll5/e;->o(ILt4/b;)V

    :cond_4
    iget v4, p0, Ln4/G;->f:I

    const/16 v5, 0x80

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x6

    iget-object v5, p0, Ln4/G;->o:Ln4/Z;

    invoke-virtual {p1, v4, v5}, Ll5/e;->o(ILt4/b;)V

    :cond_5
    iget v4, p0, Ln4/G;->f:I

    const/16 v5, 0x100

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_6

    const/4 v4, 0x7

    iget v5, p0, Ln4/G;->p:I

    invoke-virtual {p1, v4, v5}, Ll5/e;->m(II)V

    :cond_6
    iget v4, p0, Ln4/G;->f:I

    const/16 v5, 0x200

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_7

    iget v4, p0, Ln4/G;->q:I

    invoke-virtual {p1, v2, v4}, Ll5/e;->m(II)V

    :cond_7
    iget v2, p0, Ln4/G;->f:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    const/16 v2, 0x9

    iget v4, p0, Ln4/G;->k:I

    invoke-virtual {p1, v2, v4}, Ll5/e;->m(II)V

    :cond_8
    iget v2, p0, Ln4/G;->f:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9

    const/16 v2, 0xa

    iget v4, p0, Ln4/G;->n:I

    invoke-virtual {p1, v2, v4}, Ll5/e;->m(II)V

    :cond_9
    iget v2, p0, Ln4/G;->f:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_a

    const/16 v2, 0xb

    iget v3, p0, Ln4/G;->g:I

    invoke-virtual {p1, v2, v3}, Ll5/e;->m(II)V

    :cond_a
    :goto_1
    iget-object v2, p0, Ln4/G;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    iget-object v2, p0, Ln4/G;->r:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1f

    invoke-virtual {p1, v3, v2}, Ll5/e;->m(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    const/16 v1, 0x4a38

    invoke-virtual {v0, v1, p1}, Lo1/b;->j(ILl5/e;)V

    iget-object p0, p0, Ln4/G;->e:Lt4/e;

    invoke-virtual {p1, p0}, Ll5/e;->r(Lt4/e;)V

    return-void
.end method

.method public final p()Z
    .locals 1

    iget p0, p0, Ln4/G;->f:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final q()V
    .locals 3

    const/16 v0, 0x206

    iput v0, p0, Ln4/G;->g:I

    const/16 v0, 0x806

    iput v0, p0, Ln4/G;->h:I

    const/4 v0, 0x0

    iput v0, p0, Ln4/G;->i:I

    sget-object v1, Ln4/Q;->w:Ln4/Q;

    iput-object v1, p0, Ln4/G;->j:Ln4/Q;

    iput v0, p0, Ln4/G;->k:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/G;->l:Ljava/util/List;

    iput-object v1, p0, Ln4/G;->m:Ln4/Q;

    iput v0, p0, Ln4/G;->n:I

    sget-object v1, Ln4/Z;->o:Ln4/Z;

    iput-object v1, p0, Ln4/G;->o:Ln4/Z;

    iput v0, p0, Ln4/G;->p:I

    iput v0, p0, Ln4/G;->q:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ln4/G;->r:Ljava/util/List;

    return-void
.end method
