.class public final Lcom/google/android/material/textfield/v;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public final d:Lcom/google/android/material/textfield/TextInputLayout;

.field public final e:Landroidx/appcompat/widget/X;

.field public final f:Ljava/lang/CharSequence;

.field public final g:Lcom/google/android/material/internal/CheckableImageButton;

.field public final h:Landroid/content/res/ColorStateList;

.field public final i:Landroid/graphics/PorterDuff$Mode;

.field public j:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Ln1/a;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const v5, 0x800003

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v5, LF0/g;->design_text_input_start_icon:I

    invoke-virtual {v2, v5, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v2, p0, Lcom/google/android/material/textfield/v;->g:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v5, Landroidx/appcompat/widget/X;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/widget/X;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v5, p0, Lcom/google/android/material/textfield/v;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, LK/I;->a0(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_0
    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2}, La4/x;->Z(Lcom/google/android/material/internal/CheckableImageButton;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {v2}, La4/x;->Z(Lcom/google/android/material/internal/CheckableImageButton;)V

    sget v6, LF0/j;->TextInputLayout_startIconTint:I

    iget-object v8, p2, Ln1/a;->b:Ljava/lang/Object;

    check-cast v8, Landroid/content/res/TypedArray;

    invoke-virtual {v8, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v9, LF0/j;->TextInputLayout_startIconTint:I

    invoke-static {v6, p2, v9}, LK/I;->B(Landroid/content/Context;Ln1/a;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/material/textfield/v;->h:Landroid/content/res/ColorStateList;

    :cond_1
    sget v6, LF0/j;->TextInputLayout_startIconTintMode:I

    invoke-virtual {v8, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    sget v6, LF0/j;->TextInputLayout_startIconTintMode:I

    invoke-virtual {v8, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-static {v4, v7}, Lcom/google/android/material/internal/m;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/textfield/v;->i:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    sget v4, LF0/j;->TextInputLayout_startIconDrawable:I

    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_8

    sget v4, LF0/j;->TextInputLayout_startIconDrawable:I

    invoke-virtual {p2, v4}, Ln1/a;->k(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/x;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/material/textfield/v;->h:Landroid/content/res/ColorStateList;

    iget-object v9, p0, Lcom/google/android/material/textfield/v;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v2, v4, v9}, La4/x;->n(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/v;->a()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/v;->b()V

    :goto_0
    iget-object v4, p0, Lcom/google/android/material/textfield/v;->h:Landroid/content/res/ColorStateList;

    invoke-static {p1, v2, v4}, La4/x;->X(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/v;->a()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/v;->b()V

    :cond_5
    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2}, La4/x;->Z(Lcom/google/android/material/internal/CheckableImageButton;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {v2}, La4/x;->Z(Lcom/google/android/material/internal/CheckableImageButton;)V

    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {v2, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    sget p1, LF0/j;->TextInputLayout_startIconContentDescription:I

    invoke-virtual {v8, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, LF0/j;->TextInputLayout_startIconContentDescription:I

    invoke-virtual {v8, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    if-eq v4, p1, :cond_7

    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    sget p1, LF0/j;->TextInputLayout_startIconCheckable:I

    invoke-virtual {v8, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iget-boolean v4, v2, Lcom/google/android/material/internal/CheckableImageButton;->h:Z

    if-eq v4, p1, :cond_8

    iput-boolean p1, v2, Lcom/google/android/material/internal/CheckableImageButton;->h:Z

    invoke-virtual {v2, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_8
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    sget p1, LF0/e;->textinput_prefix_text:I

    invoke-virtual {v5, p1}, Landroid/view/View;->setId(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v6}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    sget p1, LF0/j;->TextInputLayout_prefixTextAppearance:I

    invoke-virtual {v8, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    sget p1, LF0/j;->TextInputLayout_prefixTextColor:I

    invoke-virtual {v8, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_9

    sget p1, LF0/j;->TextInputLayout_prefixTextColor:I

    invoke-virtual {p2, p1}, Ln1/a;->j(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_9
    sget p1, LF0/j;->TextInputLayout_prefixText:I

    invoke-virtual {v8, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_2

    :cond_a
    move-object v7, p1

    :goto_2
    iput-object v7, p0, Lcom/google/android/material/textfield/v;->f:Ljava/lang/CharSequence;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/v;->b()V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/textfield/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/v;->g:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, LF0/c;->material_input_text_to_prefix_suffix_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    sget-object v4, LK/D;->a:Ljava/util/WeakHashMap;

    iget-object p0, p0, Lcom/google/android/material/textfield/v;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/v;->f:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/v;->j:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/textfield/v;->g:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/material/textfield/v;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/google/android/material/textfield/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->D()Z

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/v;->a()V

    return-void
.end method
