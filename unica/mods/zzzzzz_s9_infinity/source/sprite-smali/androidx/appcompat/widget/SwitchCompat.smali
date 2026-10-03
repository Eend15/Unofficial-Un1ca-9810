.class public Landroidx/appcompat/widget/SwitchCompat;
.super Landroid/widget/CompoundButton;
.source "SourceFile"


# static fields
.field public static final U:Landroidx/appcompat/widget/G0;

.field public static final V:[I


# instance fields
.field public final A:Landroid/view/VelocityTracker;

.field public final B:I

.field public C:F

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public final K:Z

.field public final L:Landroid/text/TextPaint;

.field public final M:Landroid/content/res/ColorStateList;

.field public N:Landroid/text/StaticLayout;

.field public O:Landroid/text/StaticLayout;

.field public final P:Li/a;

.field public Q:Landroid/animation/ObjectAnimator;

.field public R:Landroidx/appcompat/widget/B;

.field public S:LQ/h;

.field public final T:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/drawable/Drawable;

.field public final e:Landroid/content/res/ColorStateList;

.field public final f:Landroid/graphics/PorterDuff$Mode;

.field public final g:Z

.field public final h:Z

.field public final i:Landroid/graphics/drawable/Drawable;

.field public final j:Landroid/content/res/ColorStateList;

.field public final k:Landroid/graphics/PorterDuff$Mode;

.field public final l:Z

.field public final m:Z

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:Z

.field public r:Ljava/lang/CharSequence;

.field public s:Ljava/lang/CharSequence;

.field public t:Ljava/lang/CharSequence;

.field public u:Ljava/lang/CharSequence;

.field public final v:Z

.field public w:I

.field public final x:I

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/appcompat/widget/G0;

    const-class v1, Ljava/lang/Float;

    const-string v2, "thumbPos"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/G0;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/widget/SwitchCompat;->U:Landroidx/appcompat/widget/G0;

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/SwitchCompat;->V:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    const/4 v0, 0x1

    sget v8, Lf/a;->switchStyle:I

    invoke-direct {p0, p1, p2, v8}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v9, 0x0

    iput-object v9, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Landroid/content/res/ColorStateList;

    iput-object v9, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/PorterDuff$Mode;

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Z

    iput-boolean v10, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Z

    iput-object v9, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Landroid/content/res/ColorStateList;

    iput-object v9, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v10, p0, Landroidx/appcompat/widget/SwitchCompat;->l:Z

    iput-boolean v10, p0, Landroidx/appcompat/widget/SwitchCompat;->m:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->A:Landroid/view/VelocityTracker;

    iput-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->K:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->T:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/appcompat/widget/H0;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance v11, Landroid/text/TextPaint;

    invoke-direct {v11, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v11, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v11, Landroid/text/TextPaint;->density:F

    sget-object v1, Lf/j;->SwitchCompat:[I

    invoke-static {p1, p2, v1, v8}, Ln1/a;->t(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ln1/a;

    move-result-object v12

    sget-object v3, Lf/j;->SwitchCompat:[I

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    iget-object v1, v12, Ln1/a;->b:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, v8

    invoke-static/range {v1 .. v7}, LK/B;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    sget v1, Lf/j;->SwitchCompat_android_thumb:I

    invoke-virtual {v12, v1}, Ln1/a;->k(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    sget v1, Lf/j;->SwitchCompat_track:I

    invoke-virtual {v12, v1}, Ln1/a;->k(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    sget v1, Lf/j;->SwitchCompat_android_textOn:I

    iget-object v2, v12, Ln1/a;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/TypedArray;

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SwitchCompat;->e(Ljava/lang/CharSequence;)V

    sget v1, Lf/j;->SwitchCompat_android_textOff:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SwitchCompat;->d(Ljava/lang/CharSequence;)V

    sget v1, Lf/j;->SwitchCompat_showText:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->v:Z

    sget v1, Lf/j;->SwitchCompat_thumbTextPadding:I

    invoke-virtual {v2, v1, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->n:I

    sget v1, Lf/j;->SwitchCompat_switchMinWidth:I

    invoke-virtual {v2, v1, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->o:I

    sget v1, Lf/j;->SwitchCompat_switchPadding:I

    invoke-virtual {v2, v1, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->p:I

    sget v1, Lf/j;->SwitchCompat_splitTrack:I

    invoke-virtual {v2, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Z

    sget v1, Lf/j;->SwitchCompat_thumbTint:I

    invoke-virtual {v12, v1}, Ln1/a;->j(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Landroid/content/res/ColorStateList;

    iput-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Z

    :cond_2
    sget v1, Lf/j;->SwitchCompat_thumbTintMode:I

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1, v9}, Landroidx/appcompat/widget/f0;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_3

    iput-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Z

    :cond_3
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Z

    if-nez v1, :cond_4

    iget-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Z

    if-eqz v4, :cond_8

    :cond_4
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_8

    iget-boolean v5, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Z

    if-nez v1, :cond_5

    if-eqz v5, :cond_8

    :cond_5
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_6
    if-eqz v5, :cond_7

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_8
    sget v1, Lf/j;->SwitchCompat_trackTint:I

    invoke-virtual {v12, v1}, Ln1/a;->j(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_9

    iput-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Landroid/content/res/ColorStateList;

    iput-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->l:Z

    :cond_9
    sget v1, Lf/j;->SwitchCompat_trackTintMode:I

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1, v9}, Landroidx/appcompat/widget/f0;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_a

    iput-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->m:Z

    :cond_a
    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->l:Z

    if-nez v1, :cond_b

    iget-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->m:Z

    if-eqz v4, :cond_f

    :cond_b
    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_f

    iget-boolean v5, p0, Landroidx/appcompat/widget/SwitchCompat;->m:Z

    if-nez v1, :cond_c

    if-eqz v5, :cond_f

    :cond_c
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_d
    if-eqz v5, :cond_e

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_e
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_f
    sget v1, Lf/j;->SwitchCompat_switchTextAppearance:I

    invoke-virtual {v2, v1, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v2, Lf/j;->TextAppearance:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lf/j;->TextAppearance_android_textColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {p1, v4}, Le0/a;->C(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_10

    goto :goto_0

    :cond_10
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_11

    iput-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->M:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_11
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->M:Landroid/content/res/ColorStateList;

    :goto_1
    sget v2, Lf/j;->TextAppearance_android_textSize:I

    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-eqz v2, :cond_12

    int-to-float v2, v2

    invoke-virtual {v11}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_12

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_12
    sget v2, Lf/j;->TextAppearance_android_typeface:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget v4, Lf/j;->TextAppearance_android_textStyle:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v4, 0x2

    if-eq v2, v0, :cond_15

    if-eq v2, v4, :cond_14

    const/4 v5, 0x3

    if-eq v2, v5, :cond_13

    move-object v2, v9

    goto :goto_2

    :cond_13
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_14
    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_15
    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_2
    const/4 v5, 0x0

    if-lez v3, :cond_1a

    if-nez v2, :cond_16

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_3

    :cond_16
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    :goto_3
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/SwitchCompat;->c(Landroid/graphics/Typeface;)V

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    goto :goto_4

    :cond_17
    move v2, v10

    :goto_4
    not-int v2, v2

    and-int/2addr v2, v3

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_18

    goto :goto_5

    :cond_18
    move v0, v10

    :goto_5
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    and-int/lit8 v0, v2, 0x2

    if-eqz v0, :cond_19

    const/high16 v5, -0x41800000    # -0.25f

    :cond_19
    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setTextSkewX(F)V

    goto :goto_6

    :cond_1a
    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setTextSkewX(F)V

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/SwitchCompat;->c(Landroid/graphics/Typeface;)V

    :goto_6
    sget v0, Lf/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Li/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, v0, Li/a;->a:Ljava/util/Locale;

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->P:Li/a;

    goto :goto_7

    :cond_1b
    iput-object v9, p0, Landroidx/appcompat/widget/SwitchCompat;->P:Li/a;

    :goto_7
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->r:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->e(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->t:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->d(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1c
    new-instance v0, Landroidx/appcompat/widget/V;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/V;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, p2, v8}, Landroidx/appcompat/widget/V;->d(Landroid/util/AttributeSet;I)V

    invoke-virtual {v12}, Ln1/a;->w()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->x:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->B:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->a()Landroidx/appcompat/widget/B;

    move-result-object p1

    invoke-virtual {p1, p2, v8}, Landroidx/appcompat/widget/B;->c(Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/widget/B;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->R:Landroidx/appcompat/widget/B;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/B;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/B;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->R:Landroidx/appcompat/widget/B;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->R:Landroidx/appcompat/widget/B;

    return-object p0
.end method

.method public final b()I
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->T:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/appcompat/widget/f0;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/appcompat/widget/f0;->a:Landroid/graphics/Rect;

    :goto_0
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->D:I

    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I

    sub-int/2addr v2, p0

    iget p0, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p0

    iget p0, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p0

    iget p0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p0

    iget p0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p0

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public final d(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->t:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->a()Landroidx/appcompat/widget/B;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->P:Li/a;

    iget-object v0, v0, Landroidx/appcompat/widget/B;->c:Ljava/lang/Object;

    check-cast v0, LA1/e;

    iget-object v0, v0, LA1/e;->d:Ljava/lang/Object;

    check-cast v0, LK/I;

    invoke-virtual {v0, v1}, LK/I;->y0(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->u:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->O:Landroid/text/StaticLayout;

    iget-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->v:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->f()V

    :cond_1
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->G:I

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->H:I

    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->I:I

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->J:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->C:F

    sub-float/2addr v4, v5

    goto :goto_0

    :cond_0
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->C:F

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->b()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v4, v0

    iget-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    invoke-static {v5}, Landroidx/appcompat/widget/f0;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_1

    :cond_1
    sget-object v5, Landroidx/appcompat/widget/f0;->a:Landroid/graphics/Rect;

    :goto_1
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->T:Landroid/graphics/Rect;

    if-eqz v6, :cond_7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v6, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v6

    if-eqz v5, :cond_6

    iget v8, v5, Landroid/graphics/Rect;->left:I

    if-le v8, v6, :cond_2

    sub-int/2addr v8, v6

    add-int/2addr v0, v8

    :cond_2
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v8, v7, Landroid/graphics/Rect;->top:I

    if-le v6, v8, :cond_3

    sub-int/2addr v6, v8

    add-int/2addr v6, v1

    goto :goto_2

    :cond_3
    move v6, v1

    :goto_2
    iget v8, v5, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_4

    sub-int/2addr v8, v9

    sub-int/2addr v2, v8

    :cond_4
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    if-le v5, v8, :cond_5

    sub-int/2addr v5, v8

    sub-int v5, v3, v5

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v3

    goto :goto_4

    :cond_6
    move v6, v1

    goto :goto_3

    :goto_4
    iget-object v8, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v0, v6, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v7, Landroid/graphics/Rect;->left:I

    sub-int v0, v4, v0

    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I

    add-int/2addr v4, v2

    iget v2, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v2

    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_8
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final drawableHotspotChanged(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 4

    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v1, v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->r:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->a()Landroidx/appcompat/widget/B;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->P:Li/a;

    iget-object v0, v0, Landroidx/appcompat/widget/B;->c:Ljava/lang/Object;

    check-cast v0, LA1/e;

    iget-object v0, v0, LA1/e;->d:Ljava/lang/Object;

    check-cast v0, LK/I;

    invoke-virtual {v0, v1}, LK/I;->y0(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->s:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/text/StaticLayout;

    iget-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->v:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->f()V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->S:LQ/h;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->R:Landroidx/appcompat/widget/B;

    iget-object v0, v0, Landroidx/appcompat/widget/B;->c:Ljava/lang/Object;

    check-cast v0, LA1/e;

    iget-object v0, v0, LA1/e;->d:Ljava/lang/Object;

    check-cast v0, LK/I;

    invoke-virtual {v0}, LK/I;->X()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/emoji2/text/i;->k:Landroidx/emoji2/text/i;

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/emoji2/text/i;->a()Landroidx/emoji2/text/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/i;->b()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, LQ/h;

    invoke-direct {v1, p0}, LQ/h;-><init>(Landroidx/appcompat/widget/SwitchCompat;)V

    iput-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->S:LQ/h;

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/i;->f(Landroidx/emoji2/text/g;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getCompoundPaddingLeft()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->D:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat;->p:I

    add-int/2addr v0, p0

    :cond_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result p0

    return p0
.end method

.method public final getCompoundPaddingRight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->D:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat;->p:I

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->Q:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->Q:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->Q:Landroid/animation/ObjectAnimator;

    :cond_2
    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/appcompat/widget/SwitchCompat;->V:[I

    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->T:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->H:I

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->J:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v5, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Z

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    invoke-static {v4}, Landroidx/appcompat/widget/f0;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v5

    iput v6, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    if-eqz v4, :cond_3

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->C:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_4

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/text/StaticLayout;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->O:Landroid/text/StaticLayout;

    :goto_2
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->M:Landroid/content/res/ColorStateList;

    iget-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/text/TextPaint;

    if-eqz v6, :cond_5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    :cond_5
    iput-object v5, v7, Landroid/text/TextPaint;->drawableState:[I

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget v4, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, p0

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    :goto_3
    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v4, p0

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v2, p0

    int-to-float p0, v4

    int-to-float v2, v2

    invoke-virtual {p1, p0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string p0, "android.widget.Switch"

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string p0, "android.widget.Switch"

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->T:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroidx/appcompat/widget/f0;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object p1

    iget p4, p1, Landroid/graphics/Rect;->left:I

    iget p5, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    :cond_1
    move p4, p2

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    add-int/2addr p1, p4

    iget p3, p0, Landroidx/appcompat/widget/SwitchCompat;->D:I

    add-int/2addr p3, p1

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    sub-int p3, p1, p2

    iget p1, p0, Landroidx/appcompat/widget/SwitchCompat;->D:I

    sub-int p1, p3, p1

    add-int/2addr p1, p4

    add-int/2addr p1, p2

    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result p2

    and-int/lit8 p2, p2, 0x70

    const/16 p4, 0x10

    if-eq p2, p4, :cond_4

    const/16 p4, 0x50

    if-eq p2, p4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iget p4, p0, Landroidx/appcompat/widget/SwitchCompat;->E:I

    add-int/2addr p4, p2

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    sub-int p4, p2, p4

    iget p2, p0, Landroidx/appcompat/widget/SwitchCompat;->E:I

    sub-int p2, p4, p2

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    iget p2, p0, Landroidx/appcompat/widget/SwitchCompat;->E:I

    div-int/lit8 p5, p2, 0x2

    sub-int/2addr p4, p5

    add-int/2addr p2, p4

    move v0, p4

    move p4, p2

    move p2, v0

    :goto_3
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->G:I

    iput p2, p0, Landroidx/appcompat/widget/SwitchCompat;->H:I

    iput p4, p0, Landroidx/appcompat/widget/SwitchCompat;->J:I

    iput p3, p0, Landroidx/appcompat/widget/SwitchCompat;->I:I

    return-void
.end method

.method public final onMeasure(II)V
    .locals 12

    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/text/StaticLayout;

    iget-object v11, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/text/TextPaint;

    if-nez v2, :cond_1

    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->s:Ljava/lang/CharSequence;

    new-instance v2, Landroid/text/StaticLayout;

    if-eqz v4, :cond_0

    invoke-static {v4, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, v2

    move-object v5, v11

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/text/StaticLayout;

    :cond_1
    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->O:Landroid/text/StaticLayout;

    if-nez v2, :cond_3

    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->u:Ljava/lang/CharSequence;

    new-instance v2, Landroid/text/StaticLayout;

    if-eqz v4, :cond_2

    invoke-static {v4, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, v2

    move-object v5, v11

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->O:Landroid/text/StaticLayout;

    :cond_3
    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->T:Landroid/graphics/Rect;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_2

    :cond_4
    move v2, v1

    move v4, v2

    :goto_2
    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    iget-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->O:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->n:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    :goto_4
    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v2, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    invoke-static {v3}, Landroidx/appcompat/widget/f0;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v3

    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_7
    iget-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->K:Z

    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->o:I

    if-eqz v3, :cond_8

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    add-int/2addr v3, v2

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_8
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v5, p0, Landroidx/appcompat/widget/SwitchCompat;->D:I

    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->E:I

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-ge p1, v0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_9
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->r:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->t:Ljava/lang/CharSequence;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->A:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->x:I

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-eqz v1, :cond_12

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eq v1, v5, :cond_a

    if-eq v1, v8, :cond_0

    if-eq v1, v6, :cond_a

    goto/16 :goto_6

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->w:I

    if-eq v0, v5, :cond_8

    if-eq v0, v8, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->b()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    sub-float v1, p1, v1

    if-eqz v0, :cond_2

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_2
    cmpl-float v0, v1, v7

    if-lez v0, :cond_3

    move v1, v4

    goto :goto_0

    :cond_3
    const/high16 v0, -0x40800000    # -1.0f

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v0, v5, :cond_4

    neg-float v1, v1

    :cond_4
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->C:F

    add-float/2addr v1, v0

    cmpg-float v2, v1, v7

    if-gez v2, :cond_5

    move v4, v7

    goto :goto_1

    :cond_5
    cmpl-float v2, v1, v4

    if-lez v2, :cond_6

    goto :goto_1

    :cond_6
    move v4, v1

    :goto_1
    cmpl-float v0, v4, v0

    if-eqz v0, :cond_7

    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    iput v4, p0, Landroidx/appcompat/widget/SwitchCompat;->C:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    return v5

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v2, v2

    cmpl-float v3, v3, v2

    if-gtz v3, :cond_9

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->z:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v3, v2

    if-lez v2, :cond_15

    :cond_9
    iput v8, p0, Landroidx/appcompat/widget/SwitchCompat;->w:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->z:F

    return v5

    :cond_a
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->w:I

    const/4 v2, 0x0

    if-ne v1, v8, :cond_11

    iput v2, p0, Landroidx/appcompat/widget/SwitchCompat;->w:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v5

    goto :goto_2

    :cond_b
    move v1, v2

    :goto_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v1, :cond_f

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v8, p0, Landroidx/appcompat/widget/SwitchCompat;->B:I

    int-to-float v8, v8

    cmpl-float v1, v1, v8

    if-lez v1, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v5, :cond_d

    cmpg-float v0, v0, v7

    if-gez v0, :cond_c

    :goto_3
    move v0, v5

    goto :goto_4

    :cond_c
    move v0, v2

    goto :goto_4

    :cond_d
    cmpl-float v0, v0, v7

    if-lez v0, :cond_c

    goto :goto_3

    :cond_e
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->C:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_c

    goto :goto_3

    :cond_f
    move v0, v4

    :goto_4
    if-eq v0, v4, :cond_10

    invoke-virtual {p0, v2}, Landroid/view/View;->playSoundEffect(I)V

    :cond_10
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v5

    :cond_11
    iput v2, p0, Landroidx/appcompat/widget/SwitchCompat;->w:I

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_6

    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_13

    goto :goto_6

    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    if-ne v6, v5, :cond_14

    iget v6, p0, Landroidx/appcompat/widget/SwitchCompat;->C:F

    sub-float/2addr v4, v6

    goto :goto_5

    :cond_14
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->C:F

    :goto_5
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->b()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v4, v3

    float-to-int v3, v4

    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->T:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->H:I

    sub-int/2addr v4, v2

    iget v7, p0, Landroidx/appcompat/widget/SwitchCompat;->G:I

    add-int/2addr v7, v3

    sub-int/2addr v7, v2

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I

    add-int/2addr v3, v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v8

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v6

    add-int/2addr v3, v2

    iget v6, p0, Landroidx/appcompat/widget/SwitchCompat;->J:I

    add-int/2addr v6, v2

    int-to-float v2, v7

    cmpl-float v2, v0, v2

    if-lez v2, :cond_15

    int-to-float v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_15

    int-to-float v2, v4

    cmpl-float v2, v1, v2

    if-lez v2, :cond_15

    int-to-float v2, v6

    cmpg-float v2, v1, v2

    if-gez v2, :cond_15

    iput v5, p0, Landroidx/appcompat/widget/SwitchCompat;->w:I

    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->z:F

    :cond_15
    :goto_6
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setAllCaps(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->a()Landroidx/appcompat/widget/B;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/B;->e(Z)V

    return-void
.end method

.method public final setChecked(Z)V
    .locals 9

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    const/16 v4, 0x40

    const-class v3, Ljava/lang/CharSequence;

    const/16 v5, 0x1e

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->r:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lf/h;->abc_capital_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v7, v1

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    new-instance v8, LK/s;

    sget v2, Ly/b;->tag_state_description:I

    const/4 v6, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, LK/s;-><init>(ILjava/lang/Class;III)V

    invoke-virtual {v8, p0, v7}, LK/u;->h(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->t:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lf/h;->abc_capital_off:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v7, v1

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    new-instance v8, LK/s;

    sget v2, Ly/b;->tag_state_description:I

    const/4 v6, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, LK/s;-><init>(ILjava/lang/Class;III)V

    invoke-virtual {v8, p0, v7}, LK/u;->h(Landroid/view/View;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    move v2, v3

    :cond_3
    sget-object p1, Landroidx/appcompat/widget/SwitchCompat;->U:Landroidx/appcompat/widget/G0;

    new-array v1, v0, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->Q:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->Q:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->Q:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->Q:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_5
    if-eqz p1, :cond_6

    move v2, v3

    :cond_6
    iput v2, p0, Landroidx/appcompat/widget/SwitchCompat;->C:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void
.end method

.method public final setFilters([Landroid/text/InputFilter;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->a()Landroidx/appcompat/widget/B;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/B;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public final toggle()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
