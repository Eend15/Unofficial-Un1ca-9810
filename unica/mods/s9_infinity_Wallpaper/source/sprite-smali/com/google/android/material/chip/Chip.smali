.class public Lcom/google/android/material/chip/Chip;
.super Landroidx/appcompat/widget/s;
.source "SourceFile"

# interfaces
.implements LM0/e;
.implements LU0/s;
.implements Lcom/google/android/material/internal/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/appcompat/widget/s;",
        "LM0/e;",
        "LU0/s;",
        "Lcom/google/android/material/internal/f;"
    }
.end annotation


# static fields
.field public static final A:[I

.field public static final x:I

.field public static final y:Landroid/graphics/Rect;

.field public static final z:[I


# instance fields
.field public final h:LM0/f;

.field public i:Landroid/graphics/drawable/InsetDrawable;

.field public j:Landroid/graphics/drawable/RippleDrawable;

.field public k:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public l:Landroidx/recyclerview/widget/y;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public final q:Z

.field public r:I

.field public s:I

.field public t:Ljava/lang/String;

.field public final u:Landroid/graphics/Rect;

.field public final v:Landroid/graphics/RectF;

.field public final w:LM0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, LF0/i;->Widget_MaterialComponents_Chip_Action:I

    sput v0, Lcom/google/android/material/chip/Chip;->x:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/material/chip/Chip;->y:Landroid/graphics/Rect;

    const v0, 0x10100a1

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/chip/Chip;->z:[I

    const v0, 0x101009f

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/chip/Chip;->A:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v11, LF0/a;->chipStyle:I

    sget v12, Lcom/google/android/material/chip/Chip;->x:I

    move-object/from16 v0, p1

    invoke-static {v0, v8, v11, v12}, LY0/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0, v8, v11}, Landroidx/appcompat/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/chip/Chip;->u:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/chip/Chip;->v:Landroid/graphics/RectF;

    new-instance v0, LM0/a;

    invoke-direct {v0, v9, v1}, LM0/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, v1, Lcom/google/android/material/chip/Chip;->w:LM0/a;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x1

    const v15, 0x800013

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v2, "background"

    invoke-interface {v8, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Chip"

    if-eqz v2, :cond_1

    const-string v2, "Do not set the background; Chip manages its own background drawable."

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v2, "drawableLeft"

    invoke-interface {v8, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_41

    const-string v2, "drawableStart"

    invoke-interface {v8, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_40

    const-string v2, "drawableEnd"

    invoke-interface {v8, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Please set end drawable using R.attr#closeIcon."

    if-nez v2, :cond_3f

    const-string v2, "drawableRight"

    invoke-interface {v8, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3e

    const-string v2, "singleLine"

    invoke-interface {v8, v0, v2, v14}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string v2, "lines"

    invoke-interface {v8, v0, v2, v14}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v14, :cond_3d

    const-string v2, "minLines"

    invoke-interface {v8, v0, v2, v14}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v14, :cond_3d

    const-string v2, "maxLines"

    invoke-interface {v8, v0, v2, v14}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v14, :cond_3d

    const-string v2, "gravity"

    invoke-interface {v8, v0, v2, v15}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v15, :cond_2

    const-string v0, "Chip text must be vertically center and start aligned"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    new-instance v7, LM0/f;

    invoke-direct {v7, v13, v8, v11, v12}, LM0/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v4, LF0/j;->Chip:[I

    new-array v0, v9, [I

    iget-object v2, v7, LM0/f;->c0:Landroid/content/Context;

    move-object/from16 v3, p2

    move v5, v11

    move v6, v12

    move-object v15, v7

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/l;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v0, LF0/j;->Chip_shapeAppearance:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, v15, LM0/f;->C0:Z

    sget v0, LF0/j;->Chip_chipSurfaceColor:I

    iget-object v3, v15, LM0/f;->c0:Landroid/content/Context;

    invoke-static {v3, v2, v0}, LK/I;->A(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v4, v15, LM0/f;->y:Landroid/content/res/ColorStateList;

    if-eq v4, v0, :cond_3

    iput-object v0, v15, LM0/f;->y:Landroid/content/res/ColorStateList;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v15, v0}, LM0/f;->onStateChange([I)Z

    :cond_3
    sget v0, LF0/j;->Chip_chipBackgroundColor:I

    invoke-static {v3, v2, v0}, LK/I;->A(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v4, v15, LM0/f;->z:Landroid/content/res/ColorStateList;

    if-eq v4, v0, :cond_4

    iput-object v0, v15, LM0/f;->z:Landroid/content/res/ColorStateList;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v15, v0}, LM0/f;->onStateChange([I)Z

    :cond_4
    sget v0, LF0/j;->Chip_chipMinHeight:I

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iget v5, v15, LM0/f;->A:F

    cmpl-float v5, v5, v0

    if-eqz v5, :cond_5

    iput v0, v15, LM0/f;->A:F

    invoke-virtual {v15}, LU0/g;->invalidateSelf()V

    invoke-virtual {v15}, LM0/f;->u()V

    :cond_5
    sget v0, LF0/j;->Chip_chipCornerRadius:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, LF0/j;->Chip_chipCornerRadius:I

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iget v5, v15, LM0/f;->B:F

    cmpl-float v5, v5, v0

    if-eqz v5, :cond_6

    iput v0, v15, LM0/f;->B:F

    iget-object v5, v15, LU0/g;->d:LU0/f;

    iget-object v5, v5, LU0/f;->a:LU0/j;

    invoke-virtual {v5}, LU0/j;->g()LU0/j;

    move-result-object v5

    new-instance v6, LU0/a;

    invoke-direct {v6, v0}, LU0/a;-><init>(F)V

    iput-object v6, v5, LU0/j;->e:LU0/c;

    new-instance v6, LU0/a;

    invoke-direct {v6, v0}, LU0/a;-><init>(F)V

    iput-object v6, v5, LU0/j;->f:LU0/c;

    new-instance v6, LU0/a;

    invoke-direct {v6, v0}, LU0/a;-><init>(F)V

    iput-object v6, v5, LU0/j;->g:LU0/c;

    new-instance v6, LU0/a;

    invoke-direct {v6, v0}, LU0/a;-><init>(F)V

    iput-object v6, v5, LU0/j;->h:LU0/c;

    invoke-virtual {v5}, LU0/j;->a()LU0/j;

    move-result-object v0

    invoke-virtual {v15, v0}, LU0/g;->a(LU0/j;)V

    :cond_6
    sget v0, LF0/j;->Chip_chipStrokeColor:I

    invoke-static {v3, v2, v0}, LK/I;->A(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v5, v15, LM0/f;->C:Landroid/content/res/ColorStateList;

    if-eq v5, v0, :cond_8

    iput-object v0, v15, LM0/f;->C:Landroid/content/res/ColorStateList;

    iget-boolean v5, v15, LM0/f;->C0:Z

    if-eqz v5, :cond_7

    iget-object v5, v15, LU0/g;->d:LU0/f;

    iget-object v6, v5, LU0/f;->d:Landroid/content/res/ColorStateList;

    if-eq v6, v0, :cond_7

    iput-object v0, v5, LU0/f;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v15, v0}, LM0/f;->onStateChange([I)Z

    :cond_7
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v15, v0}, LM0/f;->onStateChange([I)Z

    :cond_8
    sget v0, LF0/j;->Chip_chipStrokeWidth:I

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iget v5, v15, LM0/f;->D:F

    cmpl-float v5, v5, v0

    if-eqz v5, :cond_a

    iput v0, v15, LM0/f;->D:F

    iget-object v5, v15, LM0/f;->d0:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-boolean v5, v15, LM0/f;->C0:Z

    if-eqz v5, :cond_9

    iget-object v5, v15, LU0/g;->d:LU0/f;

    iput v0, v5, LU0/f;->j:F

    invoke-virtual {v15}, LU0/g;->invalidateSelf()V

    :cond_9
    invoke-virtual {v15}, LU0/g;->invalidateSelf()V

    :cond_a
    sget v0, LF0/j;->Chip_rippleColor:I

    invoke-static {v3, v2, v0}, LK/I;->A(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v5, v15, LM0/f;->E:Landroid/content/res/ColorStateList;

    if-eq v5, v0, :cond_b

    iput-object v0, v15, LM0/f;->E:Landroid/content/res/ColorStateList;

    iput-object v10, v15, LM0/f;->x0:Landroid/content/res/ColorStateList;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v15, v0}, LM0/f;->onStateChange([I)Z

    :cond_b
    sget v0, LF0/j;->Chip_android_text:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, ""

    :cond_c
    iget-object v5, v15, LM0/f;->F:Ljava/lang/CharSequence;

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    iput-object v0, v15, LM0/f;->F:Ljava/lang/CharSequence;

    iget-object v0, v15, LM0/f;->i0:Lcom/google/android/material/internal/j;

    iput-boolean v14, v0, Lcom/google/android/material/internal/j;->d:Z

    invoke-virtual {v15}, LU0/g;->invalidateSelf()V

    invoke-virtual {v15}, LM0/f;->u()V

    :cond_d
    sget v0, LF0/j;->Chip_android_textAppearance:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v2, v0, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_e

    new-instance v5, LR0/d;

    invoke-direct {v5, v3, v0}, LR0/d;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_e
    move-object v5, v10

    :goto_1
    sget v0, LF0/j;->Chip_android_textSize:I

    iget v6, v5, LR0/d;->k:F

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v5, LR0/d;->k:F

    invoke-virtual {v15, v5}, LM0/f;->z(LR0/d;)V

    sget v0, LF0/j;->Chip_android_ellipsize:I

    invoke-virtual {v2, v0, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-eq v0, v14, :cond_11

    const/4 v5, 0x2

    if-eq v0, v5, :cond_10

    const/4 v5, 0x3

    if-eq v0, v5, :cond_f

    goto :goto_2

    :cond_f
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, v15, LM0/f;->z0:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    :cond_10
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, v15, LM0/f;->z0:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    :cond_11
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, v15, LM0/f;->z0:Landroid/text/TextUtils$TruncateAt;

    :goto_2
    sget v0, LF0/j;->Chip_chipIconVisible:I

    invoke-virtual {v2, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v15, v0}, LM0/f;->x(Z)V

    const-string v0, "http://schemas.android.com/apk/res-auto"

    if-eqz v8, :cond_12

    const-string v5, "chipIconEnabled"

    invoke-interface {v8, v0, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    const-string v5, "chipIconVisible"

    invoke-interface {v8, v0, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_12

    sget v5, LF0/j;->Chip_chipIconEnabled:I

    invoke-virtual {v2, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v15, v5}, LM0/f;->x(Z)V

    :cond_12
    sget v5, LF0/j;->Chip_chipIcon:I

    invoke-static {v3, v2, v5}, LK/I;->G(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, v15, LM0/f;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_13

    instance-of v7, v6, LD/a;

    if-eqz v7, :cond_14

    check-cast v6, LD/a;

    :cond_13
    move-object v6, v10

    :cond_14
    if-eq v6, v5, :cond_17

    invoke-virtual {v15}, LM0/f;->p()F

    move-result v7

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_3

    :cond_15
    move-object v5, v10

    :goto_3
    iput-object v5, v15, LM0/f;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, LM0/f;->p()F

    move-result v5

    invoke-static {v6}, LM0/f;->D(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v15}, LM0/f;->B()Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, v15, LM0/f;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v6}, LM0/f;->n(Landroid/graphics/drawable/Drawable;)V

    :cond_16
    invoke-virtual {v15}, LU0/g;->invalidateSelf()V

    cmpl-float v5, v7, v5

    if-eqz v5, :cond_17

    invoke-virtual {v15}, LM0/f;->u()V

    :cond_17
    sget v5, LF0/j;->Chip_chipIconTint:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_19

    sget v5, LF0/j;->Chip_chipIconTint:I

    invoke-static {v3, v2, v5}, LK/I;->A(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-boolean v14, v15, LM0/f;->K:Z

    iget-object v6, v15, LM0/f;->I:Landroid/content/res/ColorStateList;

    if-eq v6, v5, :cond_19

    iput-object v5, v15, LM0/f;->I:Landroid/content/res/ColorStateList;

    invoke-virtual {v15}, LM0/f;->B()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, v15, LM0/f;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_18
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v5

    invoke-virtual {v15, v5}, LM0/f;->onStateChange([I)Z

    :cond_19
    sget v5, LF0/j;->Chip_chipIconSize:I

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iget v6, v15, LM0/f;->J:F

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_1a

    invoke-virtual {v15}, LM0/f;->p()F

    move-result v6

    iput v5, v15, LM0/f;->J:F

    invoke-virtual {v15}, LM0/f;->p()F

    move-result v5

    invoke-virtual {v15}, LU0/g;->invalidateSelf()V

    cmpl-float v5, v6, v5

    if-eqz v5, :cond_1a

    invoke-virtual {v15}, LM0/f;->u()V

    :cond_1a
    sget v5, LF0/j;->Chip_closeIconVisible:I

    invoke-virtual {v2, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v15, v5}, LM0/f;->y(Z)V

    if-eqz v8, :cond_1b

    const-string v5, "closeIconEnabled"

    invoke-interface {v8, v0, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    const-string v5, "closeIconVisible"

    invoke-interface {v8, v0, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1b

    sget v5, LF0/j;->Chip_closeIconEnabled:I

    invoke-virtual {v2, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v15, v5}, LM0/f;->y(Z)V

    :cond_1b
    sget v5, LF0/j;->Chip_closeIcon:I

    invoke-static {v3, v2, v5}, LK/I;->G(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, v15, LM0/f;->M:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1c

    instance-of v7, v6, LD/a;

    if-eqz v7, :cond_1d

    check-cast v6, LD/a;

    :cond_1c
    move-object v6, v10

    :cond_1d
    if-eq v6, v5, :cond_21

    invoke-virtual {v15}, LM0/f;->q()F

    move-result v7

    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_4

    :cond_1e
    move-object v5, v10

    :goto_4
    iput-object v5, v15, LM0/f;->M:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    iget-object v14, v15, LM0/f;->E:Landroid/content/res/ColorStateList;

    if-eqz v14, :cond_1f

    goto :goto_5

    :cond_1f
    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    :goto_5
    iget-object v10, v15, LM0/f;->M:Landroid/graphics/drawable/Drawable;

    sget-object v9, LM0/f;->E0:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v5, v14, v10, v9}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v5, v15, LM0/f;->N:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v15}, LM0/f;->q()F

    move-result v5

    invoke-static {v6}, LM0/f;->D(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v15}, LM0/f;->C()Z

    move-result v6

    if-eqz v6, :cond_20

    iget-object v6, v15, LM0/f;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v6}, LM0/f;->n(Landroid/graphics/drawable/Drawable;)V

    :cond_20
    invoke-virtual {v15}, LU0/g;->invalidateSelf()V

    cmpl-float v5, v7, v5

    if-eqz v5, :cond_21

    invoke-virtual {v15}, LM0/f;->u()V

    :cond_21
    sget v5, LF0/j;->Chip_closeIconTint:I

    invoke-static {v3, v2, v5}, LK/I;->A(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iget-object v6, v15, LM0/f;->O:Landroid/content/res/ColorStateList;

    if-eq v6, v5, :cond_23

    iput-object v5, v15, LM0/f;->O:Landroid/content/res/ColorStateList;

    invoke-virtual {v15}, LM0/f;->C()Z

    move-result v6

    if-eqz v6, :cond_22

    iget-object v6, v15, LM0/f;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_22
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v5

    invoke-virtual {v15, v5}, LM0/f;->onStateChange([I)Z

    :cond_23
    sget v5, LF0/j;->Chip_closeIconSize:I

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iget v6, v15, LM0/f;->P:F

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_24

    iput v5, v15, LM0/f;->P:F

    invoke-virtual {v15}, LU0/g;->invalidateSelf()V

    invoke-virtual {v15}, LM0/f;->C()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-virtual {v15}, LM0/f;->u()V

    :cond_24
    sget v5, LF0/j;->Chip_android_checkable:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iget-boolean v7, v15, LM0/f;->Q:Z

    if-eq v7, v5, :cond_26

    iput-boolean v5, v15, LM0/f;->Q:Z

    invoke-virtual {v15}, LM0/f;->p()F

    move-result v7

    if-nez v5, :cond_25

    iget-boolean v5, v15, LM0/f;->p0:Z

    if-eqz v5, :cond_25

    iput-boolean v6, v15, LM0/f;->p0:Z

    :cond_25
    invoke-virtual {v15}, LM0/f;->p()F

    move-result v5

    invoke-virtual {v15}, LU0/g;->invalidateSelf()V

    cmpl-float v5, v7, v5

    if-eqz v5, :cond_26

    invoke-virtual {v15}, LM0/f;->u()V

    :cond_26
    sget v5, LF0/j;->Chip_checkedIconVisible:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v15, v5}, LM0/f;->w(Z)V

    if-eqz v8, :cond_27

    const-string v5, "checkedIconEnabled"

    invoke-interface {v8, v0, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_27

    const-string v5, "checkedIconVisible"

    invoke-interface {v8, v0, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    sget v0, LF0/j;->Chip_checkedIconEnabled:I

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v15, v0}, LM0/f;->w(Z)V

    :cond_27
    sget v0, LF0/j;->Chip_checkedIcon:I

    invoke-static {v3, v2, v0}, LK/I;->G(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, v15, LM0/f;->S:Landroid/graphics/drawable/Drawable;

    if-eq v5, v0, :cond_28

    invoke-virtual {v15}, LM0/f;->p()F

    move-result v5

    iput-object v0, v15, LM0/f;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, LM0/f;->p()F

    move-result v0

    iget-object v6, v15, LM0/f;->S:Landroid/graphics/drawable/Drawable;

    invoke-static {v6}, LM0/f;->D(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v15, LM0/f;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v6}, LM0/f;->n(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v15}, LU0/g;->invalidateSelf()V

    cmpl-float v0, v5, v0

    if-eqz v0, :cond_28

    invoke-virtual {v15}, LM0/f;->u()V

    :cond_28
    sget v0, LF0/j;->Chip_checkedIconTint:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget v0, LF0/j;->Chip_checkedIconTint:I

    invoke-static {v3, v2, v0}, LK/I;->A(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v5, v15, LM0/f;->T:Landroid/content/res/ColorStateList;

    if-eq v5, v0, :cond_2a

    iput-object v0, v15, LM0/f;->T:Landroid/content/res/ColorStateList;

    iget-boolean v5, v15, LM0/f;->R:Z

    if-eqz v5, :cond_29

    iget-object v5, v15, LM0/f;->S:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_29

    iget-boolean v6, v15, LM0/f;->Q:Z

    if-eqz v6, :cond_29

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_29
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v15, v0}, LM0/f;->onStateChange([I)Z

    :cond_2a
    sget v0, LF0/j;->Chip_showMotionSpec:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    const-string v6, "MotionSpec"

    const-string v7, "Can\'t load animation resource ID #0x"

    if-eqz v5, :cond_2c

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    if-eqz v9, :cond_2c

    :try_start_0
    invoke-static {v3, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    instance-of v5, v0, Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_2b

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, LG0/b;->a(Ljava/util/ArrayList;)LG0/b;

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_2b
    if-eqz v0, :cond_2c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, LG0/b;->a(Ljava/util/ArrayList;)LG0/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2c
    :goto_7
    sget v0, LF0/j;->Chip_hideMotionSpec:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2e

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    if-eqz v9, :cond_2e

    :try_start_1
    invoke-static {v3, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    instance-of v3, v0, Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2d

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, LG0/b;->a(Ljava/util/ArrayList;)LG0/b;

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_2d
    if-eqz v0, :cond_2e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, LG0/b;->a(Ljava/util/ArrayList;)LG0/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2e
    :goto_9
    sget v0, LF0/j;->Chip_chipStartPadding:I

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iget v3, v15, LM0/f;->U:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_2f

    iput v0, v15, LM0/f;->U:F

    invoke-virtual {v15}, LU0/g;->invalidateSelf()V

    invoke-virtual {v15}, LM0/f;->u()V

    :cond_2f
    sget v0, LF0/j;->Chip_iconStartPadding:I

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iget v3, v15, LM0/f;->V:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_30

    invoke-virtual {v15}, LM0/f;->p()F

    move-result v3

    iput v0, v15, LM0/f;->V:F

    invoke-virtual {v15}, LM0/f;->p()F

    move-result v0

    invoke-virtual {v15}, LU0/g;->invalidateSelf()V

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_30

    invoke-virtual {v15}, LM0/f;->u()V

    :cond_30
    sget v0, LF0/j;->Chip_iconEndPadding:I

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iget v3, v15, LM0/f;->W:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_31

    invoke-virtual {v15}, LM0/f;->p()F

    move-result v3

    iput v0, v15, LM0/f;->W:F

    invoke-virtual {v15}, LM0/f;->p()F

    move-result v0

    invoke-virtual {v15}, LU0/g;->invalidateSelf()V

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_31

    invoke-virtual {v15}, LM0/f;->u()V

    :cond_31
    sget v0, LF0/j;->Chip_textStartPadding:I

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iget v3, v15, LM0/f;->X:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_32

    iput v0, v15, LM0/f;->X:F

    invoke-virtual {v15}, LU0/g;->invalidateSelf()V

    invoke-virtual {v15}, LM0/f;->u()V

    :cond_32
    sget v0, LF0/j;->Chip_textEndPadding:I

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iget v3, v15, LM0/f;->Y:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_33

    iput v0, v15, LM0/f;->Y:F

    invoke-virtual {v15}, LU0/g;->invalidateSelf()V

    invoke-virtual {v15}, LM0/f;->u()V

    :cond_33
    sget v0, LF0/j;->Chip_closeIconStartPadding:I

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iget v3, v15, LM0/f;->Z:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_34

    iput v0, v15, LM0/f;->Z:F

    invoke-virtual {v15}, LU0/g;->invalidateSelf()V

    invoke-virtual {v15}, LM0/f;->C()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {v15}, LM0/f;->u()V

    :cond_34
    sget v0, LF0/j;->Chip_closeIconEndPadding:I

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iget v3, v15, LM0/f;->a0:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_35

    iput v0, v15, LM0/f;->a0:F

    invoke-virtual {v15}, LU0/g;->invalidateSelf()V

    invoke-virtual {v15}, LM0/f;->C()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {v15}, LM0/f;->u()V

    :cond_35
    sget v0, LF0/j;->Chip_chipEndPadding:I

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iget v3, v15, LM0/f;->b0:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_36

    iput v0, v15, LM0/f;->b0:F

    invoke-virtual {v15}, LU0/g;->invalidateSelf()V

    invoke-virtual {v15}, LM0/f;->u()V

    :cond_36
    sget v0, LF0/j;->Chip_android_maxWidth:I

    const v3, 0x7fffffff

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v15, LM0/f;->B0:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, LF0/j;->Chip:[I

    const/4 v2, 0x0

    new-array v7, v2, [I

    invoke-static {v13, v8, v11, v12}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v2, v13

    move-object/from16 v3, p2

    move-object v4, v0

    move v5, v11

    move v6, v12

    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/l;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    invoke-virtual {v13, v8, v0, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, LF0/j;->Chip_ensureMinTouchTargetSize:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/android/material/chip/Chip;->q:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lcom/google/android/material/internal/m;->a(Landroid/content/Context;I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    sget v3, LF0/j;->Chip_chipMinTouchTargetSize:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/google/android/material/chip/Chip;->s:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, v1, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    if-eq v0, v15, :cond_38

    if-eqz v0, :cond_37

    new-instance v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, LM0/f;->y0:Ljava/lang/ref/WeakReference;

    :cond_37
    iput-object v15, v1, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    const/4 v2, 0x0

    iput-boolean v2, v15, LM0/f;->A0:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v15, LM0/f;->y0:Ljava/lang/ref/WeakReference;

    iget v0, v1, Lcom/google/android/material/chip/Chip;->s:I

    invoke-virtual {v1, v0}, Lcom/google/android/material/chip/Chip;->b(I)V

    :cond_38
    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-static/range {p0 .. p0}, LK/x;->d(Landroid/view/View;)F

    move-result v0

    invoke-virtual {v15, v0}, LU0/g;->i(F)V

    sget-object v0, LF0/j;->Chip:[I

    const/4 v2, 0x0

    new-array v7, v2, [I

    invoke-static {v13, v8, v11, v12}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v2, v13

    move-object/from16 v3, p2

    move-object v4, v0

    move v5, v11

    move v6, v12

    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/l;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    invoke-virtual {v13, v8, v0, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, LF0/j;->Chip_shapeAppearance:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, LM0/d;

    invoke-direct {v0, v1, v1}, LM0/d;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/Chip;->c()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, v1, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    if-eqz v0, :cond_39

    iget-boolean v0, v0, LM0/f;->L:Z

    :cond_39
    const/4 v3, 0x0

    invoke-static {v1, v3}, LK/D;->f(Landroid/view/View;LK/b;)V

    if-nez v2, :cond_3a

    new-instance v0, LM0/c;

    invoke-direct {v0, v1}, LM0/c;-><init>(Lcom/google/android/material/chip/Chip;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_3a
    iget-boolean v0, v1, Lcom/google/android/material/chip/Chip;->m:Z

    invoke-virtual {v1, v0}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object v0, v15, LM0/f;->F:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v15, LM0/f;->z0:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/Chip;->g()V

    iget-object v0, v1, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    iget-boolean v0, v0, LM0/f;->A0:Z

    if-nez v0, :cond_3b

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/material/chip/Chip;->setLines(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    :cond_3b
    const v2, 0x800013

    invoke-super {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/chip/Chip;->f()V

    iget-boolean v0, v1, Lcom/google/android/material/chip/Chip;->q:Z

    if-eqz v0, :cond_3c

    iget v0, v1, Lcom/google/android/material/chip/Chip;->s:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    :cond_3c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    iput v0, v1, Lcom/google/android/material/chip/Chip;->r:I

    new-instance v0, LM0/b;

    invoke-direct {v0, v1}, LM0/b;-><init>(Lcom/google/android/material/chip/Chip;)V

    invoke-super {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_3d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Chip does not support multi-line text"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(LU0/j;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    invoke-virtual {p0, p1}, LU0/g;->a(LU0/j;)V

    return-void
.end method

.method public final b(I)V
    .locals 11

    iput p1, p0, Lcom/google/android/material/chip/Chip;->s:I

    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->q:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_1

    if-eqz p1, :cond_2

    iput-object v2, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    if-eqz p1, :cond_0

    iget v1, p1, LM0/f;->A:F

    :cond_0
    float-to-int p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    iget v0, v0, LM0/f;->A:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    invoke-virtual {v4}, LM0/f;->getIntrinsicWidth()I

    move-result v4

    sub-int v4, p1, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-gtz v4, :cond_7

    if-gtz v0, :cond_7

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_5

    if-eqz p1, :cond_6

    iput-object v2, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    if-eqz p1, :cond_4

    iget v1, p1, LM0/f;->A:F

    :cond_4
    float-to-int p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()V

    :cond_6
    :goto_1
    return-void

    :cond_7
    if-lez v4, :cond_8

    div-int/lit8 v4, v4, 0x2

    move v9, v4

    goto :goto_2

    :cond_8
    move v9, v3

    :goto_2
    if-lez v0, :cond_9

    div-int/lit8 v3, v0, 0x2

    :cond_9
    move v10, v3

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_a

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, v10, :cond_a

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v10, :cond_a

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, v9, :cond_a

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, v9, :cond_a

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()V

    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinHeight()I

    move-result v0

    if-eq v0, p1, :cond_b

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinWidth()I

    move-result v0

    if-eq v0, p1, :cond_c

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    :cond_c
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    iget-object v6, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    move-object v5, p1

    move v7, v9

    move v8, v10

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    if-eqz p0, :cond_2

    iget-object p0, p0, LM0/f;->M:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    instance-of v0, p0, LD/a;

    if-eqz v0, :cond_1

    check-cast p0, LD/a;

    :cond_0
    const/4 p0, 0x0

    :cond_1
    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, LM0/f;->Q:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final drawableStateChanged()V
    .locals 5

    invoke-super {p0}, Landroidx/appcompat/widget/s;->drawableStateChanged()V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, v0, LM0/f;->M:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, LM0/f;->t(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->p:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->o:Z

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    new-array v2, v2, [I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x101009e

    aput v3, v2, v1

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_0
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->p:Z

    if-eqz v4, :cond_5

    const v4, 0x101009c

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    :cond_5
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->o:Z

    if-eqz v4, :cond_6

    const v4, 0x1010367

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    :cond_6
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eqz v4, :cond_7

    const v4, 0x10100a7

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    :cond_7
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x10100a1

    aput v4, v2, v3

    :cond_8
    iget-object v3, v0, LM0/f;->w0:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_9

    iput-object v2, v0, LM0/f;->w0:[I

    invoke-virtual {v0}, LM0/f;->C()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1, v2}, LM0/f;->v([I[I)Z

    move-result v1

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    return-void
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    iget-object v2, v0, LM0/f;->E:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    if-nez v3, :cond_1

    move-object v3, v0

    :cond_1
    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/google/android/material/chip/Chip;->j:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Landroid/graphics/drawable/RippleDrawable;

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    return-void
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, LM0/f;->b0:F

    iget v2, v0, LM0/f;->Y:F

    add-float/2addr v1, v2

    invoke-virtual {v0}, LM0/f;->q()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    iget v2, v0, LM0/f;->U:F

    iget v3, v0, LM0/f;->X:F

    add-float/2addr v2, v3

    invoke-virtual {v0}, LM0/f;->p()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sget-object v4, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    if-eqz v1, :cond_1

    iget-object v1, v1, LM0/f;->i0:Lcom/google/android/material/internal/j;

    iget-object v1, v1, Lcom/google/android/material/internal/j;->f:LR0/d;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->w:LM0/a;

    invoke-virtual {v1, v2, v0, p0}, LR0/d;->e(Landroid/content/Context;Landroid/text/TextPaint;LK/I;)V

    :cond_2
    return-void
.end method

.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->t:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/material/chip/ChipGroup;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/material/chip/ChipGroup;

    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup;->j:Lcom/google/android/material/internal/a;

    iget-boolean p0, p0, Lcom/google/android/material/internal/a;->a:Z

    if-eqz p0, :cond_1

    const-string p0, "android.widget.RadioButton"

    return-object p0

    :cond_1
    const-string p0, "android.widget.CompoundButton"

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "android.widget.Button"

    return-object p0

    :cond_3
    const-string p0, "android.view.View"

    return-object p0
.end method

.method public final getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    if-eqz p0, :cond_0

    iget-object p0, p0, LM0/f;->z0:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    invoke-static {p0, v0}, LR3/f;->Z(Landroid/view/View;LU0/g;)V

    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/chip/Chip;->z:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/material/chip/Chip;->A:[I

    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->o:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/chip/Chip;->o:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->v:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->c()Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->o:Z

    if-eq v1, v0, :cond_2

    iput-boolean v0, p0, Lcom/google/android/material/chip/Chip;->o:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/chip/ChipGroup;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    iget-boolean v1, v0, Lcom/google/android/material/internal/e;->f:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/google/android/material/chip/Chip;

    if-eqz v4, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/chip/Chip;

    if-ne v4, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_1
    sget v0, LF0/e;->row_index_key:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    const/4 v0, 0x1

    invoke-static {v2, v0, v3, v0, p0}, LA1/e;->S(IIIIZ)LA1/e;

    move-result-object p0

    iget-object p0, p0, LA1/e;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    :cond_4
    return-void
.end method

.method public final onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1

    iget-object p2, p0, Lcom/google/android/material/chip/Chip;->v:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->c()Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x3ea

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    iget v0, p0, Lcom/google/android/material/chip/Chip;->r:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/chip/Chip;->r:I

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->f()V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->v:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->c()Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eqz v0, :cond_5

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/google/android/material/chip/Chip;->n:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_1
    :goto_0
    move v0, v2

    goto :goto_3

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/View;->playSoundEffect(I)V

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eqz v1, :cond_6

    iput-boolean v3, p0, Lcom/google/android/material/chip/Chip;->n:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eq v0, v2, :cond_1

    iput-boolean v2, p0, Lcom/google/android/material/chip/Chip;->n:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0

    :cond_5
    :goto_2
    move v0, v3

    :cond_6
    :goto_3
    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_4

    :cond_7
    move v2, v3

    :cond_8
    :goto_4
    return v2
.end method

.method public final setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    :cond_0
    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_1

    const-string p0, "Chip"

    const-string p1, "Do not set the background; Chip manages its own background drawable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    const-string p0, "Chip"

    const-string p1, "Do not set the background color; Chip manages its own background drawable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    :cond_0
    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_1

    const-string p0, "Chip"

    const-string p1, "Do not set the background drawable; Chip manages its own background drawable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/s;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 0

    const-string p0, "Chip"

    const-string p1, "Do not set the background resource; Chip manages its own background drawable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    const-string p0, "Chip"

    const-string p1, "Do not set the background tint list; Chip manages its own background drawable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    const-string p0, "Chip"

    const-string p1, "Do not set the background tint mode; Chip manages its own background drawable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->m:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, LM0/f;->Q:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/s;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/s;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, LU0/g;->i(F)V

    :cond_0
    return-void
.end method

.method public final setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    if-eqz p0, :cond_1

    iput-object p1, p0, LM0/f;->z0:Landroid/text/TextUtils$TruncateAt;

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Text within a chip are not allowed to scroll."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setGravity(I)V
    .locals 1

    const v0, 0x800013

    if-eq p1, v0, :cond_0

    const-string p0, "Chip"

    const-string p1, "Chip text must be vertically center and start aligned"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    return-void
.end method

.method public final setLayoutDirection(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method public final setLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setMaxLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setMaxWidth(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    if-eqz p0, :cond_0

    iput p1, p0, LM0/f;->B0:I

    :cond_0
    return-void
.end method

.method public final setMinLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setMinLines(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public final setSingleLine(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iget-boolean v0, v0, LM0/f;->A0:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    if-eqz p0, :cond_3

    iget-object p2, p0, LM0/f;->F:Ljava/lang/CharSequence;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iput-object p1, p0, LM0/f;->F:Ljava/lang/CharSequence;

    iget-object p1, p0, LM0/f;->i0:Lcom/google/android/material/internal/j;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/google/android/material/internal/j;->d:Z

    invoke-virtual {p0}, LU0/g;->invalidateSelf()V

    invoke-virtual {p0}, LM0/f;->u()V

    :cond_3
    return-void
.end method

.method public final setTextAppearance(I)V
    .locals 3

    .line 5
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    if-eqz v0, :cond_0

    .line 7
    new-instance v1, LR0/d;

    iget-object v2, v0, LM0/f;->c0:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, LR0/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, LM0/f;->z(LR0/d;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, LR0/d;

    iget-object v1, p1, LM0/f;->c0:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, LR0/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, LM0/f;->z(LR0/d;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()V

    return-void
.end method
