.class public final Landroidx/recyclerview/widget/A;
.super Landroidx/recyclerview/widget/x;
.source "SourceFile"


# instance fields
.field public final synthetic q:Lw0/i;


# direct methods
.method public constructor <init>(Lw0/i;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/A;->q:Lw0/i;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/x;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/util/DisplayMetrics;)F
    .locals 0

    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    return p1
.end method

.method public final c(I)I
    .locals 1

    const/16 v0, 0x64

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/x;->c(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final f(Landroid/view/View;Landroidx/recyclerview/widget/P;)V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/A;->q:Lw0/i;

    iget-object v1, v0, Lw0/i;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    invoke-virtual {v0, v1, p1}, Lw0/i;->e(Landroidx/recyclerview/widget/I;Landroid/view/View;)[I

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/A;->c(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-lez v2, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/x;->j:Landroid/view/animation/DecelerateInterpolator;

    iput v0, p2, Landroidx/recyclerview/widget/P;->a:I

    iput p1, p2, Landroidx/recyclerview/widget/P;->b:I

    iput v2, p2, Landroidx/recyclerview/widget/P;->c:I

    iput-object p0, p2, Landroidx/recyclerview/widget/P;->e:Landroid/view/animation/BaseInterpolator;

    iput-boolean v1, p2, Landroidx/recyclerview/widget/P;->f:Z

    :cond_0
    return-void
.end method
