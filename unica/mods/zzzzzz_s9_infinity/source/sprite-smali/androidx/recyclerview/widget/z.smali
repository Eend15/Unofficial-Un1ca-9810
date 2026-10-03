.class public final Landroidx/recyclerview/widget/z;
.super Landroidx/emoji2/text/f;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/I;I)V
    .locals 0

    iput p2, p0, Landroidx/recyclerview/widget/z;->d:I

    invoke-direct {p0, p1}, Landroidx/emoji2/text/f;-><init>(Landroidx/recyclerview/widget/I;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/z;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/J;

    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/J;

    iget-object p1, p1, Landroidx/recyclerview/widget/J;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, p1

    return p0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/J;

    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/J;

    iget-object p1, p1, Landroidx/recyclerview/widget/J;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, p1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/view/View;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/z;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/J;

    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/J;

    iget-object p0, p0, Landroidx/recyclerview/widget/J;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p0

    return p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/J;

    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/J;

    iget-object p0, p0, Landroidx/recyclerview/widget/J;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, p0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/view/View;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/z;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/J;

    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/J;

    iget-object p0, p0, Landroidx/recyclerview/widget/J;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, p0

    return p1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/J;

    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/J;

    iget-object p0, p0, Landroidx/recyclerview/widget/J;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/z;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/J;

    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/J;

    iget-object p1, p1, Landroidx/recyclerview/widget/J;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p0, p1

    return p0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/J;

    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/J;

    iget-object p1, p1, Landroidx/recyclerview/widget/J;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p0, p1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/z;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    iget p0, p0, Landroidx/recyclerview/widget/I;->o:I

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    iget p0, p0, Landroidx/recyclerview/widget/I;->n:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/z;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    iget v0, p0, Landroidx/recyclerview/widget/I;->o:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->z()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :pswitch_0
    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    iget v0, p0, Landroidx/recyclerview/widget/I;->n:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->B()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/z;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->z()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->B()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/z;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    iget p0, p0, Landroidx/recyclerview/widget/I;->m:I

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    iget p0, p0, Landroidx/recyclerview/widget/I;->l:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/z;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    iget p0, p0, Landroidx/recyclerview/widget/I;->l:I

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    iget p0, p0, Landroidx/recyclerview/widget/I;->m:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/z;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->C()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->A()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l()I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/z;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    iget v0, p0, Landroidx/recyclerview/widget/I;->o:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->C()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->z()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :pswitch_0
    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    iget v0, p0, Landroidx/recyclerview/widget/I;->n:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->A()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/I;->B()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/z;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/I;

    iget-object p0, p0, Landroidx/emoji2/text/f;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p0}, Landroidx/recyclerview/widget/I;->G(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0

    :pswitch_0
    iget-object v0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/I;

    iget-object p0, p0, Landroidx/emoji2/text/f;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p0}, Landroidx/recyclerview/widget/I;->G(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/z;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/I;

    iget-object p0, p0, Landroidx/emoji2/text/f;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p0}, Landroidx/recyclerview/widget/I;->G(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0

    :pswitch_0
    iget-object v0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/I;

    iget-object p0, p0, Landroidx/emoji2/text/f;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p0}, Landroidx/recyclerview/widget/I;->G(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(I)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/z;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/I;->L(I)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/I;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/I;->K(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
