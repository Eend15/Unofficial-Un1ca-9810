.class public final synthetic LH/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, [B

    check-cast p2, [B

    array-length p0, p1

    array-length v0, p2

    if-eq p0, v0, :cond_0

    array-length p0, p1

    array-length p1, p2

    sub-int/2addr p0, p1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    move v0, p0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_1

    sub-int p0, v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method
