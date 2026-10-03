.class public final LG2/f;
.super LG2/a;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;LO2/a;LC2/b;I)V
    .locals 0

    iput p4, p0, LG2/f;->c:I

    invoke-direct {p0, p1, p2, p3}, LG2/a;-><init>(Landroid/content/Context;LO2/a;LC2/b;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    iget p0, p0, LG2/f;->c:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "WeatherSnowyLoRAdd"

    return-object p0

    :pswitch_0
    const-string p0, "WeatherSnowy"

    return-object p0

    :pswitch_1
    const-string p0, "WeatherRainyLoRA"

    return-object p0

    :pswitch_2
    const-string p0, "WeatherRainy"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(LH2/a;LF2/i;LE2/b;)LG2/c;
    .locals 12

    const-string p3, "generateData"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "prepare, "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, LG2/a;->e(Ljava/lang/String;)V

    new-instance p3, LG2/c;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p3, v1, v2}, LG2/c;-><init>(LE2/c;I)V

    iget-object v9, p2, LF2/i;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x520be778

    if-eq v2, v3, :cond_4

    const v3, 0x33af38

    if-eq v2, v3, :cond_1

    const v3, 0x63f6418

    if-eq v2, v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "night"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_1
    const-string v2, "none"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v6, p1, LH2/a;->l:Ljava/lang/String;

    if-eqz v6, :cond_3

    new-instance v1, LE2/c;

    iget-object v7, p1, LH2/a;->m:Ljava/lang/String;

    iget p0, p0, LG2/f;->c:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "snowy"

    :goto_0
    move-object v8, p0

    goto :goto_1

    :pswitch_0
    const-string p0, "snowy"

    goto :goto_0

    :pswitch_1
    const-string p0, "rainy"

    goto :goto_0

    :pswitch_2
    const-string p0, "rainy"

    goto :goto_0

    :goto_1
    iget-wide v4, p1, LH2/a;->b:J

    iget-boolean v10, p1, LH2/a;->t:Z

    const/4 v11, 0x6

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, LE2/c;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_3
    new-instance p3, LG2/c;

    const/4 p0, 0x2

    invoke-direct {p3, v1, p0}, LG2/c;-><init>(LE2/c;I)V

    goto/16 :goto_7

    :cond_4
    const-string v1, "evening"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not required"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LG2/a;->f(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_5
    iget p3, p0, LG2/f;->c:I

    packed-switch p3, :pswitch_data_1

    const-string p3, "generateData"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "prepare, "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, LG2/a;->d(Ljava/lang/String;)V

    iget-object v3, p1, LH2/a;->l:Ljava/lang/String;

    if-eqz v3, :cond_6

    new-instance p0, LE2/c;

    iget-object v4, p1, LH2/a;->m:Ljava/lang/String;

    iget-wide v1, p1, LH2/a;->b:J

    const-string v6, "evening"

    iget-boolean v7, p1, LH2/a;->t:Z

    const-string v5, "snowy"

    const/4 v8, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, LE2/c;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_3

    :cond_6
    const/4 p0, 0x0

    :goto_3
    new-instance p1, LG2/c;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, LG2/c;-><init>(LE2/c;I)V

    :goto_4
    move-object p3, p1

    goto/16 :goto_7

    :pswitch_3
    const-string p3, "generateData"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "prepare, "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, LG2/a;->d(Ljava/lang/String;)V

    iget-object v3, p1, LH2/a;->l:Ljava/lang/String;

    if-eqz v3, :cond_7

    new-instance p0, LE2/c;

    iget-object v4, p1, LH2/a;->m:Ljava/lang/String;

    iget-wide v1, p1, LH2/a;->b:J

    iget-object v6, p2, LF2/i;->a:Ljava/lang/String;

    iget-boolean v7, p1, LH2/a;->t:Z

    const-string v5, "snowy"

    const/4 v8, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, LE2/c;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_5

    :cond_7
    const/4 p0, 0x0

    :goto_5
    new-instance p1, LG2/c;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, LG2/c;-><init>(LE2/c;I)V

    goto :goto_4

    :pswitch_4
    const-string p0, "generateData"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p1, LH2/a;->l:Ljava/lang/String;

    if-eqz v3, :cond_8

    new-instance p0, LE2/c;

    iget-object v4, p1, LH2/a;->m:Ljava/lang/String;

    iget-wide v1, p1, LH2/a;->b:J

    const-string v6, "night"

    iget-boolean v7, p1, LH2/a;->t:Z

    const-string v5, "rainy"

    const/4 v8, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, LE2/c;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_6

    :cond_8
    const/4 p0, 0x0

    :goto_6
    new-instance p1, LG2/c;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, LG2/c;-><init>(LE2/c;I)V

    goto :goto_4

    :pswitch_5
    const-string p3, "generateData"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "prepare, "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " isn\'t required"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LG2/a;->d(Ljava/lang/String;)V

    new-instance p0, LG2/c;

    const/4 p1, 0x0

    const/4 p2, 0x3

    invoke-direct {p0, p1, p2}, LG2/c;-><init>(LE2/c;I)V

    move-object p3, p0

    :goto_7
    return-object p3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final i(Ljava/io/InputStream;LH2/a;LF2/i;LE2/b;)LG2/d;
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    const-string v0, "generateData"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, LG2/a;->e(Ljava/lang/String;)V

    new-instance v11, LG2/d;

    invoke-direct {v11}, LG2/d;-><init>()V

    iget-object v0, v9, LF2/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v1, "morning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v6, LG2/f;->c:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "generateData"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, LG2/a;->d(Ljava/lang/String;)V

    iget v1, v8, LH2/a;->c:I

    iget-wide v4, v8, LH2/a;->b:J

    const-string v2, "none"

    const-string v3, "snowy"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, LG2/a;->a(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, v8, LH2/a;->c:I

    iget-wide v4, v8, LH2/a;->b:J

    const-string v2, "evening"

    const-string v3, "snowy"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, LG2/a;->a(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v13, v8, LH2/a;->c:I

    iget-wide v0, v8, LH2/a;->b:J

    iget-object v12, v6, LG2/a;->b:LC2/b;

    const-string v14, "none"

    const-string v15, "snowy"

    move-wide/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    iget v13, v8, LH2/a;->c:I

    iget-wide v0, v8, LH2/a;->b:J

    iget-object v12, v6, LG2/a;->b:LC2/b;

    const-string v14, "evening"

    const-string v15, "snowy"

    move-wide/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, LF2/i;->a:Ljava/lang/String;

    const-string v5, "snowy"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, LG2/a;->g(LH2/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE2/b;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_0
    const-string v0, "process, preparations are not ready. skip this!"

    invoke-virtual {v6, v0}, LG2/a;->f(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    goto/16 :goto_1

    :pswitch_0
    const-string v0, "generateData"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, LG2/a;->d(Ljava/lang/String;)V

    iget v1, v8, LH2/a;->c:I

    iget-wide v4, v8, LH2/a;->b:J

    const-string v2, "none"

    const-string v3, "snowy"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, LG2/a;->a(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, v8, LH2/a;->c:I

    iget-wide v4, v8, LH2/a;->b:J

    const-string v2, "evening"

    const-string v3, "snowy"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, LG2/a;->a(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v13, v8, LH2/a;->c:I

    iget-wide v0, v8, LH2/a;->b:J

    iget-object v12, v6, LG2/a;->b:LC2/b;

    const-string v14, "none"

    const-string v15, "snowy"

    move-wide/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    iget v13, v8, LH2/a;->c:I

    iget-wide v0, v8, LH2/a;->b:J

    iget-object v12, v6, LG2/a;->b:LC2/b;

    const-string v14, "evening"

    const-string v15, "snowy"

    move-wide/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, LF2/i;->a:Ljava/lang/String;

    const-string v5, "snowy"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, LG2/a;->g(LH2/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE2/b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "process, preparations are not ready. skip this!"

    invoke-virtual {v6, v0}, LG2/a;->f(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "generateData"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, LG2/a;->d(Ljava/lang/String;)V

    invoke-virtual {v6, v8, v9, v10}, LG2/f;->m(LH2/a;LF2/i;LE2/b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const-string v0, "generateData"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, LG2/a;->d(Ljava/lang/String;)V

    invoke-virtual {v6, v8, v9, v10}, LG2/f;->l(LH2/a;LF2/i;LE2/b;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_f

    iput-object v0, v11, LG2/d;->a:Ljava/lang/String;

    goto/16 :goto_8

    :sswitch_1
    const-string v1, "night"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    iget v0, v6, LG2/f;->c:I

    packed-switch v0, :pswitch_data_1

    const-string v0, "generateData"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, LG2/a;->d(Ljava/lang/String;)V

    iget v13, v8, LH2/a;->c:I

    iget-wide v0, v8, LH2/a;->b:J

    iget-object v12, v6, LG2/a;->b:LC2/b;

    const-string v14, "none"

    const-string v15, "snowy"

    move-wide/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    iget v13, v8, LH2/a;->c:I

    iget-wide v0, v8, LH2/a;->b:J

    iget-object v12, v6, LG2/a;->b:LC2/b;

    const-string v14, "night"

    const-string v15, "snowy"

    move-wide/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, LC2/b;->c(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_3

    iget-object v0, v6, LG2/a;->a:LO2/a;

    invoke-virtual {v0}, LO2/a;->c()LG4/d;

    invoke-static {v7, v3}, LG4/d;->p(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v4, "night"

    const-string v5, "snowy"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, LG2/a;->g(LH2/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE2/b;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_3
    const-string v0, "process, failed saving an intermediate"

    invoke-virtual {v6, v0}, LG2/a;->f(Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_3

    :pswitch_3
    const-string v0, "generateData"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, LG2/a;->d(Ljava/lang/String;)V

    iget v13, v8, LH2/a;->c:I

    iget-wide v0, v8, LH2/a;->b:J

    iget-object v12, v6, LG2/a;->b:LC2/b;

    const-string v14, "night"

    const-string v15, "none"

    move-wide/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, LC2/b;->c(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    iget v13, v8, LH2/a;->c:I

    iget-wide v0, v8, LH2/a;->b:J

    iget-object v12, v6, LG2/a;->b:LC2/b;

    const-string v14, "night"

    const-string v15, "snowy"

    move-wide/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, LC2/b;->c(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_4

    iget-object v0, v6, LG2/a;->a:LO2/a;

    invoke-virtual {v0}, LO2/a;->c()LG4/d;

    invoke-static {v7, v3}, LG4/d;->p(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v4, "night"

    const-string v5, "snowy"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, LG2/a;->g(LH2/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE2/b;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_4
    const-string v0, "process, failed saving an intermediate"

    invoke-virtual {v6, v0}, LG2/a;->f(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    const-string v0, "generateData"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, LG2/a;->d(Ljava/lang/String;)V

    iget v13, v8, LH2/a;->c:I

    iget-wide v0, v8, LH2/a;->b:J

    iget-object v12, v6, LG2/a;->b:LC2/b;

    const-string v14, "none"

    const-string v15, "rainy"

    move-wide/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    iget v13, v8, LH2/a;->c:I

    iget-wide v0, v8, LH2/a;->b:J

    iget-object v12, v6, LG2/a;->b:LC2/b;

    const-string v14, "night"

    const-string v15, "rainy"

    move-wide/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, LC2/b;->c(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_5

    iget-object v0, v6, LG2/a;->a:LO2/a;

    invoke-virtual {v0}, LO2/a;->c()LG4/d;

    invoke-static {v7, v3}, LG4/d;->p(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v4, "night"

    const-string v5, "rainy"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, LG2/a;->g(LH2/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE2/b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    const-string v0, "process, failed saving an intermediate"

    invoke-virtual {v6, v0}, LG2/a;->f(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_5
    const-string v0, "generateData"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, LG2/a;->d(Ljava/lang/String;)V

    iget v13, v8, LH2/a;->c:I

    iget-wide v0, v8, LH2/a;->b:J

    iget-object v12, v6, LG2/a;->b:LC2/b;

    const-string v14, "none"

    const-string v15, "rainy"

    move-wide/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    iget v13, v8, LH2/a;->c:I

    iget-wide v0, v8, LH2/a;->b:J

    iget-object v12, v6, LG2/a;->b:LC2/b;

    const-string v14, "night"

    const-string v15, "rainy"

    move-wide/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, LC2/b;->c(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_6

    iget-object v0, v6, LG2/a;->a:LO2/a;

    invoke-virtual {v0}, LO2/a;->c()LG4/d;

    invoke-static {v7, v3}, LG4/d;->p(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v4, "night"

    const-string v5, "rainy"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, LG2/a;->g(LH2/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE2/b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    const-string v0, "process, failed saving an intermediate"

    invoke-virtual {v6, v0}, LG2/a;->f(Ljava/lang/String;)V

    goto/16 :goto_2

    :goto_3
    if-eqz v0, :cond_f

    iput-object v0, v11, LG2/d;->a:Ljava/lang/String;

    goto/16 :goto_8

    :sswitch_2
    const-string v1, "noon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_5

    :cond_7
    iget v0, v6, LG2/f;->c:I

    packed-switch v0, :pswitch_data_2

    const-string v0, "generateData"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, LG2/a;->d(Ljava/lang/String;)V

    const-string v0, "noon"

    const-string v1, "snowy"

    invoke-virtual {v6, v8, v0, v1}, LG2/a;->j(LH2/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_6
    const-string v0, "generateData"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, LG2/a;->d(Ljava/lang/String;)V

    const-string v0, "noon"

    const-string v1, "snowy"

    invoke-virtual {v6, v8, v0, v1}, LG2/a;->j(LH2/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_7
    const-string v0, "generateData"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, LG2/a;->d(Ljava/lang/String;)V

    invoke-virtual {v6, v8, v9, v10}, LG2/f;->m(LH2/a;LF2/i;LE2/b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_8
    const-string v0, "generateData"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, LG2/a;->d(Ljava/lang/String;)V

    invoke-virtual {v6, v8, v9, v10}, LG2/f;->l(LH2/a;LF2/i;LE2/b;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_f

    iput-object v0, v11, LG2/d;->a:Ljava/lang/String;

    goto/16 :goto_8

    :sswitch_3
    const-string v1, "evening"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_5
    invoke-virtual/range {p0 .. p3}, LG2/a;->k(Ljava/io/InputStream;LH2/a;LF2/i;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, LG2/d;->a:Ljava/lang/String;

    goto/16 :goto_8

    :cond_9
    iget v0, v6, LG2/f;->c:I

    packed-switch v0, :pswitch_data_3

    const-string v0, "generateData"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, LG2/a;->d(Ljava/lang/String;)V

    iget v1, v8, LH2/a;->c:I

    iget-wide v4, v8, LH2/a;->b:J

    const-string v2, "none"

    const-string v3, "snowy"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, LG2/a;->a(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v13, v8, LH2/a;->c:I

    iget-wide v0, v8, LH2/a;->b:J

    iget-object v12, v6, LG2/a;->b:LC2/b;

    const-string v14, "none"

    const-string v15, "snowy"

    move-wide/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iget v13, v8, LH2/a;->c:I

    iget-wide v0, v8, LH2/a;->b:J

    iget-object v12, v6, LG2/a;->b:LC2/b;

    const-string v14, "evening"

    const-string v15, "snowy"

    move-wide/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, LC2/b;->c(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    if-eqz v7, :cond_a

    iget-object v0, v6, LG2/a;->a:LO2/a;

    invoke-virtual {v0}, LO2/a;->c()LG4/d;

    invoke-static {v7, v2}, LG4/d;->p(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v4, "evening"

    const-string v5, "snowy"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, LG2/a;->g(LH2/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE2/b;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_a
    const-string v0, "process, failed saving an intermediate"

    invoke-virtual {v6, v0}, LG2/a;->f(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const-string v0, "process, preparations are not ready. skip this!"

    invoke-virtual {v6, v0}, LG2/a;->f(Ljava/lang/String;)V

    :goto_6
    const/4 v0, 0x0

    goto/16 :goto_7

    :pswitch_9
    const-string v0, "generateData"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, LG2/a;->d(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p3}, LG2/a;->k(Ljava/io/InputStream;LH2/a;LF2/i;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_a
    const-string v0, "generateData"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v8, LH2/a;->c:I

    iget-wide v4, v8, LH2/a;->b:J

    const-string v2, "none"

    const-string v3, "rainy"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, LG2/a;->a(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v13, v8, LH2/a;->c:I

    iget-wide v0, v8, LH2/a;->b:J

    iget-object v12, v6, LG2/a;->b:LC2/b;

    const-string v14, "none"

    const-string v15, "rainy"

    move-wide/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iget v13, v8, LH2/a;->c:I

    iget-wide v0, v8, LH2/a;->b:J

    iget-object v12, v6, LG2/a;->b:LC2/b;

    const-string v14, "night"

    const-string v15, "rainy"

    move-wide/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, LC2/b;->c(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    if-eqz v7, :cond_c

    iget-object v0, v6, LG2/a;->a:LO2/a;

    invoke-virtual {v0}, LO2/a;->c()LG4/d;

    invoke-static {v7, v2}, LG4/d;->p(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v4, v9, LF2/i;->a:Ljava/lang/String;

    iget-object v5, v9, LF2/i;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, LG2/a;->g(LH2/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE2/b;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_c
    const-string v0, "process, failed saving an intermediate"

    invoke-virtual {v6, v0}, LG2/a;->f(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    const-string v0, "process, preparations are not ready. skip this!"

    invoke-virtual {v6, v0}, LG2/a;->f(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_b
    const-string v0, "generateData"

    invoke-static {v8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, LG2/a;->d(Ljava/lang/String;)V

    iget v1, v8, LH2/a;->c:I

    iget-wide v4, v8, LH2/a;->b:J

    const-string v2, "none"

    const-string v3, "rainy"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, LG2/a;->a(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v1, v8, LH2/a;->c:I

    iget-wide v4, v8, LH2/a;->b:J

    const-string v2, "evening"

    const-string v3, "none"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, LG2/a;->a(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v13, v8, LH2/a;->c:I

    iget-wide v0, v8, LH2/a;->b:J

    iget-object v12, v6, LG2/a;->b:LC2/b;

    const-string v14, "evening"

    const-string v15, "none"

    move-wide/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    iget v13, v8, LH2/a;->c:I

    iget-wide v0, v8, LH2/a;->b:J

    iget-object v12, v6, LG2/a;->b:LC2/b;

    const-string v14, "none"

    const-string v15, "rainy"

    move-wide/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, LF2/i;->a:Ljava/lang/String;

    iget-object v5, v9, LF2/i;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, LG2/a;->g(LH2/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE2/b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_e
    const-string v0, "process, preparations are not ready. skip this!"

    invoke-virtual {v6, v0}, LG2/a;->f(Ljava/lang/String;)V

    goto/16 :goto_6

    :goto_7
    if-eqz v0, :cond_f

    iput-object v0, v11, LG2/d;->a:Ljava/lang/String;

    :cond_f
    :goto_8
    return-object v11

    nop

    :sswitch_data_0
    .sparse-switch
        -0x520be778 -> :sswitch_3
        0x33af60 -> :sswitch_2
        0x63f6418 -> :sswitch_1
        0x49eb37c4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public l(LH2/a;LF2/i;LE2/b;)Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LG2/a;->d(Ljava/lang/String;)V

    iget v2, p1, LH2/a;->c:I

    const-string v4, "rainy"

    iget-wide v5, p1, LH2/a;->b:J

    const-string v3, "none"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, LG2/a;->a(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p1, LH2/a;->l:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v5, p1, LH2/a;->c:I

    iget-wide v8, p1, LH2/a;->b:J

    iget-object v4, p0, LG2/a;->b:LC2/b;

    const-string v6, "none"

    const-string v7, "rainy"

    invoke-virtual/range {v4 .. v9}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, LF2/i;->a:Ljava/lang/String;

    iget-object v6, p2, LF2/i;->b:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, LG2/a;->g(LH2/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE2/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "process, preparations are not ready. skip this!"

    invoke-virtual {p0, p1}, LG2/a;->f(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public m(LH2/a;LF2/i;LE2/b;)Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LG2/a;->d(Ljava/lang/String;)V

    iget v2, p1, LH2/a;->c:I

    const-string v4, "rainy"

    iget-wide v5, p1, LH2/a;->b:J

    const-string v3, "none"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, LG2/a;->a(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p1, LH2/a;->l:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v5, p1, LH2/a;->c:I

    iget-wide v8, p1, LH2/a;->b:J

    iget-object v4, p0, LG2/a;->b:LC2/b;

    const-string v6, "none"

    const-string v7, "rainy"

    invoke-virtual/range {v4 .. v9}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, LF2/i;->a:Ljava/lang/String;

    iget-object v6, p2, LF2/i;->b:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, LG2/a;->g(LH2/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE2/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "process, preparations are not ready. skip this!"

    invoke-virtual {p0, p1}, LG2/a;->f(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
