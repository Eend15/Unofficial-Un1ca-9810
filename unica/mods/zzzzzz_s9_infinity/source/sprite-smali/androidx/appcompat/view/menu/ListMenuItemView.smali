.class public Landroidx/appcompat/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lk/w;
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# instance fields
.field public d:Lk/l;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/RadioButton;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/CheckBox;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/widget/LinearLayout;

.field public final m:Landroid/graphics/drawable/Drawable;

.field public final n:I

.field public final o:Landroid/content/Context;

.field public p:Z

.field public final q:Landroid/graphics/drawable/Drawable;

.field public final r:Z

.field public s:Landroid/view/LayoutInflater;

.field public t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    sget v0, Lf/a;->listMenuViewStyle:I

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lf/j;->MenuView:[I

    invoke-static {v1, p2, v2, v0}, Ln1/a;->t(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ln1/a;

    move-result-object p2

    sget v0, Lf/j;->MenuView_android_itemBackground:I

    invoke-virtual {p2, v0}, Ln1/a;->k(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Landroid/graphics/drawable/Drawable;

    sget v0, Lf/j;->MenuView_android_itemTextAppearance:I

    iget-object v1, p2, Ln1/a;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/TypedArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->n:I

    sget v0, Lf/j;->MenuView_preserveIconSpacing:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Z

    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->o:Landroid/content/Context;

    sget v0, Lf/j;->MenuView_subMenuArrow:I

    invoke-virtual {p2, v0}, Ln1/a;->k(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x1010129

    filled-new-array {v0}, [I

    move-result-object v0

    sget v1, Lf/a;->dropDownListViewStyle:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->r:Z

    invoke-virtual {p2}, Ln1/a;->w()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->k:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr p0, v2

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    add-int/2addr p0, v1

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method

.method public final b()Lk/l;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Lk/l;

    return-object p0
.end method

.method public final c(Lk/l;)V
    .locals 12

    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Lk/l;

    invoke-virtual {p1}, Lk/l;->isVisible()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lk/l;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lk/l;->isCheckable()Z

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-nez v0, :cond_3

    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/RadioButton;

    if-nez v5, :cond_3

    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/CheckBox;

    if-nez v5, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Lk/l;

    iget v5, v5, Lk/l;->x:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_2
    const/4 v6, -0x1

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/RadioButton;

    if-nez v5, :cond_7

    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->s:Landroid/view/LayoutInflater;

    if-nez v5, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->s:Landroid/view/LayoutInflater;

    :cond_5
    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->s:Landroid/view/LayoutInflater;

    sget v7, Lf/g;->abc_list_menu_item_radio:I

    invoke-virtual {v5, v7, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/RadioButton;

    iget-object v7, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->l:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_6

    invoke-virtual {v7, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_7
    :goto_3
    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/RadioButton;

    iget-object v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/CheckBox;

    goto :goto_5

    :cond_8
    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/CheckBox;

    if-nez v5, :cond_b

    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->s:Landroid/view/LayoutInflater;

    if-nez v5, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->s:Landroid/view/LayoutInflater;

    :cond_9
    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->s:Landroid/view/LayoutInflater;

    sget v7, Lf/g;->abc_list_menu_item_checkbox:I

    invoke-virtual {v5, v7, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/CheckBox;

    iget-object v7, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->l:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_a

    invoke-virtual {v7, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_4

    :cond_a
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_b
    :goto_4
    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/CheckBox;

    iget-object v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/RadioButton;

    :goto_5
    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Lk/l;

    invoke-virtual {v0}, Lk/l;->isChecked()Z

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_f

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_d
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/CheckBox;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/RadioButton;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    :goto_6
    iget-object v0, p1, Lk/l;->n:Lk/j;

    invoke-virtual {v0}, Lk/j;->o()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p1, Lk/l;->n:Lk/j;

    invoke-virtual {v0}, Lk/j;->n()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-char v0, p1, Lk/l;->j:C

    goto :goto_7

    :cond_10
    iget-char v0, p1, Lk/l;->h:C

    :goto_7
    if-eqz v0, :cond_11

    move v0, v4

    goto :goto_8

    :cond_11
    move v0, v2

    :goto_8
    iget-object v5, p1, Lk/l;->n:Lk/j;

    invoke-virtual {v5}, Lk/j;->n()Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Lk/l;

    iget-object v5, v0, Lk/l;->n:Lk/j;

    invoke-virtual {v5}, Lk/j;->o()Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, v0, Lk/l;->n:Lk/j;

    invoke-virtual {v5}, Lk/j;->n()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-char v0, v0, Lk/l;->j:C

    goto :goto_9

    :cond_12
    iget-char v0, v0, Lk/l;->h:C

    :goto_9
    if-eqz v0, :cond_13

    move v0, v4

    goto :goto_a

    :cond_13
    move v0, v2

    :goto_a
    if-eqz v0, :cond_14

    move v0, v2

    goto :goto_b

    :cond_14
    move v0, v1

    :goto_b
    if-nez v0, :cond_1c

    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/TextView;

    iget-object v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Lk/l;

    iget-object v7, v6, Lk/l;->n:Lk/j;

    invoke-virtual {v7}, Lk/j;->n()Z

    move-result v7

    if-eqz v7, :cond_15

    iget-char v7, v6, Lk/l;->j:C

    goto :goto_c

    :cond_15
    iget-char v7, v6, Lk/l;->h:C

    :goto_c
    if-nez v7, :cond_16

    const-string v3, ""

    goto/16 :goto_f

    :cond_16
    iget-object v8, v6, Lk/l;->n:Lk/j;

    iget-object v9, v8, Lk/j;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v8, Lk/j;->a:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v11

    if-eqz v11, :cond_17

    sget v11, Lf/h;->abc_prepend_shortcut_label:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    invoke-virtual {v8}, Lk/j;->n()Z

    move-result v8

    if-eqz v8, :cond_18

    iget v6, v6, Lk/l;->k:I

    goto :goto_d

    :cond_18
    iget v6, v6, Lk/l;->i:I

    :goto_d
    sget v8, Lf/h;->abc_menu_meta_shortcut_label:I

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/high16 v11, 0x10000

    invoke-static {v10, v6, v11, v8}, Lk/l;->c(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    sget v8, Lf/h;->abc_menu_ctrl_shortcut_label:I

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x1000

    invoke-static {v10, v6, v11, v8}, Lk/l;->c(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    sget v8, Lf/h;->abc_menu_alt_shortcut_label:I

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x2

    invoke-static {v10, v6, v11, v8}, Lk/l;->c(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    sget v8, Lf/h;->abc_menu_shift_shortcut_label:I

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v6, v4, v8}, Lk/l;->c(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    sget v4, Lf/h;->abc_menu_sym_shortcut_label:I

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v6, v3, v4}, Lk/l;->c(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    sget v3, Lf/h;->abc_menu_function_shortcut_label:I

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v6, v1, v3}, Lk/l;->c(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    if-eq v7, v1, :cond_1b

    const/16 v3, 0xa

    if-eq v7, v3, :cond_1a

    const/16 v3, 0x20

    if-eq v7, v3, :cond_19

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_19
    sget v3, Lf/h;->abc_menu_space_shortcut_label:I

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_1a
    sget v3, Lf/h;->abc_menu_enter_shortcut_label:I

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_1b
    sget v3, Lf/h;->abc_menu_delete_shortcut_label:I

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_f
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_1d

    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    invoke-virtual {p1}, Lk/l;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Lk/l;

    iget-object v3, v3, Lk/l;->n:Lk/j;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->t:Z

    if-nez v3, :cond_1e

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Z

    if-nez v4, :cond_1e

    goto :goto_13

    :cond_1e
    iget-object v4, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/ImageView;

    if-nez v4, :cond_1f

    if-nez v0, :cond_1f

    iget-boolean v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Z

    if-nez v5, :cond_1f

    goto :goto_13

    :cond_1f
    if-nez v4, :cond_22

    iget-object v4, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->s:Landroid/view/LayoutInflater;

    if-nez v4, :cond_20

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->s:Landroid/view/LayoutInflater;

    :cond_20
    iget-object v4, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->s:Landroid/view/LayoutInflater;

    sget v5, Lf/g;->abc_list_menu_item_icon:I

    invoke-virtual {v4, v5, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/ImageView;

    iget-object v5, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->l:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_21

    invoke-virtual {v5, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_10

    :cond_21
    invoke-virtual {p0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_22
    :goto_10
    if-nez v0, :cond_24

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Z

    if-eqz v4, :cond_23

    goto :goto_11

    :cond_23
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_13

    :cond_24
    :goto_11
    iget-object v4, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/ImageView;

    if-eqz v3, :cond_25

    goto :goto_12

    :cond_25
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_26
    :goto_13
    invoke-virtual {p1}, Lk/l;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1}, Lk/l;->hasSubMenu()Z

    move-result v0

    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->j:Landroid/widget/ImageView;

    if-eqz v3, :cond_28

    if-eqz v0, :cond_27

    move v1, v2

    :cond_27
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_28
    iget-object p1, p1, Lk/l;->q:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lf/f;->title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/TextView;

    const/4 v1, -0x1

    iget v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->n:I

    if-eq v2, v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->o:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    sget v0, Lf/f;->shortcut:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/TextView;

    sget v0, Lf/f;->submenuarrow:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    sget v0, Lf/f;->group_divider:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->k:Landroid/widget/ImageView;

    sget v0, Lf/f;->content:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->l:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
