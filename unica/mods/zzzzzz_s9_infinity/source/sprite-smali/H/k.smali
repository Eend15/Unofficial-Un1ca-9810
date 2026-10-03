.class public final LH/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL/m;


# instance fields
.field public d:I

.field public e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p2, p0, LH/k;->e:Ljava/lang/Object;

    iput p1, p0, LH/k;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Landroidx/appcompat/app/h;->g(Landroid/content/Context;I)I

    move-result v0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v1, Landroidx/appcompat/app/e;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 6
    invoke-static {p1, v0}, Landroidx/appcompat/app/h;->g(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroidx/appcompat/app/e;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v1, p0, LH/k;->e:Ljava/lang/Object;

    .line 7
    iput v0, p0, LH/k;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, LH/k;->d:I

    iput-object p1, p0, LH/k;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, LH/k;->e:Ljava/lang/Object;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/appcompat/widget/f0;->a:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public b()Landroidx/appcompat/app/h;
    .locals 9

    new-instance v0, Landroidx/appcompat/app/h;

    iget-object v1, p0, LH/k;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/app/e;

    iget-object v2, v1, Landroidx/appcompat/app/e;->a:Landroid/view/ContextThemeWrapper;

    iget p0, p0, LH/k;->d:I

    invoke-direct {v0, v2, p0}, Landroidx/appcompat/app/h;-><init>(Landroid/view/ContextThemeWrapper;I)V

    iget-object p0, v1, Landroidx/appcompat/app/e;->e:Landroid/view/View;

    iget-object v2, v0, Landroidx/appcompat/app/h;->i:Landroidx/appcompat/app/g;

    if-eqz p0, :cond_0

    iput-object p0, v2, Landroidx/appcompat/app/g;->n:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p0, v1, Landroidx/appcompat/app/e;->d:Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    iput-object p0, v2, Landroidx/appcompat/app/g;->d:Ljava/lang/CharSequence;

    iget-object v3, v2, Landroidx/appcompat/app/g;->l:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p0, v1, Landroidx/appcompat/app/e;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_2

    iput-object p0, v2, Landroidx/appcompat/app/g;->j:Landroid/graphics/drawable/Drawable;

    iget-object v3, v2, Landroidx/appcompat/app/g;->k:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v2, Landroidx/appcompat/app/g;->k:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    iget-object p0, v1, Landroidx/appcompat/app/e;->g:Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_7

    iget p0, v2, Landroidx/appcompat/app/g;->r:I

    iget-object v5, v1, Landroidx/appcompat/app/e;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v5, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AlertController$RecycleListView;

    iget-boolean v5, v1, Landroidx/appcompat/app/e;->i:Z

    if-eqz v5, :cond_3

    iget v5, v2, Landroidx/appcompat/app/g;->s:I

    goto :goto_1

    :cond_3
    iget v5, v2, Landroidx/appcompat/app/g;->t:I

    :goto_1
    iget-object v6, v1, Landroidx/appcompat/app/e;->g:Ljava/lang/Object;

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance v6, Landroidx/appcompat/app/f;

    iget-object v7, v1, Landroidx/appcompat/app/e;->a:Landroid/view/ContextThemeWrapper;

    const v8, 0x1020014

    invoke-direct {v6, v7, v5, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    :goto_2
    iput-object v6, v2, Landroidx/appcompat/app/g;->o:Landroid/widget/ListAdapter;

    iget v5, v1, Landroidx/appcompat/app/e;->j:I

    iput v5, v2, Landroidx/appcompat/app/g;->p:I

    iget-object v5, v1, Landroidx/appcompat/app/e;->h:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v5, :cond_5

    new-instance v5, Landroidx/appcompat/app/d;

    invoke-direct {v5, v1, v2}, Landroidx/appcompat/app/d;-><init>(Landroidx/appcompat/app/e;Landroidx/appcompat/app/g;)V

    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_5
    iget-boolean v5, v1, Landroidx/appcompat/app/e;->i:Z

    if-eqz v5, :cond_6

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_6
    iput-object p0, v2, Landroidx/appcompat/app/g;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    :cond_7
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, v1, Landroidx/appcompat/app/e;->f:Lk/k;

    if-eqz p0, :cond_8

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_8
    return-object v0
.end method

.method public c(I)Landroidx/recyclerview/widget/L;
    .locals 1

    iget-object p0, p0, LH/k;->e:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/L;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/L;

    invoke-direct {v0}, Landroidx/recyclerview/widget/L;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public d(Landroid/util/AttributeSet;I)V
    .locals 8

    iget-object p0, p0, LH/k;->e:Ljava/lang/Object;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lf/j;->AppCompatImageView:[I

    invoke-static {v0, p1, v1, p2}, Ln1/a;->t(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ln1/a;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lf/j;->AppCompatImageView:[I

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    iget-object v0, v7, Ln1/a;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, LK/B;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    iget-object v0, v7, Ln1/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    if-nez p1, :cond_0

    :try_start_1
    sget v1, Lf/j;->AppCompatImageView_srcCompat:I

    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eq v1, p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Le0/a;->E(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Landroidx/appcompat/widget/f0;->a:Landroid/graphics/Rect;

    :cond_1
    sget p1, Lf/j;->AppCompatImageView_tint:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lf/j;->AppCompatImageView_tint:I

    invoke-virtual {v7, p1}, Ln1/a;->j(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    sget p1, Lf/j;->AppCompatImageView_tintMode:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lf/j;->AppCompatImageView_tintMode:I

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/appcompat/widget/f0;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-virtual {v7}, Ln1/a;->w()V

    return-void

    :goto_1
    invoke-virtual {v7}, Ln1/a;->w()V

    throw p0
.end method

.method public j(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, LH/k;->e:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p0, p0, LH/k;->d:I

    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z(I)V

    const/4 p0, 0x1

    return p0
.end method
