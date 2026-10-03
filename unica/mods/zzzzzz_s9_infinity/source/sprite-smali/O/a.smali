.class public final LO/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic d:Ln1/a;


# direct methods
.method public constructor <init>(Ln1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO/a;->d:Ln1/a;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, LO/a;->d:Ln1/a;

    iget-object v0, v0, Ln1/a;->a:Ljava/lang/Object;

    check-cast v0, LA1/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v0, v0, LA1/e;->d:Ljava/lang/Object;

    check-cast v0, LO/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v0, LO/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v6, v8, :cond_7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LO/f;

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    move/from16 p1, v6

    goto/16 :goto_5

    :cond_1
    iget-object v8, v0, LO/b;->a:Ln/j;

    invoke-virtual {v8, v7}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v10, v3

    if-gez v10, :cond_0

    invoke-virtual {v8, v7}, Ln/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-wide v10, v7, LO/f;->f:J

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-nez v8, :cond_3

    iput-wide v1, v7, LO/f;->f:J

    iget v8, v7, LO/f;->b:F

    invoke-virtual {v7, v8}, LO/f;->d(F)V

    goto :goto_1

    :cond_3
    sub-long v15, v1, v10

    iput-wide v1, v7, LO/f;->f:J

    iget v8, v7, LO/f;->k:F

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v8, v8, v13

    if-eqz v8, :cond_4

    iget-object v8, v7, LO/f;->j:LO/g;

    iget-wide v10, v8, LO/g;->i:D

    iget v10, v7, LO/f;->b:F

    float-to-double v10, v10

    iget v12, v7, LO/f;->a:F

    move/from16 p1, v6

    float-to-double v5, v12

    const-wide/16 v17, 0x2

    div-long v24, v15, v17

    move-object/from16 v17, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v5

    move-wide/from16 v22, v24

    invoke-virtual/range {v17 .. v23}, LO/g;->a(DDJ)LO/c;

    move-result-object v5

    iget-object v6, v7, LO/f;->j:LO/g;

    iget v8, v7, LO/f;->k:F

    float-to-double v10, v8

    iput-wide v10, v6, LO/g;->i:D

    iput v13, v7, LO/f;->k:F

    iget v8, v5, LO/c;->a:F

    float-to-double v10, v8

    iget v5, v5, LO/c;->b:F

    float-to-double v14, v5

    move-object/from16 v19, v6

    move-wide/from16 v20, v10

    move-wide/from16 v22, v14

    invoke-virtual/range {v19 .. v25}, LO/g;->a(DDJ)LO/c;

    move-result-object v5

    iget v6, v5, LO/c;->a:F

    iput v6, v7, LO/f;->b:F

    iget v5, v5, LO/c;->b:F

    iput v5, v7, LO/f;->a:F

    move v8, v13

    goto :goto_3

    :cond_4
    move/from16 p1, v6

    iget-object v10, v7, LO/f;->j:LO/g;

    iget v5, v7, LO/f;->b:F

    float-to-double v11, v5

    iget v5, v7, LO/f;->a:F

    float-to-double v5, v5

    move v8, v13

    move-wide v13, v5

    invoke-virtual/range {v10 .. v16}, LO/g;->a(DDJ)LO/c;

    move-result-object v5

    iget v6, v5, LO/c;->a:F

    iput v6, v7, LO/f;->b:F

    iget v5, v5, LO/c;->b:F

    iput v5, v7, LO/f;->a:F

    :goto_3
    iget v5, v7, LO/f;->b:F

    const v6, -0x800001

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v7, LO/f;->b:F

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v7, LO/f;->b:F

    iget v10, v7, LO/f;->a:F

    iget-object v11, v7, LO/f;->j:LO/g;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v12, v10

    iget-wide v14, v11, LO/g;->e:D

    cmpg-double v10, v12, v14

    if-gez v10, :cond_5

    iget-wide v12, v11, LO/g;->i:D

    double-to-float v10, v12

    sub-float/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v12, v5

    iget-wide v10, v11, LO/g;->d:D

    cmpg-double v5, v12, v10

    if-gez v5, :cond_5

    iget-object v5, v7, LO/f;->j:LO/g;

    iget-wide v10, v5, LO/g;->i:D

    double-to-float v5, v10

    iput v5, v7, LO/f;->b:F

    const/4 v5, 0x0

    iput v5, v7, LO/f;->a:F

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_4
    iget v5, v7, LO/f;->b:F

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v7, LO/f;->b:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v7, LO/f;->b:F

    invoke-virtual {v7, v5}, LO/f;->d(F)V

    if-eqz v9, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, LO/f;->c(Z)V

    :cond_6
    :goto_5
    add-int/lit8 v6, p1, 0x1

    goto/16 :goto_0

    :cond_7
    iget-boolean v1, v0, LO/b;->e:Z

    if-eqz v1, :cond_a

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v9

    :goto_6
    if-ltz v1, :cond_9

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, v0, LO/b;->e:Z

    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c

    iget-object v1, v0, LO/b;->d:Ln1/a;

    if-nez v1, :cond_b

    new-instance v1, Ln1/a;

    iget-object v2, v0, LO/b;->c:LA1/e;

    invoke-direct {v1, v2}, Ln1/a;-><init>(LA1/e;)V

    iput-object v1, v0, LO/b;->d:Ln1/a;

    :cond_b
    iget-object v0, v0, LO/b;->d:Ln1/a;

    iget-object v1, v0, Ln1/a;->c:Ljava/lang/Object;

    check-cast v1, LO/a;

    iget-object v0, v0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/Choreographer;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_c
    return-void
.end method
