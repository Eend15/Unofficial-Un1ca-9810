.class public final LM0/a;
.super LK/I;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LM0/a;->a:I

    iput-object p2, p0, LM0/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final z0(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final g0(I)V
    .locals 0

    iget p1, p0, LM0/a;->a:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    iget-object p0, p0, LM0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/internal/j;

    iput-boolean p1, p0, Lcom/google/android/material/internal/j;->d:Z

    iget-object p0, p0, Lcom/google/android/material/internal/j;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/i;

    if-eqz p0, :cond_0

    check-cast p0, LM0/f;

    invoke-virtual {p0}, LM0/f;->u()V

    invoke-virtual {p0}, LU0/g;->invalidateSelf()V

    :cond_0
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h0(Landroid/graphics/Typeface;Z)V
    .locals 0

    iget p1, p0, LM0/a;->a:I

    packed-switch p1, :pswitch_data_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iget-object p0, p0, LM0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/internal/j;

    iput-boolean p1, p0, Lcom/google/android/material/internal/j;->d:Z

    iget-object p0, p0, Lcom/google/android/material/internal/j;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/i;

    if-eqz p0, :cond_1

    check-cast p0, LM0/f;

    invoke-virtual {p0}, LM0/f;->u()V

    invoke-virtual {p0}, LU0/g;->invalidateSelf()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, LM0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/chip/Chip;

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->h:LM0/f;

    iget-boolean p2, p1, LM0/f;->A0:Z

    if-eqz p2, :cond_2

    iget-object p1, p1, LM0/f;->F:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
