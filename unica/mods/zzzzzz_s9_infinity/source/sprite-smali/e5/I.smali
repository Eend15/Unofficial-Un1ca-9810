.class public abstract Le5/I;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le5/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le5/g;

    invoke-direct {v0}, Le5/g;-><init>()V

    sput-object v0, Le5/I;->a:Le5/g;

    return-void
.end method

.method public static final a(III[B[B)Z
    .locals 4

    const-string v0, "a"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    add-int v2, v1, p0

    aget-byte v2, p3, v2

    add-int v3, v1, p1

    aget-byte v3, p4, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final b(Le5/B;)Le5/w;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le5/w;

    invoke-direct {v0, p0}, Le5/w;-><init>(Le5/B;)V

    return-object v0
.end method

.method public static final c(Le5/D;)Le5/x;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le5/x;

    invoke-direct {v0, p0}, Le5/x;-><init>(Le5/D;)V

    return-object v0
.end method

.method public static d(JLe5/j;ILjava/util/ArrayList;IILjava/util/ArrayList;)V
    .locals 19

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v10, p4

    move/from16 v2, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    const-string v3, "Failed requirement."

    if-ge v2, v11, :cond_11

    move v4, v2

    :goto_0
    if-ge v4, v11, :cond_1

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le5/m;

    invoke-virtual {v5}, Le5/m;->c()I

    move-result v5

    if-lt v5, v1, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual/range {p4 .. p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le5/m;

    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le5/m;

    invoke-virtual {v3}, Le5/m;->c()I

    move-result v5

    const/4 v13, -0x1

    if-ne v1, v5, :cond_2

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le5/m;

    move v6, v2

    move v2, v3

    move-object v3, v5

    goto :goto_1

    :cond_2
    move v6, v2

    move v2, v13

    :goto_1
    invoke-virtual {v3, v1}, Le5/m;->f(I)B

    move-result v5

    invoke-virtual {v4, v1}, Le5/m;->f(I)B

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eq v5, v7, :cond_c

    add-int/lit8 v3, v6, 0x1

    const/4 v4, 0x1

    :goto_2
    if-ge v3, v11, :cond_4

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le5/m;

    invoke-virtual {v5, v1}, Le5/m;->f(I)B

    move-result v5

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le5/m;

    invoke-virtual {v7, v1}, Le5/m;->f(I)B

    move-result v7

    if-eq v5, v7, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-wide v14, v0, Le5/j;->e:J

    int-to-long v7, v8

    div-long/2addr v14, v7

    add-long v14, v14, p0

    move-wide/from16 v16, v7

    int-to-long v7, v9

    add-long/2addr v14, v7

    mul-int/lit8 v3, v4, 0x2

    int-to-long v7, v3

    add-long/2addr v14, v7

    invoke-virtual {v0, v4}, Le5/j;->m0(I)V

    invoke-virtual {v0, v2}, Le5/j;->m0(I)V

    move v2, v6

    :goto_3
    if-ge v2, v11, :cond_7

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le5/m;

    invoke-virtual {v3, v1}, Le5/m;->f(I)B

    move-result v3

    if-eq v2, v6, :cond_5

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le5/m;

    invoke-virtual {v4, v1}, Le5/m;->f(I)B

    move-result v4

    if-eq v3, v4, :cond_6

    :cond_5
    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Le5/j;->m0(I)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    new-instance v9, Le5/j;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move v7, v6

    :goto_4
    if-ge v7, v11, :cond_b

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le5/m;

    invoke-virtual {v2, v1}, Le5/m;->f(I)B

    move-result v2

    add-int/lit8 v3, v7, 0x1

    move v4, v3

    :goto_5
    if-ge v4, v11, :cond_9

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le5/m;

    invoke-virtual {v5, v1}, Le5/m;->f(I)B

    move-result v5

    if-eq v2, v5, :cond_8

    move v8, v4

    goto :goto_6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    move v8, v11

    :goto_6
    if-ne v3, v8, :cond_a

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le5/m;

    invoke-virtual {v3}, Le5/m;->c()I

    move-result v3

    if-ne v2, v3, :cond_a

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Le5/j;->m0(I)V

    move/from16 v18, v8

    move-object v13, v9

    goto :goto_7

    :cond_a
    iget-wide v2, v9, Le5/j;->e:J

    div-long v2, v2, v16

    add-long/2addr v2, v14

    long-to-int v2, v2

    mul-int/2addr v2, v13

    invoke-virtual {v0, v2}, Le5/j;->m0(I)V

    add-int/lit8 v5, v1, 0x1

    move-wide v2, v14

    move-object v4, v9

    move-object/from16 v6, p4

    move/from16 v18, v8

    move-object v13, v9

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Le5/I;->d(JLe5/j;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    :goto_7
    move-object v9, v13

    move/from16 v7, v18

    const/4 v13, -0x1

    goto :goto_4

    :cond_b
    move-object v13, v9

    invoke-virtual {v0, v13}, Le5/j;->M(Le5/D;)J

    goto/16 :goto_a

    :cond_c
    invoke-virtual {v3}, Le5/m;->c()I

    move-result v5

    invoke-virtual {v4}, Le5/m;->c()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x0

    move v13, v1

    :goto_8
    if-ge v13, v5, :cond_d

    invoke-virtual {v3, v13}, Le5/m;->f(I)B

    move-result v14

    invoke-virtual {v4, v13}, Le5/m;->f(I)B

    move-result v15

    if-ne v14, v15, :cond_d

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_d
    iget-wide v4, v0, Le5/j;->e:J

    int-to-long v13, v8

    div-long/2addr v4, v13

    add-long v4, v4, p0

    int-to-long v8, v9

    add-long/2addr v4, v8

    int-to-long v8, v7

    add-long/2addr v4, v8

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    neg-int v8, v7

    invoke-virtual {v0, v8}, Le5/j;->m0(I)V

    invoke-virtual {v0, v2}, Le5/j;->m0(I)V

    add-int/2addr v7, v1

    :goto_9
    if-ge v1, v7, :cond_e

    invoke-virtual {v3, v1}, Le5/m;->f(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Le5/j;->m0(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    add-int/lit8 v1, v6, 0x1

    if-ne v1, v11, :cond_10

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le5/m;

    invoke-virtual {v1}, Le5/m;->c()I

    move-result v1

    if-ne v7, v1, :cond_f

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Le5/j;->m0(I)V

    goto :goto_a

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v9, Le5/j;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iget-wide v1, v9, Le5/j;->e:J

    div-long/2addr v1, v13

    add-long/2addr v1, v4

    long-to-int v1, v1

    const/4 v2, -0x1

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Le5/j;->m0(I)V

    move-wide v1, v4

    move-object v3, v9

    move v4, v7

    move-object/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Le5/I;->d(JLe5/j;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Le5/j;->M(Le5/D;)J

    :goto_a
    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final e(JJJ)V
    .locals 4

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " offset="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " byteCount="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final f(Ljava/lang/AssertionError;)Z
    .locals 2

    sget-object v0, Le5/t;->a:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "getsockname failed"

    invoke-static {p0, v0}, LV4/m;->o0(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static varargs g([Le5/m;)Le5/u;
    .locals 13

    array-length v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p0, Le5/u;

    new-array v0, v2, [Le5/m;

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Le5/u;-><init>([Le5/m;[I)V

    return-object p0

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    new-instance v0, Lr3/f;

    invoke-direct {v0, p0, v2}, Lr3/f;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v4, p0

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, p0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, p0, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-array v1, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    check-cast v0, [Ljava/lang/Integer;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->f0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    array-length v0, p0

    move v1, v2

    move v4, v1

    :goto_1
    if-ge v1, v0, :cond_8

    aget-object v5, p0, v1

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-string v11, ")."

    if-ltz v8, :cond_7

    if-gt v8, v9, :cond_6

    add-int/lit8 v8, v8, -0x1

    move v9, v2

    :goto_2
    if-gt v9, v8, :cond_4

    add-int v11, v9, v8

    ushr-int/2addr v11, v3

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Comparable;

    invoke-static {v12, v5}, Lp4/g;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v12

    if-gez v12, :cond_3

    add-int/lit8 v9, v11, 0x1

    goto :goto_2

    :cond_3
    if-lez v12, :cond_5

    add-int/lit8 v8, v11, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v9, v9, 0x1

    neg-int v11, v9

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v10, v11, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    move v4, v6

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "toIndex ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is greater than size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "fromIndex (0) is greater than toIndex ("

    invoke-static {v8, v0, v11}, LB/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le5/m;

    invoke-virtual {v0}, Le5/m;->c()I

    move-result v0

    if-lez v0, :cond_e

    move v0, v2

    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le5/m;

    add-int/lit8 v3, v0, 0x1

    move v4, v3

    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le5/m;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "prefix"

    invoke-static {v1, v6}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Le5/m;->c()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Le5/m;->h(Le5/m;I)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v5}, Le5/m;->c()I

    move-result v6

    invoke-virtual {v1}, Le5/m;->c()I

    move-result v8

    if-eq v6, v8, :cond_a

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-le v5, v6, :cond_9

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "duplicate option: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move v0, v3

    goto :goto_3

    :cond_c
    new-instance v0, Le5/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    move-object v5, v0

    invoke-static/range {v3 .. v10}, Le5/I;->d(JLe5/j;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    iget-wide v3, v0, Le5/j;->e:J

    const/4 v1, 0x4

    int-to-long v5, v1

    div-long/2addr v3, v5

    long-to-int v1, v3

    new-array v1, v1, [I

    :goto_5
    invoke-virtual {v0}, Le5/j;->P()Z

    move-result v3

    if-nez v3, :cond_d

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Le5/j;->z()I

    move-result v4

    aput v4, v1, v2

    move v2, v3

    goto :goto_5

    :cond_d
    new-instance v0, Le5/u;

    array-length v2, p0

    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v2, "copyOf(this, size)"

    invoke-static {p0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Le5/m;

    invoke-direct {v0, p0, v1}, Le5/u;-><init>([Le5/m;[I)V

    return-object v0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "the empty byte string is not a supported option"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final h(Ljava/net/Socket;)Le5/B;
    .locals 3

    sget-object v0, Le5/t;->a:Ljava/util/logging/Logger;

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le5/C;

    invoke-direct {v0, p0}, Le5/C;-><init>(Ljava/net/Socket;)V

    new-instance v1, Le5/c;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    const-string v2, "getOutputStream()"

    invoke-static {p0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, v0}, Le5/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Le5/e;->sink(Le5/B;)Le5/B;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Ljava/net/Socket;)Le5/D;
    .locals 3

    sget-object v0, Le5/t;->a:Ljava/util/logging/Logger;

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le5/C;

    invoke-direct {v0, p0}, Le5/C;-><init>(Ljava/net/Socket;)V

    new-instance v1, Le5/d;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "getInputStream()"

    invoke-static {p0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Le5/d;-><init>(Ljava/io/InputStream;Le5/G;)V

    invoke-virtual {v0, v1}, Le5/e;->source(Le5/D;)Le5/D;

    move-result-object p0

    return-object p0
.end method

.method public static final j(B)Ljava/lang/String;
    .locals 3

    sget-object v0, Lf5/b;->a:[C

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v0, v1

    and-int/lit8 p0, p0, 0xf

    aget-char p0, v0, p0

    const/4 v0, 0x2

    new-array v0, v0, [C

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/4 v1, 0x1

    aput-char p0, v0, v1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method
