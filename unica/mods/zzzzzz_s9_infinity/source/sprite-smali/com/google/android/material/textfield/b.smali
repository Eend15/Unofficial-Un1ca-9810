.class public final Lcom/google/android/material/textfield/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/textfield/p;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textfield/p;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/textfield/b;->a:I

    iput-object p1, p0, Lcom/google/android/material/textfield/b;->b:Lcom/google/android/material/textfield/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget p1, p0, Lcom/google/android/material/textfield/b;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/textfield/b;->b:Lcom/google/android/material/textfield/p;

    check-cast p0, Lcom/google/android/material/textfield/o;

    iget-object p1, p0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/o;->i(Z)V

    iput-boolean p1, p0, Lcom/google/android/material/textfield/o;->l:Z

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/textfield/b;->b:Lcom/google/android/material/textfield/p;

    check-cast p0, Lcom/google/android/material/textfield/g;

    invoke-static {p0}, Lcom/google/android/material/textfield/g;->d(Lcom/google/android/material/textfield/g;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/g;->e(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
