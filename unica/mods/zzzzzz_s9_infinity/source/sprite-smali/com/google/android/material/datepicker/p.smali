.class public final Lcom/google/android/material/datepicker/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/material/datepicker/A;

.field public final synthetic f:Lcom/google/android/material/datepicker/q;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/datepicker/q;Lcom/google/android/material/datepicker/A;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/material/datepicker/p;->d:I

    iput-object p1, p0, Lcom/google/android/material/datepicker/p;->f:Lcom/google/android/material/datepicker/q;

    iput-object p2, p0, Lcom/google/android/material/datepicker/p;->e:Lcom/google/android/material/datepicker/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/google/android/material/datepicker/p;->d:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/p;->f:Lcom/google/android/material/datepicker/q;

    iget-object v0, p1, Lcom/google/android/material/datepicker/q;->e0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->F0()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/datepicker/p;->e:Lcom/google/android/material/datepicker/A;

    iget-object p0, p0, Lcom/google/android/material/datepicker/A;->d:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object p0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->d:Lcom/google/android/material/datepicker/Month;

    iget-object p0, p0, Lcom/google/android/material/datepicker/Month;->d:Ljava/util/Calendar;

    invoke-static {p0}, Lcom/google/android/material/datepicker/G;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->add(II)V

    new-instance v0, Lcom/google/android/material/datepicker/Month;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/q;->C(Lcom/google/android/material/datepicker/Month;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/p;->f:Lcom/google/android/material/datepicker/q;

    iget-object v0, p1, Lcom/google/android/material/datepicker/q;->e0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Landroidx/recyclerview/widget/I;

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/I;->v()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(ZII)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroidx/recyclerview/widget/I;->D(Landroid/view/View;)I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p1, Lcom/google/android/material/datepicker/q;->e0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    invoke-virtual {v1}, LU3/b0;->c()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object p0, p0, Lcom/google/android/material/datepicker/p;->e:Lcom/google/android/material/datepicker/A;

    iget-object p0, p0, Lcom/google/android/material/datepicker/A;->d:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object p0, p0, Lcom/google/android/material/datepicker/CalendarConstraints;->d:Lcom/google/android/material/datepicker/Month;

    iget-object p0, p0, Lcom/google/android/material/datepicker/Month;->d:Ljava/util/Calendar;

    invoke-static {p0}, Lcom/google/android/material/datepicker/G;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->add(II)V

    new-instance v0, Lcom/google/android/material/datepicker/Month;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/Month;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/q;->C(Lcom/google/android/material/datepicker/Month;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
