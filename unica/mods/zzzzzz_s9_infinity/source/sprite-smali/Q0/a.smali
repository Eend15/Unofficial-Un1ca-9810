.class public final LQ0/a;
.super Landroidx/appcompat/widget/C;
.source "SourceFile"


# static fields
.field public static final j:I

.field public static final k:[[I


# instance fields
.field public h:Landroid/content/res/ColorStateList;

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget v0, LF0/i;->Widget_MaterialComponents_CompoundButton_RadioButton:I

    sput v0, LQ0/a;->j:I

    const v0, 0x101009e

    const v1, 0x10100a0

    filled-new-array {v0, v1}, [I

    move-result-object v2

    const v3, -0x10100a0

    filled-new-array {v0, v3}, [I

    move-result-object v0

    const v4, -0x101009e

    filled-new-array {v4, v1}, [I

    move-result-object v1

    filled-new-array {v4, v3}, [I

    move-result-object v3

    filled-new-array {v2, v0, v1, v3}, [[I

    move-result-object v0

    sput-object v0, LQ0/a;->k:[[I

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, LQ0/a;->i:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LQ0/a;->i:Z

    iget-object v0, p0, LQ0/a;->h:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    sget v0, LF0/a;->colorControlActivated:I

    invoke-static {p0, v0}, LK/I;->z(Landroid/view/View;I)I

    move-result v0

    sget v1, LF0/a;->colorOnSurface:I

    invoke-static {p0, v1}, LK/I;->z(Landroid/view/View;I)I

    move-result v1

    sget v2, LF0/a;->colorSurface:I

    invoke-static {p0, v2}, LK/I;->z(Landroid/view/View;I)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2, v0}, LK/I;->e0(FII)I

    move-result v0

    const v3, 0x3f0a3d71    # 0.54f

    invoke-static {v3, v2, v1}, LK/I;->e0(FII)I

    move-result v3

    const v4, 0x3ec28f5c    # 0.38f

    invoke-static {v4, v2, v1}, LK/I;->e0(FII)I

    move-result v5

    invoke-static {v4, v2, v1}, LK/I;->e0(FII)I

    move-result v1

    filled-new-array {v0, v3, v5, v1}, [I

    move-result-object v0

    new-instance v1, Landroid/content/res/ColorStateList;

    sget-object v2, LQ0/a;->k:[[I

    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, LQ0/a;->h:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object v0, p0, LQ0/a;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method
