.class public abstract Lp4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/util/List;


# direct methods
.method public varargs constructor <init>([I)V
    .locals 3

    const-string v0, "numbers"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/a;->a:[I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lr3/h;->n0([II)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lp4/a;->b:I

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lr3/h;->n0([II)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    iput v0, p0, Lp4/a;->c:I

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lr3/h;->n0([II)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    iput v1, p0, Lp4/a;->d:I

    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    new-instance v0, Lr3/i;

    invoke-direct {v0, p1}, Lr3/i;-><init>([I)V

    array-length p1, p1

    new-instance v2, Lr3/b;

    invoke-direct {v2, v0, v1, p1}, Lr3/b;-><init>(Lr3/c;II)V

    invoke-static {v2}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_3
    sget-object p1, Lr3/r;->d:Lr3/r;

    :goto_3
    iput-object p1, p0, Lp4/a;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(III)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lp4/a;->b:I

    if-le v1, p1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x0

    if-ge v1, p1, :cond_1

    return v2

    :cond_1
    iget p1, p0, Lp4/a;->c:I

    if-le p1, p2, :cond_2

    return v0

    :cond_2
    if-ge p1, p2, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lp4/a;->d:I

    if-lt p0, p3, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    return v0
.end method

.method public final b(Lp4/a;)Z
    .locals 4

    const-string v0, "ourVersion"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lp4/a;->c:I

    iget v3, p1, Lp4/a;->c:I

    iget p1, p1, Lp4/a;->b:I

    iget p0, p0, Lp4/a;->b:I

    if-nez p0, :cond_0

    if-nez p1, :cond_1

    if-ne v2, v3, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    if-ne p0, p1, :cond_1

    if-gt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lp4/a;

    iget v0, p1, Lp4/a;->b:I

    iget v1, p0, Lp4/a;->b:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Lp4/a;->c:I

    iget v1, p1, Lp4/a;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lp4/a;->d:I

    iget v1, p1, Lp4/a;->d:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lp4/a;->e:Ljava/util/List;

    iget-object p1, p1, Lp4/a;->e:Ljava/util/List;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lp4/a;->b:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lp4/a;->c:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lp4/a;->d:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object p0, p0, Lp4/a;->e:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lp4/a;->a:[I

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "unknown"

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "."

    const/4 v2, 0x0

    const/16 v5, 0x3e

    invoke-static/range {v0 .. v5}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method
