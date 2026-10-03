.class public final Lcom/google/android/material/textfield/o;
.super Lcom/google/android/material/textfield/p;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/material/textfield/k;

.field public final f:Lcom/google/android/material/textfield/b;

.field public final g:Lcom/google/android/material/textfield/l;

.field public final h:Lcom/google/android/material/textfield/c;

.field public final i:Lcom/google/android/material/textfield/d;

.field public final j:Lcom/google/android/material/textfield/m;

.field public final k:Landroidx/recyclerview/widget/y;

.field public l:Z

.field public m:Z

.field public n:J

.field public o:Landroid/graphics/drawable/StateListDrawable;

.field public p:LU0/g;

.field public q:Landroid/view/accessibility/AccessibilityManager;

.field public r:Landroid/animation/ValueAnimator;

.field public s:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/p;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    new-instance p2, Lcom/google/android/material/textfield/k;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/android/material/textfield/k;-><init>(Lcom/google/android/material/textfield/p;I)V

    iput-object p2, p0, Lcom/google/android/material/textfield/o;->e:Lcom/google/android/material/textfield/k;

    new-instance p2, Lcom/google/android/material/textfield/b;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/google/android/material/textfield/b;-><init>(Lcom/google/android/material/textfield/p;I)V

    iput-object p2, p0, Lcom/google/android/material/textfield/o;->f:Lcom/google/android/material/textfield/b;

    new-instance p2, Lcom/google/android/material/textfield/l;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/textfield/l;-><init>(Lcom/google/android/material/textfield/o;Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object p2, p0, Lcom/google/android/material/textfield/o;->g:Lcom/google/android/material/textfield/l;

    new-instance p1, Lcom/google/android/material/textfield/c;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/textfield/c;-><init>(Lcom/google/android/material/textfield/p;I)V

    iput-object p1, p0, Lcom/google/android/material/textfield/o;->h:Lcom/google/android/material/textfield/c;

    new-instance p1, Lcom/google/android/material/textfield/d;

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/textfield/d;-><init>(Lcom/google/android/material/textfield/p;I)V

    iput-object p1, p0, Lcom/google/android/material/textfield/o;->i:Lcom/google/android/material/textfield/d;

    new-instance p1, Lcom/google/android/material/textfield/m;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/google/android/material/textfield/m;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/o;->j:Lcom/google/android/material/textfield/m;

    new-instance p1, Landroidx/recyclerview/widget/y;

    const/4 p2, 0x5

    invoke-direct {p1, p2, p0}, Landroidx/recyclerview/widget/y;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/o;->k:Landroidx/recyclerview/widget/y;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/o;->l:Z

    iput-boolean p1, p0, Lcom/google/android/material/textfield/o;->m:Z

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/google/android/material/textfield/o;->n:J

    return-void
.end method

.method public static d(Lcom/google/android/material/textfield/o;Landroid/widget/AutoCompleteTextView;)V
    .locals 7

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/material/textfield/o;->n:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_2

    const-wide/16 v5, 0x12c

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/google/android/material/textfield/o;->l:Z

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/textfield/o;->l:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/material/textfield/o;->m:Z

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/o;->i(Z)V

    iget-boolean p0, p0, Lcom/google/android/material/textfield/o;->m:Z

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_2

    :cond_5
    iput-boolean v4, p0, Lcom/google/android/material/textfield/o;->l:Z

    :goto_2
    return-void
.end method

.method public static h(Landroid/widget/EditText;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/material/textfield/p;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, LF0/c;->mtrl_shape_corner_size_small_component:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, LF0/c;->mtrl_exposed_dropdown_menu_popup_elevation:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, LF0/c;->mtrl_exposed_dropdown_menu_popup_vertical_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {p0, v3, v3, v4, v5}, Lcom/google/android/material/textfield/o;->g(FFFI)LU0/g;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v3, v4, v5}, Lcom/google/android/material/textfield/o;->g(FFFI)LU0/g;

    move-result-object v3

    iput-object v6, p0, Lcom/google/android/material/textfield/o;->p:LU0/g;

    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/textfield/o;->o:Landroid/graphics/drawable/StateListDrawable;

    const v5, 0x10100aa

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/google/android/material/textfield/o;->o:Landroid/graphics/drawable/StateListDrawable;

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual {v4, v5, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget v3, p0, Lcom/google/android/material/textfield/p;->d:I

    if-nez v3, :cond_0

    sget v3, LF0/d;->mtrl_dropdown_arrow:I

    :cond_0
    iget-object v4, p0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4, v3}, Lcom/google/android/material/textfield/TextInputLayout;->o(I)V

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, LF0/h;->exposed_dropdown_menu_content_description:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/material/textfield/TextInputLayout;->n(Ljava/lang/CharSequence;)V

    new-instance v3, Landroidx/appcompat/app/c;

    const/4 v5, 0x5

    invoke-direct {v3, v5, p0}, Landroidx/appcompat/app/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v3}, Lcom/google/android/material/textfield/TextInputLayout;->q(Landroid/view/View$OnClickListener;)V

    iget-object v3, v4, Lcom/google/android/material/textfield/TextInputLayout;->d0:Ljava/util/LinkedHashSet;

    iget-object v5, p0, Lcom/google/android/material/textfield/o;->h:Lcom/google/android/material/textfield/c;

    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v3, v4, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    invoke-virtual {v5, v4}, Lcom/google/android/material/textfield/c;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    :cond_1
    iget-object v3, v4, Lcom/google/android/material/textfield/TextInputLayout;->h0:Ljava/util/LinkedHashSet;

    iget-object v5, p0, Lcom/google/android/material/textfield/o;->i:Lcom/google/android/material/textfield/d;

    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    sget-object v5, LG0/a;->a:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v6, 0x43

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, LE1/g;

    invoke-direct {v6, v0, p0}, LE1/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v3, p0, Lcom/google/android/material/textfield/o;->s:Landroid/animation/ValueAnimator;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v5, 0x32

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, LE1/g;

    invoke-direct {v5, v0, p0}, LE1/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v3, p0, Lcom/google/android/material/textfield/o;->r:Landroid/animation/ValueAnimator;

    new-instance v0, LJ0/a;

    invoke-direct {v0, v1, p0}, LJ0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string v0, "accessibility"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/textfield/o;->q:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/google/android/material/textfield/o;->j:Lcom/google/android/material/textfield/m;

    invoke-virtual {v4, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/o;->f()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final b(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e(Landroid/widget/AutoCompleteTextView;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/material/textfield/o;->h(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    sget v4, LF0/a;->colorControlHighlight:I

    invoke-static {p1, v4}, LK/I;->z(Landroid/view/View;I)I

    move-result v4

    const v5, 0x10100a7

    filled-new-array {v5}, [I

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [I

    filled-new-array {v5, v7}, [[I

    move-result-object v5

    const v7, 0x3dcccccd    # 0.1f

    if-ne v0, v1, :cond_3

    sget p0, LF0/a;->colorSurface:I

    invoke-static {p1, p0}, LK/I;->z(Landroid/view/View;I)I

    move-result p0

    new-instance v0, LU0/g;

    iget-object v1, v3, LU0/g;->d:LU0/f;

    iget-object v1, v1, LU0/f;->a:LU0/j;

    invoke-direct {v0, v1}, LU0/g;-><init>(LU0/j;)V

    invoke-static {v7, v4, p0}, LK/I;->e0(FII)I

    move-result v1

    filled-new-array {v1, v6}, [I

    move-result-object v2

    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v5, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v4}, LU0/g;->j(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0, p0}, LU0/g;->setTint(I)V

    filled-new-array {v1, p0}, [I

    move-result-object p0

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v5, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance p0, LU0/g;

    iget-object v2, v3, LU0/g;->d:LU0/f;

    iget-object v2, v2, LU0/f;->a:LU0/j;

    invoke-direct {p0, v2}, LU0/g;-><init>(LU0/j;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, LU0/g;->setTint(I)V

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v2, v1, v0, p0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    filled-new-array {v2, v3}, [Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    sget-object p0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_4

    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    invoke-static {v7, v4, p0}, LK/I;->e0(FII)I

    move-result v0

    filled-new-array {v0, p0}, [I

    move-result-object p0

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v5, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance p0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v0, v3, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/o;->q:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/o;->q:Landroid/view/accessibility/AccessibilityManager;

    new-instance v1, LL/b;

    iget-object p0, p0, Lcom/google/android/material/textfield/o;->k:Landroidx/recyclerview/widget/y;

    invoke-direct {v1, p0}, LL/b;-><init>(Landroidx/recyclerview/widget/y;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_0
    return-void
.end method

.method public final g(FFFI)LU0/g;
    .locals 14

    move v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    new-instance v3, LU0/i;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, LU0/i;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, LU0/i;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, LU0/i;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, LU0/e;

    invoke-direct {v7, v2}, LU0/e;-><init>(I)V

    new-instance v8, LU0/e;

    invoke-direct {v8, v2}, LU0/e;-><init>(I)V

    new-instance v9, LU0/e;

    invoke-direct {v9, v2}, LU0/e;-><init>(I)V

    new-instance v10, LU0/e;

    invoke-direct {v10, v2}, LU0/e;-><init>(I)V

    new-instance v11, LU0/a;

    invoke-direct {v11, p1}, LU0/a;-><init>(F)V

    new-instance v12, LU0/a;

    invoke-direct {v12, p1}, LU0/a;-><init>(F)V

    new-instance v0, LU0/a;

    invoke-direct {v0, v1}, LU0/a;-><init>(F)V

    new-instance v13, LU0/a;

    invoke-direct {v13, v1}, LU0/a;-><init>(F)V

    new-instance v1, LU0/j;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v3, v1, LU0/j;->a:LR3/f;

    iput-object v4, v1, LU0/j;->b:LR3/f;

    iput-object v5, v1, LU0/j;->c:LR3/f;

    iput-object v6, v1, LU0/j;->d:LR3/f;

    iput-object v11, v1, LU0/j;->e:LU0/c;

    iput-object v12, v1, LU0/j;->f:LU0/c;

    iput-object v13, v1, LU0/j;->g:LU0/c;

    iput-object v0, v1, LU0/j;->h:LU0/c;

    iput-object v7, v1, LU0/j;->i:LU0/e;

    iput-object v8, v1, LU0/j;->j:LU0/e;

    iput-object v9, v1, LU0/j;->k:LU0/e;

    iput-object v10, v1, LU0/j;->l:LU0/e;

    sget v0, LU0/g;->x:I

    sget v0, LF0/a;->colorSurface:I

    const-class v3, LU0/g;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    iget-object v4, v4, Lcom/google/android/material/textfield/p;->b:Landroid/content/Context;

    invoke-static {v4, v0, v3}, LK/I;->q0(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    new-instance v3, LU0/g;

    invoke-direct {v3}, LU0/g;-><init>()V

    invoke-virtual {v3, v4}, LU0/g;->h(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v3, v0}, LU0/g;->j(Landroid/content/res/ColorStateList;)V

    move/from16 v0, p3

    invoke-virtual {v3, v0}, LU0/g;->i(F)V

    invoke-virtual {v3, v1}, LU0/g;->a(LU0/j;)V

    iget-object v0, v3, LU0/g;->d:LU0/f;

    iget-object v1, v0, LU0/f;->g:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, LU0/f;->g:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, v3, LU0/g;->d:LU0/f;

    iget-object v0, v0, LU0/f;->g:Landroid/graphics/Rect;

    move/from16 v1, p4

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v3}, LU0/g;->invalidateSelf()V

    return-object v3
.end method

.method public final i(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/o;->m:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/o;->m:Z

    iget-object p1, p0, Lcom/google/android/material/textfield/o;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p0, p0, Lcom/google/android/material/textfield/o;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
