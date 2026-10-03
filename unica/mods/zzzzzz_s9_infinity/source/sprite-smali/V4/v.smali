.class public final LV4/v;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    iput p3, p0, LV4/v;->d:I

    iput-object p1, p0, LV4/v;->f:Ljava/lang/Object;

    iput-boolean p2, p0, LV4/v;->e:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, LV4/v;->d:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-string v3, "$this$$receiver"

    invoke-static {v1, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, LV4/v;->f:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Ljava/util/List;

    const/4 v3, 0x0

    const/4 v9, 0x0

    iget-boolean v0, v0, LV4/v;->e:Z

    const/4 v4, 0x1

    if-nez v0, :cond_1

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v5

    if-ne v5, v4, :cond_1

    invoke-static {v8}, Lr3/j;->I0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x4

    invoke-static {v1, v0, v2, v3, v4}, LV4/m;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    if-gez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lq3/f;

    invoke-direct {v2, v1, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance v5, LK3/c;

    if-gez v2, :cond_2

    move v2, v3

    :cond_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {v5, v2, v3, v4}, LK3/a;-><init>(III)V

    instance-of v3, v1, Ljava/lang/String;

    iget v7, v5, LK3/a;->f:I

    iget v6, v5, LK3/a;->e:I

    if-eqz v3, :cond_8

    if-lez v7, :cond_3

    if-le v2, v6, :cond_4

    :cond_3
    if-gez v7, :cond_e

    if-gt v6, v2, :cond_e

    :cond_4
    :goto_0
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v10, 0x0

    move v11, v2

    move v15, v0

    invoke-static/range {v10 .. v15}, LV4/u;->i0(IIILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_6
    move-object v4, v9

    :goto_1
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lq3/f;

    invoke-direct {v2, v0, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_7
    if-eq v2, v6, :cond_e

    add-int/2addr v2, v7

    goto :goto_0

    :cond_8
    if-lez v7, :cond_9

    if-le v2, v6, :cond_a

    :cond_9
    if-gez v7, :cond_e

    if-gt v6, v2, :cond_e

    :cond_a
    move v10, v2

    :goto_2
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v2, v12

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v3, 0x0

    move-object v4, v1

    move v5, v10

    move v14, v6

    move v6, v13

    move v13, v7

    move v7, v0

    invoke-static/range {v2 .. v7}, LV4/m;->B0(Ljava/lang/String;ILjava/lang/CharSequence;IIZ)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    move v7, v13

    move v6, v14

    goto :goto_3

    :cond_c
    move v14, v6

    move v13, v7

    move-object v12, v9

    :goto_4
    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_d

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lq3/f;

    invoke-direct {v2, v0, v12}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_d
    if-eq v10, v14, :cond_e

    add-int/2addr v10, v13

    move v7, v13

    move v6, v14

    goto :goto_2

    :cond_e
    :goto_5
    move-object v2, v9

    :goto_6
    if-eqz v2, :cond_f

    iget-object v0, v2, Lq3/f;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v9, Lq3/f;

    iget-object v1, v2, Lq3/f;->d:Ljava/lang/Object;

    invoke-direct {v9, v1, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    return-object v9

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-string v3, "$this$$receiver"

    invoke-static {v1, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, LV4/v;->f:Ljava/lang/Object;

    check-cast v3, [C

    iget-boolean v0, v0, LV4/v;->e:Z

    invoke-static {v1, v3, v2, v0}, LV4/m;->w0(Ljava/lang/CharSequence;[CIZ)I

    move-result v0

    if-gez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_7

    :cond_10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lq3/f;

    invoke-direct {v2, v0, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    :goto_7
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
