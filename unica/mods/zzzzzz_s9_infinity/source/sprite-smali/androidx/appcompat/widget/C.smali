.class public Landroidx/appcompat/widget/C;
.super Landroid/widget/RadioButton;
.source "SourceFile"


# instance fields
.field public final d:Landroidx/appcompat/widget/u;

.field public final e:Landroidx/appcompat/widget/q;

.field public final f:Landroidx/appcompat/widget/V;

.field public g:Landroidx/appcompat/widget/B;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/widget/I0;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/H0;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Landroidx/appcompat/widget/u;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/u;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/C;->d:Landroidx/appcompat/widget/u;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/u;->b(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/q;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/q;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/C;->e:Landroidx/appcompat/widget/q;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/q;->c(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/V;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/V;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/C;->f:Landroidx/appcompat/widget/V;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/V;->d(Landroid/util/AttributeSet;I)V

    iget-object p1, p0, Landroidx/appcompat/widget/C;->g:Landroidx/appcompat/widget/B;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/appcompat/widget/B;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/B;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/C;->g:Landroidx/appcompat/widget/B;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/C;->g:Landroidx/appcompat/widget/B;

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/widget/B;->c(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/C;->e:Landroidx/appcompat/widget/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/q;->a()V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/C;->f:Landroidx/appcompat/widget/V;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/V;->b()V

    :cond_1
    return-void
.end method

.method public final setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/C;->g:Landroidx/appcompat/widget/B;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/B;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/B;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/C;->g:Landroidx/appcompat/widget/B;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/C;->g:Landroidx/appcompat/widget/B;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/B;->e(Z)V

    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/appcompat/widget/C;->e:Landroidx/appcompat/widget/q;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/q;->d()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Landroidx/appcompat/widget/C;->e:Landroidx/appcompat/widget/q;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/q;->e(I)V

    :cond_0
    return-void
.end method

.method public final setButtonDrawable(I)V
    .locals 1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Le0/a;->E(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/C;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/C;->d:Landroidx/appcompat/widget/u;

    if-eqz p0, :cond_5

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
    iget-object p1, p0, Landroidx/appcompat/widget/u;->d:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 7
    iget-boolean v1, p0, Landroidx/appcompat/widget/u;->a:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroidx/appcompat/widget/u;->b:Z

    if-eqz v1, :cond_5

    .line 8
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9
    iget-boolean v1, p0, Landroidx/appcompat/widget/u;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 11
    :cond_2
    iget-boolean p0, p0, Landroidx/appcompat/widget/u;->b:Z

    if-eqz p0, :cond_3

    .line 12
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 13
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 15
    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/appcompat/widget/C;->f:Landroidx/appcompat/widget/V;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/V;->b()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/appcompat/widget/C;->f:Landroidx/appcompat/widget/V;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/V;->b()V

    :cond_0
    return-void
.end method

.method public final setFilters([Landroid/text/InputFilter;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/C;->g:Landroidx/appcompat/widget/B;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/B;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/B;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/C;->g:Landroidx/appcompat/widget/B;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/C;->g:Landroidx/appcompat/widget/B;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/B;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method
