.class public Lcom/google/android/material/button/MaterialButton;
.super Landroidx/appcompat/widget/r;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;
.implements LU0/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButton$SavedState;
    }
.end annotation


# static fields
.field public static final t:[I

.field public static final u:[I

.field public static final v:I


# instance fields
.field public final g:Lcom/google/android/material/button/b;

.field public final h:Ljava/util/LinkedHashSet;

.field public i:Landroidx/recyclerview/widget/y;

.field public final j:Landroid/graphics/PorterDuff$Mode;

.field public final k:Landroid/content/res/ColorStateList;

.field public l:Landroid/graphics/drawable/Drawable;

.field public final m:I

.field public n:I

.field public o:I

.field public final p:I

.field public q:Z

.field public r:Z

.field public final s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x101009f

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->t:[I

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->u:[I

    sget v0, LF0/i;->Widget_MaterialComponents_Button:I

    sput v0, Lcom/google/android/material/button/MaterialButton;->v:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    sget v8, LF0/a;->materialButtonStyle:I

    sget v9, Lcom/google/android/material/button/MaterialButton;->v:I

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, LY0/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Landroidx/appcompat/widget/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/button/MaterialButton;->h:Ljava/util/LinkedHashSet;

    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/google/android/material/button/MaterialButton;->q:Z

    iput-boolean v10, v0, Lcom/google/android/material/button/MaterialButton;->r:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v3, LF0/j;->MaterialButton:[I

    new-array v6, v10, [I

    move-object v1, v11

    move-object/from16 v2, p2

    move v4, v8

    move v5, v9

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/l;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, LF0/j;->MaterialButton_iconPadding:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/button/MaterialButton;->p:I

    sget v3, LF0/j;->MaterialButton_iconTintMode:I

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v5}, Lcom/google/android/material/internal/m;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v6, LF0/j;->MaterialButton_iconTint:I

    invoke-static {v3, v1, v6}, LK/I;->A(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/button/MaterialButton;->k:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v6, LF0/j;->MaterialButton_icon:I

    invoke-static {v3, v1, v6}, LK/I;->G(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    sget v3, LF0/j;->MaterialButton_iconGravity:I

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/button/MaterialButton;->s:I

    sget v3, LF0/j;->MaterialButton_iconSize:I

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/button/MaterialButton;->m:I

    invoke-static {v11, v7, v8, v9}, LU0/j;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)LU0/j;

    move-result-object v3

    invoke-virtual {v3}, LU0/j;->a()LU0/j;

    move-result-object v3

    new-instance v7, Lcom/google/android/material/button/b;

    invoke-direct {v7, v0, v3}, Lcom/google/android/material/button/b;-><init>(Lcom/google/android/material/button/MaterialButton;LU0/j;)V

    iput-object v7, v0, Lcom/google/android/material/button/MaterialButton;->g:Lcom/google/android/material/button/b;

    sget v3, LF0/j;->MaterialButton_android_insetLeft:I

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v7, Lcom/google/android/material/button/b;->c:I

    sget v3, LF0/j;->MaterialButton_android_insetRight:I

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v7, Lcom/google/android/material/button/b;->d:I

    sget v3, LF0/j;->MaterialButton_android_insetTop:I

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v7, Lcom/google/android/material/button/b;->e:I

    sget v3, LF0/j;->MaterialButton_android_insetBottom:I

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v7, Lcom/google/android/material/button/b;->f:I

    sget v3, LF0/j;->MaterialButton_cornerRadius:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, LF0/j;->MaterialButton_cornerRadius:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iget-object v8, v7, Lcom/google/android/material/button/b;->b:LU0/j;

    int-to-float v3, v3

    invoke-virtual {v8}, LU0/j;->g()LU0/j;

    move-result-object v8

    new-instance v9, LU0/a;

    invoke-direct {v9, v3}, LU0/a;-><init>(F)V

    iput-object v9, v8, LU0/j;->e:LU0/c;

    new-instance v9, LU0/a;

    invoke-direct {v9, v3}, LU0/a;-><init>(F)V

    iput-object v9, v8, LU0/j;->f:LU0/c;

    new-instance v9, LU0/a;

    invoke-direct {v9, v3}, LU0/a;-><init>(F)V

    iput-object v9, v8, LU0/j;->g:LU0/c;

    new-instance v9, LU0/a;

    invoke-direct {v9, v3}, LU0/a;-><init>(F)V

    iput-object v9, v8, LU0/j;->h:LU0/c;

    invoke-virtual {v8}, LU0/j;->a()LU0/j;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/google/android/material/button/b;->c(LU0/j;)V

    :cond_0
    sget v3, LF0/j;->MaterialButton_strokeWidth:I

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v7, Lcom/google/android/material/button/b;->g:I

    sget v3, LF0/j;->MaterialButton_backgroundTintMode:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {v3, v5}, Lcom/google/android/material/internal/m;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/material/button/b;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, LF0/j;->MaterialButton_backgroundTint:I

    invoke-static {v3, v1, v5}, LK/I;->A(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/material/button/b;->i:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, LF0/j;->MaterialButton_strokeColor:I

    invoke-static {v3, v1, v5}, LK/I;->A(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/material/button/b;->j:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, LF0/j;->MaterialButton_rippleColor:I

    invoke-static {v3, v1, v5}, LK/I;->A(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/material/button/b;->k:Landroid/content/res/ColorStateList;

    sget v3, LF0/j;->MaterialButton_android_checkable:I

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v7, Lcom/google/android/material/button/b;->o:Z

    sget v3, LF0/j;->MaterialButton_elevation:I

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v7, Lcom/google/android/material/button/b;->q:I

    sget-object v3, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sget v11, LF0/j;->MaterialButton_android_background:I

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_1

    iput-boolean v6, v7, Lcom/google/android/material/button/b;->n:Z

    iget-object v4, v7, Lcom/google/android/material/button/b;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Lcom/google/android/material/button/MaterialButton;->e(Landroid/content/res/ColorStateList;)V

    iget-object v4, v7, Lcom/google/android/material/button/b;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4}, Lcom/google/android/material/button/MaterialButton;->f(Landroid/graphics/PorterDuff$Mode;)V

    move v4, v10

    goto/16 :goto_2

    :cond_1
    new-instance v11, LU0/g;

    iget-object v12, v7, Lcom/google/android/material/button/b;->b:LU0/j;

    invoke-direct {v11, v12}, LU0/g;-><init>(LU0/j;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12}, LU0/g;->h(Landroid/content/Context;)V

    iget-object v12, v7, Lcom/google/android/material/button/b;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {v11, v12}, LU0/g;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v12, v7, Lcom/google/android/material/button/b;->h:Landroid/graphics/PorterDuff$Mode;

    if-eqz v12, :cond_2

    invoke-virtual {v11, v12}, LU0/g;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget v12, v7, Lcom/google/android/material/button/b;->g:I

    int-to-float v12, v12

    iget-object v13, v7, Lcom/google/android/material/button/b;->j:Landroid/content/res/ColorStateList;

    iget-object v14, v11, LU0/g;->d:LU0/f;

    iput v12, v14, LU0/f;->j:F

    invoke-virtual {v11}, LU0/g;->invalidateSelf()V

    iget-object v12, v11, LU0/g;->d:LU0/f;

    iget-object v14, v12, LU0/f;->d:Landroid/content/res/ColorStateList;

    if-eq v14, v13, :cond_3

    iput-object v13, v12, LU0/f;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v12

    invoke-virtual {v11, v12}, LU0/g;->onStateChange([I)Z

    :cond_3
    new-instance v12, LU0/g;

    iget-object v13, v7, Lcom/google/android/material/button/b;->b:LU0/j;

    invoke-direct {v12, v13}, LU0/g;-><init>(LU0/j;)V

    invoke-virtual {v12, v10}, LU0/g;->setTint(I)V

    iget v13, v7, Lcom/google/android/material/button/b;->g:I

    int-to-float v13, v13

    iget-boolean v14, v7, Lcom/google/android/material/button/b;->m:Z

    if-eqz v14, :cond_4

    sget v14, LF0/a;->colorSurface:I

    invoke-static {v0, v14}, LK/I;->z(Landroid/view/View;I)I

    move-result v14

    goto :goto_0

    :cond_4
    move v14, v10

    :goto_0
    iget-object v15, v12, LU0/g;->d:LU0/f;

    iput v13, v15, LU0/f;->j:F

    invoke-virtual {v12}, LU0/g;->invalidateSelf()V

    invoke-static {v14}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    iget-object v14, v12, LU0/g;->d:LU0/f;

    iget-object v15, v14, LU0/f;->d:Landroid/content/res/ColorStateList;

    if-eq v15, v13, :cond_5

    iput-object v13, v14, LU0/f;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v13

    invoke-virtual {v12, v13}, LU0/g;->onStateChange([I)Z

    :cond_5
    new-instance v13, LU0/g;

    iget-object v14, v7, Lcom/google/android/material/button/b;->b:LU0/j;

    invoke-direct {v13, v14}, LU0/g;-><init>(LU0/j;)V

    iput-object v13, v7, Lcom/google/android/material/button/b;->l:LU0/g;

    invoke-virtual {v13, v4}, LU0/g;->setTint(I)V

    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    iget-object v13, v7, Lcom/google/android/material/button/b;->k:Landroid/content/res/ColorStateList;

    if-eqz v13, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    :goto_1
    new-instance v15, Landroid/graphics/drawable/LayerDrawable;

    filled-new-array {v12, v11}, [Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {v15, v11}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    new-instance v11, Landroid/graphics/drawable/InsetDrawable;

    iget v12, v7, Lcom/google/android/material/button/b;->c:I

    iget v14, v7, Lcom/google/android/material/button/b;->e:I

    iget v6, v7, Lcom/google/android/material/button/b;->d:I

    iget v10, v7, Lcom/google/android/material/button/b;->f:I

    move/from16 v17, v14

    move-object v14, v11

    move/from16 v16, v12

    move/from16 v18, v6

    move/from16 v19, v10

    invoke-direct/range {v14 .. v19}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v6, v7, Lcom/google/android/material/button/b;->l:LU0/g;

    invoke-direct {v4, v13, v11, v6}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, v7, Lcom/google/android/material/button/b;->p:Landroid/graphics/drawable/RippleDrawable;

    invoke-super {v0, v4}, Landroidx/appcompat/widget/r;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lcom/google/android/material/button/b;->b(Z)LU0/g;

    move-result-object v6

    if-eqz v6, :cond_7

    iget v10, v7, Lcom/google/android/material/button/b;->q:I

    int-to-float v10, v10

    invoke-virtual {v6, v10}, LU0/g;->i(F)V

    :cond_7
    :goto_2
    iget v6, v7, Lcom/google/android/material/button/b;->c:I

    add-int/2addr v3, v6

    iget v6, v7, Lcom/google/android/material/button/b;->e:I

    add-int/2addr v5, v6

    iget v6, v7, Lcom/google/android/material/button/b;->d:I

    add-int/2addr v8, v6

    iget v6, v7, Lcom/google/android/material/button/b;->f:I

    add-int/2addr v9, v6

    invoke-virtual {v0, v3, v5, v8, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v1, v0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    const/4 v10, 0x1

    goto :goto_3

    :cond_8
    move v10, v4

    :goto_3
    invoke-virtual {v0, v10}, Lcom/google/android/material/button/MaterialButton;->g(Z)V

    return-void
.end method


# virtual methods
.method public final a(LU0/j;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lcom/google/android/material/button/b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/b;->c(LU0/j;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lcom/google/android/material/button/b;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/material/button/b;->o:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lcom/google/android/material/button/b;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/material/button/b;->n:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d()V
    .locals 3

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->s:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final e(Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lcom/google/android/material/button/b;

    iget-object v0, p0, Lcom/google/android/material/button/b;->i:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lcom/google/android/material/button/b;->i:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/b;->b(Z)LU0/g;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/b;->b(Z)LU0/g;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/button/b;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, LU0/g;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/r;->d:Landroidx/appcompat/widget/q;

    if-eqz p0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/q;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/J0;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/appcompat/widget/J0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/q;->e:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/q;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/J0;

    iput-object p1, v0, Landroidx/appcompat/widget/J0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/J0;->d:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/q;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final f(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lcom/google/android/material/button/b;

    iget-object v0, p0, Lcom/google/android/material/button/b;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lcom/google/android/material/button/b;->h:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/b;->b(Z)LU0/g;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/button/b;->h:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/b;->b(Z)LU0/g;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/button/b;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0}, LU0/g;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/r;->d:Landroidx/appcompat/widget/q;

    if-eqz p0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/q;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/J0;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/appcompat/widget/J0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/q;->e:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/q;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/J0;

    iput-object p1, v0, Landroidx/appcompat/widget/J0;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/J0;->c:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/q;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final g(Z)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    if-eqz v0, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->o:I

    add-int/2addr v2, v4

    add-int/2addr v0, v5

    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->d()V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    aget-object v2, p1, v1

    const/4 v3, 0x2

    aget-object p1, p1, v3

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->s:I

    if-eq v4, v1, :cond_5

    if-ne v4, v3, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_a

    :cond_6
    const/4 v0, 0x3

    if-eq v4, v0, :cond_7

    const/4 v0, 0x4

    if-ne v4, v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_a

    :cond_8
    const/16 p1, 0x10

    if-eq v4, p1, :cond_9

    const/16 p1, 0x20

    if-ne v4, p1, :cond_b

    :cond_9
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->d()V

    :cond_b
    return-void
.end method

.method public final getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lcom/google/android/material/button/b;

    iget-object p0, p0, Lcom/google/android/material/button/b;->i:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/appcompat/widget/r;->d:Landroidx/appcompat/widget/q;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/q;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/J0;

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/J0;->a:Landroid/content/res/ColorStateList;

    :cond_1
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lcom/google/android/material/button/b;

    iget-object p0, p0, Lcom/google/android/material/button/b;->h:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/appcompat/widget/r;->d:Landroidx/appcompat/widget/q;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/q;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/J0;

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/J0;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final h(II)V
    .locals 10

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->s:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v3

    :goto_1
    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    iget v6, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-nez v4, :cond_8

    if-eq v1, v8, :cond_8

    if-ne v1, v7, :cond_3

    goto :goto_2

    :cond_3
    const/16 p1, 0x10

    if-eq v1, p1, :cond_4

    const/16 v3, 0x20

    if-ne v1, v3, :cond_16

    :cond_4
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    if-ne v1, p1, :cond_5

    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->o:I

    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->g(Z)V

    return-void

    :cond_5
    if-nez v6, :cond_6

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    invoke-interface {v3, v1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    sub-int/2addr p2, v6

    sub-int/2addr p2, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    div-int/2addr p2, v0

    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->o:I

    if-eq p1, p2, :cond_16

    iput p2, p0, Lcom/google/android/material/button/MaterialButton;->o:I

    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->g(Z)V

    goto/16 :goto_6

    :cond_8
    :goto_2
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->o:I

    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result p2

    if-eq p2, v3, :cond_b

    const/4 v4, 0x6

    if-eq p2, v4, :cond_a

    if-eq p2, v8, :cond_a

    if-eq p2, v7, :cond_9

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_3

    :cond_9
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_3

    :cond_a
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result p2

    const v4, 0x800007

    and-int/2addr p2, v4

    if-eq p2, v3, :cond_d

    const/4 v4, 0x5

    if-eq p2, v4, :cond_c

    const v4, 0x800005

    if-eq p2, v4, :cond_c

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_3

    :cond_c
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_3

    :cond_d
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_3
    if-eq v1, v3, :cond_17

    if-eq v1, v8, :cond_17

    if-ne v1, v0, :cond_e

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq p2, v4, :cond_17

    :cond_e
    if-ne v1, v7, :cond_f

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne p2, v4, :cond_f

    goto :goto_7

    :cond_f
    if-nez v6, :cond_10

    iget-object v4, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    :cond_10
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v9

    if-eqz v9, :cond_11

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v9

    invoke-interface {v9, v8, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_11
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr p1, v4

    sget-object v4, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    sub-int/2addr p1, v4

    sub-int/2addr p1, v6

    sub-int/2addr p1, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    sub-int/2addr p1, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v4, :cond_12

    div-int/2addr p1, v0

    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    if-ne p2, v3, :cond_13

    move p2, v3

    goto :goto_4

    :cond_13
    move p2, v2

    :goto_4
    if-ne v1, v7, :cond_14

    goto :goto_5

    :cond_14
    move v3, v2

    :goto_5
    if-eq p2, v3, :cond_15

    neg-int p1, p1

    :cond_15
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    if-eq p2, p1, :cond_16

    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->g(Z)V

    :cond_16
    :goto_6
    return-void

    :cond_17
    :goto_7
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->g(Z)V

    :cond_18
    :goto_8
    return-void
.end method

.method public final isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->g:Lcom/google/android/material/button/b;

    invoke-virtual {v1, v0}, Lcom/google/android/material/button/b;->b(Z)LU0/g;

    move-result-object v0

    invoke-static {p0, v0}, LR3/f;->Z(Landroid/view/View;LU0/g;)V

    :cond_0
    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/button/MaterialButton;->t:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/material/button/MaterialButton;->u:[I

    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/r;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/widget/CompoundButton;

    goto :goto_0

    :cond_0
    const-class v0, Landroid/widget/Button;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/r;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/widget/CompoundButton;

    goto :goto_0

    :cond_0
    const-class v0, Landroid/widget/Button;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/r;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->h(II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/material/button/MaterialButton$SavedState;

    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->d:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Lcom/google/android/material/button/MaterialButton$SavedState;->f:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/button/MaterialButton$SavedState;

    invoke-direct {v1, v0}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    iput-boolean p0, v1, Lcom/google/android/material/button/MaterialButton$SavedState;->f:Z

    return-object v1
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/r;->onTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->h(II)V

    return-void
.end method

.method public final performClick()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->toggle()V

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public final refreshDrawableState()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->refreshDrawableState()V

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lcom/google/android/material/button/b;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/b;->b(Z)LU0/g;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/b;->b(Z)LU0/g;

    move-result-object p0

    invoke-virtual {p0, p1}, LU0/g;->setTint(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const-string v0, "MaterialButton"

    const-string v1, "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->g:Lcom/google/android/material/button/b;

    iput-boolean v0, v1, Lcom/google/android/material/button/b;->n:Z

    iget-object v0, v1, Lcom/google/android/material/button/b;->i:Landroid/content/res/ColorStateList;

    iget-object v2, v1, Lcom/google/android/material/button/b;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2, v0}, Lcom/google/android/material/button/MaterialButton;->e(Landroid/content/res/ColorStateList;)V

    iget-object v0, v1, Lcom/google/android/material/button/b;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0}, Lcom/google/android/material/button/MaterialButton;->f(Landroid/graphics/PorterDuff$Mode;)V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/r;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/r;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le0/a;->E(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->e(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->f(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setChecked(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    if-eq v0, p1, :cond_4

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->refreshDrawableState()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    iget-boolean v1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b(IZ)V

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->r:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->r:Z

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->h:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->r:Z

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method public final setElevation(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->g:Lcom/google/android/material/button/b;

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/b;->b(Z)LU0/g;

    move-result-object p0

    invoke-virtual {p0, p1}, LU0/g;->i(F)V

    :cond_0
    return-void
.end method

.method public final setPressed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroidx/recyclerview/widget/y;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method public final setTextAlignment(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setTextAlignment(I)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->h(II)V

    return-void
.end method

.method public final toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method
