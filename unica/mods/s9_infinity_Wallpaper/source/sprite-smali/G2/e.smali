.class public final LG2/e;
.super LG2/a;
.source "SourceFile"


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "WeatherNone"

    return-object p0
.end method

.method public final h(LH2/a;LF2/i;LE2/b;)LG2/c;
    .locals 11

    const-string p3, "generateData"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, LG2/c;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p3, v0, v1}, LG2/c;-><init>(LE2/c;I)V

    iget-object v8, p2, LF2/i;->a:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "prepare, "

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "night"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :sswitch_1
    const-string v1, "sunset"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :sswitch_2
    const-string v1, "evening"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :sswitch_3
    const-string v1, "midnight"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :sswitch_4
    const-string v1, "sunrise"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not required"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LG2/a;->f(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, LG2/a;->e(Ljava/lang/String;)V

    iget-object v5, p1, LH2/a;->l:Ljava/lang/String;

    if-eqz v5, :cond_2

    new-instance v0, LE2/c;

    iget-object v6, p1, LH2/a;->m:Ljava/lang/String;

    iget-wide v3, p1, LH2/a;->b:J

    iget-boolean v9, p1, LH2/a;->t:Z

    const-string v7, "none"

    const/4 v10, 0x6

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, LE2/c;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_2
    new-instance p3, LG2/c;

    const/4 p0, 0x2

    invoke-direct {p3, v0, p0}, LG2/c;-><init>(LE2/c;I)V

    :goto_2
    return-object p3

    :sswitch_data_0
    .sparse-switch
        -0x6ea8dceb -> :sswitch_4
        -0x61cd9530 -> :sswitch_3
        -0x520be778 -> :sswitch_2
        -0x351e356a -> :sswitch_1
        0x63f6418 -> :sswitch_0
    .end sparse-switch
.end method

.method public final i(Ljava/io/InputStream;LH2/a;LF2/i;LE2/b;)LG2/d;
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v1, p3

    const-string v2, "generateData"

    invoke-static {v7, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "process, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, LG2/a;->e(Ljava/lang/String;)V

    new-instance v8, LG2/d;

    invoke-direct {v8}, LG2/d;-><init>()V

    iget-object v15, v1, LF2/i;->a:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget-object v3, v6, LG2/a;->a:LO2/a;

    const-string v9, "mixing for "

    iget-object v13, v1, LF2/i;->b:Ljava/lang/String;

    const-string v4, "process, failed saving an intermediate"

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "morning"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v1, v7, LH2/a;->c:I

    iget-wide v4, v7, LH2/a;->b:J

    const-string v2, "evening"

    const-string v3, "none"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, LG2/a;->a(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v9, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, LG2/a;->d(Ljava/lang/String;)V

    iget-object v2, v7, LH2/a;->l:Ljava/lang/String;

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    iget v0, v7, LH2/a;->c:I

    iget-wide v3, v7, LH2/a;->b:J

    iget-object v1, v6, LG2/a;->b:LC2/b;

    const-string v18, "evening"

    const-string v19, "none"

    move-object/from16 v16, v1

    move/from16 v17, v0

    move-wide/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, LC2/b;->c(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v4, v15

    move-object v5, v13

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, LG2/a;->g(LH2/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE2/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iput-object v0, v8, LG2/d;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    const-string v0, "process, preparations are not ready. skip this!"

    invoke-virtual {v6, v0}, LG2/a;->f(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "night"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v9, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, LG2/a;->d(Ljava/lang/String;)V

    iget v10, v7, LH2/a;->c:I

    iget-wide v13, v7, LH2/a;->b:J

    iget-object v9, v6, LG2/a;->b:LC2/b;

    const-string v11, "night"

    const-string v12, "none"

    invoke-virtual/range {v9 .. v14}, LC2/b;->c(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_3

    invoke-virtual {v3}, LO2/a;->c()LG4/d;

    invoke-static {v0, v5}, LG4/d;->p(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v2, v7, LH2/a;->l:Ljava/lang/String;

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    const-string v4, "night"

    const-string v9, "none"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v3, v5

    move-object v5, v9

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, LG2/a;->g(LH2/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE2/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iput-object v0, v8, LG2/d;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v6, v4}, LG2/a;->f(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "noon"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const-string v0, "reuse for "

    invoke-virtual {v0, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, LG2/a;->d(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v15, v13}, LG2/a;->j(LH2/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iput-object v0, v8, LG2/d;->a:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "sunset"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :sswitch_4
    const-string v2, "evening"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v9, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, LG2/a;->d(Ljava/lang/String;)V

    iget v10, v7, LH2/a;->c:I

    iget-wide v13, v7, LH2/a;->b:J

    iget-object v9, v6, LG2/a;->b:LC2/b;

    const-string v11, "evening"

    const-string v12, "none"

    invoke-virtual/range {v9 .. v14}, LC2/b;->c(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_6

    invoke-virtual {v3}, LO2/a;->c()LG4/d;

    invoke-static {v0, v5}, LG4/d;->p(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v2, v7, LH2/a;->l:Ljava/lang/String;

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    const-string v4, "evening"

    const-string v9, "none"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v3, v5

    move-object v5, v9

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, LG2/a;->g(LH2/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE2/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iput-object v0, v8, LG2/d;->a:Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-virtual {v6, v4}, LG2/a;->f(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_5
    const-string v2, "midnight"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :sswitch_6
    const-string v2, "sunrise"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_0
    invoke-virtual/range {p0 .. p3}, LG2/a;->k(Ljava/io/InputStream;LH2/a;LF2/i;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, LG2/d;->a:Ljava/lang/String;

    goto :goto_1

    :cond_7
    invoke-virtual {v9, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, LG2/a;->d(Ljava/lang/String;)V

    iget v10, v7, LH2/a;->c:I

    iget-wide v1, v7, LH2/a;->b:J

    iget-object v9, v6, LG2/a;->b:LC2/b;

    move-object v11, v15

    move-object v12, v13

    move-object v5, v13

    move-wide v13, v1

    invoke-virtual/range {v9 .. v14}, LC2/b;->c(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v9

    if-eqz v0, :cond_8

    invoke-virtual {v3}, LO2/a;->c()LG4/d;

    invoke-static {v0, v9}, LG4/d;->p(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v2, v7, LH2/a;->l:Ljava/lang/String;

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v3, v9

    move-object v4, v15

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, LG2/a;->g(LH2/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE2/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iput-object v0, v8, LG2/d;->a:Ljava/lang/String;

    goto :goto_1

    :cond_8
    invoke-virtual {v6, v4}, LG2/a;->f(Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-object v8

    :sswitch_data_0
    .sparse-switch
        -0x6ea8dceb -> :sswitch_6
        -0x61cd9530 -> :sswitch_5
        -0x520be778 -> :sswitch_4
        -0x351e356a -> :sswitch_3
        0x33af60 -> :sswitch_2
        0x63f6418 -> :sswitch_1
        0x49eb37c4 -> :sswitch_0
    .end sparse-switch
.end method
