.class public final Lv/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:[I

.field public c:I

.field public d:[I

.field public e:[F

.field public f:I

.field public g:[I

.field public h:[Ljava/lang/String;

.field public i:I

.field public j:[I

.field public k:[Z

.field public l:I


# virtual methods
.method public final a(FI)V
    .locals 3

    iget v0, p0, Lv/f;->f:I

    iget-object v1, p0, Lv/f;->d:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lv/f;->d:[I

    iget-object v0, p0, Lv/f;->e:[F

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lv/f;->e:[F

    :cond_0
    iget-object v0, p0, Lv/f;->d:[I

    iget v1, p0, Lv/f;->f:I

    aput p2, v0, v1

    iget-object p2, p0, Lv/f;->e:[F

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lv/f;->f:I

    aput p1, p2, v1

    return-void
.end method

.method public final b(II)V
    .locals 3

    iget v0, p0, Lv/f;->c:I

    iget-object v1, p0, Lv/f;->a:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lv/f;->a:[I

    iget-object v0, p0, Lv/f;->b:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lv/f;->b:[I

    :cond_0
    iget-object v0, p0, Lv/f;->a:[I

    iget v1, p0, Lv/f;->c:I

    aput p1, v0, v1

    iget-object p1, p0, Lv/f;->b:[I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lv/f;->c:I

    aput p2, p1, v1

    return-void
.end method

.method public final c(ILjava/lang/String;)V
    .locals 3

    iget v0, p0, Lv/f;->i:I

    iget-object v1, p0, Lv/f;->g:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lv/f;->g:[I

    iget-object v0, p0, Lv/f;->h:[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lv/f;->h:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lv/f;->g:[I

    iget v1, p0, Lv/f;->i:I

    aput p1, v0, v1

    iget-object p1, p0, Lv/f;->h:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lv/f;->i:I

    aput-object p2, p1, v1

    return-void
.end method

.method public final d(IZ)V
    .locals 3

    iget v0, p0, Lv/f;->l:I

    iget-object v1, p0, Lv/f;->j:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lv/f;->j:[I

    iget-object v0, p0, Lv/f;->k:[Z

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lv/f;->k:[Z

    :cond_0
    iget-object v0, p0, Lv/f;->j:[I

    iget v1, p0, Lv/f;->l:I

    aput p1, v0, v1

    iget-object p1, p0, Lv/f;->k:[Z

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lv/f;->l:I

    aput-boolean p2, p1, v1

    return-void
.end method
