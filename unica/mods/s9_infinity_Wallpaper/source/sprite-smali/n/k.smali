.class public final Ln/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public synthetic d:[I

.field public synthetic e:[Ljava/lang/Object;

.field public synthetic f:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    move v1, v0

    :goto_0
    const/16 v2, 0x20

    const/16 v3, 0x28

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    add-int/lit8 v2, v2, -0xc

    if-gt v3, v2, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    div-int/2addr v3, v0

    new-array v0, v3, [I

    iput-object v0, p0, Ln/k;->d:[I

    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Ln/k;->e:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 6

    iget v0, p0, Ln/k;->f:I

    if-eqz v0, :cond_6

    iget-object v1, p0, Ln/k;->d:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_6

    iget-object v0, p0, Ln/k;->d:[I

    iget v1, p0, Ln/k;->f:I

    invoke-static {v1, p1, v0}, Lo/a;->a(II[I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Ln/k;->e:[Ljava/lang/Object;

    aput-object p2, p0, v0

    goto/16 :goto_4

    :cond_0
    not-int v0, v0

    iget v1, p0, Ln/k;->f:I

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Ln/k;->e:[Ljava/lang/Object;

    aget-object v3, v2, v0

    sget-object v4, Ln/i;->b:Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    iget-object p0, p0, Ln/k;->d:[I

    aput p1, p0, v0

    aput-object p2, v2, v0

    goto/16 :goto_4

    :cond_1
    iget-object v2, p0, Ln/k;->d:[I

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v1, v2, :cond_4

    add-int/2addr v1, v3

    const/4 v2, 0x4

    mul-int/2addr v1, v2

    move v4, v2

    :goto_0
    const/16 v5, 0x20

    if-ge v4, v5, :cond_3

    shl-int v5, v3, v4

    add-int/lit8 v5, v5, -0xc

    if-gt v1, v5, :cond_2

    move v1, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    div-int/2addr v1, v2

    iget-object v2, p0, Ln/k;->d:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    const-string v4, "copyOf(this, newSize)"

    invoke-static {v2, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Ln/k;->d:[I

    iget-object v2, p0, Ln/k;->e:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Ln/k;->e:[Ljava/lang/Object;

    :cond_4
    iget v1, p0, Ln/k;->f:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Ln/k;->d:[I

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4, v0, v1, v2, v2}, Lr3/h;->f0(III[I[I)V

    iget-object v1, p0, Ln/k;->e:[Ljava/lang/Object;

    iget v2, p0, Ln/k;->f:I

    invoke-static {v1, v1, v4, v0, v2}, Lr3/h;->g0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :cond_5
    iget-object v1, p0, Ln/k;->d:[I

    aput p1, v1, v0

    iget-object p1, p0, Ln/k;->e:[Ljava/lang/Object;

    aput-object p2, p1, v0

    iget p1, p0, Ln/k;->f:I

    add-int/2addr p1, v3

    iput p1, p0, Ln/k;->f:I

    goto :goto_4

    :cond_6
    iget-object v1, p0, Ln/k;->d:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_9

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x4

    mul-int/2addr v1, v3

    move v4, v3

    :goto_2
    const/16 v5, 0x20

    if-ge v4, v5, :cond_8

    shl-int v5, v2, v4

    add-int/lit8 v5, v5, -0xc

    if-gt v1, v5, :cond_7

    move v1, v5

    goto :goto_3

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    div-int/2addr v1, v3

    iget-object v3, p0, Ln/k;->d:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    const-string v4, "copyOf(this, newSize)"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Ln/k;->d:[I

    iget-object v3, p0, Ln/k;->e:[Ljava/lang/Object;

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Ln/k;->e:[Ljava/lang/Object;

    :cond_9
    iget-object v1, p0, Ln/k;->d:[I

    aput p1, v1, v0

    iget-object p1, p0, Ln/k;->e:[Ljava/lang/Object;

    aput-object p2, p1, v0

    add-int/2addr v0, v2

    iput v0, p0, Ln/k;->f:I

    :goto_4
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>"

    invoke-static {v0, v1}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ln/k;

    iget-object v1, p0, Ln/k;->d:[I

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Ln/k;->d:[I

    iget-object p0, p0, Ln/k;->e:[Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    iput-object p0, v0, Ln/k;->e:[Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Ln/k;->f:I

    if-gtz v0, :cond_0

    const-string p0, "{}"

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Ln/k;->f:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    if-lez v2, :cond_1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v3, p0, Ln/k;->d:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ln/k;->e:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-eq v3, p0, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "(this Map)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "buffer.toString()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method
