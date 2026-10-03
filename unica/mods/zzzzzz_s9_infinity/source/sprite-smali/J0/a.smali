.class public final LJ0/a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LJ0/a;->a:I

    iput-object p2, p0, LJ0/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, LJ0/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    const/4 p1, 0x0

    iget-object p0, p0, LJ0/a;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, LJ0/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LJ0/a;->b:Ljava/lang/Object;

    check-cast v0, Lj0/l;

    invoke-virtual {v0}, Lj0/l;->l()V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :pswitch_0
    iget-object p0, p0, LJ0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/o;

    iget-object p1, p0, Lcom/google/android/material/textfield/p;->c:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v0, p0, Lcom/google/android/material/textfield/o;->m:Z

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/google/android/material/textfield/o;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :pswitch_1
    const/4 p1, 0x0

    iget-object p0, p0, LJ0/a;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->y:Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z

    return-void

    :pswitch_2
    iget-object p0, p0, LJ0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->c:Landroid/view/ViewPropertyAnimator;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
