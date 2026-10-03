.class public final Lcom/google/android/material/textfield/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/textfield/m;->d:I

    iput-object p2, p0, Lcom/google/android/material/textfield/m;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final b(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/google/android/material/textfield/m;->d:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/material/textfield/m;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/o;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/o;->f()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/textfield/m;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/material/textfield/m;->e:Ljava/lang/Object;

    check-cast v0, Lk/A;

    iget-object v1, v0, Lk/A;->r:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, v0, Lk/A;->r:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v1, v0, Lk/A;->r:Landroid/view/ViewTreeObserver;

    iget-object v0, v0, Lk/A;->l:Landroidx/appcompat/widget/H;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/textfield/m;->e:Ljava/lang/Object;

    check-cast v0, Lk/d;

    iget-object v1, v0, Lk/d;->A:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, v0, Lk/d;->A:Landroid/view/ViewTreeObserver;

    :cond_2
    iget-object v1, v0, Lk/d;->A:Landroid/view/ViewTreeObserver;

    iget-object v0, v0, Lk/d;->l:Landroidx/appcompat/widget/H;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/material/textfield/m;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/o;

    iget-object p1, p0, Lcom/google/android/material/textfield/o;->q:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_4

    new-instance v0, LL/b;

    iget-object p0, p0, Lcom/google/android/material/textfield/o;->k:Landroidx/recyclerview/widget/y;

    invoke-direct {v0, p0}, LL/b;-><init>(Landroidx/recyclerview/widget/y;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
