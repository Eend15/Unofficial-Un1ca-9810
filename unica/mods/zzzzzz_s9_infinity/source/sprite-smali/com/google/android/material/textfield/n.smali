.class public final Lcom/google/android/material/textfield/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic d:Landroid/widget/AutoCompleteTextView;

.field public final synthetic e:Lcom/google/android/material/textfield/o;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/o;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/textfield/n;->e:Lcom/google/android/material/textfield/o;

    iput-object p2, p0, Lcom/google/android/material/textfield/n;->d:Landroid/widget/AutoCompleteTextView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/google/android/material/textfield/n;->e:Lcom/google/android/material/textfield/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/google/android/material/textfield/o;->n:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    :cond_0
    iput-boolean v0, p1, Lcom/google/android/material/textfield/o;->l:Z

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/textfield/n;->d:Landroid/widget/AutoCompleteTextView;

    invoke-static {p1, p0}, Lcom/google/android/material/textfield/o;->d(Lcom/google/android/material/textfield/o;Landroid/widget/AutoCompleteTextView;)V

    iput-boolean p2, p1, Lcom/google/android/material/textfield/o;->l:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/google/android/material/textfield/o;->n:J

    :cond_2
    return v0
.end method
