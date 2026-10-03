.class public abstract Lk5/c;
.super Lj0/s;
.source "SourceFile"


# static fields
.field public static final d:[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Lk5/e;->a:I

    new-array v0, v0, [F

    sput-object v0, Lk5/c;->d:[F

    const/4 v0, 0x0

    :goto_0
    sget v1, Lk5/e;->a:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lk5/c;->d:[F

    int-to-float v2, v0

    const v3, 0x38e6afcd    # 1.1E-4f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final M(F)F
    .locals 1

    sget v0, Lk5/e;->a:I

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p0, p0

    :goto_0
    return p0
.end method

.method public static final N(FFF)F
    .locals 0

    invoke-static {p0, p2}, Lk5/c;->Q(FF)F

    move-result p0

    cmpl-float p2, p1, p0

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p0

    :goto_0
    return p1
.end method

.method public static final O(F)F
    .locals 1

    sget v0, Lk5/e;->a:I

    const v0, 0x3fc90fdb

    sub-float/2addr v0, p0

    invoke-static {v0}, Lk5/c;->R(F)F

    move-result p0

    return p0
.end method

.method public static final P(Lk5/i;Lk5/i;)F
    .locals 2

    iget v0, p0, Lk5/i;->d:F

    iget v1, p1, Lk5/i;->d:F

    sub-float/2addr v0, v1

    iget p0, p0, Lk5/i;->e:F

    iget p1, p1, Lk5/i;->e:F

    sub-float/2addr p0, p1

    mul-float/2addr v0, v0

    mul-float/2addr p0, p0

    add-float/2addr p0, v0

    return p0
.end method

.method public static final Q(FF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method public static final R(F)F
    .locals 3

    const v0, 0x40c90fdb

    rem-float/2addr p0, v0

    const/4 v1, 0x0

    cmpg-float v2, p0, v1

    if-gez v2, :cond_0

    add-float/2addr p0, v0

    :cond_0
    sget v0, Lk5/e;->a:I

    const v0, 0x38e6afcd    # 1.1E-4f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int v0, p0

    cmpg-float v1, p0, v1

    if-gez v1, :cond_1

    int-to-float v1, v0

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    sget p0, Lk5/e;->a:I

    rem-int/2addr v0, p0

    sget-object p0, Lk5/c;->d:[F

    aget p0, p0, v0

    return p0
.end method
