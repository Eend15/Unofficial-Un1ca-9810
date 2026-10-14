.class public final Lcom/google/android/material/datepicker/l;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field public final synthetic E:I

.field public final synthetic F:Lcom/google/android/material/datepicker/q;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/q;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/l;->F:Lcom/google/android/material/datepicker/q;

    iput p3, p0, Lcom/google/android/material/datepicker/l;->E:I

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final s0(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    new-instance v0, Lcom/google/android/material/datepicker/E;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/x;-><init>(Landroid/content/Context;)V

    iput p2, v0, Landroidx/recyclerview/widget/x;->a:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/I;->t0(Landroidx/recyclerview/widget/x;)V

    return-void
.end method

.method public final v0(Landroidx/recyclerview/widget/S;[I)V
    .locals 2

    iget p1, p0, Lcom/google/android/material/datepicker/l;->E:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->F:Lcom/google/android/material/datepicker/q;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/q;->e0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    aput p1, p2, v1

    iget-object p0, p0, Lcom/google/android/material/datepicker/q;->e0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    aput p0, p2, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/q;->e0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    aput p1, p2, v1

    iget-object p0, p0, Lcom/google/android/material/datepicker/q;->e0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    aput p0, p2, v0

    :goto_0
    return-void
.end method
