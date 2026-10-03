.class public Lcom/google/android/material/chip/ChipGroup;
.super Lcom/google/android/material/internal/e;
.source "SourceFile"


# static fields
.field public static final m:I


# instance fields
.field public final h:I

.field public final i:I

.field public final j:Lcom/google/android/material/internal/a;

.field public final k:I

.field public final l:LM0/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, LF0/i;->Widget_MaterialComponents_ChipGroup:I

    sput v0, Lcom/google/android/material/chip/ChipGroup;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    sget v3, LF0/a;->chipGroupStyle:I

    sget v4, Lcom/google/android/material/chip/ChipGroup;->m:I

    invoke-static {p1, p2, v3, v4}, LY0/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/android/material/internal/e;->f:Z

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, LF0/j;->FlowLayout:[I

    invoke-virtual {p1, p2, v0, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, LF0/j;->FlowLayout_lineSpacing:I

    invoke-virtual {p1, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/e;->d:I

    sget v0, LF0/j;->FlowLayout_itemSpacing:I

    invoke-virtual {p1, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/e;->e:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lcom/google/android/material/internal/a;

    invoke-direct {p1}, Lcom/google/android/material/internal/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->j:Lcom/google/android/material/internal/a;

    new-instance v0, LM0/h;

    invoke-direct {v0, p0}, LM0/h;-><init>(Lcom/google/android/material/chip/ChipGroup;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->l:LM0/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, LF0/j;->ChipGroup:[I

    new-array v5, v6, [I

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/l;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, LF0/j;->ChipGroup_chipSpacing:I

    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    sget v1, LF0/j;->ChipGroup_chipSpacingHorizontal:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/chip/ChipGroup;->h:I

    if-eq v2, v1, :cond_0

    iput v1, p0, Lcom/google/android/material/chip/ChipGroup;->h:I

    iput v1, p0, Lcom/google/android/material/internal/e;->e:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    sget v1, LF0/j;->ChipGroup_chipSpacingVertical:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    iput v0, p0, Lcom/google/android/material/internal/e;->d:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    sget v0, LF0/j;->ChipGroup_singleLine:I

    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/internal/e;->f:Z

    sget v0, LF0/j;->ChipGroup_singleSelection:I

    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iget-boolean v1, p1, Lcom/google/android/material/internal/a;->a:Z

    if-eq v1, v0, :cond_3

    iput-boolean v0, p1, Lcom/google/android/material/internal/a;->a:Z

    iget-object v0, p1, Lcom/google/android/material/internal/a;->d:Ljava/io/Serializable;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    iget-object v1, p1, Lcom/google/android/material/internal/a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/f;

    invoke-virtual {p1, v2, v6}, Lcom/google/android/material/internal/a;->c(Lcom/google/android/material/internal/f;Z)Z

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/material/internal/a;->b()V

    :cond_3
    sget p1, LF0/j;->ChipGroup_selectionRequired:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->j:Lcom/google/android/material/internal/a;

    iput-boolean p1, v0, Lcom/google/android/material/internal/a;->b:Z

    sget p1, LF0/j;->ChipGroup_checkedChip:I

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->k:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->j:Lcom/google/android/material/internal/a;

    new-instance p2, LA1/e;

    invoke-direct {p2, p0}, LA1/e;-><init>(Ljava/lang/Object;)V

    iput-object p2, p1, Lcom/google/android/material/internal/a;->e:Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->l:LM0/h;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    sget-object p1, LK/D;->a:Ljava/util/WeakHashMap;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, LM0/g;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance p0, LM0/g;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, LM0/g;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 3
    new-instance p0, LM0/g;

    .line 4
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const/4 v0, -0x1

    iget v1, p0, Lcom/google/android/material/chip/ChipGroup;->k:I

    if-eq v1, v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup;->j:Lcom/google/android/material/internal/a;

    iget-object v0, p0, Lcom/google/android/material/internal/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/f;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/a;->a(Lcom/google/android/material/internal/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-boolean v0, p0, Lcom/google/android/material/internal/e;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/material/chip/Chip;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :cond_2
    iget v0, p0, Lcom/google/android/material/internal/e;->g:I

    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup;->j:Lcom/google/android/material/internal/a;

    iget-boolean p0, p0, Lcom/google/android/material/internal/a;->a:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x2

    :goto_1
    invoke-static {v0, v2, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public final setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup;->l:LM0/h;

    iput-object p1, p0, LM0/h;->a:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method
