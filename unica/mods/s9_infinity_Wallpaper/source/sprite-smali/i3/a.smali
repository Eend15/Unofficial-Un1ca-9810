.class public abstract Li3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lc5/b;)Lcom/samsung/android/weather/api/entity/content/WebContent;
    .locals 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/weather/api/entity/content/WebContent;

    iget-wide v10, p0, Lc5/b;->j:J

    iget v12, p0, Lc5/b;->k:I

    iget-object v2, p0, Lc5/b;->b:Ljava/lang/String;

    iget v3, p0, Lc5/b;->c:I

    iget-object v4, p0, Lc5/b;->d:Ljava/lang/String;

    iget-object v5, p0, Lc5/b;->e:Ljava/lang/String;

    iget-object v6, p0, Lc5/b;->f:Ljava/lang/String;

    iget-object v7, p0, Lc5/b;->g:Ljava/lang/String;

    iget-object v8, p0, Lc5/b;->h:Ljava/lang/String;

    iget-object v9, p0, Lc5/b;->i:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/weather/api/entity/content/WebContent;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    return-object v0
.end method

.method public static final b(Lc5/e;)Lcom/samsung/android/weather/api/entity/weather/ForecastTime;
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;

    iget-object v2, v0, Lc5/e;->d:Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    move-wide v3, v2

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    :goto_1
    iget-object v2, v0, Lc5/e;->t:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    move-object v5, v2

    const/4 v2, 0x0

    iget-object v6, v0, Lc5/e;->u:Ljava/lang/Integer;

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v2

    :goto_3
    const-wide/16 v8, 0x0

    iget-object v6, v0, Lc5/e;->w:Ljava/lang/Long;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_4

    :cond_4
    move-wide v10, v8

    :goto_4
    iget-object v6, v0, Lc5/e;->x:Ljava/lang/Long;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_5

    :cond_5
    move-wide v12, v8

    :goto_5
    iget-object v6, v0, Lc5/e;->y:Ljava/lang/Long;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_6

    :cond_6
    move-wide v14, v8

    :goto_6
    iget-object v6, v0, Lc5/e;->z:Ljava/lang/Long;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto :goto_7

    :cond_7
    move-wide/from16 v16, v8

    :goto_7
    iget-object v6, v0, Lc5/e;->v:Ljava/lang/Long;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto :goto_8

    :cond_8
    move-wide/from16 v18, v8

    :goto_8
    iget-object v6, v0, Lc5/e;->g0:Ljava/lang/Long;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    goto :goto_9

    :cond_9
    move-wide/from16 v20, v8

    :goto_9
    iget-object v6, v0, Lc5/e;->h0:Ljava/lang/Long;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :cond_a
    move-wide/from16 v22, v8

    iget-object v6, v0, Lc5/e;->A:Ljava/lang/Integer;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_a
    move/from16 v24, v6

    goto :goto_b

    :cond_b
    const/4 v6, 0x3

    goto :goto_a

    :goto_b
    iget-object v0, v0, Lc5/e;->f0:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_c

    :cond_c
    move v0, v2

    :goto_c
    const-string v6, ""

    move-object v2, v1

    move-wide v8, v10

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v20

    move-wide/from16 v20, v22

    move/from16 v22, v24

    move/from16 v23, v0

    invoke-direct/range {v2 .. v23}, Lcom/samsung/android/weather/api/entity/weather/ForecastTime;-><init>(JLjava/lang/String;Ljava/lang/String;ZJJJJJJJII)V

    return-object v1
.end method

.method public static final c(Lc5/c;Z)Ljava/util/ArrayList;
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lc5/c;->p:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    const/4 v5, 0x0

    if-lez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_1

    new-instance v3, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    iget-object v6, v0, Lc5/c;->q:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x3e8

    const/16 v18, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v18}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;-><init>(IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;ILF3/f;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, v0, Lc5/c;->r:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    move-object v3, v5

    :goto_1
    if-eqz v3, :cond_3

    new-instance v3, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    iget-object v4, v0, Lc5/c;->s:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x3e8

    const/16 v18, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v18}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;-><init>(IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;ILF3/f;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p1, :cond_5

    iget-object v0, v0, Lc5/c;->y:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ltz v2, :cond_4

    move-object v5, v0

    :cond_4
    if-eqz v5, :cond_7

    new-instance v2, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v11, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x3ec

    const/16 v18, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v18}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;-><init>(IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;ILF3/f;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v0, v0, Lc5/c;->z:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ltz v2, :cond_6

    move-object v5, v0

    :cond_6
    if-eqz v5, :cond_7

    new-instance v2, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v11, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x3ec

    const/16 v18, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v18}, Lcom/samsung/android/weather/api/entity/weather/internal/BaseIndex;-><init>(IIILjava/lang/String;FILjava/lang/String;IILjava/lang/String;ILF3/f;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    return-object v1
.end method
