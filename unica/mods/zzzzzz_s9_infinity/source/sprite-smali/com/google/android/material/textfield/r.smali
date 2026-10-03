.class public final Lcom/google/android/material/textfield/r;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/material/textfield/s;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/s;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/r;->a:Lcom/google/android/material/textfield/s;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p0, p0, Lcom/google/android/material/textfield/r;->a:Lcom/google/android/material/textfield/s;

    iget-object p0, p0, Lcom/google/android/material/textfield/s;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;)V

    :cond_0
    return-void
.end method
