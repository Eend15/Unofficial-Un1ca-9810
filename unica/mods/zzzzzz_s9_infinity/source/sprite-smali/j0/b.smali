.class public final Lj0/b;
.super Landroid/util/Property;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/Rect;


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lj0/b;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    new-instance p1, Landroid/graphics/PointF;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-direct {p1, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    check-cast p2, Landroid/graphics/PointF;

    iget-object p0, p0, Lj0/b;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p0, v0, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method
