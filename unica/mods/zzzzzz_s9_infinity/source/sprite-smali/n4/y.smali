.class public final Ln4/y;
.super Lt4/m;
.source "SourceFile"


# static fields
.field public static final u:Ln4/y;

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

.field public o:Ljava/util/List;

.field public p:Ln4/X;

.field public q:Ljava/util/List;

.field public r:Ln4/n;

.field public s:B

.field public t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln4/a;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    sput-object v0, Ln4/y;->v:Ln4/a;

    new-instance v0, Ln4/y;

    invoke-direct {v0}, Ln4/y;-><init>()V

    sput-object v0, Ln4/y;->u:Ln4/y;

    invoke-virtual {v0}, Ln4/y;->q()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lt4/m;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Ln4/y;->s:B

    .line 8
    iput v0, p0, Ln4/y;->t:I

    .line 9
    sget-object v0, Lt4/e;->d:Lt4/w;

    iput-object v0, p0, Ln4/y;->e:Lt4/e;

    return-void
.end method

.method public constructor <init>(Ln4/x;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lt4/m;-><init>(Lt4/l;)V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Ln4/y;->s:B

    .line 3
    iput v0, p0, Ln4/y;->t:I

    .line 4
    iget-object p1, p1, Lt4/k;->d:Lt4/e;

    .line 5
    iput-object p1, p0, Ln4/y;->e:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lt4/f;Lt4/i;)V
    .locals 11

    .line 10
    invoke-direct {p0}, Lt4/m;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput-byte v0, p0, Ln4/y;->s:B

    .line 12
    iput v0, p0, Ln4/y;->t:I

    .line 13
    invoke-virtual {p0}, Ln4/y;->q()V

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

    const/16 v6, 0x400

    const/16 v7, 0x100

    if-nez v3, :cond_11

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
    iget v8, p0, Ln4/y;->f:I

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_1

    .line 19
    iget-object v8, p0, Ln4/y;->r:Ln4/n;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    new-instance v9, Ln4/m;

    const/4 v10, 0x0

    .line 21
    invoke-direct {v9, v10}, Ln4/m;-><init>(I)V

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    iput-object v10, v9, Ln4/m;->g:Ljava/util/List;

    .line 23
    invoke-virtual {v9, v8}, Ln4/m;->j(Ln4/n;)V

    .line 24
    :cond_1
    sget-object v8, Ln4/n;->i:Ln4/a;

    invoke-virtual {p1, v8, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v8

    check-cast v8, Ln4/n;

    iput-object v8, p0, Ln4/y;->r:Ln4/n;

    if-eqz v9, :cond_2

    .line 25
    invoke-virtual {v9, v8}, Ln4/m;->j(Ln4/n;)V

    .line 26
    invoke-virtual {v9}, Ln4/m;->f()Ln4/n;

    move-result-object v8

    iput-object v8, p0, Ln4/y;->r:Ln4/n;

    .line 27
    :cond_2
    iget v8, p0, Ln4/y;->f:I

    or-int/2addr v8, v7

    iput v8, p0, Ln4/y;->f:I

    goto :goto_0

    .line 28
    :sswitch_2
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v8

    .line 29
    invoke-virtual {p1, v8}, Lt4/f;->d(I)I

    move-result v8

    and-int/lit16 v9, v4, 0x400

    if-eq v9, v6, :cond_3

    .line 30
    invoke-virtual {p1}, Lt4/f;->b()I

    move-result v9

    if-lez v9, :cond_3

    .line 31
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Ln4/y;->q:Ljava/util/List;

    or-int/lit16 v4, v4, 0x400

    .line 32
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lt4/f;->b()I

    move-result v9

    if-lez v9, :cond_4

    .line 33
    iget-object v9, p0, Ln4/y;->q:Ljava/util/List;

    .line 34
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v10

    .line 35
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_4
    invoke-virtual {p1, v8}, Lt4/f;->c(I)V

    goto/16 :goto_0

    :sswitch_3
    and-int/lit16 v8, v4, 0x400

    if-eq v8, v6, :cond_5

    .line 37
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Ln4/y;->q:Ljava/util/List;

    or-int/lit16 v4, v4, 0x400

    .line 38
    :cond_5
    iget-object v8, p0, Ln4/y;->q:Ljava/util/List;

    .line 39
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v9

    .line 40
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 41
    :sswitch_4
    iget v8, p0, Ln4/y;->f:I

    const/16 v10, 0x80

    and-int/2addr v8, v10

    if-ne v8, v10, :cond_6

    .line 42
    iget-object v8, p0, Ln4/y;->p:Ln4/X;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {v8}, Ln4/X;->i(Ln4/X;)Ln4/f;

    move-result-object v9

    .line 44
    :cond_6
    sget-object v8, Ln4/X;->k:Ln4/a;

    invoke-virtual {p1, v8, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v8

    check-cast v8, Ln4/X;

    iput-object v8, p0, Ln4/y;->p:Ln4/X;

    if-eqz v9, :cond_7

    .line 45
    invoke-virtual {v9, v8}, Ln4/f;->l(Ln4/X;)V

    .line 46
    invoke-virtual {v9}, Ln4/f;->h()Ln4/X;

    move-result-object v8

    iput-object v8, p0, Ln4/y;->p:Ln4/X;

    .line 47
    :cond_7
    iget v8, p0, Ln4/y;->f:I

    or-int/2addr v8, v10

    iput v8, p0, Ln4/y;->f:I

    goto/16 :goto_0

    .line 48
    :sswitch_5
    iget v8, p0, Ln4/y;->f:I

    or-int/2addr v8, v1

    iput v8, p0, Ln4/y;->f:I

    .line 49
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v8

    .line 50
    iput v8, p0, Ln4/y;->g:I

    goto/16 :goto_0

    .line 51
    :sswitch_6
    iget v8, p0, Ln4/y;->f:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Ln4/y;->f:I

    .line 52
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v8

    .line 53
    iput v8, p0, Ln4/y;->n:I

    goto/16 :goto_0

    .line 54
    :sswitch_7
    iget v8, p0, Ln4/y;->f:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Ln4/y;->f:I

    .line 55
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v8

    .line 56
    iput v8, p0, Ln4/y;->k:I

    goto/16 :goto_0

    :sswitch_8
    and-int/lit16 v8, v4, 0x100

    if-eq v8, v7, :cond_8

    .line 57
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Ln4/y;->o:Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    .line 58
    :cond_8
    iget-object v8, p0, Ln4/y;->o:Ljava/util/List;

    sget-object v9, Ln4/Z;->p:Ln4/a;

    invoke-virtual {p1, v9, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 59
    :sswitch_9
    iget v8, p0, Ln4/y;->f:I

    and-int/2addr v8, v5

    if-ne v8, v5, :cond_9

    .line 60
    iget-object v8, p0, Ln4/y;->m:Ln4/Q;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {v8}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v9

    .line 62
    :cond_9
    sget-object v8, Ln4/Q;->x:Ln4/a;

    invoke-virtual {p1, v8, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v8

    check-cast v8, Ln4/Q;

    iput-object v8, p0, Ln4/y;->m:Ln4/Q;

    if-eqz v9, :cond_a

    .line 63
    invoke-virtual {v9, v8}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    .line 64
    invoke-virtual {v9}, Ln4/P;->g()Ln4/Q;

    move-result-object v8

    iput-object v8, p0, Ln4/y;->m:Ln4/Q;

    .line 65
    :cond_a
    iget v8, p0, Ln4/y;->f:I

    or-int/2addr v8, v5

    iput v8, p0, Ln4/y;->f:I

    goto/16 :goto_0

    :sswitch_a
    and-int/lit8 v8, v4, 0x20

    if-eq v8, v5, :cond_b

    .line 66
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Ln4/y;->l:Ljava/util/List;

    or-int/lit8 v4, v4, 0x20

    .line 67
    :cond_b
    iget-object v8, p0, Ln4/y;->l:Ljava/util/List;

    sget-object v9, Ln4/W;->q:Ln4/a;

    invoke-virtual {p1, v9, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 68
    :sswitch_b
    iget v8, p0, Ln4/y;->f:I

    const/16 v10, 0x8

    and-int/2addr v8, v10

    if-ne v8, v10, :cond_c

    .line 69
    iget-object v8, p0, Ln4/y;->j:Ln4/Q;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-static {v8}, Ln4/Q;->r(Ln4/Q;)Ln4/P;

    move-result-object v9

    .line 71
    :cond_c
    sget-object v8, Ln4/Q;->x:Ln4/a;

    invoke-virtual {p1, v8, p2}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v8

    check-cast v8, Ln4/Q;

    iput-object v8, p0, Ln4/y;->j:Ln4/Q;

    if-eqz v9, :cond_d

    .line 72
    invoke-virtual {v9, v8}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    .line 73
    invoke-virtual {v9}, Ln4/P;->g()Ln4/Q;

    move-result-object v8

    iput-object v8, p0, Ln4/y;->j:Ln4/Q;

    .line 74
    :cond_d
    iget v8, p0, Ln4/y;->f:I

    or-int/2addr v8, v10

    iput v8, p0, Ln4/y;->f:I

    goto/16 :goto_0

    .line 75
    :sswitch_c
    iget v8, p0, Ln4/y;->f:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Ln4/y;->f:I

    .line 76
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v8

    .line 77
    iput v8, p0, Ln4/y;->i:I

    goto/16 :goto_0

    .line 78
    :sswitch_d
    iget v8, p0, Ln4/y;->f:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Ln4/y;->f:I

    .line 79
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result v8

    .line 80
    iput v8, p0, Ln4/y;->h:I
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 81
    :goto_2
    :try_start_1
    new-instance p2, Lt4/s;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lt4/s;-><init>(Ljava/lang/String;)V

    .line 82
    iput-object p0, p2, Lt4/s;->d:Lt4/b;

    .line 83
    throw p2

    .line 84
    :goto_3
    iput-object p0, p1, Lt4/s;->d:Lt4/b;

    .line 85
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v4, 0x20

    if-ne p2, v5, :cond_e

    .line 86
    iget-object p2, p0, Ln4/y;->l:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ln4/y;->l:Ljava/util/List;

    :cond_e
    and-int/lit16 p2, v4, 0x100

    if-ne p2, v7, :cond_f

    .line 87
    iget-object p2, p0, Ln4/y;->o:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ln4/y;->o:Ljava/util/List;

    :cond_f
    and-int/lit16 p2, v4, 0x400

    if-ne p2, v6, :cond_10

    .line 88
    iget-object p2, p0, Ln4/y;->q:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Ln4/y;->q:Ljava/util/List;

    .line 89
    :cond_10
    :try_start_2
    invoke-virtual {v2}, Ll5/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    :catch_2
    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/y;->e:Lt4/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/y;->e:Lt4/e;

    throw p1

    .line 91
    :goto_5
    invoke-virtual {p0}, Lt4/m;->m()V

    throw p1

    :cond_11
    and-int/lit8 p1, v4, 0x20

    if-ne p1, v5, :cond_12

    .line 92
    iget-object p1, p0, Ln4/y;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ln4/y;->l:Ljava/util/List;

    :cond_12
    and-int/lit16 p1, v4, 0x100

    if-ne p1, v7, :cond_13

    .line 93
    iget-object p1, p0, Ln4/y;->o:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ln4/y;->o:Ljava/util/List;

    :cond_13
    and-int/lit16 p1, v4, 0x400

    if-ne p1, v6, :cond_14

    .line 94
    iget-object p1, p0, Ln4/y;->q:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ln4/y;->q:Ljava/util/List;

    .line 95
    :cond_14
    :try_start_3
    invoke-virtual {v2}, Ll5/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 96
    :catch_3
    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p1

    iput-object p1, p0, Ln4/y;->e:Lt4/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lt4/d;->h()Lt4/e;

    move-result-object p2

    iput-object p2, p0, Ln4/y;->e:Lt4/e;

    throw p1

    .line 97
    :goto_6
    invoke-virtual {p0}, Lt4/m;->m()V

    return-void

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
        0xf2 -> :sswitch_4
        0xf8 -> :sswitch_3
        0xfa -> :sswitch_2
        0x102 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final a()Lt4/b;
    .locals 0

    sget-object p0, Ln4/y;->u:Ln4/y;

    return-object p0
.end method

.method public final b()Z
    .locals 5

    iget-byte v0, p0, Ln4/y;->s:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Ln4/y;->f:I

    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_b

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Ln4/y;->j:Ln4/Q;

    invoke-virtual {v0}, Ln4/Q;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Ln4/y;->s:B

    return v2

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Ln4/y;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Ln4/y;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/W;

    invoke-virtual {v3}, Ln4/W;->b()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v2, p0, Ln4/y;->s:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ln4/y;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ln4/y;->m:Ln4/Q;

    invoke-virtual {v0}, Ln4/Q;->b()Z

    move-result v0

    if-nez v0, :cond_5

    iput-byte v2, p0, Ln4/y;->s:B

    return v2

    :cond_5
    move v0, v2

    :goto_1
    iget-object v3, p0, Ln4/y;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Ln4/y;->o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/Z;

    invoke-virtual {v3}, Ln4/Z;->b()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Ln4/y;->s:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iget v0, p0, Ln4/y;->f:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Ln4/y;->p:Ln4/X;

    invoke-virtual {v0}, Ln4/X;->b()Z

    move-result v0

    if-nez v0, :cond_8

    iput-byte v2, p0, Ln4/y;->s:B

    return v2

    :cond_8
    iget v0, p0, Ln4/y;->f:I

    const/16 v3, 0x100

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Ln4/y;->r:Ln4/n;

    invoke-virtual {v0}, Ln4/n;->b()Z

    move-result v0

    if-nez v0, :cond_9

    iput-byte v2, p0, Ln4/y;->s:B

    return v2

    :cond_9
    invoke-virtual {p0}, Lt4/m;->i()Z

    move-result v0

    if-nez v0, :cond_a

    iput-byte v2, p0, Ln4/y;->s:B

    return v2

    :cond_a
    iput-byte v1, p0, Ln4/y;->s:B

    return v1

    :cond_b
    iput-byte v2, p0, Ln4/y;->s:B

    return v2
.end method

.method public final c()I
    .locals 9

    iget v0, p0, Ln4/y;->t:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Ln4/y;->f:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Ln4/y;->h:I

    invoke-static {v3, v0}, Ll5/e;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v4, p0, Ln4/y;->f:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    iget v4, p0, Ln4/y;->i:I

    invoke-static {v1, v4}, Ll5/e;->b(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_2
    iget v4, p0, Ln4/y;->f:I

    const/16 v6, 0x8

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_3

    const/4 v4, 0x3

    iget-object v7, p0, Ln4/y;->j:Ln4/Q;

    invoke-static {v4, v7}, Ll5/e;->d(ILt4/b;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_3
    move v4, v2

    :goto_1
    iget-object v7, p0, Ln4/y;->l:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    iget-object v7, p0, Ln4/y;->l:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lt4/b;

    invoke-static {v5, v7}, Ll5/e;->d(ILt4/b;)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget v4, p0, Ln4/y;->f:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x5

    iget-object v7, p0, Ln4/y;->m:Ln4/Q;

    invoke-static {v4, v7}, Ll5/e;->d(ILt4/b;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_5
    move v4, v2

    :goto_2
    iget-object v7, p0, Ln4/y;->o:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_6

    iget-object v7, p0, Ln4/y;->o:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lt4/b;

    const/4 v8, 0x6

    invoke-static {v8, v7}, Ll5/e;->d(ILt4/b;)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    iget v4, p0, Ln4/y;->f:I

    const/16 v7, 0x10

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_7

    const/4 v4, 0x7

    iget v7, p0, Ln4/y;->k:I

    invoke-static {v4, v7}, Ll5/e;->b(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_7
    iget v4, p0, Ln4/y;->f:I

    const/16 v7, 0x40

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_8

    iget v4, p0, Ln4/y;->n:I

    invoke-static {v6, v4}, Ll5/e;->b(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_8
    iget v4, p0, Ln4/y;->f:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_9

    const/16 v3, 0x9

    iget v4, p0, Ln4/y;->g:I

    invoke-static {v3, v4}, Ll5/e;->b(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_9
    iget v3, p0, Ln4/y;->f:I

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_a

    const/16 v3, 0x1e

    iget-object v4, p0, Ln4/y;->p:Ln4/X;

    invoke-static {v3, v4}, Ll5/e;->d(ILt4/b;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_a
    move v3, v2

    :goto_3
    iget-object v4, p0, Ln4/y;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    iget-object v4, p0, Ln4/y;->q:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ll5/e;->c(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    add-int/2addr v0, v3

    iget-object v2, p0, Ln4/y;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    iget v0, p0, Ln4/y;->f:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Ln4/y;->r:Ln4/n;

    invoke-static {v5, v0}, Ll5/e;->d(ILt4/b;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_c
    invoke-virtual {p0}, Lt4/m;->j()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v1, p0, Ln4/y;->e:Lt4/e;

    invoke-virtual {v1}, Lt4/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Ln4/y;->t:I

    return v1
.end method

.method public final d()Lt4/k;
    .locals 0

    invoke-static {}, Ln4/x;->h()Ln4/x;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lt4/k;
    .locals 1

    invoke-static {}, Ln4/x;->h()Ln4/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Ln4/x;->i(Ln4/y;)V

    return-object v0
.end method

.method public final f(Ll5/e;)V
    .locals 8

    invoke-virtual {p0}, Ln4/y;->c()I

    new-instance v0, Lo1/b;

    invoke-direct {v0, p0}, Lo1/b;-><init>(Lt4/m;)V

    iget v1, p0, Ln4/y;->f:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Ln4/y;->h:I

    invoke-virtual {p1, v3, v1}, Ll5/e;->m(II)V

    :cond_0
    iget v1, p0, Ln4/y;->f:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    iget v1, p0, Ln4/y;->i:I

    invoke-virtual {p1, v2, v1}, Ll5/e;->m(II)V

    :cond_1
    iget v1, p0, Ln4/y;->f:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    iget-object v5, p0, Ln4/y;->j:Ln4/Q;

    invoke-virtual {p1, v1, v5}, Ll5/e;->o(ILt4/b;)V

    :cond_2
    const/4 v1, 0x0

    move v5, v1

    :goto_0
    iget-object v6, p0, Ln4/y;->l:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Ln4/y;->l:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt4/b;

    invoke-virtual {p1, v4, v6}, Ll5/e;->o(ILt4/b;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget v4, p0, Ln4/y;->f:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_4

    const/4 v4, 0x5

    iget-object v6, p0, Ln4/y;->m:Ln4/Q;

    invoke-virtual {p1, v4, v6}, Ll5/e;->o(ILt4/b;)V

    :cond_4
    move v4, v1

    :goto_1
    iget-object v6, p0, Ln4/y;->o:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    iget-object v6, p0, Ln4/y;->o:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt4/b;

    const/4 v7, 0x6

    invoke-virtual {p1, v7, v6}, Ll5/e;->o(ILt4/b;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iget v4, p0, Ln4/y;->f:I

    const/16 v6, 0x10

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_6

    const/4 v4, 0x7

    iget v6, p0, Ln4/y;->k:I

    invoke-virtual {p1, v4, v6}, Ll5/e;->m(II)V

    :cond_6
    iget v4, p0, Ln4/y;->f:I

    const/16 v6, 0x40

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_7

    iget v4, p0, Ln4/y;->n:I

    invoke-virtual {p1, v2, v4}, Ll5/e;->m(II)V

    :cond_7
    iget v2, p0, Ln4/y;->f:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_8

    const/16 v2, 0x9

    iget v3, p0, Ln4/y;->g:I

    invoke-virtual {p1, v2, v3}, Ll5/e;->m(II)V

    :cond_8
    iget v2, p0, Ln4/y;->f:I

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_9

    const/16 v2, 0x1e

    iget-object v3, p0, Ln4/y;->p:Ln4/X;

    invoke-virtual {p1, v2, v3}, Ll5/e;->o(ILt4/b;)V

    :cond_9
    :goto_2
    iget-object v2, p0, Ln4/y;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    iget-object v2, p0, Ln4/y;->q:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1f

    invoke-virtual {p1, v3, v2}, Ll5/e;->m(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    iget v1, p0, Ln4/y;->f:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Ln4/y;->r:Ln4/n;

    invoke-virtual {p1, v5, v1}, Ll5/e;->o(ILt4/b;)V

    :cond_b
    const/16 v1, 0x4a38

    invoke-virtual {v0, v1, p1}, Lo1/b;->j(ILl5/e;)V

    iget-object p0, p0, Ln4/y;->e:Lt4/e;

    invoke-virtual {p1, p0}, Ll5/e;->r(Lt4/e;)V

    return-void
.end method

.method public final p()Z
    .locals 1

    iget p0, p0, Ln4/y;->f:I

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

    const/4 v0, 0x6

    iput v0, p0, Ln4/y;->g:I

    iput v0, p0, Ln4/y;->h:I

    const/4 v0, 0x0

    iput v0, p0, Ln4/y;->i:I

    sget-object v1, Ln4/Q;->w:Ln4/Q;

    iput-object v1, p0, Ln4/y;->j:Ln4/Q;

    iput v0, p0, Ln4/y;->k:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ln4/y;->l:Ljava/util/List;

    iput-object v1, p0, Ln4/y;->m:Ln4/Q;

    iput v0, p0, Ln4/y;->n:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ln4/y;->o:Ljava/util/List;

    sget-object v0, Ln4/X;->j:Ln4/X;

    iput-object v0, p0, Ln4/y;->p:Ln4/X;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ln4/y;->q:Ljava/util/List;

    sget-object v0, Ln4/n;->h:Ln4/n;

    iput-object v0, p0, Ln4/y;->r:Ln4/n;

    return-void
.end method
