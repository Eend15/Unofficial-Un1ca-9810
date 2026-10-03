.class public final Lcom/google/android/material/button/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/button/MaterialButton;

.field public b:LU0/j;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroid/graphics/PorterDuff$Mode;

.field public i:Landroid/content/res/ColorStateList;

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/content/res/ColorStateList;

.field public l:LU0/g;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Landroid/graphics/drawable/RippleDrawable;

.field public q:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;LU0/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/button/b;->m:Z

    iput-boolean v0, p0, Lcom/google/android/material/button/b;->n:Z

    iput-object p1, p0, Lcom/google/android/material/button/b;->a:Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/google/android/material/button/b;->b:LU0/j;

    return-void
.end method


# virtual methods
.method public final a()LU0/s;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/button/b;->p:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/b;->p:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/b;->p:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, LU0/s;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/button/b;->p:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, LU0/s;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Z)LU0/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/button/b;->p:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/b;->p:Landroid/graphics/drawable/RippleDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, LU0/g;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(LU0/j;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/material/button/b;->b:LU0/j;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/b;->b(Z)LU0/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/b;->b(Z)LU0/g;

    move-result-object v0

    invoke-virtual {v0, p1}, LU0/g;->a(LU0/j;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/b;->b(Z)LU0/g;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/b;->b(Z)LU0/g;

    move-result-object v0

    invoke-virtual {v0, p1}, LU0/g;->a(LU0/j;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->a()LU0/s;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/button/b;->a()LU0/s;

    move-result-object p0

    invoke-interface {p0, p1}, LU0/s;->a(LU0/j;)V

    :cond_2
    return-void
.end method
