.class public final Lcom/google/android/material/datepicker/C;
.super Lcom/google/android/material/datepicker/i;
.source "SourceFile"


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lcom/google/android/material/textfield/TextInputLayout;

.field public final synthetic l:Lcom/google/android/material/textfield/TextInputLayout;

.field public final synthetic m:Lcom/google/android/material/datepicker/t;

.field public final synthetic n:Lcom/google/android/material/datepicker/RangeDateSelector;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/String;Ljava/text/SimpleDateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/t;I)V
    .locals 0

    iput p9, p0, Lcom/google/android/material/datepicker/C;->j:I

    iput-object p1, p0, Lcom/google/android/material/datepicker/C;->n:Lcom/google/android/material/datepicker/RangeDateSelector;

    iput-object p6, p0, Lcom/google/android/material/datepicker/C;->k:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p7, p0, Lcom/google/android/material/datepicker/C;->l:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p8, p0, Lcom/google/android/material/datepicker/C;->m:Lcom/google/android/material/datepicker/t;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/material/datepicker/i;-><init>(Ljava/lang/String;Ljava/text/SimpleDateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Lcom/google/android/material/datepicker/C;->j:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/datepicker/C;->n:Lcom/google/android/material/datepicker/RangeDateSelector;

    iput-object v0, v1, Lcom/google/android/material/datepicker/RangeDateSelector;->h:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/material/datepicker/C;->l:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/google/android/material/datepicker/C;->m:Lcom/google/android/material/datepicker/t;

    iget-object p0, p0, Lcom/google/android/material/datepicker/C;->k:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v1, p0, v0, v2}, Lcom/google/android/material/datepicker/RangeDateSelector;->b(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/t;)V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/datepicker/C;->n:Lcom/google/android/material/datepicker/RangeDateSelector;

    iput-object v0, v1, Lcom/google/android/material/datepicker/RangeDateSelector;->g:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/material/datepicker/C;->l:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/google/android/material/datepicker/C;->m:Lcom/google/android/material/datepicker/t;

    iget-object p0, p0, Lcom/google/android/material/datepicker/C;->k:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v1, p0, v0, v2}, Lcom/google/android/material/datepicker/RangeDateSelector;->b(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/t;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Long;)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/datepicker/C;->j:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/material/datepicker/C;->n:Lcom/google/android/material/datepicker/RangeDateSelector;

    iput-object p1, v0, Lcom/google/android/material/datepicker/RangeDateSelector;->h:Ljava/lang/Long;

    iget-object p1, p0, Lcom/google/android/material/datepicker/C;->l:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/datepicker/C;->m:Lcom/google/android/material/datepicker/t;

    iget-object p0, p0, Lcom/google/android/material/datepicker/C;->k:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0, p0, p1, v1}, Lcom/google/android/material/datepicker/RangeDateSelector;->b(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/t;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/C;->n:Lcom/google/android/material/datepicker/RangeDateSelector;

    iput-object p1, v0, Lcom/google/android/material/datepicker/RangeDateSelector;->g:Ljava/lang/Long;

    iget-object p1, p0, Lcom/google/android/material/datepicker/C;->l:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/datepicker/C;->m:Lcom/google/android/material/datepicker/t;

    iget-object p0, p0, Lcom/google/android/material/datepicker/C;->k:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0, p0, p1, v1}, Lcom/google/android/material/datepicker/RangeDateSelector;->b(Lcom/google/android/material/datepicker/RangeDateSelector;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/t;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
