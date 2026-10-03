.class public final Lcom/google/android/material/datepicker/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic d:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

.field public final synthetic e:Lcom/google/android/material/datepicker/A;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/A;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/y;->e:Lcom/google/android/material/datepicker/A;

    iput-object p2, p0, Lcom/google/android/material/datepicker/y;->d:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/datepicker/y;->d:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/x;

    move-result-object p2

    iget-object p4, p2, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p4}, Lcom/google/android/material/datepicker/Month;->m()I

    move-result p4

    if-lt p3, p4, :cond_1

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/x;->b()I

    move-result p2

    if-gt p3, p2, :cond_1

    iget-object p0, p0, Lcom/google/android/material/datepicker/y;->e:Lcom/google/android/material/datepicker/A;

    iget-object p0, p0, Lcom/google/android/material/datepicker/A;->f:Lcom/google/android/material/datepicker/m;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/x;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/material/datepicker/x;->a(I)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object p0, p0, Lcom/google/android/material/datepicker/m;->a:Lcom/google/android/material/datepicker/q;

    iget-object p3, p0, Lcom/google/android/material/datepicker/q;->Z:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object p3, p3, Lcom/google/android/material/datepicker/CalendarConstraints;->f:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    invoke-interface {p3, p1, p2}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->f(J)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/material/datepicker/q;->Y:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {p3, p1, p2}, Lcom/google/android/material/datepicker/DateSelector;->i(J)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/B;->W:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/datepicker/t;

    iget-object p3, p0, Lcom/google/android/material/datepicker/q;->Y:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {p3}, Lcom/google/android/material/datepicker/DateSelector;->a()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/datepicker/t;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/q;->e0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    iget-object p1, p1, LU3/b0;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/D;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/D;->b()V

    iget-object p0, p0, Lcom/google/android/material/datepicker/q;->d0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:LU3/b0;

    iget-object p0, p0, LU3/b0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/D;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/D;->b()V

    :cond_1
    return-void
.end method
