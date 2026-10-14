.class public Lcom/google/android/material/textfield/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/textfield/TextInputLayout$SavedState;
    }
.end annotation


# static fields
.field public static final I0:I


# instance fields
.field public A:Lj0/h;

.field public final A0:I

.field public final B:Landroid/content/res/ColorStateList;

.field public B0:Z

.field public final C:Landroid/content/res/ColorStateList;

.field public final C0:Lcom/google/android/material/internal/c;

.field public final D:Ljava/lang/CharSequence;

.field public final D0:Z

.field public final E:Landroidx/appcompat/widget/X;

.field public final E0:Z

.field public final F:Z

.field public F0:Landroid/animation/ValueAnimator;

.field public G:Ljava/lang/CharSequence;

.field public G0:Z

.field public H:Z

.field public H0:Z

.field public I:LU0/g;

.field public J:LU0/g;

.field public K:LU0/g;

.field public L:LU0/j;

.field public M:Z

.field public final N:I

.field public final O:I

.field public P:I

.field public Q:I

.field public final R:I

.field public final S:I

.field public T:I

.field public U:I

.field public final V:Landroid/graphics/Rect;

.field public final W:Landroid/graphics/Rect;

.field public final a0:Landroid/graphics/RectF;

.field public b0:Landroid/graphics/drawable/ColorDrawable;

.field public c0:I

.field public final d:Landroid/widget/FrameLayout;

.field public final d0:Ljava/util/LinkedHashSet;

.field public final e:Lcom/google/android/material/textfield/v;

.field public e0:I

.field public final f:Landroid/widget/LinearLayout;

.field public final f0:Landroid/util/SparseArray;

.field public final g:Landroid/widget/FrameLayout;

.field public final g0:Lcom/google/android/material/internal/CheckableImageButton;

.field public h:Landroid/widget/EditText;

.field public final h0:Ljava/util/LinkedHashSet;

.field public i:Ljava/lang/CharSequence;

.field public final i0:Landroid/content/res/ColorStateList;

.field public j:I

.field public final j0:Landroid/graphics/PorterDuff$Mode;

.field public k:I

.field public k0:Landroid/graphics/drawable/ColorDrawable;

.field public l:I

.field public l0:I

.field public m:I

.field public m0:Landroid/graphics/drawable/Drawable;

.field public final n:Lcom/google/android/material/textfield/s;

.field public final n0:Lcom/google/android/material/internal/CheckableImageButton;

.field public final o:Z

.field public final o0:Landroid/content/res/ColorStateList;

.field public final p:I

.field public final p0:Landroid/graphics/PorterDuff$Mode;

.field public q:Z

.field public q0:Landroid/content/res/ColorStateList;

.field public final r:Landroidx/appcompat/widget/X;

.field public final r0:Landroid/content/res/ColorStateList;

.field public final s:I

.field public final s0:I

.field public final t:I

.field public final t0:I

.field public u:Ljava/lang/CharSequence;

.field public final u0:I

.field public v:Z

.field public final v0:Landroid/content/res/ColorStateList;

.field public w:Landroidx/appcompat/widget/X;

.field public final w0:I

.field public final x:Landroid/content/res/ColorStateList;

.field public final x0:I

.field public y:I

.field public final y0:I

.field public z:Lj0/h;

.field public final z0:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, LF0/i;->Widget_Design_TextInputLayout:I

    sput v0, Lcom/google/android/material/textfield/TextInputLayout;->I0:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    const/4 v8, 0x1

    const/4 v9, 0x0

    sget v10, LF0/a;->textInputStyle:I

    sget v11, Lcom/google/android/material/textfield/TextInputLayout;->I0:I

    move-object/from16 v1, p1

    invoke-static {v1, v7, v10, v11}, LY0/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v12, -0x1

    iput v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    iput v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    iput v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    iput v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->m:I

    new-instance v13, Lcom/google/android/material/textfield/s;

    invoke-direct {v13, v0}, Lcom/google/android/material/textfield/s;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v13, v0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lcom/google/android/material/textfield/s;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->W:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/RectF;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Ljava/util/LinkedHashSet;

    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->e0:I

    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    iput-object v14, v0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Ljava/util/LinkedHashSet;

    new-instance v15, Lcom/google/android/material/internal/c;

    invoke-direct {v15, v0}, Lcom/google/android/material/internal/c;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v15, v0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Lcom/google/android/material/internal/c;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/LinearLayout;

    new-instance v2, Landroidx/appcompat/widget/X;

    const/4 v1, 0x0

    invoke-direct {v2, v6, v1}, Landroidx/appcompat/widget/X;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroidx/appcompat/widget/X;

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v12, LF0/g;->design_text_input_end_icon:I

    invoke-virtual {v1, v12, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Lcom/google/android/material/internal/CheckableImageButton;

    sget v8, LF0/g;->design_text_input_end_icon:I

    invoke-virtual {v1, v8, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const v9, 0x800005

    move-object/from16 v16, v13

    const/4 v13, -0x2

    move-object/from16 v17, v2

    const/4 v2, -0x1

    invoke-direct {v1, v13, v2, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v13, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, LG0/a;->a:Landroid/view/animation/LinearInterpolator;

    iput-object v1, v15, Lcom/google/android/material/internal/c;->O:Landroid/view/animation/LinearInterpolator;

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/google/android/material/internal/c;->i(Z)V

    iput-object v1, v15, Lcom/google/android/material/internal/c;->N:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v15, v2}, Lcom/google/android/material/internal/c;->i(Z)V

    iget v1, v15, Lcom/google/android/material/internal/c;->h:I

    const v9, 0x800033

    if-eq v1, v9, :cond_0

    iput v9, v15, Lcom/google/android/material/internal/c;->h:I

    invoke-virtual {v15, v2}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_0
    sget-object v9, LF0/j;->TextInputLayout:[I

    sget v1, LF0/j;->TextInputLayout_counterTextAppearance:I

    sget v2, LF0/j;->TextInputLayout_counterOverflowTextAppearance:I

    sget v13, LF0/j;->TextInputLayout_errorTextAppearance:I

    move-object/from16 v18, v3

    sget v3, LF0/j;->TextInputLayout_helperTextTextAppearance:I

    move-object/from16 v19, v4

    sget v4, LF0/j;->TextInputLayout_hintTextAppearance:I

    filled-new-array {v1, v2, v13, v3, v4}, [I

    move-result-object v13

    invoke-static {v6, v7, v10, v11}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v4, 0x0

    move-object v1, v6

    move-object/from16 v3, v17

    move-object/from16 v2, p2

    move-object/from16 v21, v3

    move-object/from16 v20, v18

    move-object v3, v9

    move-object/from16 p1, v14

    move-object/from16 v22, v19

    move-object v14, v4

    move v4, v10

    move-object/from16 v23, v5

    move v5, v11

    move-object v14, v6

    move-object v6, v13

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/l;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    new-instance v1, Ln1/a;

    invoke-virtual {v14, v7, v9, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-direct {v1, v14, v2}, Ln1/a;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    new-instance v3, Lcom/google/android/material/textfield/v;

    invoke-direct {v3, v0, v1}, Lcom/google/android/material/textfield/v;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Ln1/a;)V

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lcom/google/android/material/textfield/v;

    sget v4, LF0/j;->TextInputLayout_hintEnabled:I

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    sget v4, LF0/j;->TextInputLayout_android_hint:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->w(Ljava/lang/CharSequence;)V

    sget v4, LF0/j;->TextInputLayout_hintAnimationEnabled:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->E0:Z

    sget v4, LF0/j;->TextInputLayout_expandedHintEnabled:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->D0:Z

    sget v4, LF0/j;->TextInputLayout_android_minEms:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, LF0/j;->TextInputLayout_android_minEms:I

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v6, :cond_2

    if-eq v4, v5, :cond_2

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setMinEms(I)V

    goto :goto_0

    :cond_1
    sget v4, LF0/j;->TextInputLayout_android_minWidth:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, LF0/j;->TextInputLayout_android_minWidth:I

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v6, :cond_2

    if-eq v4, v5, :cond_2

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setMinWidth(I)V

    :cond_2
    :goto_0
    sget v4, LF0/j;->TextInputLayout_android_maxEms:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, LF0/j;->TextInputLayout_android_maxEms:I

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v6, :cond_4

    if-eq v4, v5, :cond_4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setMaxEms(I)V

    goto :goto_1

    :cond_3
    sget v4, LF0/j;->TextInputLayout_android_maxWidth:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    sget v4, LF0/j;->TextInputLayout_android_maxWidth:I

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->m:I

    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v6, :cond_4

    if-eq v4, v5, :cond_4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_4
    :goto_1
    invoke-static {v14, v7, v10, v11}, LU0/j;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)LU0/j;

    move-result-object v4

    invoke-virtual {v4}, LU0/j;->a()LU0/j;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->L:LU0/j;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, LF0/c;->mtrl_textinput_box_label_cutout_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    sget v4, LF0/j;->TextInputLayout_boxCollapsedPaddingTop:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    sget v4, LF0/j;->TextInputLayout_boxStrokeWidth:I

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, LF0/c;->mtrl_textinput_box_stroke_width_default:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    sget v5, LF0/j;->TextInputLayout_boxStrokeWidthFocused:I

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, LF0/c;->mtrl_textinput_box_stroke_width_focused:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    sget v4, LF0/j;->TextInputLayout_boxCornerRadiusTopStart:I

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    sget v6, LF0/j;->TextInputLayout_boxCornerRadiusTopEnd:I

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    sget v7, LF0/j;->TextInputLayout_boxCornerRadiusBottomEnd:I

    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    sget v9, LF0/j;->TextInputLayout_boxCornerRadiusBottomStart:I

    invoke-virtual {v2, v9, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iget-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->L:LU0/j;

    invoke-virtual {v9}, LU0/j;->g()LU0/j;

    move-result-object v9

    const/4 v10, 0x0

    cmpl-float v11, v4, v10

    if-ltz v11, :cond_5

    new-instance v11, LU0/a;

    invoke-direct {v11, v4}, LU0/a;-><init>(F)V

    iput-object v11, v9, LU0/j;->e:LU0/c;

    :cond_5
    cmpl-float v4, v6, v10

    if-ltz v4, :cond_6

    new-instance v4, LU0/a;

    invoke-direct {v4, v6}, LU0/a;-><init>(F)V

    iput-object v4, v9, LU0/j;->f:LU0/c;

    :cond_6
    cmpl-float v4, v7, v10

    if-ltz v4, :cond_7

    new-instance v4, LU0/a;

    invoke-direct {v4, v7}, LU0/a;-><init>(F)V

    iput-object v4, v9, LU0/j;->g:LU0/c;

    :cond_7
    cmpl-float v4, v5, v10

    if-ltz v4, :cond_8

    new-instance v4, LU0/a;

    invoke-direct {v4, v5}, LU0/a;-><init>(F)V

    iput-object v4, v9, LU0/j;->h:LU0/c;

    :cond_8
    invoke-virtual {v9}, LU0/j;->a()LU0/j;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->L:LU0/j;

    sget v4, LF0/j;->TextInputLayout_boxBackgroundColor:I

    invoke-static {v14, v1, v4}, LK/I;->B(Landroid/content/Context;Ln1/a;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const v5, 0x101009c

    const v6, 0x1010367

    const v7, 0x101009e

    const v9, -0x101009e

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v11

    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->w0:I

    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v13

    if-eqz v13, :cond_9

    filled-new-array {v9}, [I

    move-result-object v11

    const/4 v13, -0x1

    invoke-virtual {v4, v11, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v11

    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->x0:I

    filled-new-array {v5, v7}, [I

    move-result-object v11

    invoke-virtual {v4, v11, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v11

    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->y0:I

    filled-new-array {v6, v7}, [I

    move-result-object v11

    invoke-virtual {v4, v11, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I

    goto :goto_2

    :cond_9
    const/4 v13, -0x1

    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->y0:I

    sget v4, LF0/b;->mtrl_filled_background_color:I

    invoke-static {v14, v4}, Le0/a;->C(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    filled-new-array {v9}, [I

    move-result-object v11

    invoke-virtual {v4, v11, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v11

    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->x0:I

    filled-new-array {v6}, [I

    move-result-object v11

    invoke-virtual {v4, v11, v13}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->w0:I

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->x0:I

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->y0:I

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I

    :goto_2
    sget v4, LF0/j;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_b

    sget v4, LF0/j;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v1, v4}, Ln1/a;->j(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->r0:Landroid/content/res/ColorStateList;

    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Landroid/content/res/ColorStateList;

    :cond_b
    sget v4, LF0/j;->TextInputLayout_boxStrokeColor:I

    invoke-static {v14, v1, v4}, LK/I;->B(Landroid/content/Context;Ln1/a;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    sget v11, LF0/j;->TextInputLayout_boxStrokeColor:I

    const/4 v13, 0x0

    invoke-virtual {v2, v11, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->u0:I

    sget v11, LF0/b;->mtrl_textinput_default_box_stroke_color:I

    invoke-virtual {v14, v11}, Landroid/content/Context;->getColor(I)I

    move-result v11

    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->s0:I

    sget v11, LF0/b;->mtrl_textinput_disabled_color:I

    invoke-virtual {v14, v11}, Landroid/content/Context;->getColor(I)I

    move-result v11

    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->A0:I

    sget v11, LF0/b;->mtrl_textinput_hovered_box_stroke_color:I

    invoke-virtual {v14, v11}, Landroid/content/Context;->getColor(I)I

    move-result v11

    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->t0:I

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v11

    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->s0:I

    filled-new-array {v9}, [I

    move-result-object v9

    const/4 v11, -0x1

    invoke-virtual {v4, v9, v11}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v9

    iput v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->A0:I

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-virtual {v4, v6, v11}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->t0:I

    filled-new-array {v5, v7}, [I

    move-result-object v5

    invoke-virtual {v4, v5, v11}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->u0:I

    goto :goto_3

    :cond_c
    iget v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->u0:I

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    if-eq v5, v6, :cond_d

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->u0:I

    :cond_d
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->N()V

    :cond_e
    sget v4, LF0/j;->TextInputLayout_boxStrokeErrorColor:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_f

    sget v4, LF0/j;->TextInputLayout_boxStrokeErrorColor:I

    invoke-static {v14, v1, v4}, LK/I;->B(Landroid/content/Context;Ln1/a;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    if-eq v5, v4, :cond_f

    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->N()V

    :cond_f
    sget v4, LF0/j;->TextInputLayout_hintTextAppearance:I

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eq v4, v5, :cond_14

    sget v4, LF0/j;->TextInputLayout_hintTextAppearance:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    new-instance v5, LR0/d;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v4}, LR0/d;-><init>(Landroid/content/Context;I)V

    iget-object v4, v5, LR0/d;->j:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_10

    iput-object v4, v15, Lcom/google/android/material/internal/c;->l:Landroid/content/res/ColorStateList;

    :cond_10
    iget v4, v5, LR0/d;->k:F

    cmpl-float v6, v4, v10

    if-eqz v6, :cond_11

    iput v4, v15, Lcom/google/android/material/internal/c;->j:F

    :cond_11
    iget-object v4, v5, LR0/d;->a:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_12

    iput-object v4, v15, Lcom/google/android/material/internal/c;->S:Landroid/content/res/ColorStateList;

    :cond_12
    iget v4, v5, LR0/d;->e:F

    iput v4, v15, Lcom/google/android/material/internal/c;->Q:F

    iget v4, v5, LR0/d;->f:F

    iput v4, v15, Lcom/google/android/material/internal/c;->R:F

    iget v4, v5, LR0/d;->g:F

    iput v4, v15, Lcom/google/android/material/internal/c;->P:F

    iget v4, v5, LR0/d;->i:F

    iput v4, v15, Lcom/google/android/material/internal/c;->T:F

    iget-object v4, v15, Lcom/google/android/material/internal/c;->z:LR0/a;

    if-eqz v4, :cond_13

    const/4 v6, 0x1

    iput-boolean v6, v4, LR0/a;->c:Z

    :cond_13
    new-instance v4, LR0/a;

    new-instance v6, Landroidx/recyclerview/widget/y;

    const/4 v7, 0x4

    invoke-direct {v6, v7, v15}, Landroidx/recyclerview/widget/y;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5}, LR0/d;->a()V

    iget-object v7, v5, LR0/d;->n:Landroid/graphics/Typeface;

    invoke-direct {v4, v6, v7}, LR0/a;-><init>(Landroidx/recyclerview/widget/y;Landroid/graphics/Typeface;)V

    iput-object v4, v15, Lcom/google/android/material/internal/c;->z:LR0/a;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, v15, Lcom/google/android/material/internal/c;->z:LR0/a;

    invoke-virtual {v5, v4, v6}, LR0/d;->c(Landroid/content/Context;LK/I;)V

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lcom/google/android/material/internal/c;->i(Z)V

    iget-object v5, v15, Lcom/google/android/material/internal/c;->l:Landroid/content/res/ColorStateList;

    iput-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->r0:Landroid/content/res/ColorStateList;

    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v5, :cond_15

    invoke-virtual {v0, v4, v4}, Lcom/google/android/material/textfield/TextInputLayout;->I(ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->H()V

    goto :goto_4

    :cond_14
    const/4 v4, 0x0

    :cond_15
    :goto_4
    sget v5, LF0/j;->TextInputLayout_errorTextAppearance:I

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    sget v6, LF0/j;->TextInputLayout_errorContentDescription:I

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    sget v7, LF0/j;->TextInputLayout_errorEnabled:I

    invoke-virtual {v2, v7, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    sget v9, LF0/e;->text_input_error_icon:I

    invoke-virtual {v12, v9}, Landroid/view/View;->setId(I)V

    invoke-static {v14}, LK/I;->a0(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_16
    sget v4, LF0/j;->TextInputLayout_errorIconTint:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_17

    sget v4, LF0/j;->TextInputLayout_errorIconTint:I

    invoke-static {v14, v1, v4}, LK/I;->B(Landroid/content/Context;Ln1/a;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/content/res/ColorStateList;

    :cond_17
    sget v4, LF0/j;->TextInputLayout_errorIconTintMode:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_18

    sget v4, LF0/j;->TextInputLayout_errorIconTintMode:I

    const/4 v9, -0x1

    invoke-virtual {v2, v4, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/4 v9, 0x0

    invoke-static {v4, v9}, Lcom/google/android/material/internal/m;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->p0:Landroid/graphics/PorterDuff$Mode;

    :cond_18
    sget v4, LF0/j;->TextInputLayout_errorIconDrawable:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_19

    sget v4, LF0/j;->TextInputLayout_errorIconDrawable:I

    invoke-virtual {v1, v4}, Ln1/a;->k(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroidx/appcompat/widget/x;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->G()V

    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/content/res/ColorStateList;

    iget-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->p0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v12, v4, v9}, La4/x;->n(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v9, LF0/h;->error_icon_content_description:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v4, LK/D;->a:Ljava/util/WeakHashMap;

    const/4 v4, 0x2

    invoke-virtual {v12, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Landroid/view/View;->setClickable(Z)V

    iput-boolean v9, v12, Lcom/google/android/material/internal/CheckableImageButton;->i:Z

    invoke-virtual {v12, v9}, Landroid/view/View;->setFocusable(Z)V

    sget v10, LF0/j;->TextInputLayout_helperTextTextAppearance:I

    invoke-virtual {v2, v10, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    sget v11, LF0/j;->TextInputLayout_helperTextEnabled:I

    invoke-virtual {v2, v11, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    sget v13, LF0/j;->TextInputLayout_helperText:I

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    sget v4, LF0/j;->TextInputLayout_placeholderTextAppearance:I

    invoke-virtual {v2, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    sget v9, LF0/j;->TextInputLayout_placeholderText:I

    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    move-object/from16 v18, v13

    sget v13, LF0/j;->TextInputLayout_suffixTextAppearance:I

    move/from16 v19, v7

    const/4 v7, 0x0

    invoke-virtual {v2, v13, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    sget v7, LF0/j;->TextInputLayout_suffixText:I

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v24, v7

    sget v7, LF0/j;->TextInputLayout_counterEnabled:I

    move/from16 v25, v11

    const/4 v11, 0x0

    invoke-virtual {v2, v7, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    sget v11, LF0/j;->TextInputLayout_counterMaxLength:I

    move/from16 v26, v7

    const/4 v7, -0x1

    invoke-virtual {v2, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iget v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    if-eq v7, v11, :cond_1c

    if-lez v11, :cond_1a

    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    goto :goto_5

    :cond_1a
    const/4 v7, -0x1

    iput v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    :goto_5
    iget-boolean v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->o:Z

    if-eqz v7, :cond_1c

    iget-object v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/X;

    if-eqz v7, :cond_1c

    iget-object v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-nez v7, :cond_1b

    const/4 v7, 0x0

    goto :goto_6

    :cond_1b
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    :goto_6
    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->B(I)V

    :cond_1c
    sget v7, LF0/j;->TextInputLayout_counterTextAppearance:I

    const/4 v11, 0x0

    invoke-virtual {v2, v7, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    sget v7, LF0/j;->TextInputLayout_counterOverflowTextAppearance:I

    invoke-virtual {v2, v7, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->s:I

    sget v7, LF0/j;->TextInputLayout_boxBackgroundMode:I

    invoke-virtual {v2, v7, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iget v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    if-ne v7, v11, :cond_1d

    goto :goto_7

    :cond_1d
    iput v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    iget-object v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v7, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->k()V

    :cond_1e
    :goto_7
    invoke-static {v14}, LK/I;->a0(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_8

    :cond_1f
    const/4 v11, 0x0

    :goto_8
    sget v7, LF0/j;->TextInputLayout_endIconDrawable:I

    invoke-virtual {v2, v7, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    move-object/from16 v27, v3

    new-instance v3, Lcom/google/android/material/textfield/h;

    invoke-direct {v3, v0, v7, v11}, Lcom/google/android/material/textfield/h;-><init>(Lcom/google/android/material/textfield/TextInputLayout;II)V

    const/4 v11, -0x1

    move-object/from16 v29, v12

    move-object/from16 v12, p1

    move-object/from16 p1, v29

    invoke-virtual {v12, v11, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v3, Lcom/google/android/material/textfield/h;

    move-object/from16 v28, v15

    const/4 v11, 0x0

    const/4 v15, 0x1

    invoke-direct {v3, v0, v11, v15}, Lcom/google/android/material/textfield/h;-><init>(Lcom/google/android/material/textfield/TextInputLayout;II)V

    invoke-virtual {v12, v11, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v3, Lcom/google/android/material/textfield/u;

    if-nez v7, :cond_20

    sget v15, LF0/j;->TextInputLayout_passwordToggleDrawable:I

    invoke-virtual {v2, v15, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    goto :goto_9

    :cond_20
    move v15, v7

    :goto_9
    invoke-direct {v3, v0, v15}, Lcom/google/android/material/textfield/u;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    const/4 v11, 0x1

    invoke-virtual {v12, v11, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v3, Lcom/google/android/material/textfield/g;

    invoke-direct {v3, v0, v7}, Lcom/google/android/material/textfield/g;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    const/4 v11, 0x2

    invoke-virtual {v12, v11, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v3, Lcom/google/android/material/textfield/o;

    invoke-direct {v3, v0, v7}, Lcom/google/android/material/textfield/o;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    const/4 v7, 0x3

    invoke-virtual {v12, v7, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget v3, LF0/j;->TextInputLayout_passwordToggleEnabled:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_22

    sget v3, LF0/j;->TextInputLayout_endIconTint:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_21

    sget v3, LF0/j;->TextInputLayout_endIconTint:I

    invoke-static {v14, v1, v3}, LK/I;->B(Landroid/content/Context;Ln1/a;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    :cond_21
    sget v3, LF0/j;->TextInputLayout_endIconTintMode:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_22

    sget v3, LF0/j;->TextInputLayout_endIconTintMode:I

    const/4 v7, -0x1

    invoke-virtual {v2, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lcom/google/android/material/internal/m;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/graphics/PorterDuff$Mode;

    :cond_22
    sget v3, LF0/j;->TextInputLayout_endIconMode:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_24

    sget v3, LF0/j;->TextInputLayout_endIconMode:I

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->p(I)V

    sget v3, LF0/j;->TextInputLayout_endIconContentDescription:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_23

    sget v3, LF0/j;->TextInputLayout_endIconContentDescription:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->n(Ljava/lang/CharSequence;)V

    :cond_23
    sget v3, LF0/j;->TextInputLayout_endIconCheckable:I

    const/4 v7, 0x1

    invoke-virtual {v2, v3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iget-boolean v7, v8, Lcom/google/android/material/internal/CheckableImageButton;->h:Z

    if-eq v7, v3, :cond_27

    iput-boolean v3, v8, Lcom/google/android/material/internal/CheckableImageButton;->h:Z

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_a

    :cond_24
    sget v3, LF0/j;->TextInputLayout_passwordToggleEnabled:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_27

    sget v3, LF0/j;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_25

    sget v3, LF0/j;->TextInputLayout_passwordToggleTint:I

    invoke-static {v14, v1, v3}, LK/I;->B(Landroid/content/Context;Ln1/a;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    :cond_25
    sget v3, LF0/j;->TextInputLayout_passwordToggleTintMode:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_26

    sget v3, LF0/j;->TextInputLayout_passwordToggleTintMode:I

    const/4 v7, -0x1

    invoke-virtual {v2, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lcom/google/android/material/internal/m;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/graphics/PorterDuff$Mode;

    :cond_26
    sget v3, LF0/j;->TextInputLayout_passwordToggleEnabled:I

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->p(I)V

    sget v3, LF0/j;->TextInputLayout_passwordToggleContentDescription:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->n(Ljava/lang/CharSequence;)V

    :cond_27
    :goto_a
    sget v3, LF0/e;->textinput_suffix_text:I

    move-object/from16 v7, v21

    invoke-virtual {v7, v3}, Landroid/view/View;->setId(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v11, 0x50

    const/4 v12, -0x2

    invoke-direct {v3, v12, v12, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    move-object/from16 v3, v16

    iput-object v6, v3, Lcom/google/android/material/textfield/s;->m:Ljava/lang/CharSequence;

    iget-object v11, v3, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/X;

    if-eqz v11, :cond_28

    invoke-virtual {v11, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_28
    iput v10, v3, Lcom/google/android/material/textfield/s;->s:I

    iget-object v6, v3, Lcom/google/android/material/textfield/s;->r:Landroidx/appcompat/widget/X;

    if-eqz v6, :cond_29

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_29
    iput v5, v3, Lcom/google/android/material/textfield/s;->n:I

    iget-object v6, v3, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/X;

    if-eqz v6, :cond_2a

    iget-object v10, v3, Lcom/google/android/material/textfield/s;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v10, v6, v5}, Lcom/google/android/material/textfield/TextInputLayout;->A(Landroidx/appcompat/widget/X;I)V

    :cond_2a
    invoke-virtual {v0, v9}, Lcom/google/android/material/textfield/TextInputLayout;->y(Ljava/lang/CharSequence;)V

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->y:I

    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    if-eqz v5, :cond_2b

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_2b
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setTextAppearance(I)V

    sget v4, LF0/j;->TextInputLayout_errorTextColor:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    sget v4, LF0/j;->TextInputLayout_errorTextColor:I

    invoke-virtual {v1, v4}, Ln1/a;->j(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/material/textfield/s;->o:Landroid/content/res/ColorStateList;

    iget-object v5, v3, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/X;

    if-eqz v5, :cond_2c

    if-eqz v4, :cond_2c

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2c
    sget v4, LF0/j;->TextInputLayout_helperTextTextColor:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    sget v4, LF0/j;->TextInputLayout_helperTextTextColor:I

    invoke-virtual {v1, v4}, Ln1/a;->j(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/material/textfield/s;->t:Landroid/content/res/ColorStateList;

    iget-object v5, v3, Lcom/google/android/material/textfield/s;->r:Landroidx/appcompat/widget/X;

    if-eqz v5, :cond_2d

    if-eqz v4, :cond_2d

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2d
    sget v4, LF0/j;->TextInputLayout_hintTextColor:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    sget v4, LF0/j;->TextInputLayout_hintTextColor:I

    invoke-virtual {v1, v4}, Ln1/a;->j(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->r0:Landroid/content/res/ColorStateList;

    if-eq v5, v4, :cond_2f

    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_2e

    move-object/from16 v5, v28

    invoke-virtual {v5, v4}, Lcom/google/android/material/internal/c;->j(Landroid/content/res/ColorStateList;)V

    :cond_2e
    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->r0:Landroid/content/res/ColorStateList;

    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v4, :cond_2f

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4}, Lcom/google/android/material/textfield/TextInputLayout;->I(ZZ)V

    goto :goto_b

    :cond_2f
    const/4 v4, 0x0

    :goto_b
    sget v5, LF0/j;->TextInputLayout_counterTextColor:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_30

    sget v5, LF0/j;->TextInputLayout_counterTextColor:I

    invoke-virtual {v1, v5}, Ln1/a;->j(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    if-eq v6, v5, :cond_30

    iput-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->C()V

    :cond_30
    sget v5, LF0/j;->TextInputLayout_counterOverflowTextColor:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_31

    sget v5, LF0/j;->TextInputLayout_counterOverflowTextColor:I

    invoke-virtual {v1, v5}, Ln1/a;->j(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->C:Landroid/content/res/ColorStateList;

    if-eq v6, v5, :cond_31

    iput-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->C:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->C()V

    :cond_31
    sget v5, LF0/j;->TextInputLayout_placeholderTextColor:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_32

    sget v5, LF0/j;->TextInputLayout_placeholderTextColor:I

    invoke-virtual {v1, v5}, Ln1/a;->j(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/content/res/ColorStateList;

    if-eq v6, v5, :cond_32

    iput-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->x:Landroid/content/res/ColorStateList;

    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    if-eqz v6, :cond_32

    if-eqz v5, :cond_32

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_32
    sget v5, LF0/j;->TextInputLayout_suffixTextColor:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_33

    sget v5, LF0/j;->TextInputLayout_suffixTextColor:I

    invoke-virtual {v1, v5}, Ln1/a;->j(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_33
    sget v5, LF0/j;->TextInputLayout_android_enabled:I

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    invoke-virtual {v1}, Ln1/a;->w()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-static {v0, v6}, LK/z;->b(Landroid/view/View;I)V

    move-object/from16 v1, v22

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v2, v20

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v12, p1

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v1, v23

    move-object/from16 v5, v27

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->v(Z)V

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->t(Z)V

    iget-boolean v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->o:Z

    move/from16 v2, v26

    if-eq v1, v2, :cond_37

    if-eqz v2, :cond_36

    new-instance v1, Landroidx/appcompat/widget/X;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Landroidx/appcompat/widget/X;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/X;

    sget v5, LF0/e;->textinput_counter:I

    invoke-virtual {v1, v5}, Landroid/view/View;->setId(I)V

    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/X;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/X;

    const/4 v5, 0x2

    invoke-virtual {v3, v1, v5}, Lcom/google/android/material/textfield/s;->a(Landroidx/appcompat/widget/X;I)V

    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/X;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, LF0/c;->mtrl_textinput_counter_margin_start:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->C()V

    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/X;

    if-eqz v1, :cond_35

    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-nez v1, :cond_34

    move v9, v4

    goto :goto_c

    :cond_34
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    :goto_c
    invoke-virtual {v0, v9}, Lcom/google/android/material/textfield/TextInputLayout;->B(I)V

    :cond_35
    const/4 v1, 0x0

    goto :goto_d

    :cond_36
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/X;

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Lcom/google/android/material/textfield/s;->h(Landroidx/appcompat/widget/X;I)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/X;

    :goto_d
    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->o:Z

    :goto_e
    move-object/from16 v2, v18

    goto :goto_f

    :cond_37
    const/4 v1, 0x0

    goto :goto_e

    :goto_f
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->u(Ljava/lang/CharSequence;)V

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_10

    :cond_38
    move-object/from16 v1, v24

    :goto_10
    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    move-object/from16 v1, v24

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->M()V

    return-void
.end method

.method public static m(Landroid/view/ViewGroup;Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->m(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static x(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 2

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    iput-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->i:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setLongClickable(Z)V

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method public final A(Landroidx/appcompat/widget/X;I)V
    .locals 1

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v0, -0xff01

    if-ne p2, v0, :cond_0

    :catch_0
    sget p2, LF0/i;->TextAppearance_AppCompat_Caption:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, LF0/b;->design_error:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final B(I)V
    .locals 13

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/X;

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    goto/16 :goto_a

    :cond_0
    const/4 v6, 0x1

    if-le p1, v2, :cond_1

    move v7, v6

    goto :goto_0

    :cond_1
    move v7, v4

    :goto_0
    iput-boolean v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-boolean v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-eqz v8, :cond_2

    sget v8, LF0/h;->character_counter_overflowed_content_description:I

    goto :goto_1

    :cond_2
    sget v8, LF0/h;->character_counter_content_description:I

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-eq v1, v7, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->C()V

    :cond_3
    sget-object v7, LI/b;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v7

    if-ne v7, v6, :cond_4

    sget-object v7, LI/b;->e:LI/b;

    goto :goto_2

    :cond_4
    sget-object v7, LI/b;->d:LI/b;

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, LF0/h;->character_counter_pattern:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v8, v9, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_5

    goto/16 :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, LI/e;->c:LI/d;

    invoke-virtual {v3, p1, v2}, LI/d;->d(Ljava/lang/CharSequence;I)Z

    move-result v2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget-object v8, LI/b;->c:Ljava/lang/String;

    sget-object v9, LI/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    sget-object v10, LI/e;->b:LI/d;

    goto :goto_3

    :cond_6
    sget-object v10, LI/e;->a:LI/d;

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, p1, v11}, LI/d;->d(Ljava/lang/CharSequence;I)Z

    move-result v10

    const-string v11, ""

    iget-boolean v7, v7, LI/b;->a:Z

    if-nez v7, :cond_8

    if-nez v10, :cond_7

    invoke-static {p1}, LI/b;->a(Ljava/lang/String;)I

    move-result v12

    if-ne v12, v6, :cond_8

    :cond_7
    move-object v10, v9

    goto :goto_4

    :cond_8
    if-eqz v7, :cond_a

    if-eqz v10, :cond_9

    invoke-static {p1}, LI/b;->a(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v5, :cond_a

    :cond_9
    move-object v10, v8

    goto :goto_4

    :cond_a
    move-object v10, v11

    :goto_4
    invoke-virtual {v3, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eq v2, v7, :cond_c

    if-eqz v2, :cond_b

    const/16 v10, 0x202b

    goto :goto_5

    :cond_b
    const/16 v10, 0x202a

    :goto_5
    invoke-virtual {v3, v10}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v10, 0x202c

    invoke-virtual {v3, v10}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    :cond_c
    invoke-virtual {v3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_6
    if-eqz v2, :cond_d

    sget-object v2, LI/e;->b:LI/d;

    goto :goto_7

    :cond_d
    sget-object v2, LI/e;->a:LI/d;

    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2, p1, v10}, LI/d;->d(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-nez v7, :cond_f

    if-nez v2, :cond_e

    invoke-static {p1}, LI/b;->b(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v6, :cond_f

    :cond_e
    move-object v8, v9

    goto :goto_8

    :cond_f
    if-eqz v7, :cond_10

    if-eqz v2, :cond_11

    invoke-static {p1}, LI/b;->b(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v5, :cond_10

    goto :goto_8

    :cond_10
    move-object v8, v11

    :cond_11
    :goto_8
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_9
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-eq v1, p1, :cond_12

    invoke-virtual {p0, v4, v4}, Lcom/google/android/material/textfield/TextInputLayout;->I(ZZ)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->N()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->E()V

    :cond_12
    return-void
.end method

.method public final C()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/X;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:I

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->A(Landroidx/appcompat/widget/X;I)V

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/X;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/X;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public final D()Z
    .locals 10

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lcom/google/android/material/textfield/v;

    iget-object v2, v0, Lcom/google/android/material/textfield/v;->g:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/google/android/material/textfield/v;->f:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/google/android/material/textfield/v;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:I

    if-eq v2, v0, :cond_3

    :cond_2
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/drawable/ColorDrawable;

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:I

    invoke-virtual {v2, v1, v1, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v2, v0, v1

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/drawable/ColorDrawable;

    if-eq v2, v7, :cond_5

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    aget-object v8, v0, v6

    aget-object v9, v0, v4

    aget-object v0, v0, v5

    invoke-virtual {v2, v7, v8, v9, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    aget-object v7, v0, v6

    aget-object v8, v0, v4

    aget-object v0, v0, v5

    invoke-virtual {v2, v3, v7, v8, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/graphics/drawable/ColorDrawable;

    :goto_0
    move v0, v6

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:I

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    if-eqz v7, :cond_e

    :cond_7
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-lez v7, :cond_e

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroidx/appcompat/widget/X;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_8

    move-object v3, v2

    goto :goto_2

    :cond_8
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:I

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    :cond_9
    :goto_2
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    add-int v7, v3, v2

    :cond_a
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_b

    iget v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:I

    if-eq v8, v7, :cond_b

    iput v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:I

    invoke-virtual {v3, v1, v1, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    aget-object v1, v2, v1

    aget-object v3, v2, v6

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/graphics/drawable/ColorDrawable;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_b
    if-nez v3, :cond_c

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/graphics/drawable/ColorDrawable;

    iput v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:I

    invoke-virtual {v3, v1, v1, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_c
    aget-object v3, v2, v4

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/graphics/drawable/ColorDrawable;

    if-eq v3, v4, :cond_d

    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    aget-object v0, v2, v1

    aget-object v1, v2, v6

    aget-object v2, v2, v5

    invoke-virtual {p0, v0, v1, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_d
    move v6, v0

    :goto_3
    move v0, v6

    goto :goto_5

    :cond_e
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v4, v2, v4

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/graphics/drawable/ColorDrawable;

    if-ne v4, v7, :cond_f

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    aget-object v1, v2, v1

    aget-object v4, v2, v6

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v4, v7, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_f
    move v6, v0

    :goto_4
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_3

    :cond_10
    :goto_5
    return v0
.end method

.method public final E()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Landroidx/appcompat/widget/f0;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lcom/google/android/material/textfield/s;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/s;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, v1, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/X;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v1}, Landroidx/appcompat/widget/v;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/X;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v1}, Landroidx/appcompat/widget/v;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final F()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Lcom/google/android/material/internal/CheckableImageButton;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Z

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    if-nez v0, :cond_5

    :cond_4
    :goto_3
    move v2, v3

    :cond_5
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final G()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lcom/google/android/material/textfield/s;

    iget-boolean v2, v1, Lcom/google/android/material/textfield/s;->k:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/material/textfield/s;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->F()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->L()V

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->D()Z

    :goto_1
    return-void
.end method

.method public final H()V
    .locals 3

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()I

    move-result p0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq p0, v2, :cond_0

    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final I(ZZ)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lcom/google/android/material/textfield/s;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/s;->e()Z

    move-result v6

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Landroid/content/res/ColorStateList;

    iget-object v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Lcom/google/android/material/internal/c;

    if-eqz v7, :cond_2

    invoke-virtual {v8, v7}, Lcom/google/android/material/internal/c;->j(Landroid/content/res/ColorStateList;)V

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Landroid/content/res/ColorStateList;

    iget-object v9, v8, Lcom/google/android/material/internal/c;->k:Landroid/content/res/ColorStateList;

    if-eq v9, v7, :cond_2

    iput-object v7, v8, Lcom/google/android/material/internal/c;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v8, v2}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_2
    const/4 v7, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    const v5, -0x101009e

    filled-new-array {v5}, [I

    move-result-object v5

    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:I

    :goto_2
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/google/android/material/internal/c;->j(Landroid/content/res/ColorStateList;)V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v5, v8, Lcom/google/android/material/internal/c;->k:Landroid/content/res/ColorStateList;

    if-eq v5, v0, :cond_8

    iput-object v0, v8, Lcom/google/android/material/internal/c;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v8, v2}, Lcom/google/android/material/internal/c;->i(Z)V

    goto :goto_4

    :cond_4
    if-eqz v6, :cond_6

    iget-object v0, v5, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/X;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v7

    :goto_3
    invoke-virtual {v8, v0}, Lcom/google/android/material/internal/c;->j(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/X;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/material/internal/c;->j(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_8

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r0:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_8

    invoke-virtual {v8, v0}, Lcom/google/android/material/internal/c;->j(Landroid/content/res/ColorStateList;)V

    :cond_8
    :goto_4
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E0:Z

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lcom/google/android/material/textfield/v;

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D0:Z

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    if-nez p2, :cond_a

    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Z

    if-nez p2, :cond_15

    :cond_a
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_b
    const/4 p2, 0x0

    if-eqz p1, :cond_c

    if-eqz v0, :cond_c

    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->a(F)V

    goto :goto_5

    :cond_c
    invoke-virtual {v8, p2}, Lcom/google/android/material/internal/c;->l(F)V

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    check-cast p1, Lcom/google/android/material/textfield/i;

    iget-object p1, p1, Lcom/google/android/material/textfield/i;->y:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    check-cast p1, Lcom/google/android/material/textfield/i;

    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/google/android/material/textfield/i;->n(FFFF)V

    :cond_d
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Z

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    if-eqz p1, :cond_e

    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Z

    if-eqz p2, :cond_e

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Lj0/h;

    invoke-static {p1, p2}, Lj0/p;->a(Landroid/widget/FrameLayout;Lj0/l;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iput-boolean v3, v5, Lcom/google/android/material/textfield/v;->j:Z

    invoke-virtual {v5}, Lcom/google/android/material/textfield/v;->b()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->M()V

    goto :goto_9

    :cond_f
    :goto_6
    if-nez p2, :cond_10

    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Z

    if-eqz p2, :cond_15

    :cond_10
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_11
    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->a(F)V

    goto :goto_7

    :cond_12
    invoke-virtual {v8, p2}, Lcom/google/android/material/internal/c;->l(F)V

    :goto_7
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->l()V

    :cond_13
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-nez p1, :cond_14

    move p1, v2

    goto :goto_8

    :cond_14
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_8
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->J(I)V

    iput-boolean v2, v5, Lcom/google/android/material/textfield/v;->j:Z

    invoke-virtual {v5}, Lcom/google/android/material/textfield/v;->b()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->M()V

    :cond_15
    :goto_9
    return-void
.end method

.method public final J(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Lj0/h;

    invoke-static {v0, p1}, Lj0/p;->a(Landroid/widget/FrameLayout;Lj0/l;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Lj0/h;

    invoke-static {v0, p1}, Lj0/p;->a(Landroid/widget/FrameLayout;Lj0/l;)V

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final K(ZZ)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    const v2, 0x1010367

    const v3, 0x101009e

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    const v4, 0x10102fe

    filled-new-array {v4, v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eqz p1, :cond_0

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    :goto_0
    return-void
.end method

.method public final L()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, LF0/c;->material_input_text_to_prefix_suffix_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sget-object v4, LK/D;->a:Ljava/util/WeakHashMap;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroidx/appcompat/widget/X;

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final M()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroidx/appcompat/widget/X;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Z

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Lcom/google/android/material/textfield/p;

    move-result-object v1

    if-nez v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/p;->c(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->F()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->D()Z

    return-void
.end method

.method public final N()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lcom/google/android/material/textfield/s;

    if-nez v3, :cond_5

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->A0:I

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lcom/google/android/material/textfield/s;->e()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_6

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->K(ZZ)V

    goto :goto_3

    :cond_6
    iget-object v3, v5, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/X;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    goto :goto_2

    :cond_7
    move v3, v4

    :goto_2
    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    goto :goto_3

    :cond_8
    iget-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/X;

    if-eqz v3, :cond_a

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->v0:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_9

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->K(ZZ)V

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    goto :goto_3

    :cond_a
    if-eqz v0, :cond_b

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->u0:I

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    goto :goto_3

    :cond_b
    if-eqz v1, :cond_c

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:I

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    goto :goto_3

    :cond_c
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:I

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->G()V

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/content/res/ColorStateList;

    invoke-static {p0, v3, v6}, La4/x;->X(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lcom/google/android/material/textfield/v;

    iget-object v6, v3, Lcom/google/android/material/textfield/v;->g:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v7, v3, Lcom/google/android/material/textfield/v;->h:Landroid/content/res/ColorStateList;

    iget-object v3, v3, Lcom/google/android/material/textfield/v;->d:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v3, v6, v7}, La4/x;->X(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p0, v6, v3}, La4/x;->X(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Lcom/google/android/material/textfield/p;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v3, Lcom/google/android/material/textfield/o;

    if-eqz v3, :cond_f

    invoke-virtual {v5}, Lcom/google/android/material/textfield/s;->e()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, v5, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/X;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    :cond_d
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/x;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_e
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v6, v3, v4}, La4/x;->n(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    :cond_f
    :goto_4
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_12

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_10

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    goto :goto_5

    :cond_10
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    :goto_5
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    if-eq v4, v3, :cond_12

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Z

    if-nez v3, :cond_12

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    check-cast v3, Lcom/google/android/material/textfield/i;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, Lcom/google/android/material/textfield/i;->n(FFFF)V

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->l()V

    :cond_12
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    if-ne v3, v2, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_13

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    goto :goto_6

    :cond_13
    if-eqz v1, :cond_14

    if-nez v0, :cond_14

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    goto :goto_6

    :cond_14
    if-eqz v0, :cond_15

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    goto :goto_6

    :cond_15
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    :cond_16
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    :cond_17
    :goto_7
    return-void
.end method

.method public final a(F)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Lcom/google/android/material/internal/c;

    iget v1, v0, Lcom/google/android/material/internal/c;->c:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_1

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:Landroid/animation/ValueAnimator;

    sget-object v2, LG0/a;->b:LT/a;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xa7

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:Landroid/animation/ValueAnimator;

    new-instance v2, LE1/g;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, LE1/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:Landroid/animation/ValueAnimator;

    iget v0, v0, Lcom/google/android/material/internal/c;->c:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput p1, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F0:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_15

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->H()V

    check-cast p1, Landroid/widget/EditText;

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-nez p2, :cond_14

    iget p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:I

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    instance-of p2, p1, Lcom/google/android/material/textfield/TextInputEditText;

    if-nez p2, :cond_0

    const-string p2, "TextInputLayout"

    const-string p3, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    iget p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    iput p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    if-eqz p1, :cond_2

    if-eq p2, p3, :cond_2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMinEms(I)V

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    iput p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    if-eqz p1, :cond_2

    if-eq p2, p3, :cond_2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMinWidth(I)V

    :cond_2
    :goto_0
    iget p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    if-eq p2, p3, :cond_3

    iput p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    if-eq p2, p3, :cond_4

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxEms(I)V

    goto :goto_1

    :cond_3
    iget p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:I

    iput p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:I

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    if-eq p2, p3, :cond_4

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->k()V

    new-instance p2, Lcom/google/android/material/button/c;

    invoke-direct {p2, p0}, Lcom/google/android/material/button/c;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz p3, :cond_5

    invoke-static {p3, p2}, LK/D;->f(Landroid/view/View;LK/b;)V

    :cond_5
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Lcom/google/android/material/internal/c;

    invoke-virtual {p3, p2}, Lcom/google/android/material/internal/c;->k(Landroid/graphics/Typeface;)Z

    move-result v0

    iget-object v1, p3, Lcom/google/android/material/internal/c;->x:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, p2, :cond_7

    iput-object p2, p3, Lcom/google/android/material/internal/c;->x:Landroid/graphics/Typeface;

    iget-object v1, p3, Lcom/google/android/material/internal/c;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1, p2}, LK/I;->f0(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p3, Lcom/google/android/material/internal/c;->w:Landroid/graphics/Typeface;

    if-nez p2, :cond_6

    iget-object p2, p3, Lcom/google/android/material/internal/c;->x:Landroid/graphics/Typeface;

    :cond_6
    iput-object p2, p3, Lcom/google/android/material/internal/c;->v:Landroid/graphics/Typeface;

    move p2, v3

    goto :goto_2

    :cond_7
    move p2, v2

    :goto_2
    if-nez v0, :cond_8

    if-eqz p2, :cond_9

    :cond_8
    invoke-virtual {p3, v2}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_9
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    iget v0, p3, Lcom/google/android/material/internal/c;->i:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_a

    iput p2, p3, Lcom/google/android/material/internal/c;->i:F

    invoke-virtual {p3, v2}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_a
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLetterSpacing()F

    move-result p2

    iget v0, p3, Lcom/google/android/material/internal/c;->U:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_b

    iput p2, p3, Lcom/google/android/material/internal/c;->U:F

    invoke-virtual {p3, v2}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_b
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getGravity()I

    move-result p2

    and-int/lit8 v0, p2, -0x71

    or-int/lit8 v0, v0, 0x30

    iget v1, p3, Lcom/google/android/material/internal/c;->h:I

    if-eq v1, v0, :cond_c

    iput v0, p3, Lcom/google/android/material/internal/c;->h:I

    invoke-virtual {p3, v2}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_c
    iget v0, p3, Lcom/google/android/material/internal/c;->g:I

    if-eq v0, p2, :cond_d

    iput p2, p3, Lcom/google/android/material/internal/c;->g:I

    invoke-virtual {p3, v2}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_d
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    new-instance p3, Lcom/google/android/material/textfield/a;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p0}, Lcom/google/android/material/textfield/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_e

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Landroid/content/res/ColorStateList;

    :cond_e
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->w(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_f
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Z

    :cond_10
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/X;

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->B(I)V

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->E()V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lcom/google/android/material/textfield/s;

    invoke-virtual {p2}, Lcom/google/android/material/textfield/s;->b()V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lcom/google/android/material/textfield/v;

    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Ljava/util/LinkedHashSet;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/textfield/c;

    invoke-virtual {p3, p0}, Lcom/google/android/material/textfield/c;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    goto :goto_3

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->L()V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_13

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_13
    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->I(ZZ)V

    goto :goto_4

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "We already have an EditText, can only have one"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    return-void
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, LU0/g;->d:LU0/f;

    iget-object v1, v1, LU0/f;->a:LU0/j;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:LU0/j;

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v1, v2, :cond_2

    invoke-virtual {v0, v2}, LU0/g;->a(LU0/j;)V

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:I

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/o;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/material/textfield/o;->h(Landroid/widget/EditText;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/LayerDrawable;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/o;->e(Landroid/widget/AutoCompleteTextView;)V

    :cond_2
    :goto_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    const/4 v1, -0x1

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    if-le v0, v1, :cond_3

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    int-to-float v0, v0

    iget-object v5, v3, LU0/g;->d:LU0/f;

    iput v0, v5, LU0/f;->j:F

    invoke-virtual {v3}, LU0/g;->invalidateSelf()V

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v2, v3, LU0/g;->d:LU0/f;

    iget-object v5, v2, LU0/f;->d:Landroid/content/res/ColorStateList;

    if-eq v5, v0, :cond_3

    iput-object v0, v2, LU0/f;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v3, v0}, LU0/g;->onStateChange([I)Z

    :cond_3
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    sget v0, LF0/a;->colorSurface:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, LK/I;->p0(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v0, v0, Landroid/util/TypedValue;->data:I

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    invoke-static {v2, v0}, LC/a;->f(II)I

    move-result v0

    :cond_5
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, LU0/g;->j(Landroid/content/res/ColorStateList;)V

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:I

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:LU0/g;

    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:LU0/g;

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    if-le v2, v1, :cond_9

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s0:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_2

    :cond_8
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, LU0/g;->j(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:LU0/g;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, LU0/g;->j(Landroid/content/res/ColorStateList;)V

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final c()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Lcom/google/android/material/internal/c;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/internal/c;->d()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    :goto_0
    float-to-int p0, p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/internal/c;->d()F

    move-result p0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    instance-of p0, p0, Lcom/google/android/material/textfield/i;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Z

    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Z

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Z

    throw p1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setChildCount(I)V

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Z

    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Z

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Lcom/google/android/material/internal/c;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v2, v1, Lcom/google/android/material/internal/c;->B:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/google/android/material/internal/c;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/material/internal/c;->L:Landroid/text/TextPaint;

    iget v3, v1, Lcom/google/android/material/internal/c;->F:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v2, v1, Lcom/google/android/material/internal/c;->q:F

    iget v3, v1, Lcom/google/android/material/internal/c;->r:F

    iget v4, v1, Lcom/google/android/material/internal/c;->E:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v1, Lcom/google/android/material/internal/c;->W:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:LU0/g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:LU0/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, LU0/g;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:LU0/g;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:LU0/g;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v1, v1, Lcom/google/android/material/internal/c;->c:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v3, v4}, LG0/a;->b(FII)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v3, v2}, LG0/a;->b(FII)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:LU0/g;

    invoke-virtual {p0, p1}, LU0/g;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Lcom/google/android/material/internal/c;

    if-eqz v3, :cond_3

    iput-object v1, v3, Lcom/google/android/material/internal/c;->J:[I

    iget-object v1, v3, Lcom/google/android/material/internal/c;->l:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, v3, Lcom/google/android/material/internal/c;->k:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {v3, v2}, Lcom/google/android/material/internal/c;->i(Z)V

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v3, :cond_5

    sget-object v3, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->I(ZZ)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->E()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->N()V

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->G0:Z

    return-void
.end method

.method public final e()Lcom/google/android/material/textfield/p;
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:I

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/p;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/google/android/material/textfield/p;

    :goto_0
    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lcom/google/android/material/textfield/s;

    iget-boolean v0, p0, Lcom/google/android/material/textfield/s;->k:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/s;->j:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getBaseline()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()I

    move-result p0

    add-int/2addr p0, v1

    return p0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result p0

    return p0
.end method

.method public final h(IZ)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lcom/google/android/material/textfield/v;

    iget-object p1, p0, Lcom/google/android/material/textfield/v;->f:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/v;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public final i(IZ)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lcom/google/android/material/textfield/v;

    iget-object v0, p0, Lcom/google/android/material/textfield/v;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/v;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr p2, p0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k()V
    .locals 7

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    instance-of v3, v3, Lcom/google/android/material/textfield/i;

    if-nez v3, :cond_0

    new-instance v3, Lcom/google/android/material/textfield/i;

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:LU0/j;

    invoke-direct {v3, v4}, Lcom/google/android/material/textfield/i;-><init>(LU0/j;)V

    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    goto :goto_0

    :cond_0
    new-instance v3, LU0/g;

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:LU0/j;

    invoke-direct {v3, v4}, LU0/g;-><init>(LU0/j;)V

    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    :goto_0
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:LU0/g;

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:LU0/g;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " is illegal; only @BoxBackgroundMode constants are supported."

    invoke-static {v1, v0, v2}, Li4/b;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v2, LU0/g;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:LU0/j;

    invoke-direct {v2, v3}, LU0/g;-><init>(LU0/j;)V

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    new-instance v2, LU0/g;

    invoke-direct {v2}, LU0/g;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:LU0/g;

    new-instance v2, LU0/g;

    invoke-direct {v2}, LU0/g;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:LU0/g;

    goto :goto_1

    :cond_3
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:LU0/g;

    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:LU0/g;

    :goto_1
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    sget-object v4, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->N()V

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, LF0/c;->material_font_2_0_box_collapsed_padding_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, LK/I;->a0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, LF0/c;->material_font_1_3_box_collapsed_padding_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v3, :cond_9

    if-eq v0, v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    sget-object v2, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, LF0/c;->material_filled_edittext_font_2_0_padding_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, LF0/c;->material_filled_edittext_font_2_0_padding_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, LK/I;->a0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    sget-object v2, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, LF0/c;->material_filled_edittext_font_1_3_padding_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, LF0/c;->material_filled_edittext_font_1_3_padding_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->H()V

    :cond_a
    return-void
.end method

.method public final l()V
    .locals 13

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Lcom/google/android/material/internal/c;

    iget-object v3, v2, Lcom/google/android/material/internal/c;->A:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/c;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/google/android/material/internal/c;->C:Z

    const/4 v4, 0x5

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v6, v2, Lcom/google/android/material/internal/c;->e:Landroid/graphics/Rect;

    const v7, 0x800005

    const/4 v8, 0x1

    const/16 v9, 0x11

    if-eq v1, v9, :cond_6

    and-int/lit8 v10, v1, 0x7

    if-ne v10, v8, :cond_1

    goto :goto_2

    :cond_1
    and-int v10, v1, v7

    if-eq v10, v7, :cond_4

    and-int/lit8 v10, v1, 0x5

    if-ne v10, v4, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    iget v11, v2, Lcom/google/android/material/internal/c;->X:F

    goto :goto_3

    :cond_3
    iget v10, v6, Landroid/graphics/Rect;->left:I

    :goto_0
    int-to-float v10, v10

    goto :goto_4

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    iget v10, v6, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_5
    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    iget v11, v2, Lcom/google/android/material/internal/c;->X:F

    goto :goto_3

    :cond_6
    :goto_2
    int-to-float v10, v0

    div-float/2addr v10, v5

    iget v11, v2, Lcom/google/android/material/internal/c;->X:F

    div-float/2addr v11, v5

    :goto_3
    sub-float/2addr v10, v11

    :goto_4
    iget-object v11, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/RectF;

    iput v10, v11, Landroid/graphics/RectF;->left:F

    iget v12, v6, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    iput v12, v11, Landroid/graphics/RectF;->top:F

    if-eq v1, v9, :cond_c

    and-int/lit8 v9, v1, 0x7

    if-ne v9, v8, :cond_7

    goto :goto_7

    :cond_7
    and-int v0, v1, v7

    if-eq v0, v7, :cond_a

    and-int/lit8 v0, v1, 0x5

    if-ne v0, v4, :cond_8

    goto :goto_6

    :cond_8
    if-eqz v3, :cond_9

    iget v0, v6, Landroid/graphics/Rect;->right:I

    :goto_5
    int-to-float v0, v0

    goto :goto_8

    :cond_9
    iget v0, v2, Lcom/google/android/material/internal/c;->X:F

    add-float/2addr v0, v10

    goto :goto_8

    :cond_a
    :goto_6
    if-eqz v3, :cond_b

    iget v0, v2, Lcom/google/android/material/internal/c;->X:F

    add-float/2addr v10, v0

    move v0, v10

    goto :goto_8

    :cond_b
    iget v0, v6, Landroid/graphics/Rect;->right:I

    goto :goto_5

    :cond_c
    :goto_7
    int-to-float v0, v0

    div-float/2addr v0, v5

    iget v1, v2, Lcom/google/android/material/internal/c;->X:F

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    :goto_8
    iput v0, v11, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2}, Lcom/google/android/material/internal/c;->d()F

    move-result v0

    add-float/2addr v0, v12

    iput v0, v11, Landroid/graphics/RectF;->bottom:F

    iget v0, v11, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, v11, Landroid/graphics/RectF;->left:F

    iget v0, v11, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    iput v0, v11, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v11, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    check-cast p0, Lcom/google/android/material/textfield/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v11, Landroid/graphics/RectF;->left:F

    iget v1, v11, Landroid/graphics/RectF;->top:F

    iget v2, v11, Landroid/graphics/RectF;->right:F

    iget v3, v11, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/material/textfield/i;->n(FFFF)V

    return-void
.end method

.method public final n(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final o(I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le0/a;->E(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/x;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v0, p1, v1}, La4/x;->n(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, p1}, La4/x;->X(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Lcom/google/android/material/internal/c;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/c;->g(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 7

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz p1, :cond_f

    sget-object p2, Lcom/google/android/material/internal/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    iget-object p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/Rect;

    const/4 p5, 0x0

    invoke-virtual {p4, p5, p5, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object p2, Lcom/google/android/material/internal/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Matrix;

    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    :goto_0
    invoke-static {p0, p1, p3}, Lcom/google/android/material/internal/d;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Matrix;)V

    sget-object p1, Lcom/google/android/material/internal/d;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/RectF;

    if-nez p2, :cond_1

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p2, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget p1, p2, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p1, p3

    float-to-int p1, p1

    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    float-to-int v1, v1

    iget v2, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p3

    float-to-int v2, v2

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p4, p1, v1, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:LU0/g;

    if-eqz p1, :cond_2

    iget p2, p4, Landroid/graphics/Rect;->bottom:I

    iget p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:I

    sub-int p3, p2, p3

    iget v1, p4, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1, p3, v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:LU0/g;

    if-eqz p1, :cond_3

    iget p2, p4, Landroid/graphics/Rect;->bottom:I

    iget p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:I

    sub-int p3, p2, p3

    iget v1, p4, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1, p3, v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Lcom/google/android/material/internal/c;

    iget p3, p2, Lcom/google/android/material/internal/c;->i:F

    cmpl-float p3, p3, p1

    if-eqz p3, :cond_4

    iput p1, p2, Lcom/google/android/material/internal/c;->i:F

    invoke-virtual {p2, p5}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    move-result p1

    and-int/lit8 p3, p1, -0x71

    or-int/lit8 p3, p3, 0x30

    iget v1, p2, Lcom/google/android/material/internal/c;->h:I

    if-eq v1, p3, :cond_5

    iput p3, p2, Lcom/google/android/material/internal/c;->h:I

    invoke-virtual {p2, p5}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_5
    iget p3, p2, Lcom/google/android/material/internal/c;->g:I

    if-eq p3, p1, :cond_6

    iput p1, p2, Lcom/google/android/material/internal/c;->g:I

    invoke-virtual {p2, p5}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_6
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz p1, :cond_e

    invoke-static {p0}, Lcom/google/android/material/internal/m;->d(Landroid/view/View;)Z

    move-result p1

    iget p3, p4, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:Landroid/graphics/Rect;

    iput p3, v1, Landroid/graphics/Rect;->bottom:I

    const/4 p3, 0x1

    if-eq v0, p3, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    iget v2, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->h(IZ)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, p4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->i(IZ)I

    move-result p1

    iput p1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_7
    iget p1, p4, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, p1

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget p1, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()I

    move-result v2

    sub-int/2addr p1, v2

    iput p1, v1, Landroid/graphics/Rect;->top:I

    iget p1, p4, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    iput p1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_8
    iget v2, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->h(IZ)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, p4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->i(IZ)I

    move-result p1

    iput p1, v1, Landroid/graphics/Rect;->right:I

    :goto_1
    iget p1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p2, Lcom/google/android/material/internal/c;->e:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-ne v6, p1, :cond_9

    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-ne v6, v2, :cond_9

    iget v6, v5, Landroid/graphics/Rect;->right:I

    if-ne v6, v3, :cond_9

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    if-ne v6, v4, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v5, p1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean p3, p2, Lcom/google/android/material/internal/c;->K:Z

    invoke-virtual {p2}, Lcom/google/android/material/internal/c;->h()V

    :goto_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz p1, :cond_d

    iget-object p1, p2, Lcom/google/android/material/internal/c;->M:Landroid/text/TextPaint;

    iget v2, p2, Lcom/google/android/material/internal/c;->i:F

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p2, Lcom/google/android/material/internal/c;->v:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v2, p2, Lcom/google/android/material/internal/c;->U:F

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    neg-float p1, p1

    iget v2, p4, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v1, Landroid/graphics/Rect;->left:I

    if-ne v0, p3, :cond_a

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMinLines()I

    move-result v2

    if-gt v2, p3, :cond_a

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p1, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_3

    :cond_a
    iget v2, p4, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    :goto_3
    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, p4, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    if-ne v0, p3, :cond_b

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMinLines()I

    move-result v0

    if-gt v0, p3, :cond_b

    iget p4, v1, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    add-float/2addr p4, p1

    float-to-int p1, p4

    goto :goto_4

    :cond_b
    iget p1, p4, Landroid/graphics/Rect;->bottom:I

    iget-object p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result p4

    sub-int/2addr p1, p4

    :goto_4
    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    iget p4, v1, Landroid/graphics/Rect;->left:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p2, Lcom/google/android/material/internal/c;->d:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ne v3, p4, :cond_c

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ne v3, v0, :cond_c

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-ne v3, v1, :cond_c

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v3, p1, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v2, p4, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean p3, p2, Lcom/google/android/material/internal/c;->K:Z

    invoke-virtual {p2}, Lcom/google/android/material/internal/c;->h()V

    :goto_5
    invoke-virtual {p2, p5}, Lcom/google/android/material/internal/c;->i(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Z

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->l()V

    goto :goto_6

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_f
    :goto_6
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Lcom/google/android/material/textfield/v;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-ge v0, p1, :cond_1

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    const/4 p2, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->D()Z

    move-result p1

    if-nez p2, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    new-instance p2, Lcom/google/android/material/textfield/w;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/google/android/material/textfield/w;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->L()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->d:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->f:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->s(Ljava/lang/CharSequence;)V

    iget-boolean v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->g:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/material/textfield/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/textfield/w;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->h:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->w(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->i:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->u(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->j:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->y(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Z

    if-eq p1, v2, :cond_b

    if-eqz p1, :cond_1

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:LU0/j;

    iget-object p1, p1, LU0/j;->e:LU0/c;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Landroid/graphics/RectF;

    invoke-interface {p1, v1}, LU0/c;->a(Landroid/graphics/RectF;)F

    move-result p1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:LU0/j;

    iget-object v2, v2, LU0/j;->f:LU0/c;

    invoke-interface {v2, v1}, LU0/c;->a(Landroid/graphics/RectF;)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:LU0/j;

    iget-object v3, v3, LU0/j;->h:LU0/c;

    invoke-interface {v3, v1}, LU0/c;->a(Landroid/graphics/RectF;)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:LU0/j;

    iget-object v4, v4, LU0/j;->g:LU0/c;

    invoke-interface {v4, v1}, LU0/c;->a(Landroid/graphics/RectF;)F

    move-result v1

    if-eqz v0, :cond_2

    move v4, p1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-eqz v0, :cond_3

    move p1, v2

    :cond_3
    if-eqz v0, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    if-eqz v0, :cond_5

    move v3, v1

    :cond_5
    invoke-static {p0}, Lcom/google/android/material/internal/m;->d(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Z

    if-eqz v0, :cond_6

    move v1, p1

    goto :goto_3

    :cond_6
    move v1, v4

    :goto_3
    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move v4, p1

    :goto_4
    if-eqz v0, :cond_8

    move p1, v3

    goto :goto_5

    :cond_8
    move p1, v2

    :goto_5
    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    move v2, v3

    :goto_6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    if-eqz v0, :cond_a

    iget-object v3, v0, LU0/g;->d:LU0/f;

    iget-object v3, v3, LU0/f;->a:LU0/j;

    iget-object v3, v3, LU0/j;->e:LU0/c;

    invoke-virtual {v0}, LU0/g;->f()Landroid/graphics/RectF;

    move-result-object v0

    invoke-interface {v3, v0}, LU0/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    iget-object v3, v0, LU0/g;->d:LU0/f;

    iget-object v3, v3, LU0/f;->a:LU0/j;

    iget-object v3, v3, LU0/j;->f:LU0/c;

    invoke-virtual {v0}, LU0/g;->f()Landroid/graphics/RectF;

    move-result-object v0

    invoke-interface {v3, v0}, LU0/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    iget-object v3, v0, LU0/g;->d:LU0/f;

    iget-object v3, v3, LU0/f;->a:LU0/j;

    iget-object v3, v3, LU0/j;->h:LU0/c;

    invoke-virtual {v0}, LU0/g;->f()Landroid/graphics/RectF;

    move-result-object v0

    invoke-interface {v3, v0}, LU0/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:LU0/g;

    iget-object v3, v0, LU0/g;->d:LU0/f;

    iget-object v3, v3, LU0/f;->a:LU0/j;

    iget-object v3, v3, LU0/j;->g:LU0/c;

    invoke-virtual {v0}, LU0/g;->f()Landroid/graphics/RectF;

    move-result-object v0

    invoke-interface {v3, v0}, LU0/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:LU0/j;

    invoke-virtual {v0}, LU0/j;->g()LU0/j;

    move-result-object v0

    new-instance v3, LU0/a;

    invoke-direct {v3, v1}, LU0/a;-><init>(F)V

    iput-object v3, v0, LU0/j;->e:LU0/c;

    new-instance v1, LU0/a;

    invoke-direct {v1, v4}, LU0/a;-><init>(F)V

    iput-object v1, v0, LU0/j;->f:LU0/c;

    new-instance v1, LU0/a;

    invoke-direct {v1, p1}, LU0/a;-><init>(F)V

    iput-object v1, v0, LU0/j;->h:LU0/c;

    new-instance p1, LU0/a;

    invoke-direct {p1, v2}, LU0/a;-><init>(F)V

    iput-object p1, v0, LU0/j;->g:LU0/c;

    invoke-virtual {v0}, LU0/j;->a()LU0/j;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:LU0/j;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()V

    :cond_b
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    invoke-direct {v1, v0}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lcom/google/android/material/textfield/s;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/s;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->f:Ljava/lang/CharSequence;

    :cond_0
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v2, v2, Lcom/google/android/material/internal/CheckableImageButton;->g:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->g:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->h:Ljava/lang/CharSequence;

    iget-boolean v2, v0, Lcom/google/android/material/textfield/s;->q:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/google/android/material/textfield/s;->p:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->i:Ljava/lang/CharSequence;

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Z

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Ljava/lang/CharSequence;

    :cond_3
    iput-object v3, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->j:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public final p(I)V
    .locals 9

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h0:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/d;

    iget v3, v2, Lcom/google/android/material/textfield/d;->a:I

    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    new-instance v4, LH/a;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-direct {v4, v2, v3, v5, v6}, LH/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    const/4 v4, 0x3

    iget-object v5, v2, Lcom/google/android/material/textfield/d;->b:Lcom/google/android/material/textfield/p;

    check-cast v5, Lcom/google/android/material/textfield/o;

    if-eqz v3, :cond_3

    if-ne v0, v4, :cond_3

    new-instance v6, LH/a;

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-direct {v6, v2, v3, v7, v8}, LH/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v3, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v3}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v2

    iget-object v6, v5, Lcom/google/android/material/textfield/o;->f:Lcom/google/android/material/textfield/b;

    const/4 v7, 0x0

    if-ne v2, v6, :cond_2

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_2
    invoke-virtual {v3, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v3, v7}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    :cond_3
    if-ne v0, v4, :cond_1

    iget-object v2, v5, Lcom/google/android/material/textfield/o;->j:Lcom/google/android/material/textfield/m;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v2, v5, Lcom/google/android/material/textfield/o;->q:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_1

    new-instance v3, LL/b;

    iget-object v4, v5, Lcom/google/android/material/textfield/o;->k:Landroidx/recyclerview/widget/y;

    invoke-direct {v3, v4}, LL/b;-><init>(Landroidx/recyclerview/widget/y;)V

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    new-instance v4, LH/a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct {v4, v2, v3, v5, v6}, LH/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v3}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v4

    iget-object v2, v2, Lcom/google/android/material/textfield/d;->b:Lcom/google/android/material/textfield/p;

    check-cast v2, Lcom/google/android/material/textfield/g;

    iget-object v5, v2, Lcom/google/android/material/textfield/g;->f:Lcom/google/android/material/textfield/b;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_4

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_4
    iget-object v3, v2, Lcom/google/android/material/textfield/p;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v3}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/material/textfield/g;->f:Lcom/google/android/material/textfield/b;

    if-ne v3, v4, :cond_1

    iget-object v2, v2, Lcom/google/android/material/textfield/p;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_0

    :cond_5
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->r(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Lcom/google/android/material/textfield/p;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/p;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Lcom/google/android/material/textfield/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/p;->a()V

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p0, v1, p1, v0}, La4/x;->n(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The current box background mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not supported by the end icon mode "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x(Lcom/google/android/material/internal/CheckableImageButton;)V

    return-void
.end method

.method public final r(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()Z

    move-result v0

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->F()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->L()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->D()Z

    :cond_1
    return-void
.end method

.method public final s(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lcom/google/android/material/textfield/s;

    iget-boolean v1, v0, Lcom/google/android/material/textfield/s;->k:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->t(Z)V

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/material/textfield/s;->c()V

    iput-object p1, v0, Lcom/google/android/material/textfield/s;->j:Ljava/lang/CharSequence;

    iget-object p0, v0, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/X;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p0, v0, Lcom/google/android/material/textfield/s;->h:I

    if-eq p0, v2, :cond_2

    iput v2, v0, Lcom/google/android/material/textfield/s;->i:I

    :cond_2
    iget v1, v0, Lcom/google/android/material/textfield/s;->i:I

    iget-object v2, v0, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/X;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/material/textfield/s;->i(Landroidx/appcompat/widget/X;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {v0, p1, p0, v1}, Lcom/google/android/material/textfield/s;->j(ZII)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/material/textfield/s;->g()V

    :goto_0
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->m(Landroid/view/ViewGroup;Z)V

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final t(Z)V
    .locals 5

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lcom/google/android/material/textfield/s;

    iget-boolean v0, p0, Lcom/google/android/material/textfield/s;->k:Z

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/s;->c()V

    iget-object v0, p0, Lcom/google/android/material/textfield/s;->b:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    new-instance v3, Landroidx/appcompat/widget/X;

    iget-object v4, p0, Lcom/google/android/material/textfield/s;->a:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroidx/appcompat/widget/X;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/X;

    sget v2, LF0/e;->textinput_error:I

    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/X;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/view/View;->setTextAlignment(I)V

    iget v2, p0, Lcom/google/android/material/textfield/s;->n:I

    iput v2, p0, Lcom/google/android/material/textfield/s;->n:I

    iget-object v3, p0, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/X;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->A(Landroidx/appcompat/widget/X;I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/s;->o:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/textfield/s;->o:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/X;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/s;->m:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/material/textfield/s;->m:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/X;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/X;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/X;

    sget-object v2, LK/D;->a:Ljava/util/WeakHashMap;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/X;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/s;->a(Landroidx/appcompat/widget/X;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/s;->g()V

    iget-object v3, p0, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/X;

    invoke-virtual {p0, v3, v1}, Lcom/google/android/material/textfield/s;->h(Landroidx/appcompat/widget/X;I)V

    iput-object v2, p0, Lcom/google/android/material/textfield/s;->l:Landroidx/appcompat/widget/X;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->E()V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->N()V

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/s;->k:Z

    :goto_1
    return-void
.end method

.method public final u(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lcom/google/android/material/textfield/s;

    if-eqz v0, :cond_0

    iget-boolean p1, v1, Lcom/google/android/material/textfield/s;->q:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->v(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, v1, Lcom/google/android/material/textfield/s;->q:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->v(Z)V

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/material/textfield/s;->c()V

    iput-object p1, v1, Lcom/google/android/material/textfield/s;->p:Ljava/lang/CharSequence;

    iget-object p0, v1, Lcom/google/android/material/textfield/s;->r:Landroidx/appcompat/widget/X;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p0, v1, Lcom/google/android/material/textfield/s;->h:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    iput v0, v1, Lcom/google/android/material/textfield/s;->i:I

    :cond_2
    iget v0, v1, Lcom/google/android/material/textfield/s;->i:I

    iget-object v2, v1, Lcom/google/android/material/textfield/s;->r:Landroidx/appcompat/widget/X;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/material/textfield/s;->i(Landroidx/appcompat/widget/X;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {v1, p1, p0, v0}, Lcom/google/android/material/textfield/s;->j(ZII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final v(Z)V
    .locals 6

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Lcom/google/android/material/textfield/s;

    iget-boolean v0, p0, Lcom/google/android/material/textfield/s;->q:Z

    if-ne v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/s;->c()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    new-instance v2, Landroidx/appcompat/widget/X;

    iget-object v3, p0, Lcom/google/android/material/textfield/s;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Landroidx/appcompat/widget/X;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/google/android/material/textfield/s;->r:Landroidx/appcompat/widget/X;

    sget v0, LF0/e;->textinput_helper_text:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/s;->r:Landroidx/appcompat/widget/X;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/view/View;->setTextAlignment(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/s;->r:Landroidx/appcompat/widget/X;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/s;->r:Landroidx/appcompat/widget/X;

    sget-object v2, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    iget v0, p0, Lcom/google/android/material/textfield/s;->s:I

    iput v0, p0, Lcom/google/android/material/textfield/s;->s:I

    iget-object v2, p0, Lcom/google/android/material/textfield/s;->r:Landroidx/appcompat/widget/X;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/s;->t:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/textfield/s;->t:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/android/material/textfield/s;->r:Landroidx/appcompat/widget/X;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/s;->r:Landroidx/appcompat/widget/X;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/s;->a(Landroidx/appcompat/widget/X;I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/s;->r:Landroidx/appcompat/widget/X;

    new-instance v1, Lcom/google/android/material/textfield/r;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/r;-><init>(Lcom/google/android/material/textfield/s;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/s;->c()V

    iget v2, p0, Lcom/google/android/material/textfield/s;->h:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/material/textfield/s;->i:I

    :cond_4
    iget v3, p0, Lcom/google/android/material/textfield/s;->i:I

    iget-object v4, p0, Lcom/google/android/material/textfield/s;->r:Landroidx/appcompat/widget/X;

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Lcom/google/android/material/textfield/s;->i(Landroidx/appcompat/widget/X;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {p0, v4, v2, v3}, Lcom/google/android/material/textfield/s;->j(ZII)V

    iget-object v2, p0, Lcom/google/android/material/textfield/s;->r:Landroidx/appcompat/widget/X;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/material/textfield/s;->h(Landroidx/appcompat/widget/X;I)V

    iput-object v0, p0, Lcom/google/android/material/textfield/s;->r:Landroidx/appcompat/widget/X;

    iget-object v0, p0, Lcom/google/android/material/textfield/s;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->E()V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->N()V

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/s;->q:Z

    :goto_1
    return-void
.end method

.method public final w(Ljava/lang/CharSequence;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C0:Lcom/google/android/material/internal/c;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/google/android/material/internal/c;->A:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iput-object p1, v0, Lcom/google/android/material/internal/c;->A:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/android/material/internal/c;->B:Ljava/lang/CharSequence;

    iget-object v1, v0, Lcom/google/android/material/internal/c;->D:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object p1, v0, Lcom/google/android/material/internal/c;->D:Landroid/graphics/Bitmap;

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_2
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B0:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->l()V

    :cond_3
    const/16 p1, 0x800

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_4
    return-void
.end method

.method public final y(Ljava/lang/CharSequence;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/X;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/X;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    sget v1, LF0/e;->textinput_placeholder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v0, Lj0/h;

    invoke-direct {v0}, Lj0/h;-><init>()V

    const-wide/16 v1, 0x57

    iput-wide v1, v0, Lj0/l;->f:J

    sget-object v3, LG0/a;->a:Landroid/view/animation/LinearInterpolator;

    iput-object v3, v0, Lj0/l;->g:Landroid/view/animation/LinearInterpolator;

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:Lj0/h;

    const-wide/16 v4, 0x43

    iput-wide v4, v0, Lj0/l;->e:J

    new-instance v0, Lj0/h;

    invoke-direct {v0}, Lj0/h;-><init>()V

    iput-wide v1, v0, Lj0/l;->f:J

    iput-object v3, v0, Lj0/l;->g:Landroid/view/animation/LinearInterpolator;

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:Lj0/h;

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->z(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->z(Z)V

    :cond_2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Ljava/lang/CharSequence;

    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->J(I)V

    return-void
.end method

.method public final z(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:Landroidx/appcompat/widget/X;

    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Z

    return-void
.end method
