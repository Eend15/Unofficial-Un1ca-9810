.class public final Lcom/google/android/material/datepicker/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/r;


# direct methods
.method public synthetic constructor <init>(ILandroidx/fragment/app/r;)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/datepicker/t;->a:I

    iput-object p2, p0, Lcom/google/android/material/datepicker/t;->b:Landroidx/fragment/app/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lcom/google/android/material/datepicker/t;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/datepicker/t;->b:Landroidx/fragment/app/r;

    check-cast p0, Lcom/google/android/material/datepicker/v;

    iget-object p0, p0, Lcom/google/android/material/datepicker/B;->W:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/t;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/t;->a()V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/datepicker/t;->b:Landroidx/fragment/app/r;

    check-cast p0, Lcom/google/android/material/datepicker/u;

    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->F0:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/datepicker/t;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/datepicker/t;->b:Landroidx/fragment/app/r;

    check-cast p0, Lcom/google/android/material/datepicker/v;

    iget-object p0, p0, Lcom/google/android/material/datepicker/B;->W:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/t;

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/t;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/datepicker/t;->b:Landroidx/fragment/app/r;

    check-cast p0, Lcom/google/android/material/datepicker/u;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->H()V

    iget-object p1, p0, Lcom/google/android/material/datepicker/u;->F0:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->D()Lcom/google/android/material/datepicker/DateSelector;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/material/datepicker/DateSelector;->h()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
