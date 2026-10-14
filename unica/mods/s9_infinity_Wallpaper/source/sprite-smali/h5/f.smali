.class public final Lh5/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lk5/i;

.field public b:I

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Lk5/i;

    iput-object v0, p0, Lh5/f;->a:[Lk5/i;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lh5/f;->a:[Lk5/i;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Lk5/i;

    invoke-direct {v3}, Lk5/i;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lh5/f;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lh5/f;->c:F

    return-void
.end method


# virtual methods
.method public final a(Lk5/i;)I
    .locals 6

    iget-object v0, p0, Lh5/f;->a:[Lk5/i;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-static {v2, p1}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v2

    const/4 v3, 0x1

    :goto_0
    iget v4, p0, Lh5/f;->b:I

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4, p1}, Lk5/i;->f(Lk5/i;Lk5/i;)F

    move-result v4

    cmpl-float v5, v4, v2

    if-lez v5, :cond_0

    move v1, v3

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final b(Lj5/e;)V
    .locals 6

    iget v0, p1, Lj5/e;->a:I

    invoke-static {v0}, Lq/e;->c(I)I

    move-result v0

    iget-object v1, p0, Lh5/f;->a:[Lk5/i;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    const/4 v4, 0x2

    if-eq v0, v2, :cond_2

    if-eq v0, v4, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_1
    check-cast p1, Lj5/d;

    iget v0, p1, Lj5/d;->f:I

    iput v0, p0, Lh5/f;->b:I

    iget v0, p1, Lj5/e;->b:F

    iput v0, p0, Lh5/f;->c:F

    :goto_0
    iget v0, p0, Lh5/f;->b:I

    if-ge v3, v0, :cond_4

    aget-object v0, v1, v3

    iget-object v2, p1, Lj5/d;->d:[Lk5/i;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lk5/i;->k(Lk5/i;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    check-cast p1, Lj5/b;

    aget-object v0, v1, v3

    iget-object v3, p1, Lj5/b;->c:Lk5/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v3, Lk5/i;->d:F

    iput v5, v0, Lk5/i;->d:F

    iget v3, v3, Lk5/i;->e:F

    iput v3, v0, Lk5/i;->e:F

    aget-object v0, v1, v2

    iget-object v1, p1, Lj5/b;->d:Lk5/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v1, Lk5/i;->d:F

    iput v2, v0, Lk5/i;->d:F

    iget v1, v1, Lk5/i;->e:F

    iput v1, v0, Lk5/i;->e:F

    iput v4, p0, Lh5/f;->b:I

    iget p1, p1, Lj5/e;->b:F

    iput p1, p0, Lh5/f;->c:F

    goto :goto_1

    :cond_3
    check-cast p1, Lj5/a;

    aget-object v0, v1, v3

    iget-object v1, p1, Lj5/a;->c:Lk5/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v1, Lk5/i;->d:F

    iput v3, v0, Lk5/i;->d:F

    iget v1, v1, Lk5/i;->e:F

    iput v1, v0, Lk5/i;->e:F

    iput v2, p0, Lh5/f;->b:I

    iget p1, p1, Lj5/e;->b:F

    iput p1, p0, Lh5/f;->c:F

    :cond_4
    :goto_1
    return-void
.end method
