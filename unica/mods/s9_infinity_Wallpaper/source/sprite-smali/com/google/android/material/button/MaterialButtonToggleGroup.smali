.class public Lcom/google/android/material/button/MaterialButtonToggleGroup;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final n:I


# instance fields
.field public final d:Ljava/util/ArrayList;

.field public final e:Landroidx/recyclerview/widget/y;

.field public final f:Ljava/util/LinkedHashSet;

.field public final g:LJ4/A;

.field public h:[Ljava/lang/Integer;

.field public i:Z

.field public final j:Z

.field public final k:Z

.field public final l:I

.field public m:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, LF0/i;->Widget_MaterialComponents_MaterialButtonToggleGroup:I

    sput v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v0, 0x1

    sget v4, LF0/a;->materialButtonToggleGroupStyle:I

    sget v5, Lcom/google/android/material/button/MaterialButtonToggleGroup;->n:I

    invoke-static {p1, p2, v4, v5}, LY0/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d:Ljava/util/ArrayList;

    new-instance p1, Landroidx/recyclerview/widget/y;

    const/4 v1, 0x2

    invoke-direct {p1, v1, p0}, Landroidx/recyclerview/widget/y;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e:Landroidx/recyclerview/widget/y;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f:Ljava/util/LinkedHashSet;

    new-instance p1, LJ4/A;

    invoke-direct {p1, v0, p0}, LJ4/A;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->g:LJ4/A;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, LF0/j;->MaterialButtonToggleGroup:[I

    new-array v6, p1, [I

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/l;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v1, LF0/j;->MaterialButtonToggleGroup_singleSelection:I

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Z

    if-eq v2, v1, :cond_0

    iput-boolean v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d(Ljava/util/Set;)V

    :cond_0
    sget v1, LF0/j;->MaterialButtonToggleGroup_checkedButton:I

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l:I

    sget v1, LF0/j;->MaterialButtonToggleGroup_selectionRequired:I

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:Z

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v2, 0x1

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_7

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/google/android/material/button/MaterialButton;->g:Lcom/google/android/material/button/b;

    iget v6, v6, Lcom/google/android/material/button/b;->g:I

    goto :goto_3

    :cond_3
    move v6, v1

    :goto_3
    invoke-virtual {v5}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v5, v5, Lcom/google/android/material/button/MaterialButton;->g:Lcom/google/android/material/button/b;

    iget v5, v5, Lcom/google/android/material/button/b;->g:I

    goto :goto_4

    :cond_4
    move v5, v1

    :goto_4
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v7, :cond_5

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_5

    :cond_5
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v6, v7

    :goto_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    neg-int v5, v5

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_6

    :cond_6
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    neg-int v5, v5

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_6
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_a

    if-ne v2, v3, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_9

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_7

    :cond_9
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_a
    :goto_7
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/material/button/MaterialButton;

    if-nez v1, :cond_0

    const-string p0, "MaterialButtonToggleGroup"

    const-string p1, "Child views must be of type MaterialButton."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    sget-object p2, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    :cond_1
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result p3

    iget-object v1, p1, Lcom/google/android/material/button/MaterialButton;->g:Lcom/google/android/material/button/b;

    if-eqz p3, :cond_2

    iput-boolean p2, v1, Lcom/google/android/material/button/b;->o:Z

    :cond_2
    iget-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e:Landroidx/recyclerview/widget/y;

    iput-object p3, p1, Lcom/google/android/material/button/MaterialButton;->i:Landroidx/recyclerview/widget/y;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result p3

    if-eqz p3, :cond_5

    iput-boolean p2, v1, Lcom/google/android/material/button/b;->m:Z

    invoke-virtual {v1, v0}, Lcom/google/android/material/button/b;->b(Z)LU0/g;

    move-result-object p3

    invoke-virtual {v1, p2}, Lcom/google/android/material/button/b;->b(Z)LU0/g;

    move-result-object p2

    if-eqz p3, :cond_5

    iget v2, v1, Lcom/google/android/material/button/b;->g:I

    int-to-float v2, v2

    iget-object v3, v1, Lcom/google/android/material/button/b;->j:Landroid/content/res/ColorStateList;

    iget-object v4, p3, LU0/g;->d:LU0/f;

    iput v2, v4, LU0/f;->j:F

    invoke-virtual {p3}, LU0/g;->invalidateSelf()V

    iget-object v2, p3, LU0/g;->d:LU0/f;

    iget-object v4, v2, LU0/f;->d:Landroid/content/res/ColorStateList;

    if-eq v4, v3, :cond_3

    iput-object v3, v2, LU0/f;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {p3, v2}, LU0/g;->onStateChange([I)Z

    :cond_3
    if-eqz p2, :cond_5

    iget p3, v1, Lcom/google/android/material/button/b;->g:I

    int-to-float p3, p3

    iget-boolean v2, v1, Lcom/google/android/material/button/b;->m:Z

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/google/android/material/button/b;->a:Lcom/google/android/material/button/MaterialButton;

    sget v3, LF0/a;->colorSurface:I

    invoke-static {v2, v3}, LK/I;->z(Landroid/view/View;I)I

    move-result v2

    goto :goto_0

    :cond_4
    move v2, v0

    :goto_0
    iget-object v3, p2, LU0/g;->d:LU0/f;

    iput p3, v3, LU0/f;->j:F

    invoke-virtual {p2}, LU0/g;->invalidateSelf()V

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iget-object v2, p2, LU0/g;->d:LU0/f;

    iget-object v3, v2, LU0/f;->d:Landroid/content/res/ColorStateList;

    if-eq v3, p3, :cond_5

    iput-object p3, v2, LU0/f;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p3

    invoke-virtual {p2, p3}, LU0/g;->onStateChange([I)Z

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    iget-boolean p3, p1, Lcom/google/android/material/button/MaterialButton;->q:Z

    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b(IZ)V

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, v1, Lcom/google/android/material/button/b;->b:LU0/j;

    iget-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/material/button/d;

    iget-object v2, p2, LU0/j;->e:LU0/c;

    iget-object v3, p2, LU0/j;->h:LU0/c;

    iget-object v4, p2, LU0/j;->f:LU0/c;

    iget-object p2, p2, LU0/j;->g:LU0/c;

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/google/android/material/button/d;-><init>(LU0/c;LU0/c;LU0/c;LU0/c;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/google/android/material/button/c;

    invoke-direct {p2, p0, v0}, Lcom/google/android/material/button/c;-><init>(Landroid/view/View;I)V

    invoke-static {p1, p2}, LK/D;->f(Landroid/view/View;LK/b;)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(IZ)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Button ID is not valid: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MaterialButtonToggleGroup"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Z

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez p2, :cond_5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:Z

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_4

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d(Ljava/util/Set;)V

    :cond_5
    return-void
.end method

.method public final c(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d(Ljava/util/Set;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m:Ljava/util/HashSet;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/material/button/MaterialButton;

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v5, v4}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    iput-boolean v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eq v4, v5, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/timepicker/i;

    invoke-virtual {v4}, Lcom/google/android/material/timepicker/i;->a()V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->g:LJ4/A;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h:[Ljava/lang/Integer;

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final e()V
    .locals 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    move v1, v2

    :goto_4
    if-ge v1, v0, :cond_f

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    goto/16 :goto_9

    :cond_4
    invoke-virtual {v6}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, v6, Lcom/google/android/material/button/MaterialButton;->g:Lcom/google/android/material/button/b;

    iget-object v7, v7, Lcom/google/android/material/button/b;->b:LU0/j;

    invoke-virtual {v7}, LU0/j;->g()LU0/j;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/button/d;

    if-ne v3, v4, :cond_5

    goto :goto_7

    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v9

    if-nez v9, :cond_6

    move v9, v5

    goto :goto_5

    :cond_6
    move v9, v2

    :goto_5
    sget-object v10, Lcom/google/android/material/button/d;->e:LU0/a;

    if-ne v1, v3, :cond_9

    if-eqz v9, :cond_8

    invoke-static {p0}, Lcom/google/android/material/internal/m;->d(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v9, Lcom/google/android/material/button/d;

    iget-object v11, v8, Lcom/google/android/material/button/d;->b:LU0/c;

    iget-object v8, v8, Lcom/google/android/material/button/d;->c:LU0/c;

    invoke-direct {v9, v10, v10, v11, v8}, Lcom/google/android/material/button/d;-><init>(LU0/c;LU0/c;LU0/c;LU0/c;)V

    goto :goto_6

    :cond_7
    new-instance v9, Lcom/google/android/material/button/d;

    iget-object v11, v8, Lcom/google/android/material/button/d;->a:LU0/c;

    iget-object v8, v8, Lcom/google/android/material/button/d;->d:LU0/c;

    invoke-direct {v9, v11, v8, v10, v10}, Lcom/google/android/material/button/d;-><init>(LU0/c;LU0/c;LU0/c;LU0/c;)V

    :goto_6
    move-object v8, v9

    goto :goto_7

    :cond_8
    new-instance v9, Lcom/google/android/material/button/d;

    iget-object v11, v8, Lcom/google/android/material/button/d;->a:LU0/c;

    iget-object v8, v8, Lcom/google/android/material/button/d;->b:LU0/c;

    invoke-direct {v9, v11, v10, v8, v10}, Lcom/google/android/material/button/d;-><init>(LU0/c;LU0/c;LU0/c;LU0/c;)V

    goto :goto_6

    :cond_9
    if-ne v1, v4, :cond_c

    if-eqz v9, :cond_b

    invoke-static {p0}, Lcom/google/android/material/internal/m;->d(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_a

    new-instance v9, Lcom/google/android/material/button/d;

    iget-object v11, v8, Lcom/google/android/material/button/d;->a:LU0/c;

    iget-object v8, v8, Lcom/google/android/material/button/d;->d:LU0/c;

    invoke-direct {v9, v11, v8, v10, v10}, Lcom/google/android/material/button/d;-><init>(LU0/c;LU0/c;LU0/c;LU0/c;)V

    goto :goto_6

    :cond_a
    new-instance v9, Lcom/google/android/material/button/d;

    iget-object v11, v8, Lcom/google/android/material/button/d;->b:LU0/c;

    iget-object v8, v8, Lcom/google/android/material/button/d;->c:LU0/c;

    invoke-direct {v9, v10, v10, v11, v8}, Lcom/google/android/material/button/d;-><init>(LU0/c;LU0/c;LU0/c;LU0/c;)V

    goto :goto_6

    :cond_b
    new-instance v9, Lcom/google/android/material/button/d;

    iget-object v11, v8, Lcom/google/android/material/button/d;->d:LU0/c;

    iget-object v8, v8, Lcom/google/android/material/button/d;->c:LU0/c;

    invoke-direct {v9, v10, v11, v10, v8}, Lcom/google/android/material/button/d;-><init>(LU0/c;LU0/c;LU0/c;LU0/c;)V

    goto :goto_6

    :cond_c
    const/4 v8, 0x0

    :goto_7
    if-nez v8, :cond_d

    new-instance v8, LU0/a;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, LU0/a;-><init>(F)V

    iput-object v8, v7, LU0/j;->e:LU0/c;

    new-instance v8, LU0/a;

    invoke-direct {v8, v9}, LU0/a;-><init>(F)V

    iput-object v8, v7, LU0/j;->f:LU0/c;

    new-instance v8, LU0/a;

    invoke-direct {v8, v9}, LU0/a;-><init>(F)V

    iput-object v8, v7, LU0/j;->g:LU0/c;

    new-instance v8, LU0/a;

    invoke-direct {v8, v9}, LU0/a;-><init>(F)V

    iput-object v8, v7, LU0/j;->h:LU0/c;

    goto :goto_8

    :cond_d
    iget-object v9, v8, Lcom/google/android/material/button/d;->a:LU0/c;

    iput-object v9, v7, LU0/j;->e:LU0/c;

    iget-object v9, v8, Lcom/google/android/material/button/d;->d:LU0/c;

    iput-object v9, v7, LU0/j;->h:LU0/c;

    iget-object v9, v8, Lcom/google/android/material/button/d;->b:LU0/c;

    iput-object v9, v7, LU0/j;->f:LU0/c;

    iget-object v8, v8, Lcom/google/android/material/button/d;->c:LU0/c;

    iput-object v8, v7, LU0/j;->g:LU0/c;

    :goto_8
    invoke-virtual {v7}, LU0/j;->a()LU0/j;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/button/MaterialButton;->a(LU0/j;)V

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    return-void
.end method

.method public final getChildDrawingOrder(II)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h:[Ljava/lang/Integer;

    if-eqz p0, :cond_1

    array-length p1, p0

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, p0, p2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "MaterialButtonToggleGroup"

    const-string p1, "Child order wasn\'t updated"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const/4 v0, -0x1

    iget v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l:I

    if-eq v1, v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/material/button/MaterialButton;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:Z

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_1

    :cond_2
    const/4 p0, 0x2

    :goto_1
    invoke-static {v1, v2, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e()V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a()V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/material/button/MaterialButton;->i:Landroidx/recyclerview/widget/y;

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e()V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->a()V

    return-void
.end method
