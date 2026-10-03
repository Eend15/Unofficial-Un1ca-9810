.class public Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;
.super Landroid/graphics/Region;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;",
        "Landroid/graphics/Region;",
        "stretch-1.0.3_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public d:Z


# virtual methods
.method public final b(Landroid/graphics/Rect;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->d:Z

    const-string v1, "Cannot crop immutable region."

    if-eqz v0, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {p0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0, p1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    sget-object p1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->set(Landroid/graphics/Region;)Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final op(IIIILandroid/graphics/Region$Op;)Z
    .locals 1

    const-string v0, "op"

    invoke-static {p5, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->d:Z

    if-eqz v0, :cond_0

    .line 14
    invoke-super/range {p0 .. p5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    move-result p0

    return p0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot op immutable region."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 1

    const-string v0, "r"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "op"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->d:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-super {p0, p1, p2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result p0

    return p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot op immutable region."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "region"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "op"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot op immutable region."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 1

    const-string v0, "region"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "op"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->d:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-super {p0, p1, p2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result p0

    return p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot op immutable region."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 1

    const-string v0, "region1"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "region2"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "op"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->d:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result p0

    return p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot op immutable region."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final set(IIII)Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->d:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Region;->set(IIII)Z

    move-result p0

    return p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot set ltrb immutable region."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final set(Landroid/graphics/Rect;)Z
    .locals 1

    const-string v0, "r"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot set rect immutable region."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final set(Landroid/graphics/Region;)Z
    .locals 1

    const-string v0, "region"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->d:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    move-result p0

    return p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot set region immutable region."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setEmpty()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->d:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/graphics/Region;->setEmpty()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set Empty immutable region."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clip"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->d:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot set Path immutable region."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/graphics/Region;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Sem"

    invoke-static {v0, p0}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final translate(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/graphics/Region;->translate(II)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot translate immutable region."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final translate(IILandroid/graphics/Region;)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/stretch/utils/SemRegion;->d:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/Region;->translate(IILandroid/graphics/Region;)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot translate immutable region."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
