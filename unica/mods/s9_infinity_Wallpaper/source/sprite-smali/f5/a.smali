.class public abstract Lf5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LV4/a;->a:Ljava/nio/charset/Charset;

    const-string v1, "0123456789abcdef"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lf5/a;->a:[B

    return-void
.end method

.method public static final a(Le5/y;I[BI)Z
    .locals 6

    iget v0, p0, Le5/y;->c:I

    const/4 v1, 0x1

    iget-object v2, p0, Le5/y;->a:[B

    move v3, v1

    :goto_0
    if-ge v3, p3, :cond_2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Le5/y;->f:Le5/y;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    iget p1, p0, Le5/y;->b:I

    iget v0, p0, Le5/y;->c:I

    iget-object v2, p0, Le5/y;->a:[B

    :cond_0
    aget-byte v4, v2, p1

    aget-byte v5, p2, v3

    if-eq v4, v5, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static final b(Le5/j;J)Ljava/lang/String;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_0

    sub-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Le5/j;->K(J)B

    move-result v0

    const/16 v5, 0xd

    int-to-byte v5, v5

    if-ne v0, v5, :cond_0

    sget-object p1, LV4/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3, v4, p1}, Le5/j;->b0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Le5/j;->r(J)V

    goto :goto_0

    :cond_0
    sget-object v0, LV4/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Le5/j;->b0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v2}, Le5/j;->r(J)V

    :goto_0
    return-object p1
.end method

.method public static final c(Le5/j;Le5/u;Z)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "options"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Le5/j;->d:Le5/y;

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    iget v4, v0, Le5/y;->b:I

    iget v5, v0, Le5/y;->c:I

    const/4 v6, 0x0

    iget-object v7, v0, Le5/y;->a:[B

    move-object v9, v0

    move v10, v3

    move v8, v6

    :goto_1
    add-int/lit8 v11, v8, 0x1

    iget-object v12, v1, Le5/u;->e:[I

    aget v13, v12, v8

    add-int/lit8 v8, v8, 0x2

    aget v11, v12, v11

    if-eq v11, v3, :cond_2

    move v10, v11

    :cond_2
    if-nez v9, :cond_3

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    if-gez v13, :cond_b

    mul-int/lit8 v13, v13, -0x1

    add-int v14, v13, v8

    :goto_2
    add-int/lit8 v13, v4, 0x1

    aget-byte v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v15, v8, 0x1

    aget v8, v12, v8

    if-eq v4, v8, :cond_4

    return v10

    :cond_4
    if-ne v15, v14, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    move v4, v6

    :goto_3
    if-ne v13, v5, :cond_9

    invoke-static {v9}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v5, v9, Le5/y;->f:Le5/y;

    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    iget v7, v5, Le5/y;->b:I

    iget v8, v5, Le5/y;->c:I

    iget-object v9, v5, Le5/y;->a:[B

    if-ne v5, v0, :cond_8

    if-eqz v4, :cond_6

    move v5, v8

    move-object v8, v11

    goto :goto_5

    :cond_6
    :goto_4
    if-eqz p2, :cond_7

    return v2

    :cond_7
    return v10

    :cond_8
    move/from16 v16, v8

    move-object v8, v5

    move/from16 v5, v16

    goto :goto_5

    :cond_9
    move-object v8, v9

    move-object v9, v7

    move v7, v13

    :goto_5
    if-eqz v4, :cond_a

    aget v4, v12, v15

    move v2, v7

    move-object v7, v9

    move-object v9, v8

    goto :goto_7

    :cond_a
    move v4, v7

    move-object v7, v9

    move-object v9, v8

    move v8, v15

    goto :goto_2

    :cond_b
    add-int/lit8 v14, v4, 0x1

    aget-byte v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    add-int v15, v8, v13

    :goto_6
    if-ne v8, v15, :cond_c

    return v10

    :cond_c
    aget v2, v12, v8

    if-ne v4, v2, :cond_10

    add-int/2addr v8, v13

    aget v4, v12, v8

    if-ne v14, v5, :cond_d

    iget-object v9, v9, Le5/y;->f:Le5/y;

    invoke-static {v9}, LF3/k;->c(Ljava/lang/Object;)V

    iget v2, v9, Le5/y;->b:I

    iget v5, v9, Le5/y;->c:I

    iget-object v7, v9, Le5/y;->a:[B

    if-ne v9, v0, :cond_e

    move-object v9, v11

    goto :goto_7

    :cond_d
    move v2, v14

    :cond_e
    :goto_7
    if-ltz v4, :cond_f

    return v4

    :cond_f
    neg-int v8, v4

    move v4, v2

    const/4 v2, -0x2

    goto/16 :goto_1

    :cond_10
    add-int/lit8 v8, v8, 0x1

    const/4 v2, -0x2

    goto :goto_6
.end method
