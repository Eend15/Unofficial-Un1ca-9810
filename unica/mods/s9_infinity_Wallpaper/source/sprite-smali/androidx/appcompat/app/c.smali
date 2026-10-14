.class public final Landroidx/appcompat/app/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/app/c;->d:I

    iput-object p2, p0, Landroidx/appcompat/app/c;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Landroidx/appcompat/app/c;->d:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Landroidx/appcompat/app/c;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/u;

    iget-object p1, p0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    invoke-static {p0}, Lcom/google/android/material/textfield/u;->d(Lcom/google/android/material/textfield/u;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    invoke-static {p0, p1, v0}, La4/x;->X(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/app/c;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/o;

    iget-object p1, p0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    invoke-static {p0, p1}, Lcom/google/android/material/textfield/o;->d(Lcom/google/android/material/textfield/o;Landroid/widget/AutoCompleteTextView;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/appcompat/app/c;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/g;

    iget-object p1, p0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_3
    iget-object p0, p0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:Landroid/content/res/ColorStateList;

    invoke-static {p0, p1, v0}, La4/x;->X(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/appcompat/app/c;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/datepicker/q;

    iget p1, p0, Lcom/google/android/material/datepicker/q;->b0:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/q;->D(I)V

    goto :goto_2

    :cond_4
    if-ne p1, v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/q;->D(I)V

    :cond_5
    :goto_2
    return-void

    :pswitch_3
    iget-object p0, p0, Landroidx/appcompat/app/c;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->P:Landroidx/appcompat/widget/O0;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_3

    :cond_6
    iget-object p0, p0, Landroidx/appcompat/widget/O0;->e:Lk/l;

    :goto_3
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lk/l;->collapseActionView()Z

    :cond_7
    return-void

    :pswitch_4
    iget-object p0, p0, Landroidx/appcompat/app/c;->e:Ljava/lang/Object;

    check-cast p0, Lj/b;

    invoke-virtual {p0}, Lj/b;->a()V

    return-void

    :pswitch_5
    iget-object p0, p0, Landroidx/appcompat/app/c;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/g;

    iget-object p1, p0, Landroidx/appcompat/app/g;->f:Landroid/widget/Button;

    iget-object p1, p0, Landroidx/appcompat/app/g;->v:LN1/h;

    const/4 v0, 0x1

    iget-object p0, p0, Landroidx/appcompat/app/g;->b:Landroidx/appcompat/app/h;

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
