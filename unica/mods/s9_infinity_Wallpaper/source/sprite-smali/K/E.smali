.class public final synthetic LK/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:LA1/e;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(LA1/e;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK/E;->a:LA1/e;

    iput-object p2, p0, LK/E;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, LK/E;->a:LA1/e;

    iget-object p0, p0, LA1/e;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/S;

    iget-object p0, p0, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
