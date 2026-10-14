.class public abstract LV4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "0123456789abcdef"

    if-ge v3, v0, :cond_0

    shr-int/lit8 v5, v3, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    and-int/lit8 v6, v3, 0xf

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    or-int/2addr v4, v5

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, LV4/d;->a:[I

    new-array v1, v0, [I

    move v3, v2

    :goto_1
    const-string v5, "0123456789ABCDEF"

    if-ge v3, v0, :cond_1

    shr-int/lit8 v6, v3, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    and-int/lit8 v7, v3, 0xf

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    or-int/2addr v5, v6

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sput-object v1, LV4/d;->b:[I

    new-array v1, v0, [I

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_2

    const/4 v6, -0x1

    aput v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v2

    move v6, v3

    :goto_3
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v6, 0x1

    aput v6, v1, v7

    add-int/lit8 v3, v3, 0x1

    move v6, v8

    goto :goto_3

    :cond_3
    move v3, v2

    move v6, v3

    :goto_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v6, 0x1

    aput v6, v1, v7

    add-int/lit8 v3, v3, 0x1

    move v6, v8

    goto :goto_4

    :cond_4
    new-array v1, v0, [J

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_5

    const-wide/16 v6, -0x1

    aput-wide v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    move v0, v2

    move v3, v0

    :goto_6
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v0, v6, :cond_6

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v3, 0x1

    int-to-long v8, v3

    aput-wide v8, v1, v6

    add-int/lit8 v0, v0, 0x1

    move v3, v7

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_7
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v0, 0x1

    int-to-long v6, v0

    aput-wide v6, v1, v3

    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_7

    :cond_7
    return-void
.end method

.method public static final a(J)I
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p0

    if-gtz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p0, v2

    if-gtz v2, :cond_0

    long-to-int p0, p0

    return p0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The resulting string length is too big: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    cmp-long v0, p0, v0

    const/16 v1, 0xa

    const-string v4, "toString(...)"

    if-gez v0, :cond_2

    const/4 v0, 0x1

    ushr-long v5, p0, v0

    int-to-long v7, v1

    div-long/2addr v5, v7

    shl-long/2addr v5, v0

    mul-long v9, v5, v7

    sub-long/2addr p0, v9

    cmp-long v0, p0, v7

    if-ltz v0, :cond_1

    sub-long/2addr p0, v7

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    :cond_1
    invoke-static {v1}, LR3/f;->i(I)V

    invoke-static {v5, v6, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LR3/f;->i(I)V

    invoke-static {p0, p1, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {v1}, LR3/f;->i(I)V

    invoke-static {p0, p1, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final b([BI[I[CI)I
    .locals 0

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    aget p0, p2, p0

    shr-int/lit8 p1, p0, 0x8

    int-to-char p1, p1

    aput-char p1, p3, p4

    add-int/lit8 p1, p4, 0x1

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    aput-char p0, p3, p1

    add-int/lit8 p4, p4, 0x2

    return p4
.end method

.method public static final c(Ljava/lang/String;[CI)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v0, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, p1, p2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, p2

    return p0
.end method

.method public static d([B)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, LV4/g;->d:LV4/g;

    const-string v2, "format"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lp4/g;->l(III)V

    const-string v3, ""

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-boolean v5, v1, LV4/g;->a:Z

    if-eqz v5, :cond_1

    sget-object v5, LV4/d;->b:[I

    goto :goto_0

    :cond_1
    sget-object v5, LV4/d;->a:[I

    :goto_0
    iget-object v1, v1, LV4/g;->b:LV4/e;

    iget-boolean v6, v1, LV4/e;->a:Z

    const/4 v7, 0x1

    const-string v8, "Failed requirement."

    const-wide/16 v9, 0x2

    if-eqz v6, :cond_6

    iget-boolean v1, v1, LV4/e;->b:Z

    if-eqz v1, :cond_3

    int-to-long v6, v2

    mul-long/2addr v6, v9

    invoke-static {v6, v7}, LV4/d;->a(J)I

    move-result v1

    new-array v1, v1, [C

    move v3, v4

    :goto_1
    if-ge v4, v2, :cond_2

    invoke-static {v0, v4, v5, v1, v3}, LV4/d;->b([BI[I[CI)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    :goto_2
    move-object v3, v0

    goto/16 :goto_6

    :cond_3
    if-lez v2, :cond_5

    int-to-long v11, v4

    add-long/2addr v9, v11

    add-long/2addr v9, v11

    add-long/2addr v9, v11

    int-to-long v13, v2

    mul-long/2addr v13, v9

    sub-long/2addr v13, v11

    invoke-static {v13, v14}, LV4/d;->a(J)I

    move-result v1

    new-array v1, v1, [C

    invoke-static {v3, v1, v4}, LV4/d;->c(Ljava/lang/String;[CI)I

    move-result v6

    invoke-static {v0, v4, v5, v1, v6}, LV4/d;->b([BI[I[CI)I

    move-result v4

    invoke-static {v3, v1, v4}, LV4/d;->c(Ljava/lang/String;[CI)I

    move-result v4

    :goto_3
    if-ge v7, v2, :cond_4

    invoke-static {v3, v1, v4}, LV4/d;->c(Ljava/lang/String;[CI)I

    move-result v4

    invoke-static {v3, v1, v4}, LV4/d;->c(Ljava/lang/String;[CI)I

    move-result v4

    invoke-static {v0, v7, v5, v1, v4}, LV4/d;->b([BI[I[CI)I

    move-result v4

    invoke-static {v3, v1, v4}, LV4/d;->c(Ljava/lang/String;[CI)I

    move-result v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-lez v2, :cond_d

    add-int/lit8 v1, v2, -0x1

    const v6, 0x7fffffff

    div-int v8, v1, v6

    rem-int v11, v2, v6

    if-nez v11, :cond_7

    move v11, v6

    :cond_7
    sub-int/2addr v11, v7

    div-int/2addr v11, v6

    sub-int/2addr v1, v8

    sub-int/2addr v1, v11

    int-to-long v12, v8

    int-to-long v14, v11

    const/4 v8, 0x2

    int-to-long v7, v8

    mul-long/2addr v14, v7

    add-long/2addr v14, v12

    int-to-long v7, v1

    int-to-long v12, v4

    mul-long/2addr v7, v12

    add-long/2addr v7, v14

    int-to-long v14, v2

    add-long/2addr v9, v12

    add-long/2addr v9, v12

    mul-long/2addr v9, v14

    add-long/2addr v9, v7

    invoke-static {v9, v10}, LV4/d;->a(J)I

    move-result v1

    new-array v7, v1, [C

    move v8, v4

    move v9, v8

    move v10, v9

    move v12, v10

    :goto_4
    if-ge v8, v2, :cond_b

    if-ne v10, v6, :cond_8

    add-int/lit8 v10, v9, 0x1

    const/16 v12, 0xa

    aput-char v12, v7, v9

    move v12, v4

    move v9, v10

    move v10, v12

    goto :goto_5

    :cond_8
    if-ne v12, v6, :cond_9

    const-string v12, "  "

    invoke-static {v12, v7, v9}, LV4/d;->c(Ljava/lang/String;[CI)I

    move-result v9

    move v12, v4

    :cond_9
    :goto_5
    if-eqz v12, :cond_a

    invoke-static {v3, v7, v9}, LV4/d;->c(Ljava/lang/String;[CI)I

    move-result v9

    :cond_a
    invoke-static {v3, v7, v9}, LV4/d;->c(Ljava/lang/String;[CI)I

    move-result v9

    invoke-static {v0, v8, v5, v7, v9}, LV4/d;->b([BI[I[CI)I

    move-result v9

    invoke-static {v3, v7, v9}, LV4/d;->c(Ljava/lang/String;[CI)I

    move-result v9

    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x1

    add-int/2addr v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_b
    if-ne v9, v1, :cond_c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([C)V

    :goto_6
    return-object v3

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
