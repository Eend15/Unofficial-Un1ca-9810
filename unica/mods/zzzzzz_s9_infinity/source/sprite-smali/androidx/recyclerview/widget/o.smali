.class public final Landroidx/recyclerview/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:[I

.field public d:I


# virtual methods
.method public final a(II)V
    .locals 5

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/o;->d:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Landroidx/recyclerview/widget/o;->c:[I

    const/4 v3, 0x4

    if-nez v2, :cond_0

    new-array v0, v3, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/o;->c:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    :cond_0
    array-length v4, v2

    if-lt v1, v4, :cond_1

    mul-int/2addr v0, v3

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/o;->c:[I

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/o;->c:[I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    iget p1, p0, Landroidx/recyclerview/widget/o;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/o;->d:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pixel distance must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Layout positions must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/o;->d:I

    iget-object v0, p0, Landroidx/recyclerview/widget/o;->c:[I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Landroidx/recyclerview/widget/I;->i:Z

    if-eqz v1, :cond_3

    if-eqz p2, :cond_1

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/b;->D()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    invoke-virtual {v1}, LU3/b0;->c()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/I;->i(ILandroidx/recyclerview/widget/o;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->J()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/recyclerview/widget/o;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/o;->b:I

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/S;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/recyclerview/widget/I;->h(IILandroidx/recyclerview/widget/S;Landroidx/recyclerview/widget/o;)V

    :cond_2
    :goto_0
    iget p0, p0, Landroidx/recyclerview/widget/o;->d:I

    iget v1, v0, Landroidx/recyclerview/widget/I;->j:I

    if-le p0, v1, :cond_3

    iput p0, v0, Landroidx/recyclerview/widget/I;->j:I

    iput-boolean p2, v0, Landroidx/recyclerview/widget/I;->k:Z

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/M;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/M;->k()V

    :cond_3
    return-void
.end method
