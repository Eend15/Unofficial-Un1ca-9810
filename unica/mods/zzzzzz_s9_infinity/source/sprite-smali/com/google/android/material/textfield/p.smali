.class public abstract Lcom/google/android/material/textfield/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/textfield/TextInputLayout;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/google/android/material/internal/CheckableImageButton;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/textfield/p;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/p;->b:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->g0:Lcom/google/android/material/internal/CheckableImageButton;

    iput-object p1, p0, Lcom/google/android/material/textfield/p;->c:Lcom/google/android/material/internal/CheckableImageButton;

    iput p2, p0, Lcom/google/android/material/textfield/p;->d:I

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method
