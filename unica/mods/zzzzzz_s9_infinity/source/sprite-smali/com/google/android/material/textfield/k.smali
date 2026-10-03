.class public final Lcom/google/android/material/textfield/k;
.super Lcom/google/android/material/internal/k;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/material/textfield/p;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textfield/p;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/textfield/k;->d:I

    iput-object p1, p0, Lcom/google/android/material/textfield/k;->e:Lcom/google/android/material/textfield/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget p1, p0, Lcom/google/android/material/textfield/k;->d:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/material/textfield/k;->e:Lcom/google/android/material/textfield/p;

    check-cast p1, Lcom/google/android/material/textfield/o;

    iget-object v0, p1, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    instance-of v1, v0, Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iget-object v1, p1, Lcom/google/android/material/textfield/o;->q:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/material/textfield/o;->h(Landroid/widget/EditText;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/google/android/material/textfield/p;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_0
    new-instance p1, LH/a;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, LH/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget p1, p0, Lcom/google/android/material/textfield/k;->d:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/textfield/k;->e:Lcom/google/android/material/textfield/p;

    check-cast p0, Lcom/google/android/material/textfield/u;

    iget-object p1, p0, Lcom/google/android/material/textfield/p;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p0}, Lcom/google/android/material/textfield/u;->d(Lcom/google/android/material/textfield/u;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
