.class public final Lcom/google/android/material/textfield/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/textfield/p;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textfield/p;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/textfield/c;->a:I

    iput-object p1, p0, Lcom/google/android/material/textfield/c;->b:Lcom/google/android/material/textfield/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/material/textfield/c;->b:Lcom/google/android/material/textfield/p;

    iget p0, p0, Lcom/google/android/material/textfield/c;->a:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, p1, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    check-cast v1, Lcom/google/android/material/textfield/u;

    iget-object p1, v1, Lcom/google/android/material/textfield/p;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v1}, Lcom/google/android/material/textfield/u;->d(Lcom/google/android/material/textfield/u;)Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p1, v1, Lcom/google/android/material/textfield/u;->e:Lcom/google/android/material/textfield/k;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :pswitch_0
    iget-object p0, p1, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    instance-of v2, p0, Landroid/widget/AutoCompleteTextView;

    if-eqz v2, :cond_6

    check-cast p0, Landroid/widget/AutoCompleteTextView;

    check-cast v1, Lcom/google/android/material/textfield/o;

    iget-object v2, v1, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->O:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/google/android/material/textfield/o;->p:LU0/g;

    invoke-virtual {p0, v2}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-ne v2, v0, :cond_1

    iget-object v2, v1, Lcom/google/android/material/textfield/o;->o:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, v2}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    invoke-virtual {v1, p0}, Lcom/google/android/material/textfield/o;->e(Landroid/widget/AutoCompleteTextView;)V

    new-instance v2, Lcom/google/android/material/textfield/n;

    invoke-direct {v2, v1, p0}, Lcom/google/android/material/textfield/n;-><init>(Lcom/google/android/material/textfield/o;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v1, Lcom/google/android/material/textfield/o;->f:Lcom/google/android/material/textfield/b;

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v2, Lcom/google/android/material/textfield/j;

    invoke-direct {v2, v1}, Lcom/google/android/material/textfield/j;-><init>(Lcom/google/android/material/textfield/o;)V

    invoke-virtual {p0, v2}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v4, v1, Lcom/google/android/material/textfield/o;->e:Lcom/google/android/material/textfield/k;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, p1, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v5, v4, Lcom/google/android/material/internal/CheckableImageButton;->h:Z

    if-eq v5, v0, :cond_2

    iput-boolean v0, v4, Lcom/google/android/material/internal/CheckableImageButton;->h:Z

    invoke-virtual {v4, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_2
    iget-object v2, p1, Lcom/google/android/material/textfield/TextInputLayout;->n0:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/x;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->G()V

    iget-object v4, p1, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/content/res/ColorStateList;

    iget-object v5, p1, Lcom/google/android/material/textfield/TextInputLayout;->p0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v2, v4, v5}, La4/x;->n(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, v1, Lcom/google/android/material/textfield/o;->q:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v1, Lcom/google/android/material/textfield/p;->c:Lcom/google/android/material/internal/CheckableImageButton;

    sget-object v2, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_4
    :goto_1
    iget-object p0, p1, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz p0, :cond_5

    iget-object v1, v1, Lcom/google/android/material/textfield/o;->g:Lcom/google/android/material/textfield/l;

    invoke-static {p0, v1}, LK/D;->f(Landroid/view/View;LK/b;)V

    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->r(Z)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget-object p0, p1, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    check-cast v1, Lcom/google/android/material/textfield/g;

    invoke-static {v1}, Lcom/google/android/material/textfield/g;->d(Lcom/google/android/material/textfield/g;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->r(Z)V

    iget-object p1, v1, Lcom/google/android/material/textfield/g;->f:Lcom/google/android/material/textfield/b;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, v1, Lcom/google/android/material/textfield/p;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, v1, Lcom/google/android/material/textfield/g;->e:Lcom/google/android/material/textfield/a;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
