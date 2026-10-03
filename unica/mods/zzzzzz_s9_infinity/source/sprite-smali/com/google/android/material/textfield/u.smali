.class public final Lcom/google/android/material/textfield/u;
.super Lcom/google/android/material/textfield/p;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/material/textfield/k;

.field public final f:Lcom/google/android/material/textfield/c;

.field public final g:Lcom/google/android/material/textfield/d;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/p;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    new-instance p1, Lcom/google/android/material/textfield/k;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/textfield/k;-><init>(Lcom/google/android/material/textfield/p;I)V

    iput-object p1, p0, Lcom/google/android/material/textfield/u;->e:Lcom/google/android/material/textfield/k;

    new-instance p1, Lcom/google/android/material/textfield/c;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/textfield/c;-><init>(Lcom/google/android/material/textfield/p;I)V

    iput-object p1, p0, Lcom/google/android/material/textfield/u;->f:Lcom/google/android/material/textfield/c;

    new-instance p1, Lcom/google/android/material/textfield/d;

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/textfield/d;-><init>(Lcom/google/android/material/textfield/p;I)V

    iput-object p1, p0, Lcom/google/android/material/textfield/u;->g:Lcom/google/android/material/textfield/d;

    return-void
.end method

.method public static d(Lcom/google/android/material/textfield/u;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget v0, p0, Lcom/google/android/material/textfield/p;->d:I

    if-nez v0, :cond_0

    sget v0, LF0/d;->design_password_eye:I

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->o(I)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, LF0/h;->password_toggle_content_description:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->n(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->r(Z)V

    iget-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v3, v2, Lcom/google/android/material/internal/CheckableImageButton;->h:Z

    if-eq v3, v0, :cond_1

    iput-boolean v0, v2, Lcom/google/android/material/internal/CheckableImageButton;->h:Z

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    new-instance v0, Landroidx/appcompat/app/c;

    const/4 v2, 0x6

    invoke-direct {v0, v2, p0}, Landroidx/appcompat/app/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->q(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->d0:Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/google/android/material/textfield/u;->f:Lcom/google/android/material/textfield/c;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/c;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    :cond_2
    iget-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->h0:Ljava/util/LinkedHashSet;

    iget-object p0, p0, Lcom/google/android/material/textfield/u;->g:Lcom/google/android/material/textfield/d;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object p0, v1, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0x90

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_4
    return-void
.end method
