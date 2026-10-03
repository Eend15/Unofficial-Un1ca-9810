.class public final Lcom/google/android/material/datepicker/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/material/datepicker/J;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/J;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/H;->e:Lcom/google/android/material/datepicker/J;

    iput p2, p0, Lcom/google/android/material/datepicker/H;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/material/datepicker/H;->e:Lcom/google/android/material/datepicker/J;

    iget-object v0, p1, Lcom/google/android/material/datepicker/J;->d:Lcom/google/android/material/datepicker/q;

    iget-object v0, v0, Lcom/google/android/material/datepicker/q;->a0:Lcom/google/android/material/datepicker/Month;

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->e:I

    iget p0, p0, Lcom/google/android/material/datepicker/H;->d:I

    invoke-static {p0, v0}, Lcom/google/android/material/datepicker/Month;->k(II)Lcom/google/android/material/datepicker/Month;

    move-result-object p0

    iget-object p1, p1, Lcom/google/android/material/datepicker/J;->d:Lcom/google/android/material/datepicker/q;

    iget-object v0, p1, Lcom/google/android/material/datepicker/q;->Z:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v1, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->d:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/Month;->b(Lcom/google/android/material/datepicker/Month;)I

    move-result v2

    if-gez v2, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->e:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/Month;->b(Lcom/google/android/material/datepicker/Month;)I

    move-result v1

    if-lez v1, :cond_1

    move-object p0, v0

    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Lcom/google/android/material/datepicker/q;->C(Lcom/google/android/material/datepicker/Month;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/google/android/material/datepicker/q;->D(I)V

    return-void
.end method
