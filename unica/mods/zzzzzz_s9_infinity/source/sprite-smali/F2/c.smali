.class public final LF2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LO2/a;

.field public final b:LC2/b;

.field public final c:LE2/b;

.field public final d:LI2/f;

.field public final e:LI2/f;

.field public final f:LG2/b;

.field public g:I

.field public h:I

.field public i:Z

.field public j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;LO2/a;LC2/b;LE2/b;LI2/f;LI2/f;LG2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LF2/c;->a:LO2/a;

    iput-object p3, p0, LF2/c;->b:LC2/b;

    iput-object p4, p0, LF2/c;->c:LE2/b;

    iput-object p5, p0, LF2/c;->d:LI2/f;

    iput-object p6, p0, LF2/c;->e:LI2/f;

    iput-object p7, p0, LF2/c;->f:LG2/b;

    return-void
.end method


# virtual methods
.method public final a(IJLjava/util/ArrayList;)V
    .locals 8

    const-string v2, "none"

    const-string v3, "rainy"

    move-object v0, p0

    move v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    const-string v1, "rainy"

    if-eqz v0, :cond_0

    const-string v0, "none"

    invoke-static {v0, v1, p4}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    const-string v4, "evening"

    const-string v5, "rainy"

    move-object v2, p0

    move v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "evening"

    invoke-static {v0, v1, p4}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    const-string v4, "morning"

    const-string v5, "rainy"

    move-object v2, p0

    move v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "morning"

    invoke-static {v0, v1, p4}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    const-string v4, "noon"

    const-string v5, "rainy"

    move-object v2, p0

    move v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "noon"

    invoke-static {v0, v1, p4}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    const-string v4, "night"

    const-string v5, "rainy"

    move-object v2, p0

    move v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "night"

    invoke-static {p0, v1, p4}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method

.method public final b(IJLjava/util/ArrayList;)V
    .locals 8

    const-string v2, "none"

    const-string v3, "snowy"

    move-object v0, p0

    move v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    const-string v1, "snowy"

    if-eqz v0, :cond_0

    const-string v0, "none"

    invoke-static {v0, v1, p4}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    const-string v4, "evening"

    const-string v5, "snowy"

    move-object v2, p0

    move v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "evening"

    invoke-static {v0, v1, p4}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    const-string v4, "morning"

    const-string v5, "snowy"

    move-object v2, p0

    move v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "morning"

    invoke-static {v0, v1, p4}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    const-string v4, "noon"

    const-string v5, "snowy"

    move-object v2, p0

    move v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "noon"

    invoke-static {v0, v1, p4}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    const-string v4, "night"

    const-string v5, "snowy"

    move-object v2, p0

    move v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "night"

    invoke-static {p0, v1, p4}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method

.method public final c(LF2/a;)V
    .locals 6

    iget-object p1, p1, LF2/a;->b:LH2/a;

    iget-wide v0, p1, LH2/a;->b:J

    const/16 p1, 0xfe

    and-int/lit8 v2, p1, 0x8

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    and-int/lit8 v4, p1, 0x20

    const-string v5, "none"

    if-eqz v4, :cond_1

    move-object v4, v5

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_2

    move-object v3, v5

    :cond_2
    const-string p1, "path"

    invoke-static {v2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "weather"

    invoke-static {v4, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "time"

    invoke-static {v3, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LF2/c;->c:LE2/b;

    iget-object p0, p0, LE2/b;->a:LX2/a;

    invoke-interface {p0, v0, v1}, LX2/a;->cancel(J)V

    return-void
.end method

.method public final d(ILjava/lang/String;Ljava/lang/String;J)Z
    .locals 8

    const-string v0, "none"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, LF2/c;->b:LC2/b;

    if-eqz v1, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/io/File;

    invoke-virtual {v2, p1, p4, p5}, LC2/b;->g(IJ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/File;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final e(LF2/a;Ljava/util/function/Consumer;)V
    .locals 31

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    iget-object v9, v7, LF2/c;->a:LO2/a;

    invoke-virtual {v9}, LO2/a;->d()LU0/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "##### generate start, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v10, p1

    iget-object v11, v10, LF2/a;->b:LH2/a;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " #####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    new-array v2, v12, [Ljava/lang/Object;

    const-string v13, "GenerateAllImagesUseCase"

    invoke-virtual {v0, v13, v1, v2}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v12, v7, LF2/c;->h:I

    iget v0, v11, LH2/a;->c:I

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, v11, LH2/a;->s:Z

    iget v2, v11, LH2/a;->g:I

    iget-wide v5, v11, LH2/a;->b:J

    const-string v15, "none"

    const-string v4, "snowy"

    const-string v3, "rainy"

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    iput v1, v7, LF2/c;->g:I

    const/16 v1, 0xc9

    if-ne v2, v1, :cond_2

    const-string v16, "none"

    const-string v17, "snowy"

    move-object/from16 v1, p0

    move v2, v0

    move-object v12, v3

    move-object/from16 v3, v16

    move-object v10, v4

    move-object/from16 v4, v17

    move-wide/from16 v16, v5

    invoke-virtual/range {v1 .. v6}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v15, v10, v14}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    const-string v3, "none"

    const-string v4, "rainy"

    move-object/from16 v1, p0

    move v2, v0

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v15, v12, v14}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    move-object/from16 v18, v9

    move-object v4, v10

    :goto_0
    move-object/from16 v20, v13

    goto/16 :goto_2

    :cond_2
    move-object v12, v3

    move-object/from16 v18, v9

    goto :goto_0

    :cond_3
    move-object v12, v3

    move-object v10, v4

    move-wide/from16 v16, v5

    const/16 v1, 0x10

    iput v1, v7, LF2/c;->g:I

    const/16 v1, 0xc8

    const-string v5, "midnight"

    const-string v6, "sunset"

    const-string v4, "noon"

    const-string v3, "sunrise"

    if-ne v2, v1, :cond_8

    const-string v18, "sunrise"

    const-string v19, "none"

    move-object/from16 v1, p0

    move v2, v0

    move-object/from16 v20, v13

    move-object v13, v3

    move-object/from16 v3, v18

    move-object/from16 v18, v9

    move-object v9, v4

    move-object/from16 v4, v19

    move-object v8, v5

    move-object/from16 v19, v10

    move-object v10, v6

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v13, v15, v14}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_4
    const-string v3, "noon"

    const-string v4, "none"

    move-object/from16 v1, p0

    move v2, v0

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v9, v15, v14}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    const-string v3, "sunset"

    const-string v4, "none"

    move-object/from16 v1, p0

    move v2, v0

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v10, v15, v14}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_6
    const-string v3, "midnight"

    const-string v4, "none"

    move-object/from16 v1, p0

    move v2, v0

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v8, v15, v14}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_7
    :goto_1
    move-object/from16 v4, v19

    goto/16 :goto_2

    :cond_8
    move-object v8, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v13

    move-object v13, v3

    move-object v9, v4

    move-object v10, v6

    const-string v3, "sunrise"

    const-string v4, "none"

    move-object/from16 v1, p0

    move v2, v0

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v13, v15, v14}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_9
    const-string v3, "sunset"

    const-string v4, "none"

    move-object/from16 v1, p0

    move v2, v0

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v10, v15, v14}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_a
    const-string v3, "midnight"

    const-string v4, "none"

    move-object/from16 v1, p0

    move v2, v0

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v8, v15, v14}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_b
    const-string v3, "noon"

    const-string v4, "none"

    move-object/from16 v1, p0

    move v2, v0

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v9, v15, v14}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_c
    const-string v3, "evening"

    const-string v4, "none"

    move-object/from16 v1, p0

    move v2, v0

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "evening"

    invoke-static {v1, v15, v14}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_d
    const-string v3, "morning"

    const-string v4, "none"

    move-object/from16 v1, p0

    move v2, v0

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "morning"

    invoke-static {v1, v15, v14}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_e
    const-string v3, "night"

    const-string v4, "none"

    move-object/from16 v1, p0

    move v2, v0

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, LF2/c;->d(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "night"

    invoke-static {v1, v15, v14}, LB/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_f
    iget-object v1, v11, LH2/a;->q:Ljava/lang/String;

    invoke-static {v1, v12}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-wide/from16 v2, v16

    invoke-virtual {v7, v0, v2, v3, v14}, LF2/c;->a(IJLjava/util/ArrayList;)V

    invoke-virtual {v7, v0, v2, v3, v14}, LF2/c;->b(IJLjava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_10
    move-wide/from16 v2, v16

    move-object/from16 v4, v19

    invoke-static {v1, v4}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v7, v0, v2, v3, v14}, LF2/c;->b(IJLjava/util/ArrayList;)V

    invoke-virtual {v7, v0, v2, v3, v14}, LF2/c;->a(IJLjava/util/ArrayList;)V

    goto :goto_2

    :cond_11
    invoke-virtual {v7, v0, v2, v3, v14}, LF2/c;->a(IJLjava/util/ArrayList;)V

    invoke-virtual {v7, v0, v2, v3, v14}, LF2/c;->b(IJLjava/util/ArrayList;)V

    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_12

    new-instance v0, LF2/b;

    const-string v2, "alreadyAllGenerated"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr3/k;->b0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2, v1}, LF2/b;-><init>(Ljava/util/ArrayList;I)V

    move-object/from16 v2, p2

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_12
    move-object/from16 v2, p2

    iget-object v3, v7, LF2/c;->c:LE2/b;

    iget-object v0, v3, LE2/b;->a:LX2/a;

    invoke-interface {v0}, LX2/a;->initialize()Z

    move-result v0

    const/16 v5, 0x190

    if-nez v0, :cond_13

    new-instance v0, LF2/b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v5}, LF2/b;-><init>(Ljava/util/ArrayList;I)V

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_13
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    new-instance v0, LI2/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v25, 0x0

    const/16 v22, 0x1

    move-object/from16 v21, v0

    move-wide/from16 v23, v9

    invoke-direct/range {v21 .. v26}, LI2/c;-><init>(IJJ)V

    iput-wide v9, v7, LF2/c;->j:J

    iget-object v9, v7, LF2/c;->e:LI2/f;

    invoke-interface {v9, v0}, LI2/f;->a(Ljava/lang/Object;)V

    iget v0, v11, LH2/a;->c:I

    iget-object v10, v7, LF2/c;->b:LC2/b;

    move-object/from16 v17, v6

    iget-wide v5, v11, LH2/a;->b:J

    invoke-virtual {v10, v0, v5, v6}, LC2/b;->g(IJ)Ljava/lang/String;

    move-result-object v0

    const-string v13, "original"

    invoke-virtual {v7, v11, v13, v0}, LF2/c;->f(LH2/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LF2/i;

    invoke-virtual/range {v18 .. v18}, LO2/a;->b()LS2/b;

    move-result-object v0

    move-object/from16 v23, v13

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v24, v9

    const-string v9, "=== generate start ("

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ") ==="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v25, v10

    move-object/from16 v10, v20

    invoke-virtual {v0, v10, v13}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, LO2/a;->d()LU0/e;

    move-result-object v0

    iget-object v13, v11, LH2/a;->l:Ljava/lang/String;

    move-wide/from16 v26, v5

    const-string v5, "generate, original path: "

    invoke-static {v5, v13}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v13, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v10, v5, v13}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, LF2/i;->b:Ljava/lang/String;

    iget-object v5, v7, LF2/c;->f:LG2/b;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v13, 0x33af38

    const/16 v20, 0x0

    if-eq v6, v13, :cond_18

    const v13, 0x6742765

    if-eq v6, v13, :cond_16

    const v13, 0x6883f56

    if-eq v6, v13, :cond_14

    goto :goto_5

    :cond_14
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_5

    :cond_15
    iget-object v0, v5, LG2/b;->c:Lh3/a;

    invoke-virtual {v0}, Lh3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG2/a;

    :goto_4
    move-object v5, v0

    goto :goto_6

    :cond_16
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_5

    :cond_17
    iget-object v0, v5, LG2/b;->b:Lh3/a;

    invoke-virtual {v0}, Lh3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG2/a;

    goto :goto_4

    :cond_18
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    :goto_5
    move-object/from16 v5, v20

    goto :goto_6

    :cond_19
    iget-object v0, v5, LG2/b;->a:Lh3/a;

    invoke-virtual {v0}, Lh3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG2/a;

    goto :goto_4

    :goto_6
    if-nez v5, :cond_1a

    invoke-virtual/range {v18 .. v18}, LO2/a;->d()LU0/e;

    move-result-object v0

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const-string v1, "generate, policy isn\'t supported"

    invoke-virtual {v0, v10, v1, v5}, LU0/e;->y(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v20, v10

    move-object/from16 v13, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-wide/from16 v5, v26

    :goto_7
    const/16 v1, 0x64

    goto/16 :goto_3

    :cond_1a
    invoke-virtual {v5, v11, v1, v3}, LG2/a;->h(LH2/a;LF2/i;LE2/b;)LG2/c;

    move-result-object v0

    iget-object v0, v0, LG2/c;->a:LE2/c;

    iget-boolean v6, v7, LF2/c;->i:Z

    if-eqz v6, :cond_1b

    invoke-virtual/range {v18 .. v18}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v1, "generate, terminated"

    invoke-virtual {v0, v10, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v7, LF2/c;->i:Z

    move-object/from16 v4, v17

    goto/16 :goto_d

    :cond_1b
    if-eqz v0, :cond_1e

    new-instance v6, LE2/a;

    const/4 v13, 0x1

    invoke-direct {v6, v7, v13, v8}, LE2/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, v0, v6}, LE2/b;->a(LE2/c;Ljava/util/function/Consumer;)V

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v12

    const-wide/16 v12, 0x3

    :try_start_1
    invoke-virtual {v8, v12, v13, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v6, v12

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v0, v20

    :goto_9
    move-object v12, v0

    check-cast v12, LE2/d;

    if-eqz v12, :cond_1d

    invoke-virtual/range {v18 .. v18}, LO2/a;->d()LU0/e;

    move-result-object v13

    move-object/from16 v28, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v29, v4

    const-string v4, "generate, result from queue: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v30, v6

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v13, v10, v0, v6}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, v12, LE2/d;->b:I

    const/16 v4, 0x12c

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x64

    if-eq v0, v4, :cond_1c

    invoke-virtual/range {p0 .. p1}, LF2/c;->c(LF2/a;)V

    :cond_1c
    const/4 v4, 0x0

    goto :goto_a

    :cond_1d
    move-object/from16 v28, v0

    move-object/from16 v29, v4

    move-object/from16 v30, v6

    invoke-virtual/range {v18 .. v18}, LO2/a;->d()LU0/e;

    move-result-object v0

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    const-string v12, "generate, srResult is null, maybe it\'s timeout"

    invoke-virtual {v0, v10, v12, v6}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p1}, LF2/c;->g(LF2/a;)V

    :goto_a
    move-object/from16 v0, v28

    goto :goto_b

    :cond_1e
    move-object/from16 v29, v4

    move-object/from16 v30, v12

    const/4 v4, 0x0

    invoke-virtual/range {v18 .. v18}, LO2/a;->d()LU0/e;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    const-string v4, "generate, srRequest is null, diffusion or timelapse isn\'t required"

    invoke-virtual {v0, v10, v4, v6}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v20

    :goto_b
    iget-boolean v4, v7, LF2/c;->i:Z

    if-nez v4, :cond_22

    check-cast v0, LE2/d;

    if-eqz v0, :cond_1f

    iget-object v0, v0, LE2/d;->c:Ljava/io/InputStream;

    goto :goto_c

    :cond_1f
    move-object/from16 v0, v20

    :goto_c
    invoke-virtual {v5, v0, v11, v1, v3}, LG2/a;->i(Ljava/io/InputStream;LH2/a;LF2/i;LE2/b;)LG2/d;

    move-result-object v0

    iget-object v0, v0, LG2/d;->a:Ljava/lang/String;

    move-object/from16 v4, v17

    if-eqz v0, :cond_20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, LF2/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, LF2/i;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v11, v5, v0}, LF2/c;->f(LH2/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    invoke-virtual/range {v18 .. v18}, LO2/a;->b()LS2/b;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "=== generate done ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v7, LF2/c;->h:I

    const/4 v5, 0x1

    add-int/2addr v0, v5

    iput v0, v7, LF2/c;->h:I

    iget v1, v11, LH2/a;->i:I

    if-lt v0, v1, :cond_21

    invoke-virtual/range {v18 .. v18}, LO2/a;->b()LS2/b;

    move-result-object v0

    iget v1, v7, LF2/c;->h:I

    const-string v3, "generated as much as required ("

    const-string v5, ")"

    invoke-static {v1, v3, v5}, LB/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_21
    move-object/from16 v17, v4

    move-object/from16 v20, v10

    move-object/from16 v13, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-wide/from16 v5, v26

    move-object/from16 v4, v29

    move-object/from16 v12, v30

    goto/16 :goto_7

    :cond_22
    move-object/from16 v4, v17

    invoke-virtual/range {v18 .. v18}, LO2/a;->b()LS2/b;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "=== generate cancelled ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_23
    move-wide/from16 v26, v5

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v4, v17

    move-object/from16 v10, v20

    :goto_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_24

    new-instance v0, LF2/b;

    const/16 v1, 0x65

    invoke-direct {v0, v4, v1}, LF2/b;-><init>(Ljava/util/ArrayList;I)V

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_24
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_26

    new-instance v0, LF2/b;

    const/16 v1, 0x64

    invoke-direct {v0, v4, v1}, LF2/b;-><init>(Ljava/util/ArrayList;I)V

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual/range {v18 .. v18}, LO2/a;->d()LU0/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cleanUpIntermediateFiles, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v11, LH2/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v26

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v10, v1, v6}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    move-object/from16 v1, v25

    invoke-virtual {v1, v2, v3, v4}, LC2/b;->b(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_29

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getName(...)"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "_intermediate"

    invoke-static {v4, v5}, LV4/m;->o0(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_26
    invoke-virtual/range {v18 .. v18}, LO2/a;->d()LU0/e;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "generate, shouldn\'t come here"

    invoke-virtual {v0, v10, v3, v2}, LU0/e;->y(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    :cond_27
    const/4 v1, 0x0

    iget-boolean v0, v7, LF2/c;->i:Z

    if-eqz v0, :cond_28

    iput-boolean v1, v7, LF2/c;->i:Z

    new-instance v0, LF2/b;

    const/16 v1, 0x12c

    invoke-direct {v0, v4, v1}, LF2/b;-><init>(Ljava/util/ArrayList;I)V

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_f

    :cond_28
    new-instance v0, LF2/b;

    const/16 v1, 0x190

    invoke-direct {v0, v4, v1}, LF2/b;-><init>(Ljava/util/ArrayList;I)V

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_29
    :goto_f
    iget-wide v13, v7, LF2/c;->j:J

    new-instance v0, LI2/c;

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, LI2/c;-><init>(IJJ)V

    move-object/from16 v1, v24

    invoke-interface {v1, v0}, LI2/f;->a(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    iput-wide v0, v7, LF2/c;->j:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, LA0/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v7}, LA0/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual/range {v18 .. v18}, LO2/a;->d()LU0/e;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "##### generate finished #####"

    invoke-virtual {v0, v10, v2, v1}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final f(LH2/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    new-instance p3, Ljava/io/File;

    iget v0, p1, LH2/a;->c:I

    iget-object v1, p0, LF2/c;->b:LC2/b;

    iget-wide v2, p1, LH2/a;->b:J

    invoke-virtual {v1, v0, v2, v3}, LC2/b;->b(IJ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    array-length v1, p3

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    array-length p3, p3

    add-int/lit8 v0, p3, -0x1

    :cond_0
    new-instance p3, LI2/a;

    iget-object v2, p1, LH2/a;->a:Ljava/lang/String;

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    iget v1, p0, LF2/c;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-wide v3, p1, LH2/a;->b:J

    iget v5, p1, LH2/a;->c:I

    const/16 v6, 0x96

    move-object v1, p3

    move-object v9, p2

    invoke-direct/range {v1 .. v10}, LI2/a;-><init>(Ljava/lang/String;JIILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p0, p0, LF2/c;->d:LI2/f;

    invoke-interface {p0, p3}, LI2/f;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final g(LF2/a;)V
    .locals 3

    iget-object v0, p0, LF2/c;->a:LO2/a;

    invoke-virtual {v0}, LO2/a;->b()LS2/b;

    move-result-object v0

    const-string v1, "GenerateAllImagesUseCase"

    const-string v2, "terminate"

    invoke-virtual {v0, v1, v2}, LS2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LF2/c;->i:Z

    invoke-virtual {p0, p1}, LF2/c;->c(LF2/a;)V

    return-void
.end method
