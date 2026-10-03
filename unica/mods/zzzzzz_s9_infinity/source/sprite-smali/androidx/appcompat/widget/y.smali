.class public Landroidx/appcompat/widget/y;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field public final d:Landroidx/appcompat/widget/q;

.field public final e:LH/k;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v1, v0}, Landroidx/appcompat/widget/y;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-static {p1}, Landroidx/appcompat/widget/I0;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroidx/appcompat/widget/y;->f:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/H0;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 5
    new-instance p1, Landroidx/appcompat/widget/q;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/q;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/y;->d:Landroidx/appcompat/widget/q;

    .line 6
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/q;->c(Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p1, LH/k;

    invoke-direct {p1, p0}, LH/k;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/appcompat/widget/y;->e:LH/k;

    .line 8
    invoke-virtual {p1, p2, p3}, LH/k;->d(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/y;->d:Landroidx/appcompat/widget/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/q;->a()V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/y;->e:LH/k;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, LH/k;->a()V

    :cond_1
    return-void
.end method

.method public final hasOverlappingRendering()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->e:LH/k;

    iget-object v0, v0, LH/k;->e:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageView;->hasOverlappingRendering()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/appcompat/widget/y;->d:Landroidx/appcompat/widget/q;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/q;->d()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Landroidx/appcompat/widget/y;->d:Landroidx/appcompat/widget/q;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/q;->e(I)V

    :cond_0
    return-void
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Landroidx/appcompat/widget/y;->e:LH/k;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LH/k;->a()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/y;->e:LH/k;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/y;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    iput v1, v0, LH/k;->d:I

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LH/k;->a()V

    iget-boolean p0, p0, Landroidx/appcompat/widget/y;->f:Z

    if-nez p0, :cond_1

    iget-object p0, v0, LH/k;->e:Ljava/lang/Object;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iget p1, v0, LH/k;->d:I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    return-void
.end method

.method public final setImageLevel(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/y;->f:Z

    return-void
.end method

.method public final setImageResource(I)V
    .locals 2

    iget-object p0, p0, Landroidx/appcompat/widget/y;->e:LH/k;

    if-eqz p0, :cond_2

    iget-object v0, p0, LH/k;->e:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Le0/a;->E(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v1, Landroidx/appcompat/widget/f0;->a:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, LH/k;->a()V

    :cond_2
    return-void
.end method

.method public final setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object p0, p0, Landroidx/appcompat/widget/y;->e:LH/k;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LH/k;->a()V

    :cond_0
    return-void
.end method
