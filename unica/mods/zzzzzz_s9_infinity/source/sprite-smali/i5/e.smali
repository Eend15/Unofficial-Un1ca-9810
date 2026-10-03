.class public final Li5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public d:I

.field public e:I


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Li5/e;

    iget v0, p0, Li5/e;->d:I

    iget v1, p1, Li5/e;->d:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    iget p0, p0, Li5/e;->e:I

    iget p1, p1, Li5/e;->e:I

    if-ge p0, p1, :cond_1

    goto :goto_0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    return v2
.end method
