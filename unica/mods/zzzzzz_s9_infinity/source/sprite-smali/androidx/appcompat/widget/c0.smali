.class public final Landroidx/appcompat/widget/c0;
.super Landroid/widget/ToggleButton;
.source "SourceFile"


# instance fields
.field public final d:Landroidx/appcompat/widget/q;

.field public final e:Landroidx/appcompat/widget/V;

.field public f:Landroidx/appcompat/widget/B;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101004b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/H0;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Landroidx/appcompat/widget/q;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/q;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/c0;->d:Landroidx/appcompat/widget/q;

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/q;->c(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/V;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/V;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/c0;->e:Landroidx/appcompat/widget/V;

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/V;->d(Landroid/util/AttributeSet;I)V

    iget-object p1, p0, Landroidx/appcompat/widget/c0;->f:Landroidx/appcompat/widget/B;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/appcompat/widget/B;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/B;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/c0;->f:Landroidx/appcompat/widget/B;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/c0;->f:Landroidx/appcompat/widget/B;

    invoke-virtual {p0, p2, v0}, Landroidx/appcompat/widget/B;->c(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ToggleButton;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/c0;->d:Landroidx/appcompat/widget/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/q;->a()V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/c0;->e:Landroidx/appcompat/widget/V;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/V;->b()V

    :cond_1
    return-void
.end method

.method public final setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/c0;->f:Landroidx/appcompat/widget/B;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/B;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/B;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/c0;->f:Landroidx/appcompat/widget/B;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/c0;->f:Landroidx/appcompat/widget/B;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/B;->e(Z)V

    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/appcompat/widget/c0;->d:Landroidx/appcompat/widget/q;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/q;->d()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Landroidx/appcompat/widget/c0;->d:Landroidx/appcompat/widget/q;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/q;->e(I)V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/appcompat/widget/c0;->e:Landroidx/appcompat/widget/V;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/V;->b()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/appcompat/widget/c0;->e:Landroidx/appcompat/widget/V;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/V;->b()V

    :cond_0
    return-void
.end method

.method public final setFilters([Landroid/text/InputFilter;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/c0;->f:Landroidx/appcompat/widget/B;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/B;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/B;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/c0;->f:Landroidx/appcompat/widget/B;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/c0;->f:Landroidx/appcompat/widget/B;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/B;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method
