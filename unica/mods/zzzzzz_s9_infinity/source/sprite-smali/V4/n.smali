.class public abstract LV4/n;
.super LR3/f;
.source "SourceFile"


# direct methods
.method public static c0(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "|"

    invoke-static {v0}, LV4/m;->x0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "\r\n"

    const-string v2, "\n"

    const-string v3, "\r"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v2}, LV4/m;->A0(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)LV4/c;

    move-result-object v1

    new-instance v3, LV4/w;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, LV4/w;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v3}, LU4/j;->f0(LU4/i;LE3/b;)LU4/q;

    move-result-object v1

    invoke-static {v1}, LU4/j;->h0(LU4/i;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    invoke-static {v1}, Lr3/k;->c0(Ljava/util/List;)I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    const/4 v8, 0x0

    if-ltz v5, :cond_8

    check-cast v6, Ljava/lang/String;

    if-eqz v5, :cond_0

    if-ne v5, v3, :cond_1

    :cond_0
    invoke-static {v6}, LV4/m;->x0(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    move v9, v2

    :goto_1
    const/4 v10, -0x1

    if-ge v9, v5, :cond_3

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, LR3/f;->S(C)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    move v9, v10

    :goto_2
    if-ne v9, v10, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v6, v0, v9, v2}, LV4/u;->m0(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v9

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v5, "substring(...)"

    invoke-static {v8, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    move-object v8, v6

    :goto_4
    if-eqz v8, :cond_7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    move v5, v7

    goto :goto_0

    :cond_8
    invoke-static {}, Lr3/k;->i0()V

    throw v8

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v6, "\n"

    const/4 v7, 0x0

    const/16 v10, 0x7c

    move-object v5, v0

    invoke-static/range {v4 .. v10}, Lr3/j;->y0(Ljava/util/Collection;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "marginPrefix must be non-blank string."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
