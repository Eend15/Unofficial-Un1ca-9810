.class public final Lh5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public d:B

.field public e:B

.field public f:B

.field public g:B


# virtual methods
.method public final a()I
    .locals 2

    iget-byte v0, p0, Lh5/e;->d:B

    shl-int/lit8 v0, v0, 0x18

    iget-byte v1, p0, Lh5/e;->e:B

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-byte v1, p0, Lh5/e;->f:B

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-byte p0, p0, Lh5/e;->g:B

    or-int/2addr p0, v0

    return p0
.end method

.method public final b(Lh5/e;)V
    .locals 1

    iget-byte v0, p1, Lh5/e;->d:B

    iput-byte v0, p0, Lh5/e;->d:B

    iget-byte v0, p1, Lh5/e;->e:B

    iput-byte v0, p0, Lh5/e;->e:B

    iget-byte v0, p1, Lh5/e;->f:B

    iput-byte v0, p0, Lh5/e;->f:B

    iget-byte p1, p1, Lh5/e;->g:B

    iput-byte p1, p0, Lh5/e;->g:B

    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lh5/e;

    invoke-virtual {p0}, Lh5/e;->a()I

    move-result p0

    invoke-virtual {p1}, Lh5/e;->a()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method
