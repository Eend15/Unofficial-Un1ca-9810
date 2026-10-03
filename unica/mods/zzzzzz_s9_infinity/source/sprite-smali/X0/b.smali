.class public final LX0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:LX0/d;


# direct methods
.method public constructor <init>(LX0/d;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX0/b;->c:LX0/d;

    iput-object p2, p0, LX0/b;->a:Landroid/view/View;

    iput-object p3, p0, LX0/b;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v4

    iget-object p1, p0, LX0/b;->c:LX0/d;

    iget-object v2, p0, LX0/b;->a:Landroid/view/View;

    iget-object v3, p0, LX0/b;->b:Landroid/view/View;

    iget-object v1, p1, LX0/d;->f:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result p0

    if-lez p0, :cond_0

    iget-object v0, v1, Lcom/google/android/material/tabs/TabLayout;->p:LG4/d;

    iget-object v5, v1, Lcom/google/android/material/tabs/TabLayout;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v0 .. v5}, LG4/d;->q(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lcom/google/android/material/tabs/TabLayout;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    sget-object p0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method
