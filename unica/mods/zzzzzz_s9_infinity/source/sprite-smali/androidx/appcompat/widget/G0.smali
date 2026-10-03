.class public final Landroidx/appcompat/widget/G0;
.super Landroid/util/Property;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Landroidx/appcompat/widget/G0;->a:I

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iget p0, p0, Landroidx/appcompat/widget/G0;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    sget-object p0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    return-object v0

    :pswitch_2
    check-cast p1, Landroid/view/View;

    return-object v0

    :pswitch_3
    check-cast p1, Landroid/view/View;

    return-object v0

    :pswitch_4
    check-cast p1, Lj0/e;

    return-object v0

    :pswitch_5
    check-cast p1, Lj0/e;

    return-object v0

    :pswitch_6
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iget p0, p1, Landroidx/appcompat/widget/SwitchCompat;->C:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    iget p0, p0, Landroidx/appcompat/widget/G0;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/Rect;

    sget-object p0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void

    :pswitch_0
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTransitionAlpha(F)V

    return-void

    :pswitch_1
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, p2

    sget-object v2, Lj0/r;->a:Landroidx/appcompat/widget/G0;

    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void

    :pswitch_2
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    sget-object v2, Lj0/r;->a:Landroidx/appcompat/widget/G0;

    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void

    :pswitch_3
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    sget-object v2, Lj0/r;->a:Landroidx/appcompat/widget/G0;

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void

    :pswitch_4
    check-cast p1, Lj0/e;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Lj0/e;->c:I

    iget p0, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Lj0/e;->d:I

    iget p2, p1, Lj0/e;->g:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lj0/e;->g:I

    iget v1, p1, Lj0/e;->f:I

    if-ne v1, p2, :cond_0

    iget p2, p1, Lj0/e;->a:I

    iget v1, p1, Lj0/e;->b:I

    iget v2, p1, Lj0/e;->c:I

    sget-object v3, Lj0/r;->a:Landroidx/appcompat/widget/G0;

    iget-object v3, p1, Lj0/e;->e:Landroid/view/View;

    invoke-virtual {v3, p2, v1, v2, p0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    iput v0, p1, Lj0/e;->f:I

    iput v0, p1, Lj0/e;->g:I

    :cond_0
    return-void

    :pswitch_5
    check-cast p1, Lj0/e;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Lj0/e;->a:I

    iget p0, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Lj0/e;->b:I

    iget p2, p1, Lj0/e;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lj0/e;->f:I

    iget v1, p1, Lj0/e;->g:I

    if-ne p2, v1, :cond_1

    iget p2, p1, Lj0/e;->a:I

    iget v1, p1, Lj0/e;->c:I

    iget v2, p1, Lj0/e;->d:I

    sget-object v3, Lj0/r;->a:Landroidx/appcompat/widget/G0;

    iget-object v3, p1, Lj0/e;->e:Landroid/view/View;

    invoke-virtual {v3, p2, p0, v1, v2}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    iput v0, p1, Lj0/e;->f:I

    iput v0, p1, Lj0/e;->g:I

    :cond_1
    return-void

    :pswitch_6
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, p1, Landroidx/appcompat/widget/SwitchCompat;->C:F

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
