.class public final LM/a;
.super LA1/e;
.source "SourceFile"


# instance fields
.field public final synthetic g:LM/b;


# direct methods
.method public constructor <init>(LM/b;)V
    .locals 1

    iput-object p1, p0, LM/a;->g:LM/b;

    const/16 p1, 0x9

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LA1/e;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public final Q(I)LL/d;
    .locals 0

    iget-object p0, p0, LM/a;->g:LM/b;

    invoke-virtual {p0, p1}, LM/b;->j(I)LL/d;

    move-result-object p0

    iget-object p0, p0, LL/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    new-instance p1, LL/d;

    invoke-direct {p1, p0}, LL/d;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object p1
.end method

.method public final R(I)LL/d;
    .locals 2

    const/4 v0, 0x2

    iget-object v1, p0, LM/a;->g:LM/b;

    if-ne p1, v0, :cond_0

    iget p1, v1, LM/b;->k:I

    goto :goto_0

    :cond_0
    iget p1, v1, LM/b;->l:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, LM/a;->Q(I)LL/d;

    move-result-object p0

    return-object p0
.end method

.method public final T(IILandroid/os/Bundle;)Z
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const/4 v3, 0x1

    iget-object p0, p0, LM/a;->g:LM/b;

    iget-object v4, p0, LM/b;->i:Lcom/google/android/material/chip/Chip;

    const/4 v5, -0x1

    if-eq p1, v5, :cond_f

    if-eq p2, v3, :cond_8

    const/4 p3, 0x2

    if-eq p2, p3, :cond_5

    const/16 p3, 0x40

    const/high16 v0, 0x10000

    if-eq p2, p3, :cond_2

    const/16 p3, 0x80

    if-eq p2, p3, :cond_1

    check-cast p0, LM0/d;

    const/16 p3, 0x10

    if-ne p2, p3, :cond_10

    iget-object p0, p0, LM0/d;->n:Lcom/google/android/material/chip/Chip;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result v1

    goto/16 :goto_1

    :cond_0
    if-ne p1, v3, :cond_10

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_1

    :cond_1
    iget p2, p0, LM/b;->k:I

    if-ne p2, p1, :cond_10

    iput v2, p0, LM/b;->k:I

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0, p1, v0}, LM/b;->l(II)V

    :goto_0
    move v1, v3

    goto/16 :goto_1

    :cond_2
    iget-object p2, p0, LM/b;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_1

    :cond_3
    iget p2, p0, LM/b;->k:I

    if-eq p2, p1, :cond_10

    if-eq p2, v2, :cond_4

    iput v2, p0, LM/b;->k:I

    iget-object p3, p0, LM/b;->i:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0, p2, v0}, LM/b;->l(II)V

    :cond_4
    iput p1, p0, LM/b;->k:I

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    const p2, 0x8000

    invoke-virtual {p0, p1, p2}, LM/b;->l(II)V

    goto :goto_0

    :cond_5
    iget p2, p0, LM/b;->l:I

    if-eq p2, p1, :cond_6

    goto :goto_1

    :cond_6
    iput v2, p0, LM/b;->l:I

    move-object p2, p0

    check-cast p2, LM0/d;

    if-ne p1, v3, :cond_7

    iget-object p2, p2, LM0/d;->n:Lcom/google/android/material/chip/Chip;

    iput-boolean v1, p2, Lcom/google/android/material/chip/Chip;->p:Z

    invoke-virtual {p2}, Landroid/view/View;->refreshDrawableState()V

    :cond_7
    invoke-virtual {p0, p1, v0}, LM/b;->l(II)V

    goto :goto_0

    :cond_8
    iget-object p2, p0, LM/b;->i:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result p3

    if-nez p3, :cond_9

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_1

    :cond_9
    iget p2, p0, LM/b;->l:I

    if-ne p2, p1, :cond_a

    goto :goto_1

    :cond_a
    if-eq p2, v2, :cond_c

    iput v2, p0, LM/b;->l:I

    move-object p3, p0

    check-cast p3, LM0/d;

    if-ne p2, v3, :cond_b

    iget-object p3, p3, LM0/d;->n:Lcom/google/android/material/chip/Chip;

    iput-boolean v1, p3, Lcom/google/android/material/chip/Chip;->p:Z

    invoke-virtual {p3}, Landroid/view/View;->refreshDrawableState()V

    :cond_b
    invoke-virtual {p0, p2, v0}, LM/b;->l(II)V

    :cond_c
    if-ne p1, v2, :cond_d

    goto :goto_1

    :cond_d
    iput p1, p0, LM/b;->l:I

    move-object p2, p0

    check-cast p2, LM0/d;

    if-ne p1, v3, :cond_e

    iget-object p2, p2, LM0/d;->n:Lcom/google/android/material/chip/Chip;

    iput-boolean v3, p2, Lcom/google/android/material/chip/Chip;->p:Z

    invoke-virtual {p2}, Landroid/view/View;->refreshDrawableState()V

    :cond_e
    invoke-virtual {p0, p1, v0}, LM/b;->l(II)V

    goto/16 :goto_0

    :cond_f
    sget-object p0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    :cond_10
    :goto_1
    return v1
.end method
