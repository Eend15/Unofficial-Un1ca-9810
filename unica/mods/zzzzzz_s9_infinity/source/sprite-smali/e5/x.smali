.class public final Le5/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le5/l;


# instance fields
.field public final d:Le5/D;

.field public final e:Le5/j;

.field public f:Z


# direct methods
.method public constructor <init>(Le5/D;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5/x;->d:Le5/D;

    new-instance p1, Le5/j;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5/x;->e:Le5/j;

    return-void
.end method


# virtual methods
.method public final B()Le5/x;
    .locals 1

    new-instance v0, Le5/v;

    invoke-direct {v0, p0}, Le5/v;-><init>(Le5/l;)V

    invoke-static {v0}, Le5/I;->c(Le5/D;)Le5/x;

    move-result-object p0

    return-object p0
.end method

.method public final C()J
    .locals 2

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Le5/x;->J(J)V

    iget-object p0, p0, Le5/x;->e:Le5/j;

    invoke-virtual {p0}, Le5/j;->C()J

    move-result-wide v0

    return-wide v0
.end method

.method public final F(Le5/j;J)V
    .locals 2

    iget-object v0, p0, Le5/x;->e:Le5/j;

    const-string v1, "sink"

    invoke-static {p1, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p2, p3}, Le5/x;->J(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1, p2, p3}, Le5/j;->F(Le5/j;J)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p1, v0}, Le5/j;->M(Le5/D;)J

    throw p0
.end method

.method public final G()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Le5/x;->p(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final I()[B
    .locals 2

    iget-object v0, p0, Le5/x;->d:Le5/D;

    iget-object p0, p0, Le5/x;->e:Le5/j;

    invoke-virtual {p0, v0}, Le5/j;->M(Le5/D;)J

    iget-wide v0, p0, Le5/j;->e:J

    invoke-virtual {p0, v0, v1}, Le5/j;->a0(J)[B

    move-result-object p0

    return-object p0
.end method

.method public final J(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Le5/x;->x(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final P()Z
    .locals 4

    iget-boolean v0, p0, Le5/x;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Le5/x;->e:Le5/j;

    invoke-virtual {v0}, Le5/j;->P()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Le5/x;->d:Le5/D;

    const-wide/16 v1, 0x2000

    invoke-interface {p0, v0, v1, v2}, Le5/D;->read(Le5/j;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final R()J
    .locals 6

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Le5/x;->J(J)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Le5/x;->x(J)Z

    move-result v2

    iget-object v3, p0, Le5/x;->e:Le5/j;

    if-eqz v2, :cond_5

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Le5/j;->K(J)B

    move-result v2

    const/16 v4, 0x30

    int-to-byte v4, v4

    if-lt v2, v4, :cond_0

    const/16 v4, 0x39

    int-to-byte v4, v4

    if-le v2, v4, :cond_2

    :cond_0
    const/16 v4, 0x61

    int-to-byte v4, v4

    if-lt v2, v4, :cond_1

    const/16 v4, 0x66

    int-to-byte v4, v4

    if-le v2, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    int-to-byte v4, v4

    if-lt v2, v4, :cond_3

    const/16 v4, 0x46

    int-to-byte v4, v4

    if-le v2, v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    const/16 v0, 0x10

    invoke-static {v0}, LR3/f;->i(I)V

    invoke-static {v0}, LR3/f;->i(I)V

    invoke-static {v2, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(this, checkRadix(radix))"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    invoke-virtual {v3}, Le5/j;->R()J

    move-result-wide v0

    return-wide v0
.end method

.method public final S(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    const-string v0, "charset"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le5/x;->d:Le5/D;

    iget-object p0, p0, Le5/x;->e:Le5/j;

    invoke-virtual {p0, v0}, Le5/j;->M(Le5/D;)J

    invoke-virtual {p0, p1}, Le5/j;->S(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final T()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Le5/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Le5/h;-><init>(Le5/l;I)V

    return-object v0
.end method

.method public final V()B
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Le5/x;->J(J)V

    iget-object p0, p0, Le5/x;->e:Le5/j;

    invoke-virtual {p0}, Le5/j;->V()B

    move-result p0

    return p0
.end method

.method public final a(BJJ)J
    .locals 9

    iget-boolean p2, p0, Le5/x;->f:Z

    if-nez p2, :cond_4

    const-wide/16 p2, 0x0

    cmp-long v0, p2, p4

    if-gtz v0, :cond_3

    :goto_0
    cmp-long v0, p2, p4

    const-wide/16 v7, -0x1

    if-gez v0, :cond_2

    iget-object v0, p0, Le5/x;->e:Le5/j;

    move-object v1, v0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Le5/j;->W(BJJ)J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-eqz v3, :cond_0

    move-wide v7, v1

    goto :goto_1

    :cond_0
    iget-wide v1, v0, Le5/j;->e:J

    cmp-long v3, v1, p4

    if-gez v3, :cond_2

    iget-object v3, p0, Le5/x;->d:Le5/D;

    const-wide/16 v4, 0x2000

    invoke-interface {v3, v0, v4, v5}, Le5/D;->read(Le5/j;J)J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v7

    :cond_3
    const-string p0, "fromIndex=0 toIndex="

    invoke-static {p0, p4, p5}, Li4/b;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Le5/j;
    .locals 0

    iget-object p0, p0, Le5/x;->e:Le5/j;

    return-object p0
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Le5/x;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Le5/x;->f:Z

    iget-object v0, p0, Le5/x;->d:Le5/D;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    iget-object p0, p0, Le5/x;->e:Le5/j;

    invoke-virtual {p0}, Le5/j;->a()V

    :cond_0
    return-void
.end method

.method public final f([B)V
    .locals 6

    iget-object v0, p0, Le5/x;->e:Le5/j;

    const-string v1, "sink"

    invoke-static {p1, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    array-length v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Le5/x;->J(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1}, Le5/j;->f([B)V

    return-void

    :catch_0
    move-exception p0

    const/4 v1, 0x0

    :goto_0
    iget-wide v2, v0, Le5/j;->e:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    long-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Le5/j;->Y([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    throw p0
.end method

.method public final g()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Le5/x;->J(J)V

    iget-object p0, p0, Le5/x;->e:Le5/j;

    invoke-virtual {p0}, Le5/j;->z()I

    move-result p0

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public final i(JLe5/m;)Z
    .locals 5

    const-string p1, "bytes"

    invoke-static {p3, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Le5/m;->c()I

    move-result p1

    iget-boolean p2, p0, Le5/x;->f:Z

    if-nez p2, :cond_5

    const/4 p2, 0x0

    if-ltz p1, :cond_4

    invoke-virtual {p3}, Le5/m;->c()I

    move-result v0

    if-ge v0, p1, :cond_0

    goto :goto_1

    :cond_0
    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_3

    int-to-long v1, v0

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Le5/x;->x(J)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Le5/x;->e:Le5/j;

    invoke-virtual {v3, v1, v2}, Le5/j;->K(J)B

    move-result v1

    invoke-virtual {p3, v0}, Le5/m;->f(I)B

    move-result v2

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x1

    :cond_4
    :goto_1
    return p2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isOpen()Z
    .locals 0

    iget-boolean p0, p0, Le5/x;->f:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final m()J
    .locals 11

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Le5/x;->J(J)V

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    add-long v6, v4, v0

    invoke-virtual {p0, v6, v7}, Le5/x;->x(J)Z

    move-result v8

    iget-object v9, p0, Le5/x;->e:Le5/j;

    if-eqz v8, :cond_4

    invoke-virtual {v9, v4, v5}, Le5/j;->K(J)B

    move-result v8

    const/16 v10, 0x30

    int-to-byte v10, v10

    if-lt v8, v10, :cond_0

    const/16 v10, 0x39

    int-to-byte v10, v10

    if-le v8, v10, :cond_1

    :cond_0
    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    const/16 v5, 0x2d

    int-to-byte v5, v5

    if-eq v8, v5, :cond_1

    goto :goto_1

    :cond_1
    move-wide v4, v6

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    const/16 v0, 0x10

    invoke-static {v0}, LR3/f;->i(I)V

    invoke-static {v0}, LR3/f;->i(I)V

    invoke-static {v8, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(this, checkRadix(radix))"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Expected a digit or \'-\' but was 0x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {v9}, Le5/j;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()Le5/m;
    .locals 2

    iget-object v0, p0, Le5/x;->d:Le5/D;

    iget-object p0, p0, Le5/x;->e:Le5/j;

    invoke-virtual {p0, v0}, Le5/j;->M(Le5/D;)J

    iget-wide v0, p0, Le5/j;->e:J

    invoke-virtual {p0, v0, v1}, Le5/j;->o(J)Le5/m;

    move-result-object p0

    return-object p0
.end method

.method public final o(J)Le5/m;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le5/x;->J(J)V

    iget-object p0, p0, Le5/x;->e:Le5/j;

    invoke-virtual {p0, p1, p2}, Le5/j;->o(J)Le5/m;

    move-result-object p0

    return-object p0
.end method

.method public final p(J)Ljava/lang/String;
    .locals 22

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_3

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v0, v7, v9

    const-wide/16 v11, 0x1

    if-nez v0, :cond_0

    move-wide v13, v9

    goto :goto_0

    :cond_0
    add-long v0, v7, v11

    move-wide v13, v0

    :goto_0
    const/16 v0, 0xa

    int-to-byte v15, v0

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move-wide v4, v13

    invoke-virtual/range {v0 .. v5}, Le5/x;->a(BJJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    iget-object v3, v6, Le5/x;->e:Le5/j;

    if-eqz v2, :cond_1

    invoke-static {v3, v0, v1}, Lf5/a;->b(Le5/j;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    cmp-long v0, v13, v9

    if-gez v0, :cond_2

    invoke-virtual {v6, v13, v14}, Le5/x;->x(J)Z

    move-result v0

    if-eqz v0, :cond_2

    sub-long v0, v13, v11

    invoke-virtual {v3, v0, v1}, Le5/j;->K(J)B

    move-result v0

    const/16 v1, 0xd

    int-to-byte v1, v1

    if-ne v0, v1, :cond_2

    add-long/2addr v11, v13

    invoke-virtual {v6, v11, v12}, Le5/x;->x(J)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v13, v14}, Le5/j;->K(J)B

    move-result v0

    if-ne v0, v15, :cond_2

    invoke-static {v3, v13, v14}, Lf5/a;->b(Le5/j;J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Le5/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-wide v1, v3, Le5/j;->e:J

    const/16 v4, 0x20

    int-to-long v4, v4

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    const-wide/16 v17, 0x0

    move-object/from16 v16, v3

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v21}, Le5/j;->j(JLe5/j;J)V

    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\\n not found: limit="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v3, Le5/j;->e:J

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Le5/j;->e:J

    invoke-virtual {v0, v3, v4}, Le5/j;->o(J)Le5/m;

    move-result-object v0

    invoke-virtual {v0}, Le5/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2026

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "limit < 0: "

    invoke-static {v0, v7, v8}, Li4/b;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final r(J)V
    .locals 5

    iget-boolean v0, p0, Le5/x;->f:Z

    if-nez v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object v2, p0, Le5/x;->e:Le5/j;

    iget-wide v3, v2, Le5/j;->e:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le5/x;->d:Le5/D;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Le5/D;->read(Le5/j;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    :goto_1
    iget-wide v0, v2, Le5/j;->e:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Le5/j;->r(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le5/x;->e:Le5/j;

    iget-wide v1, v0, Le5/j;->e:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2
    iget-object p0, p0, Le5/x;->d:Le5/D;

    const-wide/16 v1, 0x2000

    invoke-interface {p0, v0, v1, v2}, Le5/D;->read(Le5/j;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Le5/j;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public final read(Le5/j;J)J
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 4
    iget-boolean v2, p0, Le5/x;->f:Z

    if-nez v2, :cond_1

    .line 5
    iget-object v2, p0, Le5/x;->e:Le5/j;

    iget-wide v3, v2, Le5/j;->e:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    .line 6
    iget-object p0, p0, Le5/x;->d:Le5/D;

    const-wide/16 v0, 0x2000

    invoke-interface {p0, v2, v0, v1}, Le5/D;->read(Le5/j;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long p0, v0, v3

    if-nez p0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-wide v0, v2, Le5/j;->e:J

    .line 8
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 9
    invoke-virtual {v2, p1, p2, p3}, Le5/j;->read(Le5/j;J)J

    move-result-wide v3

    :goto_0
    return-wide v3

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_2
    const-string p0, "byteCount < 0: "

    .line 12
    invoke-static {p0, p2, p3}, Li4/b;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    .line 13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final timeout()Le5/G;
    .locals 0

    iget-object p0, p0, Le5/x;->d:Le5/D;

    invoke-interface {p0}, Le5/D;->timeout()Le5/G;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Le5/x;->d:Le5/D;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Le5/x;->J(J)V

    iget-object p0, p0, Le5/x;->e:Le5/j;

    invoke-virtual {p0}, Le5/j;->u()S

    move-result p0

    return p0
.end method

.method public final v(Le5/u;)I
    .locals 6

    const-string v0, "options"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Le5/x;->f:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Le5/x;->e:Le5/j;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lf5/a;->c(Le5/j;Le5/u;Z)I

    move-result v1

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_1

    iget-object p0, p1, Le5/u;->d:[Le5/m;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Le5/m;->c()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Le5/j;->r(J)V

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    goto :goto_1

    :cond_2
    iget-object v1, p0, Le5/x;->d:Le5/D;

    const-wide/16 v4, 0x2000

    invoke-interface {v1, v0, v4, v5}, Le5/D;->read(Le5/j;J)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    goto :goto_0

    :goto_1
    return v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x(J)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Le5/x;->f:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Le5/x;->e:Le5/j;

    iget-wide v1, v0, Le5/j;->e:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    iget-object v1, p0, Le5/x;->d:Le5/D;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Le5/D;->read(Le5/j;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string p0, "byteCount < 0: "

    invoke-static {p0, p1, p2}, Li4/b;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final y(Le5/j;)J
    .locals 9

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    :goto_0
    iget-object v4, p0, Le5/x;->e:Le5/j;

    iget-object v5, p0, Le5/x;->d:Le5/D;

    const-wide/16 v6, 0x2000

    invoke-interface {v5, v4, v6, v7}, Le5/D;->read(Le5/j;J)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Le5/j;->h()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-lez v7, :cond_0

    add-long/2addr v2, v5

    invoke-virtual {p1, v4, v5, v6}, Le5/j;->write(Le5/j;J)V

    goto :goto_0

    :cond_1
    iget-wide v5, v4, Le5/j;->e:J

    cmp-long p0, v5, v0

    if-lez p0, :cond_2

    add-long/2addr v2, v5

    invoke-virtual {p1, v4, v5, v6}, Le5/j;->write(Le5/j;J)V

    :cond_2
    return-wide v2
.end method

.method public final z()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Le5/x;->J(J)V

    iget-object p0, p0, Le5/x;->e:Le5/j;

    invoke-virtual {p0}, Le5/j;->z()I

    move-result p0

    return p0
.end method
