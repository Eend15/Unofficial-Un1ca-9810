.class public final Ll5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lw0/l;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lw0/l;-><init>(I)V

    iput-object v0, p0, Ll5/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ll5/e;->d:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Ll5/e;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Ll5/e;->b:I

    .line 7
    array-length p1, p2

    iput p1, p0, Ll5/e;->a:I

    return-void
.end method

.method public static a(II)I
    .locals 0

    invoke-static {p0}, Ll5/e;->h(I)I

    move-result p0

    invoke-static {p1}, Ll5/e;->c(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static b(II)I
    .locals 0

    invoke-static {p0}, Ll5/e;->h(I)I

    move-result p0

    invoke-static {p1}, Ll5/e;->c(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static c(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Ll5/e;->f(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static d(ILt4/b;)I
    .locals 0

    invoke-static {p0}, Ll5/e;->h(I)I

    move-result p0

    invoke-static {p1}, Ll5/e;->e(Lt4/b;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static e(Lt4/b;)I
    .locals 1

    invoke-virtual {p0}, Lt4/b;->c()I

    move-result p0

    invoke-static {p0}, Ll5/e;->f(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static f(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static g(J)I
    .locals 4

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0
.end method

.method public static h(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Ll5/e;->f(I)I

    move-result p0

    return p0
.end method

.method public static j(Ljava/io/OutputStream;I)Ll5/e;
    .locals 1

    new-instance v0, Ll5/e;

    new-array p1, p1, [B

    invoke-direct {v0, p0, p1}, Ll5/e;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method


# virtual methods
.method public i()V
    .locals 1

    iget-object v0, p0, Ll5/e;->d:Ljava/lang/Object;

    check-cast v0, Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ll5/e;->k()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 4

    iget-object v0, p0, Ll5/e;->d:Ljava/lang/Object;

    check-cast v0, Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ll5/e;->c:Ljava/lang/Object;

    check-cast v1, [B

    iget v2, p0, Ll5/e;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Ll5/e;->b:I

    return-void

    :cond_0
    new-instance p0, Lt4/g;

    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public l(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ll5/e;->x(II)V

    invoke-virtual {p0, p2}, Ll5/e;->n(I)V

    return-void
.end method

.method public m(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ll5/e;->x(II)V

    invoke-virtual {p0, p2}, Ll5/e;->n(I)V

    return-void
.end method

.method public n(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Ll5/e;->v(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ll5/e;->w(J)V

    :goto_0
    return-void
.end method

.method public o(ILt4/b;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ll5/e;->x(II)V

    invoke-virtual {p0, p2}, Ll5/e;->p(Lt4/b;)V

    return-void
.end method

.method public p(Lt4/b;)V
    .locals 1

    invoke-virtual {p1}, Lt4/b;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Ll5/e;->v(I)V

    invoke-virtual {p1, p0}, Lt4/b;->f(Ll5/e;)V

    return-void
.end method

.method public q(I)V
    .locals 2

    int-to-byte p1, p1

    iget v0, p0, Ll5/e;->b:I

    iget v1, p0, Ll5/e;->a:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ll5/e;->k()V

    :cond_0
    iget v0, p0, Ll5/e;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ll5/e;->b:I

    iget-object p0, p0, Ll5/e;->c:Ljava/lang/Object;

    check-cast p0, [B

    aput-byte p1, p0, v0

    return-void
.end method

.method public r(Lt4/e;)V
    .locals 6

    invoke-virtual {p1}, Lt4/e;->size()I

    move-result v0

    iget v1, p0, Ll5/e;->b:I

    iget v2, p0, Ll5/e;->a:I

    sub-int v3, v2, v1

    iget-object v4, p0, Ll5/e;->c:Ljava/lang/Object;

    check-cast v4, [B

    const/4 v5, 0x0

    if-lt v3, v0, :cond_0

    invoke-virtual {p1, v5, v1, v0, v4}, Lt4/e;->i(III[B)V

    iget p1, p0, Ll5/e;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Ll5/e;->b:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v5, v1, v3, v4}, Lt4/e;->i(III[B)V

    sub-int/2addr v0, v3

    iput v2, p0, Ll5/e;->b:I

    invoke-virtual {p0}, Ll5/e;->k()V

    if-gt v0, v2, :cond_1

    invoke-virtual {p1, v3, v5, v0, v4}, Lt4/e;->i(III[B)V

    iput v0, p0, Ll5/e;->b:I

    goto :goto_0

    :cond_1
    if-ltz v3, :cond_5

    if-ltz v0, :cond_4

    add-int v1, v3, v0

    invoke-virtual {p1}, Lt4/e;->size()I

    move-result v2

    if-gt v1, v2, :cond_3

    if-lez v0, :cond_2

    iget-object p0, p0, Ll5/e;->d:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p1, p0, v3, v0}, Lt4/e;->t(Ljava/io/OutputStream;II)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Source end offset exceeded: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x17

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Length < 0: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x1e

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Source offset < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public s([B)V
    .locals 6

    array-length v0, p1

    iget v1, p0, Ll5/e;->b:I

    iget v2, p0, Ll5/e;->a:I

    sub-int v3, v2, v1

    iget-object v4, p0, Ll5/e;->c:Ljava/lang/Object;

    check-cast v4, [B

    const/4 v5, 0x0

    if-lt v3, v0, :cond_0

    invoke-static {p1, v5, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ll5/e;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Ll5/e;->b:I

    goto :goto_0

    :cond_0
    invoke-static {p1, v5, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v3

    iput v2, p0, Ll5/e;->b:I

    invoke-virtual {p0}, Ll5/e;->k()V

    if-gt v0, v2, :cond_1

    invoke-static {p1, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Ll5/e;->b:I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ll5/e;->d:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0, p1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public t(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ll5/e;->q(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ll5/e;->q(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ll5/e;->q(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ll5/e;->q(I)V

    return-void
.end method

.method public u(J)V
    .locals 2

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ll5/e;->q(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ll5/e;->q(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ll5/e;->q(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ll5/e;->q(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ll5/e;->q(I)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ll5/e;->q(I)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ll5/e;->q(I)V

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ll5/e;->q(I)V

    return-void
.end method

.method public v(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ll5/e;->q(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ll5/e;->q(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public w(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Ll5/e;->q(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ll5/e;->q(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public x(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Ll5/e;->v(I)V

    return-void
.end method
