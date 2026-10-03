.class public final Landroidx/recyclerview/widget/k;
.super Landroidx/recyclerview/widget/K;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/m;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/m;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    iget-object p0, p0, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/m;

    iget-object p3, p0, Landroidx/recyclerview/widget/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p3

    iget v0, p0, Landroidx/recyclerview/widget/m;->r:I

    sub-int v1, p3, v0

    iget v2, p0, Landroidx/recyclerview/widget/m;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_0

    if-lt v0, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/m;->t:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/m;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v1

    iget v5, p0, Landroidx/recyclerview/widget/m;->q:I

    sub-int v6, v1, v5

    if-lez v6, :cond_1

    if-lt v5, v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroidx/recyclerview/widget/m;->u:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/m;->t:Z

    if-nez v6, :cond_2

    if-nez v2, :cond_2

    iget p1, p0, Landroidx/recyclerview/widget/m;->v:I

    if-eqz p1, :cond_6

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/m;->f(I)V

    goto :goto_2

    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v6, :cond_3

    int-to-float p1, p1

    int-to-float v3, v0

    div-float v6, v3, v2

    add-float/2addr v6, p1

    mul-float/2addr v6, v3

    int-to-float p1, p3

    div-float/2addr v6, p1

    float-to-int p1, v6

    iput p1, p0, Landroidx/recyclerview/widget/m;->l:I

    mul-int p1, v0, v0

    div-int/2addr p1, p3

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/m;->k:I

    :cond_3
    iget-boolean p1, p0, Landroidx/recyclerview/widget/m;->u:Z

    if-eqz p1, :cond_4

    int-to-float p1, p2

    int-to-float p2, v5

    div-float p3, p2, v2

    add-float/2addr p3, p1

    mul-float/2addr p3, p2

    int-to-float p1, v1

    div-float/2addr p3, p1

    float-to-int p1, p3

    iput p1, p0, Landroidx/recyclerview/widget/m;->o:I

    mul-int p1, v5, v5

    div-int/2addr p1, v1

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/m;->n:I

    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/m;->v:I

    if-eqz p1, :cond_5

    if-ne p1, v4, :cond_6

    :cond_5
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/m;->f(I)V

    :cond_6
    :goto_2
    return-void
.end method
