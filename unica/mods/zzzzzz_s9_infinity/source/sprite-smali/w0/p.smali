.class public final Lw0/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final u:Ljava/lang/String;

.field public static final v:LK/c;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ln0/g;

.field public final f:Ln0/g;

.field public g:J

.field public h:J

.field public i:J

.field public j:Ln0/e;

.field public final k:I

.field public final l:I

.field public final m:J

.field public n:J

.field public final o:J

.field public final p:J

.field public q:Z

.field public r:I

.field public final s:I

.field public final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WorkSpec"

    invoke-static {v0}, Ln0/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"WorkSpec\")"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lw0/p;->u:Ljava/lang/String;

    new-instance v0, LK/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LK/c;-><init>(I)V

    sput-object v0, Lw0/p;->v:LK/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ln0/g;Ln0/g;JJJLn0/e;IIJJJJZIII)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p13

    move/from16 v7, p15

    move/from16 v8, p25

    const-string v9, "id"

    invoke-static {p1, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "state"

    invoke-static {p2, v9}, LB/a;->t(ILjava/lang/String;)V

    const-string v9, "workerClassName"

    invoke-static {p3, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "input"

    invoke-static {p5, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "output"

    invoke-static {v5, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "constraints"

    invoke-static {v6, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "backoffPolicy"

    invoke-static {v7, v9}, LB/a;->t(ILjava/lang/String;)V

    const-string v9, "outOfQuotaPolicy"

    invoke-static {v8, v9}, LB/a;->t(ILjava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lw0/p;->a:Ljava/lang/String;

    .line 3
    iput v2, v0, Lw0/p;->b:I

    .line 4
    iput-object v3, v0, Lw0/p;->c:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lw0/p;->d:Ljava/lang/String;

    .line 6
    iput-object v4, v0, Lw0/p;->e:Ln0/g;

    .line 7
    iput-object v5, v0, Lw0/p;->f:Ln0/g;

    move-wide/from16 v1, p7

    .line 8
    iput-wide v1, v0, Lw0/p;->g:J

    move-wide/from16 v1, p9

    .line 9
    iput-wide v1, v0, Lw0/p;->h:J

    move-wide/from16 v1, p11

    .line 10
    iput-wide v1, v0, Lw0/p;->i:J

    .line 11
    iput-object v6, v0, Lw0/p;->j:Ln0/e;

    move/from16 v1, p14

    .line 12
    iput v1, v0, Lw0/p;->k:I

    .line 13
    iput v7, v0, Lw0/p;->l:I

    move-wide/from16 v1, p16

    .line 14
    iput-wide v1, v0, Lw0/p;->m:J

    move-wide/from16 v1, p18

    .line 15
    iput-wide v1, v0, Lw0/p;->n:J

    move-wide/from16 v1, p20

    .line 16
    iput-wide v1, v0, Lw0/p;->o:J

    move-wide/from16 v1, p22

    .line 17
    iput-wide v1, v0, Lw0/p;->p:J

    move/from16 v1, p24

    .line 18
    iput-boolean v1, v0, Lw0/p;->q:Z

    .line 19
    iput v8, v0, Lw0/p;->r:I

    move/from16 v1, p26

    .line 20
    iput v1, v0, Lw0/p;->s:I

    move/from16 v1, p27

    .line 21
    iput v1, v0, Lw0/p;->t:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ln0/g;Ln0/g;JJJLn0/e;IIJJJJZIIII)V
    .locals 31

    move/from16 v0, p27

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 22
    const-string v3, "EMPTY"

    if-eqz v1, :cond_2

    .line 23
    sget-object v1, Ln0/g;->c:Ln0/g;

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 24
    sget-object v1, Ln0/g;->c:Ln0/g;

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v1

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_4

    move-wide v10, v3

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-wide v12, v3

    goto :goto_5

    :cond_5
    move-wide/from16 v12, p9

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-wide v14, v3

    goto :goto_6

    :cond_6
    move-wide/from16 v14, p11

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    .line 25
    sget-object v1, Ln0/e;->i:Ln0/e;

    move-object/from16 v16, v1

    goto :goto_7

    :cond_7
    move-object/from16 v16, p13

    :goto_7
    and-int/lit16 v1, v0, 0x400

    const/4 v6, 0x0

    if-eqz v1, :cond_8

    move/from16 v17, v6

    goto :goto_8

    :cond_8
    move/from16 v17, p14

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move/from16 v18, v2

    goto :goto_9

    :cond_9
    move/from16 v18, p15

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    const-wide/16 v19, 0x7530

    goto :goto_a

    :cond_a
    move-wide/from16 v19, p16

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move-wide/from16 v21, v3

    goto :goto_b

    :cond_b
    move-wide/from16 v21, p18

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move-wide/from16 v23, v3

    goto :goto_c

    :cond_c
    move-wide/from16 v23, p20

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    const-wide/16 v3, -0x1

    move-wide/from16 v25, v3

    goto :goto_d

    :cond_d
    move-wide/from16 v25, p22

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move/from16 v27, v6

    goto :goto_e

    :cond_e
    move/from16 v27, p24

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move/from16 v28, v2

    goto :goto_f

    :cond_f
    move/from16 v28, p25

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    move/from16 v29, v6

    goto :goto_10

    :cond_10
    move/from16 v29, p26

    :goto_10
    const/16 v30, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    .line 26
    invoke-direct/range {v3 .. v30}, Lw0/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ln0/g;Ln0/g;JJJLn0/e;IIJJJJZIII)V

    return-void
.end method

.method public static b(Lw0/p;Ljava/lang/String;ILjava/lang/String;Ln0/g;IJII)Lw0/p;
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lw0/p;->a:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    iget v2, v0, Lw0/p;->b:I

    move v5, v2

    goto :goto_1

    :cond_1
    move/from16 v5, p2

    :goto_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    iget-object v2, v0, Lw0/p;->c:Ljava/lang/String;

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    iget-object v7, v0, Lw0/p;->d:Ljava/lang/String;

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_3

    iget-object v2, v0, Lw0/p;->e:Ln0/g;

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p4

    :goto_3
    iget-object v9, v0, Lw0/p;->f:Ln0/g;

    iget-wide v10, v0, Lw0/p;->g:J

    iget-wide v12, v0, Lw0/p;->h:J

    iget-wide v14, v0, Lw0/p;->i:J

    iget-object v2, v0, Lw0/p;->j:Ln0/e;

    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_4

    iget v3, v0, Lw0/p;->k:I

    move/from16 v17, v3

    goto :goto_4

    :cond_4
    move/from16 v17, p5

    :goto_4
    iget v3, v0, Lw0/p;->l:I

    move-wide/from16 v18, v14

    iget-wide v14, v0, Lw0/p;->m:J

    move-wide/from16 v20, v14

    and-int/lit16 v14, v1, 0x2000

    if-eqz v14, :cond_5

    iget-wide v14, v0, Lw0/p;->n:J

    move-wide/from16 v22, v14

    goto :goto_5

    :cond_5
    move-wide/from16 v22, p6

    :goto_5
    iget-wide v14, v0, Lw0/p;->o:J

    move-wide/from16 v24, v14

    iget-wide v14, v0, Lw0/p;->p:J

    move-wide/from16 v26, v14

    iget-boolean v14, v0, Lw0/p;->q:Z

    iget v15, v0, Lw0/p;->r:I

    move/from16 v16, v14

    iget v14, v0, Lw0/p;->s:I

    const/high16 v28, 0x80000

    and-int v1, v1, v28

    if-eqz v1, :cond_6

    iget v1, v0, Lw0/p;->t:I

    move/from16 v30, v1

    goto :goto_6

    :cond_6
    move/from16 v30, p8

    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "id"

    invoke-static {v4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {v5, v0}, LB/a;->t(ILjava/lang/String;)V

    const-string v0, "workerClassName"

    invoke-static {v6, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {v9, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constraints"

    invoke-static {v2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backoffPolicy"

    invoke-static {v3, v0}, LB/a;->t(ILjava/lang/String;)V

    const-string v0, "outOfQuotaPolicy"

    invoke-static {v15, v0}, LB/a;->t(ILjava/lang/String;)V

    new-instance v0, Lw0/p;

    move v1, v3

    move-object v3, v0

    move/from16 v31, v14

    move/from16 v29, v15

    move/from16 v28, v16

    move-wide/from16 v14, v18

    move-object/from16 v16, v2

    move/from16 v18, v1

    move-wide/from16 v19, v20

    move-wide/from16 v21, v22

    move-wide/from16 v23, v24

    move-wide/from16 v25, v26

    move/from16 v27, v28

    move/from16 v28, v29

    move/from16 v29, v31

    invoke-direct/range {v3 .. v30}, Lw0/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ln0/g;Ln0/g;JJJLn0/e;IIJJJJZIII)V

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 9

    iget v0, p0, Lw0/p;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lw0/p;->k:I

    if-lez v0, :cond_2

    iget-wide v2, p0, Lw0/p;->m:J

    iget v4, p0, Lw0/p;->l:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    int-to-long v0, v0

    mul-long/2addr v2, v0

    goto :goto_0

    :cond_0
    long-to-float v2, v2

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v2, v0

    :goto_0
    iget-wide v0, p0, Lw0/p;->n:J

    const-wide/32 v4, 0x112a880

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    move-wide v2, v4

    :cond_1
    add-long/2addr v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lw0/p;->d()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Lw0/p;->s:I

    iget-wide v3, p0, Lw0/p;->n:J

    if-nez v0, :cond_3

    iget-wide v5, p0, Lw0/p;->g:J

    add-long/2addr v3, v5

    :cond_3
    iget-wide v5, p0, Lw0/p;->i:J

    iget-wide v7, p0, Lw0/p;->h:J

    cmp-long p0, v5, v7

    if-eqz p0, :cond_5

    if-nez v0, :cond_4

    const/4 p0, -0x1

    int-to-long v0, p0

    mul-long v1, v0, v5

    :cond_4
    add-long/2addr v3, v7

    :goto_1
    add-long v2, v3, v1

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move-wide v1, v7

    goto :goto_1

    :cond_7
    iget-wide v3, p0, Lw0/p;->n:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_8
    iget-wide v0, p0, Lw0/p;->g:J

    add-long v2, v3, v0

    :goto_2
    return-wide v2
.end method

.method public final c()Z
    .locals 1

    sget-object v0, Ln0/e;->i:Ln0/e;

    iget-object p0, p0, Lw0/p;->j:Ln0/e;

    invoke-static {v0, p0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final d()Z
    .locals 4

    iget-wide v0, p0, Lw0/p;->h:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lw0/p;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lw0/p;

    iget-object v1, p1, Lw0/p;->a:Ljava/lang/String;

    iget-object v3, p0, Lw0/p;->a:Ljava/lang/String;

    invoke-static {v3, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lw0/p;->b:I

    iget v3, p1, Lw0/p;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lw0/p;->c:Ljava/lang/String;

    iget-object v3, p1, Lw0/p;->c:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lw0/p;->d:Ljava/lang/String;

    iget-object v3, p1, Lw0/p;->d:Ljava/lang/String;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lw0/p;->e:Ln0/g;

    iget-object v3, p1, Lw0/p;->e:Ln0/g;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lw0/p;->f:Ln0/g;

    iget-object v3, p1, Lw0/p;->f:Ln0/g;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lw0/p;->g:J

    iget-wide v5, p1, Lw0/p;->g:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lw0/p;->h:J

    iget-wide v5, p1, Lw0/p;->h:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lw0/p;->i:J

    iget-wide v5, p1, Lw0/p;->i:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lw0/p;->j:Ln0/e;

    iget-object v3, p1, Lw0/p;->j:Ln0/e;

    invoke-static {v1, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lw0/p;->k:I

    iget v3, p1, Lw0/p;->k:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lw0/p;->l:I

    iget v3, p1, Lw0/p;->l:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lw0/p;->m:J

    iget-wide v5, p1, Lw0/p;->m:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, Lw0/p;->n:J

    iget-wide v5, p1, Lw0/p;->n:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_f

    return v2

    :cond_f
    iget-wide v3, p0, Lw0/p;->o:J

    iget-wide v5, p1, Lw0/p;->o:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Lw0/p;->p:J

    iget-wide v5, p1, Lw0/p;->p:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lw0/p;->q:Z

    iget-boolean v3, p1, Lw0/p;->q:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget v1, p0, Lw0/p;->r:I

    iget v3, p1, Lw0/p;->r:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lw0/p;->s:I

    iget v3, p1, Lw0/p;->s:I

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget p0, p0, Lw0/p;->t:I

    iget p1, p1, Lw0/p;->t:I

    if-eq p0, p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lw0/p;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lw0/p;->b:I

    invoke-static {v2}, Lq/e;->c(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lw0/p;->c:Ljava/lang/String;

    invoke-static {v2, v1, v0}, LB/a;->g(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lw0/p;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lw0/p;->e:Ln0/g;

    invoke-virtual {v2}, Ln0/g;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lw0/p;->f:Ln0/g;

    invoke-virtual {v0}, Ln0/g;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lw0/p;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Lw0/p;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lw0/p;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lw0/p;->j:Ln0/e;

    invoke-virtual {v0}, Ln0/e;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lw0/p;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lw0/p;->l:I

    invoke-static {v0}, Lq/e;->c(I)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lw0/p;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Lw0/p;->n:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lw0/p;->o:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Lw0/p;->p:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lw0/p;->q:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lw0/p;->r:I

    invoke-static {v2}, Lq/e;->c(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lw0/p;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Lw0/p;->t:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{WorkSpec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lw0/p;->a:Ljava/lang/String;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Li4/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
