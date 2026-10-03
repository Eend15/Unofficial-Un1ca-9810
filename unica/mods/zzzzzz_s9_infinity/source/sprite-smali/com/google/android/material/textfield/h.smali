.class public final Lcom/google/android/material/textfield/h;
.super Lcom/google/android/material/textfield/p;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;II)V
    .locals 0

    iput p3, p0, Lcom/google/android/material/textfield/h;->e:I

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/p;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lcom/google/android/material/textfield/h;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->q(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/x;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->n(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget p0, p0, Lcom/google/android/material/textfield/p;->d:I

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->o(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->q(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {v0}, Lcom/google/android/material/textfield/TextInputLayout;->x(Lcom/google/android/material/internal/CheckableImageButton;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
