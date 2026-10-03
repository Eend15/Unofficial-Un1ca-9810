.class public final Lcom/google/android/material/datepicker/z;
.super Landroidx/recyclerview/widget/U;
.source "SourceFile"


# instance fields
.field public final t:Landroid/widget/TextView;

.field public final u:Lcom/google/android/material/datepicker/MaterialCalendarGridView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Z)V
    .locals 8

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/U;-><init>(Landroid/view/View;)V

    sget v0, LF0/e;->month_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/datepicker/z;->t:Landroid/widget/TextView;

    sget-object v1, LK/D;->a:Ljava/util/WeakHashMap;

    new-instance v1, LK/s;

    sget v3, Ly/b;->tag_accessibility_heading:I

    const/4 v5, 0x0

    const-class v4, Ljava/lang/Boolean;

    const/16 v6, 0x1c

    const/4 v7, 0x2

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, LK/s;-><init>(ILjava/lang/Class;III)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, LK/u;->h(Landroid/view/View;Ljava/lang/Object;)V

    sget v1, LF0/e;->month_grid:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    iput-object p1, p0, Lcom/google/android/material/datepicker/z;->u:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    if-nez p2, :cond_0

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
