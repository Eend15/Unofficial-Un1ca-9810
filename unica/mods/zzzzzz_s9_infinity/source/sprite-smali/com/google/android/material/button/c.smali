.class public Lcom/google/android/material/button/c;
.super LK/b;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final e:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/material/button/c;->d:I

    iput-object p1, p0, Lcom/google/android/material/button/c;->e:Landroid/view/View;

    invoke-direct {p0}, LK/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/material/button/c;->d:I

    .line 2
    invoke-direct {p0}, LK/b;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/material/button/c;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/button/c;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, LK/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1, p2}, LK/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p0, p0, Lcom/google/android/material/button/c;->e:Landroid/view/View;

    check-cast p0, Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean p0, p0, Lcom/google/android/material/internal/CheckableImageButton;->g:Z

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Landroid/view/View;LL/d;)V
    .locals 13

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/material/button/c;->e:Landroid/view/View;

    iget-object v4, p0, LK/b;->a:Landroid/view/View$AccessibilityDelegate;

    iget p0, p0, Lcom/google/android/material/button/c;->d:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, p2, LL/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4, p1, p0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, v3, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->g()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->f()Ljava/lang/CharSequence;

    move-result-object v5

    iget-boolean v6, v3, Lcom/google/android/material/textfield/TextInputLayout;->v:Z

    if-eqz v6, :cond_1

    iget-object v6, v3, Lcom/google/android/material/textfield/TextInputLayout;->u:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object v6, p2

    :goto_1
    iget v7, v3, Lcom/google/android/material/textfield/TextInputLayout;->p:I

    iget-boolean v8, v3, Lcom/google/android/material/textfield/TextInputLayout;->o:Z

    if-eqz v8, :cond_2

    iget-boolean v8, v3, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    if-eqz v8, :cond_2

    iget-object v8, v3, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/X;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    iget-boolean v10, v3, Lcom/google/android/material/textfield/TextInputLayout;->B0:Z

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    if-nez v9, :cond_5

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    const-string v2, ""

    :goto_2
    iget-object v4, v3, Lcom/google/android/material/textfield/TextInputLayout;->e:Lcom/google/android/material/textfield/v;

    iget-object v9, v4, Lcom/google/android/material/textfield/v;->e:Landroidx/appcompat/widget/X;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {p0, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;)V

    invoke-virtual {p0, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    goto :goto_3

    :cond_6
    iget-object v4, v4, Lcom/google/android/material/textfield/v;->g:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    :goto_3
    if-nez v8, :cond_7

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    if-nez v10, :cond_9

    if-eqz v6, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {p0, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setShowingHintText(Z)V

    :cond_a
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ne p1, v7, :cond_b

    move v0, v7

    :cond_b
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    if-eqz v1, :cond_d

    if-nez v11, :cond_c

    goto :goto_5

    :cond_c
    move-object v5, p2

    :goto_5
    invoke-virtual {p0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object p1, v3, Lcom/google/android/material/textfield/TextInputLayout;->n:Lcom/google/android/material/textfield/s;

    iget-object p1, p1, Lcom/google/android/material/textfield/s;->r:Landroidx/appcompat/widget/X;

    if-eqz p1, :cond_e

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;)V

    :cond_e
    return-void

    :pswitch_0
    iget-object p0, p2, LL/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4, p1, p0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast v3, Lcom/google/android/material/internal/NavigationMenuItemView;

    iget-boolean p1, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Z

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    return-void

    :pswitch_1
    iget-object p0, p2, LL/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4, p1, p0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast v3, Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean p1, v3, Lcom/google/android/material/internal/CheckableImageButton;->h:Z

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-boolean p1, v3, Lcom/google/android/material/internal/CheckableImageButton;->g:Z

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void

    :pswitch_2
    iget-object p0, p2, LL/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4, p1, p0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->n:I

    check-cast v3, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lcom/google/android/material/button/MaterialButton;

    if-nez p0, :cond_f

    goto :goto_7

    :cond_f
    move p0, v1

    move v4, p0

    :goto_6
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge p0, v5, :cond_12

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v5, p1, :cond_10

    move v0, v4

    goto :goto_7

    :cond_10
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/google/android/material/button/MaterialButton;

    if-eqz v5, :cond_11

    invoke-virtual {v3, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Z

    move-result v5

    if-eqz v5, :cond_11

    add-int/2addr v4, v2

    :cond_11
    add-int/2addr p0, v2

    goto :goto_6

    :cond_12
    :goto_7
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iget-boolean p0, p1, Lcom/google/android/material/button/MaterialButton;->q:Z

    invoke-static {v1, v2, v0, v2, p0}, LA1/e;->S(IIIIZ)LA1/e;

    move-result-object p0

    invoke-virtual {p2, p0}, LL/d;->g(LA1/e;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
