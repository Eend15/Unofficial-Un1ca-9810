.class public final Landroidx/appcompat/widget/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/H;->d:I

    iput-object p2, p0, Landroidx/appcompat/widget/H;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    iget v0, p0, Landroidx/appcompat/widget/H;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/appcompat/widget/H;->e:Ljava/lang/Object;

    check-cast p0, Lk/A;

    invoke-virtual {p0}, Lk/A;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lk/A;->k:Landroidx/appcompat/widget/A0;

    iget-boolean v1, v0, Landroidx/appcompat/widget/w0;->A:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lk/A;->p:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->f()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lk/A;->dismiss()V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/widget/H;->e:Ljava/lang/Object;

    check-cast p0, Lk/d;

    invoke-virtual {p0}, Lk/d;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lk/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/c;

    iget-object v1, v1, Lk/c;->a:Landroidx/appcompat/widget/A0;

    iget-boolean v1, v1, Landroidx/appcompat/widget/w0;->A:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lk/d;->r:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/c;

    iget-object v0, v0, Lk/c;->a:Landroidx/appcompat/widget/A0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->f()V

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lk/d;->dismiss()V

    :cond_5
    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/appcompat/widget/H;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/N;

    iget-object v0, p0, Landroidx/appcompat/widget/N;->G:Landroidx/appcompat/widget/P;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/appcompat/widget/N;->E:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/widget/N;->q()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/w0;->f()V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/widget/w0;->dismiss()V

    :goto_4
    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/appcompat/widget/H;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/P;

    iget-object v1, v0, Landroidx/appcompat/widget/P;->i:Landroidx/appcompat/widget/O;

    invoke-interface {v1}, Landroidx/appcompat/widget/O;->b()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getTextDirection()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTextAlignment()I

    move-result v2

    iget-object v3, v0, Landroidx/appcompat/widget/P;->i:Landroidx/appcompat/widget/O;

    invoke-interface {v3, v1, v2}, Landroidx/appcompat/widget/O;->e(II)V

    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
