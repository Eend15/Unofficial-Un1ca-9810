.class public final Landroidx/recyclerview/widget/f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/U;

.field public final synthetic b:I

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:I

.field public final synthetic e:Landroid/view/ViewPropertyAnimator;

.field public final synthetic f:Landroidx/recyclerview/widget/j;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/j;Landroidx/recyclerview/widget/U;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/f;->f:Landroidx/recyclerview/widget/j;

    iput-object p2, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/U;

    iput p3, p0, Landroidx/recyclerview/widget/f;->b:I

    iput-object p4, p0, Landroidx/recyclerview/widget/f;->c:Landroid/view/View;

    iput p5, p0, Landroidx/recyclerview/widget/f;->d:I

    iput-object p6, p0, Landroidx/recyclerview/widget/f;->e:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget p1, p0, Landroidx/recyclerview/widget/f;->b:I

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/recyclerview/widget/f;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/f;->d:I

    if-eqz p0, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/recyclerview/widget/f;->e:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Landroidx/recyclerview/widget/f;->f:Landroidx/recyclerview/widget/j;

    iget-object p0, p0, Landroidx/recyclerview/widget/f;->a:Landroidx/recyclerview/widget/U;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/j;->e(Landroidx/recyclerview/widget/U;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/j;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j;->f()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/f;->f:Landroidx/recyclerview/widget/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
