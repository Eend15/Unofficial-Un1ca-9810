.class public final Lcom/google/android/material/textfield/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/textfield/a;->d:I

    iput-object p2, p0, Lcom/google/android/material/textfield/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method private final b(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method private final c(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method private final d(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/textfield/a;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/textfield/a;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H0:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->I(ZZ)V

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->B(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->J(I)V

    :cond_1
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/textfield/a;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/g;

    iget-object p1, p0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->D:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/google/android/material/textfield/g;->d(Lcom/google/android/material/textfield/g;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/g;->e(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget p0, p0, Lcom/google/android/material/textfield/a;->d:I

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget p0, p0, Lcom/google/android/material/textfield/a;->d:I

    return-void
.end method
