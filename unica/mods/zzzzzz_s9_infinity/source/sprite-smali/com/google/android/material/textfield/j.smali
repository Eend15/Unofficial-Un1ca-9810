.class public final Lcom/google/android/material/textfield/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/textfield/o;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/textfield/j;->a:Lcom/google/android/material/textfield/o;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/google/android/material/textfield/j;->a:Lcom/google/android/material/textfield/o;

    iput-boolean v0, p0, Lcom/google/android/material/textfield/o;->l:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/textfield/o;->n:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/o;->i(Z)V

    return-void
.end method
