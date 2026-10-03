.class public final Lcom/google/android/material/datepicker/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/material/datepicker/u;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/datepicker/u;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/datepicker/s;->d:I

    iput-object p1, p0, Lcom/google/android/material/datepicker/s;->e:Lcom/google/android/material/datepicker/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/datepicker/s;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/datepicker/s;->e:Lcom/google/android/material/datepicker/u;

    iget-object p1, p0, Lcom/google/android/material/datepicker/u;->F0:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->D()Lcom/google/android/material/datepicker/DateSelector;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->h()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/u;->D0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    iget-object p1, p0, Lcom/google/android/material/datepicker/u;->D0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/u;->I(Lcom/google/android/material/internal/CheckableImageButton;)V

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->G()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/datepicker/s;->e:Lcom/google/android/material/datepicker/u;

    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->m0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/m;->B(ZZ)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/material/datepicker/s;->e:Lcom/google/android/material/datepicker/u;

    iget-object p1, p0, Lcom/google/android/material/datepicker/u;->l0:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/m;->B(ZZ)V

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->D()Lcom/google/android/material/datepicker/DateSelector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
