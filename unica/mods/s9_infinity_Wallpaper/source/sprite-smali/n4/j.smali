.class public final Ln4/j;
.super Lt4/m;
.source "SourceFile"


# static fields
.field public static final E:Ln4/j;

.field public static final F:Ln4/a;


# instance fields
.field public A:Ljava/util/List;

.field public B:Ln4/e0;

.field public C:B

.field public D:I

.field public final e:Lt4/e;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;

.field public l:Ljava/util/List;

.field public m:I

.field public n:Ljava/util/List;

.field public o:I

.field public p:Ljava/util/List;

.field public q:Ljava/util/List;

.field public r:Ljava/util/List;

.field public s:Ljava/util/List;

.field public t:Ljava/util/List;

.field public u:Ljava/util/List;

.field public v:I

.field public w:I

.field public x:Ln4/Q;

.field public y:I

.field public z:Ln4/X;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln4/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    sput-object v0, Ln4/j;->F:Ln4/a;

    new-instance v0, Ln4/j;

    invoke-direct {v0}, Ln4/j;-><init>()V

    sput-object v0, Ln4/j;->E:Ln4/j;

    invoke-virtual {v0}, Ln4/j;->p()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lt4/m;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Ln4/j;->m:I

    .line 11
    iput v0, p0, Ln4/j;->o:I

    .line 12
    iput v0, p0, Ln4/j;->v:I

    .line 13
    iput-byte v0, p0, Ln4/j;->C:B

    .line 14
    iput v0, p0, Ln4/j;->D:I

    .line 15
    sget-object v0, Lt4/e;->d:Lt4/w;

    iput-object v0, p0, Ln4/j;->e:Lt4/e;

    return-void
.end method

.method public constructor <init>(Ln4/h;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lt4/m;-><init>(Lt4/l;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ln4/j;->m:I

    .line 3
    iput v0, p0, Ln4/j;->o:I

    .line 4
    iput v0, p0, Ln4/j;->v:I

    .line 5
    iput-byte v0, p0, Ln4/j;->C:B

    .line 6
    iput v0, p0, Ln4/j;->D:I

    .line 7
    iget-object p1, p1, Lt4/k;->d:Lt4/e;

    .line 8
    iput-object p1, p0, Ln4/j;->e:Lt4/e;

    return-void
.end method

.method public constructor <init>(Lt4/f;Lt4/i;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 16
    invoke-direct/range {p0 .. p0}, Lt4/m;-><init>()V

    const/4 v4, -0x1

    .line 17
    iput v4, v1, Ln4/j;->m:I

    .line 18
    iput v4, v1, Ln4/j;->o:I

    .line 19
    iput v4, v1, Ln4/j;->v:I

    .line 20
    iput-byte v4, v1, Ln4/j;->C:B

    .line 21
    iput v4, v1, Ln4/j;->D:I

    .line 22
    invoke-virtual/range {p0 .. p0}, Ln4/j;->p()V

    .line 23
    invoke-static {}, Lt4/e;->n()Lt4/d;

    move-result-object v4

    const/4 v5, 0x1

    .line 24
    invoke-static {v4, v5}, Ll5/e;->j(Ljava/io/OutputStream;I)Ll5/e;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/16 v9, 0x80

    const/16 v10, 0x10

    const/16 v11, 0x8

    const/16 v5, 0x40

    const/16 v15, 0x20

    const/high16 v13, 0x20000

    if-nez v7, :cond_25

    .line 25
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lt4/f;->n()I

    move-result v12

    const/16 v16, 0x0

    sparse-switch v12, :sswitch_data_0

    .line 26
    invoke-virtual {v1, v2, v6, v3, v12}, Lt4/m;->n(Lt4/f;Ll5/e;Lt4/i;I)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v7, 0x1

    :cond_0
    :goto_1
    const/4 v12, 0x1

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object v2, v0

    goto/16 :goto_8

    .line 27
    :sswitch_0
    iget v12, v1, Ln4/j;->f:I

    and-int/2addr v12, v9

    if-ne v12, v9, :cond_1

    .line 28
    iget-object v12, v1, Ln4/j;->B:Ln4/e0;

    invoke-virtual {v12}, Ln4/e0;->i()Ln4/m;

    move-result-object v16

    :cond_1
    move-object/from16 v12, v16

    .line 29
    sget-object v14, Ln4/e0;->i:Ln4/a;

    invoke-virtual {v2, v14, v3}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v14

    check-cast v14, Ln4/e0;

    iput-object v14, v1, Ln4/j;->B:Ln4/e0;

    if-eqz v12, :cond_2

    .line 30
    invoke-virtual {v12, v14}, Ln4/m;->m(Ln4/e0;)V

    .line 31
    invoke-virtual {v12}, Ln4/m;->i()Ln4/e0;

    move-result-object v12

    iput-object v12, v1, Ln4/j;->B:Ln4/e0;

    .line 32
    :cond_2
    iget v12, v1, Ln4/j;->f:I

    or-int/2addr v12, v9

    iput v12, v1, Ln4/j;->f:I

    goto :goto_1

    .line 33
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lt4/f;->k()I

    move-result v12

    .line 34
    invoke-virtual {v2, v12}, Lt4/f;->d(I)I

    move-result v12

    and-int v14, v8, v13

    if-eq v14, v13, :cond_3

    .line 35
    invoke-virtual/range {p1 .. p1}, Lt4/f;->b()I

    move-result v14

    if-lez v14, :cond_3

    .line 36
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Ln4/j;->A:Ljava/util/List;

    or-int/2addr v8, v13

    .line 37
    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lt4/f;->b()I

    move-result v14

    if-lez v14, :cond_4

    .line 38
    iget-object v14, v1, Ln4/j;->A:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lt4/f;->f()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v9, 0x80

    goto :goto_2

    .line 39
    :cond_4
    invoke-virtual {v2, v12}, Lt4/f;->c(I)V

    goto :goto_1

    :sswitch_2
    and-int v9, v8, v13

    if-eq v9, v13, :cond_5

    .line 40
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Ln4/j;->A:Ljava/util/List;

    or-int/2addr v8, v13

    .line 41
    :cond_5
    iget-object v9, v1, Ln4/j;->A:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lt4/f;->f()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 42
    :sswitch_3
    iget v9, v1, Ln4/j;->f:I

    and-int/2addr v9, v5

    if-ne v9, v5, :cond_6

    .line 43
    iget-object v9, v1, Ln4/j;->z:Ln4/X;

    invoke-virtual {v9}, Ln4/X;->j()Ln4/f;

    move-result-object v16

    :cond_6
    move-object/from16 v9, v16

    .line 44
    sget-object v12, Ln4/X;->k:Ln4/a;

    invoke-virtual {v2, v12, v3}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v12

    check-cast v12, Ln4/X;

    iput-object v12, v1, Ln4/j;->z:Ln4/X;

    if-eqz v9, :cond_7

    .line 45
    invoke-virtual {v9, v12}, Ln4/f;->l(Ln4/X;)V

    .line 46
    invoke-virtual {v9}, Ln4/f;->h()Ln4/X;

    move-result-object v9

    iput-object v9, v1, Ln4/j;->z:Ln4/X;

    .line 47
    :cond_7
    iget v9, v1, Ln4/j;->f:I

    or-int/2addr v9, v5

    iput v9, v1, Ln4/j;->f:I

    goto/16 :goto_1

    .line 48
    :sswitch_4
    iget v9, v1, Ln4/j;->f:I

    or-int/2addr v9, v15

    iput v9, v1, Ln4/j;->f:I

    .line 49
    invoke-virtual/range {p1 .. p1}, Lt4/f;->f()I

    move-result v9

    iput v9, v1, Ln4/j;->y:I

    goto/16 :goto_1

    .line 50
    :sswitch_5
    iget v9, v1, Ln4/j;->f:I

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_8

    .line 51
    iget-object v9, v1, Ln4/j;->x:Ln4/Q;

    invoke-virtual {v9}, Ln4/Q;->s()Ln4/P;

    move-result-object v16

    :cond_8
    move-object/from16 v9, v16

    .line 52
    sget-object v12, Ln4/Q;->x:Ln4/a;

    invoke-virtual {v2, v12, v3}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v12

    check-cast v12, Ln4/Q;

    iput-object v12, v1, Ln4/j;->x:Ln4/Q;

    if-eqz v9, :cond_9

    .line 53
    invoke-virtual {v9, v12}, Ln4/P;->i(Ln4/Q;)Ln4/P;

    .line 54
    invoke-virtual {v9}, Ln4/P;->g()Ln4/Q;

    move-result-object v9

    iput-object v9, v1, Ln4/j;->x:Ln4/Q;

    .line 55
    :cond_9
    iget v9, v1, Ln4/j;->f:I

    or-int/2addr v9, v10

    iput v9, v1, Ln4/j;->f:I

    goto/16 :goto_1

    .line 56
    :sswitch_6
    iget v9, v1, Ln4/j;->f:I

    or-int/2addr v9, v11

    iput v9, v1, Ln4/j;->f:I

    .line 57
    invoke-virtual/range {p1 .. p1}, Lt4/f;->f()I

    move-result v9

    iput v9, v1, Ln4/j;->w:I

    goto/16 :goto_1

    .line 58
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Lt4/f;->k()I

    move-result v9

    .line 59
    invoke-virtual {v2, v9}, Lt4/f;->d(I)I

    move-result v9

    and-int/lit16 v12, v8, 0x1000

    const/16 v14, 0x1000

    if-eq v12, v14, :cond_a

    .line 60
    invoke-virtual/range {p1 .. p1}, Lt4/f;->b()I

    move-result v12

    if-lez v12, :cond_a

    .line 61
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Ln4/j;->u:Ljava/util/List;

    or-int/lit16 v8, v8, 0x1000

    .line 62
    :cond_a
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lt4/f;->b()I

    move-result v12

    if-lez v12, :cond_b

    .line 63
    iget-object v12, v1, Ln4/j;->u:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lt4/f;->f()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 64
    :cond_b
    invoke-virtual {v2, v9}, Lt4/f;->c(I)V

    goto/16 :goto_1

    :sswitch_8
    and-int/lit16 v9, v8, 0x1000

    const/16 v12, 0x1000

    if-eq v9, v12, :cond_c

    .line 65
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Ln4/j;->u:Ljava/util/List;

    or-int/lit16 v8, v8, 0x1000

    .line 66
    :cond_c
    iget-object v9, v1, Ln4/j;->u:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lt4/f;->f()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_9
    and-int/lit16 v9, v8, 0x800

    const/16 v12, 0x800

    if-eq v9, v12, :cond_d

    .line 67
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Ln4/j;->t:Ljava/util/List;

    or-int/lit16 v8, v8, 0x800

    .line 68
    :cond_d
    iget-object v9, v1, Ln4/j;->t:Ljava/util/List;

    sget-object v12, Ln4/t;->k:Ln4/a;

    invoke-virtual {v2, v12, v3}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_a
    and-int/lit16 v9, v8, 0x400

    const/16 v12, 0x400

    if-eq v9, v12, :cond_e

    .line 69
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Ln4/j;->s:Ljava/util/List;

    or-int/lit16 v8, v8, 0x400

    .line 70
    :cond_e
    iget-object v9, v1, Ln4/j;->s:Ljava/util/List;

    sget-object v12, Ln4/T;->s:Ln4/a;

    invoke-virtual {v2, v12, v3}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_b
    and-int/lit16 v9, v8, 0x200

    const/16 v12, 0x200

    if-eq v9, v12, :cond_f

    .line 71
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Ln4/j;->r:Ljava/util/List;

    or-int/lit16 v8, v8, 0x200

    .line 72
    :cond_f
    iget-object v9, v1, Ln4/j;->r:Ljava/util/List;

    sget-object v12, Ln4/G;->v:Ln4/a;

    invoke-virtual {v2, v12, v3}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_c
    and-int/lit16 v9, v8, 0x100

    const/16 v12, 0x100

    if-eq v9, v12, :cond_10

    .line 73
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Ln4/j;->q:Ljava/util/List;

    or-int/lit16 v8, v8, 0x100

    .line 74
    :cond_10
    iget-object v9, v1, Ln4/j;->q:Ljava/util/List;

    sget-object v12, Ln4/y;->v:Ln4/a;

    invoke-virtual {v2, v12, v3}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_d
    and-int/lit16 v9, v8, 0x80

    const/16 v12, 0x80

    if-eq v9, v12, :cond_11

    .line 75
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Ln4/j;->p:Ljava/util/List;

    or-int/lit16 v8, v8, 0x80

    .line 76
    :cond_11
    iget-object v9, v1, Ln4/j;->p:Ljava/util/List;

    sget-object v12, Ln4/l;->m:Ln4/a;

    invoke-virtual {v2, v12, v3}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 77
    :sswitch_e
    invoke-virtual/range {p1 .. p1}, Lt4/f;->k()I

    move-result v9

    .line 78
    invoke-virtual {v2, v9}, Lt4/f;->d(I)I

    move-result v9

    and-int/lit8 v12, v8, 0x40

    if-eq v12, v5, :cond_12

    .line 79
    invoke-virtual/range {p1 .. p1}, Lt4/f;->b()I

    move-result v12

    if-lez v12, :cond_12

    .line 80
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Ln4/j;->n:Ljava/util/List;

    or-int/lit8 v8, v8, 0x40

    .line 81
    :cond_12
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lt4/f;->b()I

    move-result v12

    if-lez v12, :cond_13

    .line 82
    iget-object v12, v1, Ln4/j;->n:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lt4/f;->f()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 83
    :cond_13
    invoke-virtual {v2, v9}, Lt4/f;->c(I)V

    goto/16 :goto_1

    :sswitch_f
    and-int/lit8 v9, v8, 0x40

    if-eq v9, v5, :cond_14

    .line 84
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Ln4/j;->n:Ljava/util/List;

    or-int/lit8 v8, v8, 0x40

    .line 85
    :cond_14
    iget-object v9, v1, Ln4/j;->n:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lt4/f;->f()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_10
    and-int/lit8 v9, v8, 0x10

    if-eq v9, v10, :cond_15

    .line 86
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Ln4/j;->k:Ljava/util/List;

    or-int/lit8 v8, v8, 0x10

    .line 87
    :cond_15
    iget-object v9, v1, Ln4/j;->k:Ljava/util/List;

    sget-object v12, Ln4/Q;->x:Ln4/a;

    invoke-virtual {v2, v12, v3}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_11
    and-int/lit8 v9, v8, 0x8

    if-eq v9, v11, :cond_16

    .line 88
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Ln4/j;->j:Ljava/util/List;

    or-int/lit8 v8, v8, 0x8

    .line 89
    :cond_16
    iget-object v9, v1, Ln4/j;->j:Ljava/util/List;

    sget-object v12, Ln4/W;->q:Ln4/a;

    invoke-virtual {v2, v12, v3}, Lt4/f;->g(Lt4/y;Lt4/i;)Lt4/b;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 90
    :sswitch_12
    iget v9, v1, Ln4/j;->f:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v1, Ln4/j;->f:I

    .line 91
    invoke-virtual/range {p1 .. p1}, Lt4/f;->f()I

    move-result v9

    iput v9, v1, Ln4/j;->i:I

    goto/16 :goto_1

    .line 92
    :sswitch_13
    iget v9, v1, Ln4/j;->f:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v1, Ln4/j;->f:I

    .line 93
    invoke-virtual/range {p1 .. p1}, Lt4/f;->f()I

    move-result v9

    iput v9, v1, Ln4/j;->h:I

    goto/16 :goto_1

    .line 94
    :sswitch_14
    invoke-virtual/range {p1 .. p1}, Lt4/f;->k()I

    move-result v9

    .line 95
    invoke-virtual {v2, v9}, Lt4/f;->d(I)I

    move-result v9

    and-int/lit8 v12, v8, 0x20

    if-eq v12, v15, :cond_17

    .line 96
    invoke-virtual/range {p1 .. p1}, Lt4/f;->b()I

    move-result v12

    if-lez v12, :cond_17

    .line 97
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v1, Ln4/j;->l:Ljava/util/List;

    or-int/lit8 v8, v8, 0x20

    .line 98
    :cond_17
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lt4/f;->b()I

    move-result v12

    if-lez v12, :cond_18

    .line 99
    iget-object v12, v1, Ln4/j;->l:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lt4/f;->f()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 100
    :cond_18
    invoke-virtual {v2, v9}, Lt4/f;->c(I)V

    goto/16 :goto_1

    :sswitch_15
    and-int/lit8 v9, v8, 0x20

    if-eq v9, v15, :cond_19

    .line 101
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Ln4/j;->l:Ljava/util/List;

    or-int/lit8 v8, v8, 0x20

    .line 102
    :cond_19
    iget-object v9, v1, Ln4/j;->l:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lt4/f;->f()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 103
    :sswitch_16
    iget v9, v1, Ln4/j;->f:I

    const/4 v12, 0x1

    or-int/2addr v9, v12

    iput v9, v1, Ln4/j;->f:I

    .line 104
    invoke-virtual/range {p1 .. p1}, Lt4/f;->f()I

    move-result v9

    iput v9, v1, Ln4/j;->g:I
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :sswitch_17
    const/4 v12, 0x1

    move v7, v12

    :goto_6
    move v5, v12

    goto/16 :goto_0

    .line 105
    :goto_7
    :try_start_1
    new-instance v3, Lt4/s;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lt4/s;-><init>(Ljava/lang/String;)V

    .line 106
    iput-object v1, v3, Lt4/s;->d:Lt4/b;

    .line 107
    throw v3

    .line 108
    :goto_8
    iput-object v1, v2, Lt4/s;->d:Lt4/b;

    .line 109
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_9
    and-int/lit8 v3, v8, 0x20

    if-ne v3, v15, :cond_1a

    .line 110
    iget-object v3, v1, Ln4/j;->l:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Ln4/j;->l:Ljava/util/List;

    :cond_1a
    and-int/lit8 v3, v8, 0x8

    if-ne v3, v11, :cond_1b

    .line 111
    iget-object v3, v1, Ln4/j;->j:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Ln4/j;->j:Ljava/util/List;

    :cond_1b
    and-int/lit8 v3, v8, 0x10

    if-ne v3, v10, :cond_1c

    .line 112
    iget-object v3, v1, Ln4/j;->k:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Ln4/j;->k:Ljava/util/List;

    :cond_1c
    and-int/lit8 v3, v8, 0x40

    if-ne v3, v5, :cond_1d

    .line 113
    iget-object v3, v1, Ln4/j;->n:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Ln4/j;->n:Ljava/util/List;

    :cond_1d
    and-int/lit16 v3, v8, 0x80

    const/16 v5, 0x80

    if-ne v3, v5, :cond_1e

    .line 114
    iget-object v3, v1, Ln4/j;->p:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Ln4/j;->p:Ljava/util/List;

    :cond_1e
    and-int/lit16 v3, v8, 0x100

    const/16 v5, 0x100

    if-ne v3, v5, :cond_1f

    .line 115
    iget-object v3, v1, Ln4/j;->q:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Ln4/j;->q:Ljava/util/List;

    :cond_1f
    and-int/lit16 v3, v8, 0x200

    const/16 v5, 0x200

    if-ne v3, v5, :cond_20

    .line 116
    iget-object v3, v1, Ln4/j;->r:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Ln4/j;->r:Ljava/util/List;

    :cond_20
    and-int/lit16 v3, v8, 0x400

    const/16 v5, 0x400

    if-ne v3, v5, :cond_21

    .line 117
    iget-object v3, v1, Ln4/j;->s:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Ln4/j;->s:Ljava/util/List;

    :cond_21
    and-int/lit16 v3, v8, 0x800

    const/16 v5, 0x800

    if-ne v3, v5, :cond_22

    .line 118
    iget-object v3, v1, Ln4/j;->t:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Ln4/j;->t:Ljava/util/List;

    :cond_22
    and-int/lit16 v3, v8, 0x1000

    const/16 v5, 0x1000

    if-ne v3, v5, :cond_23

    .line 119
    iget-object v3, v1, Ln4/j;->u:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Ln4/j;->u:Ljava/util/List;

    :cond_23
    and-int v3, v8, v13

    if-ne v3, v13, :cond_24

    .line 120
    iget-object v3, v1, Ln4/j;->A:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Ln4/j;->A:Ljava/util/List;

    .line 121
    :cond_24
    :try_start_2
    invoke-virtual {v6}, Ll5/e;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    :catch_2
    invoke-virtual {v4}, Lt4/d;->h()Lt4/e;

    move-result-object v3

    iput-object v3, v1, Ln4/j;->e:Lt4/e;

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v4}, Lt4/d;->h()Lt4/e;

    move-result-object v3

    iput-object v3, v1, Ln4/j;->e:Lt4/e;

    throw v2

    .line 123
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lt4/m;->m()V

    throw v2

    :cond_25
    and-int/lit8 v2, v8, 0x20

    if-ne v2, v15, :cond_26

    .line 124
    iget-object v2, v1, Ln4/j;->l:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ln4/j;->l:Ljava/util/List;

    :cond_26
    and-int/lit8 v2, v8, 0x8

    if-ne v2, v11, :cond_27

    .line 125
    iget-object v2, v1, Ln4/j;->j:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ln4/j;->j:Ljava/util/List;

    :cond_27
    and-int/lit8 v2, v8, 0x10

    if-ne v2, v10, :cond_28

    .line 126
    iget-object v2, v1, Ln4/j;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ln4/j;->k:Ljava/util/List;

    :cond_28
    and-int/lit8 v2, v8, 0x40

    if-ne v2, v5, :cond_29

    .line 127
    iget-object v2, v1, Ln4/j;->n:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ln4/j;->n:Ljava/util/List;

    :cond_29
    and-int/lit16 v2, v8, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_2a

    .line 128
    iget-object v2, v1, Ln4/j;->p:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ln4/j;->p:Ljava/util/List;

    :cond_2a
    and-int/lit16 v2, v8, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_2b

    .line 129
    iget-object v2, v1, Ln4/j;->q:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ln4/j;->q:Ljava/util/List;

    :cond_2b
    and-int/lit16 v2, v8, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_2c

    .line 130
    iget-object v2, v1, Ln4/j;->r:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ln4/j;->r:Ljava/util/List;

    :cond_2c
    and-int/lit16 v2, v8, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_2d

    .line 131
    iget-object v2, v1, Ln4/j;->s:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ln4/j;->s:Ljava/util/List;

    :cond_2d
    and-int/lit16 v2, v8, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_2e

    .line 132
    iget-object v2, v1, Ln4/j;->t:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ln4/j;->t:Ljava/util/List;

    :cond_2e
    and-int/lit16 v2, v8, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_2f

    .line 133
    iget-object v2, v1, Ln4/j;->u:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ln4/j;->u:Ljava/util/List;

    :cond_2f
    and-int v2, v8, v13

    if-ne v2, v13, :cond_30

    .line 134
    iget-object v2, v1, Ln4/j;->A:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Ln4/j;->A:Ljava/util/List;

    .line 135
    :cond_30
    :try_start_3
    invoke-virtual {v6}, Ll5/e;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 136
    :catch_3
    invoke-virtual {v4}, Lt4/d;->h()Lt4/e;

    move-result-object v2

    iput-object v2, v1, Ln4/j;->e:Lt4/e;

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v4}, Lt4/d;->h()Lt4/e;

    move-result-object v3

    iput-object v3, v1, Ln4/j;->e:Lt4/e;

    throw v2

    .line 137
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lt4/m;->m()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_17
        0x8 -> :sswitch_16
        0x10 -> :sswitch_15
        0x12 -> :sswitch_14
        0x18 -> :sswitch_13
        0x20 -> :sswitch_12
        0x2a -> :sswitch_11
        0x32 -> :sswitch_10
        0x38 -> :sswitch_f
        0x3a -> :sswitch_e
        0x42 -> :sswitch_d
        0x4a -> :sswitch_c
        0x52 -> :sswitch_b
        0x5a -> :sswitch_a
        0x6a -> :sswitch_9
        0x80 -> :sswitch_8
        0x82 -> :sswitch_7
        0x88 -> :sswitch_6
        0x92 -> :sswitch_5
        0x98 -> :sswitch_4
        0xf2 -> :sswitch_3
        0xf8 -> :sswitch_2
        0xfa -> :sswitch_1
        0x102 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a()Lt4/b;
    .locals 0

    sget-object p0, Ln4/j;->E:Ln4/j;

    return-object p0
.end method

.method public final b()Z
    .locals 4

    iget-byte v0, p0, Ln4/j;->C:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Ln4/j;->f:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_13

    move v0, v2

    :goto_0
    iget-object v3, p0, Ln4/j;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Ln4/j;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/W;

    invoke-virtual {v3}, Ln4/W;->b()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Ln4/j;->C:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    iget-object v3, p0, Ln4/j;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Ln4/j;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/Q;

    invoke-virtual {v3}, Ln4/Q;->b()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v2, p0, Ln4/j;->C:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_2
    iget-object v3, p0, Ln4/j;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Ln4/j;->p:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/l;

    invoke-virtual {v3}, Ln4/l;->b()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Ln4/j;->C:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_3
    iget-object v3, p0, Ln4/j;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Ln4/j;->q:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/y;

    invoke-virtual {v3}, Ln4/y;->b()Z

    move-result v3

    if-nez v3, :cond_8

    iput-byte v2, p0, Ln4/j;->C:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v0, v2

    :goto_4
    iget-object v3, p0, Ln4/j;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    iget-object v3, p0, Ln4/j;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/G;

    invoke-virtual {v3}, Ln4/G;->b()Z

    move-result v3

    if-nez v3, :cond_a

    iput-byte v2, p0, Ln4/j;->C:B

    return v2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    move v0, v2

    :goto_5
    iget-object v3, p0, Ln4/j;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    iget-object v3, p0, Ln4/j;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/T;

    invoke-virtual {v3}, Ln4/T;->b()Z

    move-result v3

    if-nez v3, :cond_c

    iput-byte v2, p0, Ln4/j;->C:B

    return v2

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    move v0, v2

    :goto_6
    iget-object v3, p0, Ln4/j;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_f

    iget-object v3, p0, Ln4/j;->t:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/t;

    invoke-virtual {v3}, Ln4/t;->b()Z

    move-result v3

    if-nez v3, :cond_e

    iput-byte v2, p0, Ln4/j;->C:B

    return v2

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    iget v0, p0, Ln4/j;->f:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_10

    iget-object v0, p0, Ln4/j;->x:Ln4/Q;

    invoke-virtual {v0}, Ln4/Q;->b()Z

    move-result v0

    if-nez v0, :cond_10

    iput-byte v2, p0, Ln4/j;->C:B

    return v2

    :cond_10
    iget v0, p0, Ln4/j;->f:I

    const/16 v3, 0x40

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_11

    iget-object v0, p0, Ln4/j;->z:Ln4/X;

    invoke-virtual {v0}, Ln4/X;->b()Z

    move-result v0

    if-nez v0, :cond_11

    iput-byte v2, p0, Ln4/j;->C:B

    return v2

    :cond_11
    invoke-virtual {p0}, Lt4/m;->i()Z

    move-result v0

    if-nez v0, :cond_12

    iput-byte v2, p0, Ln4/j;->C:B

    return v2

    :cond_12
    iput-byte v1, p0, Ln4/j;->C:B

    return v1

    :cond_13
    iput-byte v2, p0, Ln4/j;->C:B

    return v2
.end method

.method public final c()I
    .locals 7

    iget v0, p0, Ln4/j;->D:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Ln4/j;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Ln4/j;->g:I

    invoke-static {v1, v0}, Ll5/e;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    move v1, v2

    move v3, v1

    :goto_1
    iget-object v4, p0, Ln4/j;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Ln4/j;->l:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ll5/e;->c(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v3

    iget-object v1, p0, Ln4/j;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3}, Ll5/e;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iput v3, p0, Ln4/j;->m:I

    iget v1, p0, Ln4/j;->f:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x3

    iget v4, p0, Ln4/j;->h:I

    invoke-static {v1, v4}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Ln4/j;->f:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    iget v1, p0, Ln4/j;->i:I

    invoke-static {v4, v1}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    move v1, v2

    :goto_2
    iget-object v4, p0, Ln4/j;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    iget-object v4, p0, Ln4/j;->j:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt4/b;

    const/4 v5, 0x5

    invoke-static {v5, v4}, Ll5/e;->d(ILt4/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_3
    iget-object v4, p0, Ln4/j;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    iget-object v4, p0, Ln4/j;->k:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt4/b;

    const/4 v5, 0x6

    invoke-static {v5, v4}, Ll5/e;->d(ILt4/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move v1, v2

    move v4, v1

    :goto_4
    iget-object v5, p0, Ln4/j;->n:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    iget-object v5, p0, Ln4/j;->n:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ll5/e;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    add-int/2addr v0, v4

    iget-object v1, p0, Ln4/j;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    invoke-static {v4}, Ll5/e;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iput v4, p0, Ln4/j;->o:I

    move v1, v2

    :goto_5
    iget-object v4, p0, Ln4/j;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v1, v4, :cond_a

    iget-object v4, p0, Ln4/j;->p:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt4/b;

    invoke-static {v5, v4}, Ll5/e;->d(ILt4/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_6
    iget-object v4, p0, Ln4/j;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    iget-object v4, p0, Ln4/j;->q:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt4/b;

    const/16 v6, 0x9

    invoke-static {v6, v4}, Ll5/e;->d(ILt4/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    move v1, v2

    :goto_7
    iget-object v4, p0, Ln4/j;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    iget-object v4, p0, Ln4/j;->r:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt4/b;

    const/16 v6, 0xa

    invoke-static {v6, v4}, Ll5/e;->d(ILt4/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    move v1, v2

    :goto_8
    iget-object v4, p0, Ln4/j;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    iget-object v4, p0, Ln4/j;->s:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt4/b;

    const/16 v6, 0xb

    invoke-static {v6, v4}, Ll5/e;->d(ILt4/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_d
    move v1, v2

    :goto_9
    iget-object v4, p0, Ln4/j;->t:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_e

    iget-object v4, p0, Ln4/j;->t:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt4/b;

    const/16 v6, 0xd

    invoke-static {v6, v4}, Ll5/e;->d(ILt4/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    move v1, v2

    move v4, v1

    :goto_a
    iget-object v6, p0, Ln4/j;->u:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_f

    iget-object v6, p0, Ln4/j;->u:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ll5/e;->c(I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_f
    add-int/2addr v0, v4

    iget-object v1, p0, Ln4/j;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    add-int/lit8 v0, v0, 0x2

    invoke-static {v4}, Ll5/e;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iput v4, p0, Ln4/j;->v:I

    iget v1, p0, Ln4/j;->f:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_11

    const/16 v1, 0x11

    iget v4, p0, Ln4/j;->w:I

    invoke-static {v1, v4}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget v1, p0, Ln4/j;->f:I

    const/16 v4, 0x10

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_12

    const/16 v1, 0x12

    iget-object v4, p0, Ln4/j;->x:Ln4/Q;

    invoke-static {v1, v4}, Ll5/e;->d(ILt4/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget v1, p0, Ln4/j;->f:I

    const/16 v4, 0x20

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_13

    const/16 v1, 0x13

    iget v5, p0, Ln4/j;->y:I

    invoke-static {v1, v5}, Ll5/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget v1, p0, Ln4/j;->f:I

    const/16 v5, 0x40

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_14

    const/16 v1, 0x1e

    iget-object v5, p0, Ln4/j;->z:Ln4/X;

    invoke-static {v1, v5}, Ll5/e;->d(ILt4/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    move v1, v2

    :goto_b
    iget-object v5, p0, Ln4/j;->A:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_15

    iget-object v5, p0, Ln4/j;->A:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ll5/e;->c(I)I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    add-int/2addr v0, v1

    iget-object v1, p0, Ln4/j;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v1, v0

    iget v0, p0, Ln4/j;->f:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_16

    iget-object v0, p0, Ln4/j;->B:Ln4/e0;

    invoke-static {v4, v0}, Ll5/e;->d(ILt4/b;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_16
    invoke-virtual {p0}, Lt4/m;->j()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Ln4/j;->e:Lt4/e;

    invoke-virtual {v1}, Lt4/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Ln4/j;->D:I

    return v1
.end method

.method public final d()Lt4/k;
    .locals 0

    invoke-static {}, Ln4/h;->h()Ln4/h;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lt4/k;
    .locals 1

    invoke-static {}, Ln4/h;->h()Ln4/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Ln4/h;->i(Ln4/j;)V

    return-object v0
.end method

.method public final f(Ll5/e;)V
    .locals 7

    invoke-virtual {p0}, Ln4/j;->c()I

    new-instance v0, Lo1/b;

    invoke-direct {v0, p0}, Lo1/b;-><init>(Lt4/m;)V

    iget v1, p0, Ln4/j;->f:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Ln4/j;->g:I

    invoke-virtual {p1, v2, v1}, Ll5/e;->m(II)V

    :cond_0
    iget-object v1, p0, Ln4/j;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x12

    if-lez v1, :cond_1

    invoke-virtual {p1, v2}, Ll5/e;->v(I)V

    iget v1, p0, Ln4/j;->m:I

    invoke-virtual {p1, v1}, Ll5/e;->v(I)V

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v4, p0, Ln4/j;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Ln4/j;->l:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Ll5/e;->n(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v3, p0, Ln4/j;->f:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    iget v4, p0, Ln4/j;->h:I

    invoke-virtual {p1, v3, v4}, Ll5/e;->m(II)V

    :cond_3
    iget v3, p0, Ln4/j;->f:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    iget v3, p0, Ln4/j;->i:I

    invoke-virtual {p1, v4, v3}, Ll5/e;->m(II)V

    :cond_4
    move v3, v1

    :goto_1
    iget-object v4, p0, Ln4/j;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Ln4/j;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt4/b;

    const/4 v5, 0x5

    invoke-virtual {p1, v5, v4}, Ll5/e;->o(ILt4/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_2
    iget-object v4, p0, Ln4/j;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Ln4/j;->k:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt4/b;

    const/4 v5, 0x6

    invoke-virtual {p1, v5, v4}, Ll5/e;->o(ILt4/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-object v3, p0, Ln4/j;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ll5/e;->v(I)V

    iget v3, p0, Ln4/j;->o:I

    invoke-virtual {p1, v3}, Ll5/e;->v(I)V

    :cond_7
    move v3, v1

    :goto_3
    iget-object v4, p0, Ln4/j;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    iget-object v4, p0, Ln4/j;->n:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Ll5/e;->n(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    move v3, v1

    :goto_4
    iget-object v4, p0, Ln4/j;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v3, v4, :cond_9

    iget-object v4, p0, Ln4/j;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt4/b;

    invoke-virtual {p1, v5, v4}, Ll5/e;->o(ILt4/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    move v3, v1

    :goto_5
    iget-object v4, p0, Ln4/j;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    iget-object v4, p0, Ln4/j;->q:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt4/b;

    const/16 v6, 0x9

    invoke-virtual {p1, v6, v4}, Ll5/e;->o(ILt4/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    move v3, v1

    :goto_6
    iget-object v4, p0, Ln4/j;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    iget-object v4, p0, Ln4/j;->r:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt4/b;

    const/16 v6, 0xa

    invoke-virtual {p1, v6, v4}, Ll5/e;->o(ILt4/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    move v3, v1

    :goto_7
    iget-object v4, p0, Ln4/j;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    iget-object v4, p0, Ln4/j;->s:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt4/b;

    const/16 v6, 0xb

    invoke-virtual {p1, v6, v4}, Ll5/e;->o(ILt4/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    move v3, v1

    :goto_8
    iget-object v4, p0, Ln4/j;->t:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    iget-object v4, p0, Ln4/j;->t:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt4/b;

    const/16 v6, 0xd

    invoke-virtual {p1, v6, v4}, Ll5/e;->o(ILt4/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_d
    iget-object v3, p0, Ln4/j;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e

    const/16 v3, 0x82

    invoke-virtual {p1, v3}, Ll5/e;->v(I)V

    iget v3, p0, Ln4/j;->v:I

    invoke-virtual {p1, v3}, Ll5/e;->v(I)V

    :cond_e
    move v3, v1

    :goto_9
    iget-object v4, p0, Ln4/j;->u:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_f

    iget-object v4, p0, Ln4/j;->u:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Ll5/e;->n(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_f
    iget v3, p0, Ln4/j;->f:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_10

    const/16 v3, 0x11

    iget v4, p0, Ln4/j;->w:I

    invoke-virtual {p1, v3, v4}, Ll5/e;->m(II)V

    :cond_10
    iget v3, p0, Ln4/j;->f:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_11

    iget-object v3, p0, Ln4/j;->x:Ln4/Q;

    invoke-virtual {p1, v2, v3}, Ll5/e;->o(ILt4/b;)V

    :cond_11
    iget v2, p0, Ln4/j;->f:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_12

    const/16 v2, 0x13

    iget v4, p0, Ln4/j;->y:I

    invoke-virtual {p1, v2, v4}, Ll5/e;->m(II)V

    :cond_12
    iget v2, p0, Ln4/j;->f:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_13

    const/16 v2, 0x1e

    iget-object v4, p0, Ln4/j;->z:Ln4/X;

    invoke-virtual {p1, v2, v4}, Ll5/e;->o(ILt4/b;)V

    :cond_13
    :goto_a
    iget-object v2, p0, Ln4/j;->A:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_14

    iget-object v2, p0, Ln4/j;->A:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x1f

    invoke-virtual {p1, v4, v2}, Ll5/e;->m(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_14
    iget v1, p0, Ln4/j;->f:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_15

    iget-object v1, p0, Ln4/j;->B:Ln4/e0;

    invoke-virtual {p1, v3, v1}, Ll5/e;->o(ILt4/b;)V

    :cond_15
    const/16 v1, 0x4a38

    invoke-virtual {v0, v1, p1}, Lo1/b;->j(ILl5/e;)V

    iget-object p0, p0, Ln4/j;->e:Lt4/e;

    invoke-virtual {p1, p0}, Ll5/e;->r(Lt4/e;)V

    return-void
.end method

.method public final p()V
    .locals 2

    const/4 v0, 0x6

    iput v0, p0, Ln4/j;->g:I

    const/4 v0, 0x0

    iput v0, p0, Ln4/j;->h:I

    iput v0, p0, Ln4/j;->i:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/j;->j:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/j;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/j;->l:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/j;->n:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/j;->p:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/j;->q:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/j;->r:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/j;->s:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/j;->t:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ln4/j;->u:Ljava/util/List;

    iput v0, p0, Ln4/j;->w:I

    sget-object v1, Ln4/Q;->w:Ln4/Q;

    iput-object v1, p0, Ln4/j;->x:Ln4/Q;

    iput v0, p0, Ln4/j;->y:I

    sget-object v0, Ln4/X;->j:Ln4/X;

    iput-object v0, p0, Ln4/j;->z:Ln4/X;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ln4/j;->A:Ljava/util/List;

    sget-object v0, Ln4/e0;->h:Ln4/e0;

    iput-object v0, p0, Ln4/j;->B:Ln4/e0;

    return-void
.end method
