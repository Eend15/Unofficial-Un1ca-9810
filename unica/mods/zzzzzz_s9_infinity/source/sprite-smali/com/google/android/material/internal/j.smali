.class public final Lcom/google/android/material/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/text/TextPaint;

.field public final b:LM0/a;

.field public c:F

.field public d:Z

.field public final e:Ljava/lang/ref/WeakReference;

.field public f:LR0/d;


# direct methods
.method public constructor <init>(LM0/f;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/j;->a:Landroid/text/TextPaint;

    new-instance v0, LM0/a;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0}, LM0/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/j;->b:LM0/a;

    iput-boolean v1, p0, Lcom/google/android/material/internal/j;->d:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/j;->e:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/j;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method
