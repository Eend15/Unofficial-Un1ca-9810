.class public Landroidx/appcompat/widget/r;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field public final d:Landroidx/appcompat/widget/q;

.field public final e:Landroidx/appcompat/widget/V;

.field public f:Landroidx/appcompat/widget/B;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/widget/I0;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/H0;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Landroidx/appcompat/widget/q;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/q;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/r;->d:Landroidx/appcompat/widget/q;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/q;->c(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/V;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/V;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/r;->e:Landroidx/appcompat/widget/V;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/V;->d(Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/V;->b()V

    iget-object p1, p0, Landroidx/appcompat/widget/r;->f:Landroidx/appcompat/widget/B;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/appcompat/widget/B;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/B;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/r;->f:Landroidx/appcompat/widget/B;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/r;->f:Landroidx/appcompat/widget/B;

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/widget/B;->c(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/r;->d:Landroidx/appcompat/widget/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/q;->a()V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/r;->e:Landroidx/appcompat/widget/V;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/V;->b()V

    :cond_1
    return-void
.end method

.method public final getAutoSizeTextType()I
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p0, p0, Landroidx/appcompat/widget/r;->e:Landroidx/appcompat/widget/V;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public final setAllCaps(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/r;->f:Landroidx/appcompat/widget/B;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/B;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/B;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/r;->f:Landroidx/appcompat/widget/B;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/r;->f:Landroidx/appcompat/widget/B;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/B;->e(Z)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/appcompat/widget/r;->d:Landroidx/appcompat/widget/q;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/q;->d()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Landroidx/appcompat/widget/r;->d:Landroidx/appcompat/widget/q;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/q;->e(I)V

    :cond_0
    return-void
.end method

.method public final setFilters([Landroid/text/InputFilter;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/r;->f:Landroidx/appcompat/widget/B;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/B;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/B;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/r;->f:Landroidx/appcompat/widget/B;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/r;->f:Landroidx/appcompat/widget/B;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/B;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object p0, p0, Landroidx/appcompat/widget/r;->e:Landroidx/appcompat/widget/V;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/V;->e(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
