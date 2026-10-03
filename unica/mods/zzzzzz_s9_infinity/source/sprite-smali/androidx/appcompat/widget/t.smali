.class public final Landroidx/appcompat/widget/t;
.super Landroid/widget/CheckedTextView;
.source "SourceFile"


# instance fields
.field public final d:Landroidx/appcompat/widget/u;

.field public final e:Landroidx/appcompat/widget/q;

.field public final f:Landroidx/appcompat/widget/V;

.field public g:Landroidx/appcompat/widget/B;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    sget v7, Lf/a;->checkedTextViewStyle:I

    invoke-static {p1}, Landroidx/appcompat/widget/I0;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v7}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/H0;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Landroidx/appcompat/widget/V;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/V;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/t;->f:Landroidx/appcompat/widget/V;

    invoke-virtual {p1, p2, v7}, Landroidx/appcompat/widget/V;->d(Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/V;->b()V

    new-instance p1, Landroidx/appcompat/widget/q;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/q;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/t;->e:Landroidx/appcompat/widget/q;

    invoke-virtual {p1, p2, v7}, Landroidx/appcompat/widget/q;->c(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/u;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/u;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/t;->d:Landroidx/appcompat/widget/u;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lf/j;->CheckedTextView:[I

    invoke-static {p1, p2, v0, v7}, Ln1/a;->t(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ln1/a;

    move-result-object p1

    iget-object v0, p1, Ln1/a;->b:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lf/j;->CheckedTextView:[I

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    iget-object v0, p1, Ln1/a;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    move v5, v7

    invoke-static/range {v0 .. v6}, LK/B;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    sget v0, Lf/j;->CheckedTextView_checkMarkCompat:I

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lf/j;->CheckedTextView_checkMarkCompat:I

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Le0/a;->E(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/t;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :cond_0
    :try_start_2
    sget v0, Lf/j;->CheckedTextView_android_checkMark:I

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lf/j;->CheckedTextView_android_checkMark:I

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Le0/a;->E(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/t;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    sget v0, Lf/j;->CheckedTextView_checkMarkTint:I

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lf/j;->CheckedTextView_checkMarkTint:I

    invoke-virtual {p1, v0}, Ln1/a;->j(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setCheckMarkTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    sget v0, Lf/j;->CheckedTextView_checkMarkTintMode:I

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lf/j;->CheckedTextView_checkMarkTintMode:I

    const/4 v1, -0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/appcompat/widget/f0;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-virtual {p1}, Ln1/a;->w()V

    iget-object p1, p0, Landroidx/appcompat/widget/t;->g:Landroidx/appcompat/widget/B;

    if-nez p1, :cond_4

    new-instance p1, Landroidx/appcompat/widget/B;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/B;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/t;->g:Landroidx/appcompat/widget/B;

    :cond_4
    iget-object p0, p0, Landroidx/appcompat/widget/t;->g:Landroidx/appcompat/widget/B;

    invoke-virtual {p0, p2, v7}, Landroidx/appcompat/widget/B;->c(Landroid/util/AttributeSet;I)V

    return-void

    :goto_1
    invoke-virtual {p1}, Ln1/a;->w()V

    throw p0
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/t;->f:Landroidx/appcompat/widget/V;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/V;->b()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/t;->e:Landroidx/appcompat/widget/q;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/q;->a()V

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/t;->d:Landroidx/appcompat/widget/u;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/widget/u;->a()V

    :cond_2
    return-void
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, La4/x;->M(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/widget/TextView;)V

    return-object v0
.end method

.method public final setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/t;->g:Landroidx/appcompat/widget/B;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/B;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/B;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/t;->g:Landroidx/appcompat/widget/B;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/t;->g:Landroidx/appcompat/widget/B;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/B;->e(Z)V

    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/appcompat/widget/t;->e:Landroidx/appcompat/widget/q;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/q;->d()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Landroidx/appcompat/widget/t;->e:Landroidx/appcompat/widget/q;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/q;->e(I)V

    :cond_0
    return-void
.end method

.method public final setCheckMarkDrawable(I)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le0/a;->E(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/t;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/t;->d:Landroidx/appcompat/widget/u;

    if-eqz p0, :cond_1

    .line 3
    iget-boolean p1, p0, Landroidx/appcompat/widget/u;->c:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroidx/appcompat/widget/u;->c:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroidx/appcompat/widget/u;->c:Z

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/widget/u;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/appcompat/widget/t;->f:Landroidx/appcompat/widget/V;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/V;->b()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/appcompat/widget/t;->f:Landroidx/appcompat/widget/V;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/V;->b()V

    :cond_0
    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object p0, p0, Landroidx/appcompat/widget/t;->f:Landroidx/appcompat/widget/V;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/V;->e(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
